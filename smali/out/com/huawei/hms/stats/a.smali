.class public Lcom/huawei/hms/stats/a;
.super Ljava/lang/Object;
.source "AnalyticsSwitchHolder.java"


# static fields
.field public static a:I

.field public static final b:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/stats/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    const-string v1, "AnalyticsSwitchHolder"

    if-nez p0, :cond_b

    const-string p0, "In getBiIsReportSetting, context is null."

    .line 1
    invoke-static {v1, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 5
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 8
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x80

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_31

    .line 10
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_31

    .line 11
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.huawei.hms.client.bireport.setting"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_2b} :catch_2c

    return p0

    :catch_2c
    const-string p0, "In getBiIsReportSetting, Failed to read meta data bi report setting."

    .line 14
    invoke-static {v1, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    const-string p0, "In getBiIsReportSetting, configuration not found for bi report setting."

    .line 17
    invoke-static {v1, p0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    const-string v1, "AnalyticsSwitchHolder"

    if-nez p0, :cond_b

    const-string p0, "In getBiSetting, context is null."

    .line 1
    invoke-static {v1, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 5
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 8
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x80

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_31

    .line 10
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_31

    .line 11
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.huawei.hms.client.bi.setting"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_2b} :catch_2c

    return p0

    :catch_2c
    const-string p0, "In getBiSetting, Failed to read meta data bisetting."

    .line 15
    invoke-static {v1, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    const-string p0, "In getBiSetting, configuration not found for bisetting."

    .line 18
    invoke-static {v1, p0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 7

    .line 1
    sget-object v0, Lcom/huawei/hms/stats/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget v1, Lcom/huawei/hms/stats/a;->a:I

    const/4 v2, 0x1

    if-nez v1, :cond_78

    if-nez p0, :cond_c

    .line 4
    monitor-exit v0

    return v2

    .line 6
    :cond_c
    invoke-static {p0}, Lcom/huawei/hms/stats/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string p0, "AnalyticsSwitchHolder"

    const-string v1, "Builder->biReportSetting :true"

    .line 8
    invoke-static {p0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sput v2, Lcom/huawei/hms/stats/a;->a:I

    goto :goto_78

    .line 10
    :cond_1c
    invoke-static {p0}, Lcom/huawei/hms/stats/a;->b(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_2d

    const-string p0, "AnalyticsSwitchHolder"

    const-string v1, "Builder->biSetting :true"

    .line 12
    invoke-static {p0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sput v3, Lcom/huawei/hms/stats/a;->a:I
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_80

    goto :goto_78

    :cond_2d
    const-string v1, "CN"

    .line 14
    :try_start_2f
    invoke-static {}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getInstance()Lcom/huawei/hms/framework/network/grs/GrsApp;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getIssueCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 15
    sput v2, Lcom/huawei/hms/stats/a;->a:I

    goto :goto_78

    :cond_40
    const-string v1, "AnalyticsSwitchHolder"

    const-string v4, "not ChinaROM"

    .line 17
    invoke-static {v1, v4}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_80

    .line 20
    :try_start_47
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "hw_app_analytics_state"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_51
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_47 .. :try_end_51} :catch_6f
    .catchall {:try_start_47 .. :try_end_51} :catchall_80

    const-string v1, "AnalyticsSwitchHolder"

    .line 22
    :try_start_53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hw_app_analytics_state value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p0, v2, :cond_6c

    .line 25
    sput v2, Lcom/huawei/hms/stats/a;->a:I

    goto :goto_78

    .line 27
    :cond_6c
    sput v3, Lcom/huawei/hms/stats/a;->a:I
    :try_end_6e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_53 .. :try_end_6e} :catch_6f
    .catchall {:try_start_53 .. :try_end_6e} :catchall_80

    goto :goto_78

    :catch_6f
    :try_start_6f
    const-string p0, "AnalyticsSwitchHolder"

    const-string v1, "Get OOBE failed"

    .line 30
    invoke-static {p0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sput v3, Lcom/huawei/hms/stats/a;->a:I

    .line 35
    :cond_78
    :goto_78
    sget p0, Lcom/huawei/hms/stats/a;->a:I

    if-eq p0, v2, :cond_7d

    goto :goto_7e

    :cond_7d
    const/4 v2, 0x0

    :goto_7e
    monitor-exit v0

    return v2

    :catchall_80
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_6f .. :try_end_82} :catchall_80

    throw p0
.end method
