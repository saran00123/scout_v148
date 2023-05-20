.class public Lcom/huawei/hms/opendevice/f;
.super Ljava/lang/Object;
.source "AutoInitRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/opendevice/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const-string v0, "push kit sdk not exists"

    const-string v1, "Push init failed"

    const-string v2, "AutoInit"

    .line 1
    :try_start_6
    sget-object v3, Lcom/huawei/hms/aaid/constant/ErrorEnum;->SUCCESS:Lcom/huawei/hms/aaid/constant/ErrorEnum;

    invoke-virtual {v3}, Lcom/huawei/hms/aaid/constant/ErrorEnum;->getInternalCode()I

    move-result v3
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_92

    const/4 v4, 0x0

    .line 2
    :try_start_d
    iget-object v5, p0, Lcom/huawei/hms/opendevice/f;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/huawei/hms/aaid/HmsInstanceId;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/aaid/HmsInstanceId;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/hms/opendevice/f;->a:Landroid/content/Context;

    invoke-static {v6}, Lcom/huawei/hms/utils/Util;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/huawei/hms/aaid/HmsInstanceId;->getToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1d
    .catch Lcom/huawei/hms/common/ApiException; {:try_start_d .. :try_end_1d} :catch_29
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1d} :catch_92

    const-string v5, "Push init succeed"

    .line 3
    :try_start_1f
    invoke-static {v2, v5}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_26
    .catch Lcom/huawei/hms/common/ApiException; {:try_start_1f .. :try_end_26} :catch_29
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_92

    if-eqz v5, :cond_31

    return-void

    :catch_29
    move-exception v3

    .line 5
    :try_start_2a
    invoke-virtual {v3}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result v3

    .line 6
    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_31} :catch_92

    .line 7
    :cond_31
    :try_start_31
    iget-object v5, p0, Lcom/huawei/hms/opendevice/f;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/huawei/hms/opendevice/f;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 9
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_8a

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_49} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_49} :catch_92

    const-string v6, "com.huawei.hms.client.service.name:push"

    :try_start_4b
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8a

    .line 10
    new-instance v5, Landroid/content/Intent;
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4b .. :try_end_53} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_53} :catch_92

    const-string v6, "com.huawei.push.action.MESSAGING_EVENT"

    :try_start_55
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v6, p0, Lcom/huawei/hms/opendevice/f;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V
    :try_end_66
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_55 .. :try_end_66} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_66} :catch_92

    const-string v7, "message_type"

    const-string v8, "new_token"

    .line 13
    :try_start_6a
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6a .. :try_end_6d} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_92

    const-string v7, "device_token"

    .line 14
    :try_start_6f
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6f .. :try_end_72} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_92

    const-string v4, "error"

    .line 15
    :try_start_74
    invoke-virtual {v6, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    new-instance v3, Lcom/huawei/hms/opendevice/h;

    invoke-direct {v3}, Lcom/huawei/hms/opendevice/h;-><init>()V

    iget-object v4, p0, Lcom/huawei/hms/opendevice/f;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, v6, v5}, Lcom/huawei/hms/opendevice/h;->a(Landroid/content/Context;Landroid/os/Bundle;Landroid/content/Intent;)Z

    move-result v3
    :try_end_82
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_74 .. :try_end_82} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_82} :catch_92

    if-nez v3, :cond_96

    const-string v3, "start service failed"

    .line 17
    :try_start_86
    invoke-static {v2, v3}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96

    .line 18
    :cond_8a
    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_86 .. :try_end_8d} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8d} :catch_92

    goto :goto_96

    .line 19
    :catch_8e
    :try_start_8e
    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_96

    :catch_92
    move-exception v0

    .line 20
    invoke-static {v2, v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_96
    :goto_96
    return-void
.end method
