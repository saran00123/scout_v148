.class public Lcom/huawei/hms/framework/common/PowerUtils;
.super Ljava/lang/Object;
.source "PowerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/framework/common/PowerUtils$PowerMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PowerUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAppIdleMode(Landroid/content/Context;)Z
    .registers 8

    const/4 v0, 0x0

    const-string v1, "PowerUtils"

    if-eqz p0, :cond_3c

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 109
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    const-string v6, "isAppIdleMode statsManager is null!"

    if-lt v4, v5, :cond_27

    .line 110
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-lt v4, v5, :cond_2a

    const-string v3, "usagestats"

    .line 111
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 112
    instance-of v3, p0, Landroid/app/usage/UsageStatsManager;

    if-eqz v3, :cond_26

    .line 113
    move-object v3, p0

    check-cast v3, Landroid/app/usage/UsageStatsManager;

    goto :goto_2a

    :cond_26
    return v0

    .line 119
    :cond_27
    invoke-static {v1, v6}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2a
    :goto_2a
    if-eqz v3, :cond_38

    .line 123
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p0, v1, :cond_41

    .line 124
    invoke-virtual {v3, v2}, Landroid/app/usage/UsageStatsManager;->isAppInactive(Ljava/lang/String;)Z

    move-result p0

    move v0, p0

    goto :goto_41

    .line 127
    :cond_38
    invoke-static {v1, v6}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_3c
    const-string p0, "isAppIdleMode Context is null!"

    .line 131
    invoke-static {v1, p0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_41
    :goto_41
    return v0
.end method

.method public static isDozeIdleMode(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    const-string v1, "PowerUtils"

    if-eqz p0, :cond_33

    const-string v2, "power"

    .line 237
    invoke-static {p0, v2}, Lcom/huawei/hms/framework/common/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 238
    instance-of v2, p0, Landroid/os/PowerManager;

    if-eqz v2, :cond_12

    .line 239
    check-cast p0, Landroid/os/PowerManager;

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    if-eqz p0, :cond_2d

    .line 243
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_27

    .line 245
    :try_start_1b
    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1f} :catch_20

    goto :goto_38

    :catch_20
    move-exception p0

    const-string v2, "dealType rethrowFromSystemServer:"

    .line 247
    invoke-static {v1, v2, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38

    :cond_27
    const-string p0, "isDozeIdleMode is version control state!"

    .line 250
    invoke-static {v1, p0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_2d
    const-string p0, "isDozeIdleMode powerManager is null!"

    .line 254
    invoke-static {v1, p0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_33
    const-string p0, "isDozeIdleMode Context is null!"

    .line 258
    invoke-static {v1, p0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_38
    return v0
.end method

.method public static isInteractive(Landroid/content/Context;)Z
    .registers 3

    if-eqz p0, :cond_3f

    const-string v0, "power"

    .line 33
    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 35
    instance-of v0, p0, Landroid/os/PowerManager;

    if-eqz v0, :cond_3f

    .line 36
    check-cast p0, Landroid/os/PowerManager;

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3f

    .line 39
    :try_start_14
    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_18} :catch_19

    goto :goto_40

    :catch_19
    move-exception p0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActiveNetworkInfo failed, exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PowerUtils"

    .line 41
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3f
    const/4 p0, 0x0

    :goto_40
    return p0
.end method

.method public static isWhilteList(Landroid/content/Context;)Z
    .registers 4

    if-eqz p0, :cond_29

    const-string v0, "power"

    .line 207
    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    instance-of v1, v0, Landroid/os/PowerManager;

    if-eqz v1, :cond_f

    .line 209
    check-cast v0, Landroid/os/PowerManager;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 211
    :goto_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz v0, :cond_29

    .line 214
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_29

    .line 216
    :try_start_1c
    invoke-virtual {v0, p0}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p0
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_20} :catch_21

    goto :goto_2a

    :catch_21
    move-exception p0

    const-string v0, "PowerUtils"

    const-string v1, "dealType rethrowFromSystemServer:"

    .line 218
    invoke-static {v0, v1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    return p0
.end method

.method public static readDataSaverMode(Landroid/content/Context;)I
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "PowerUtils"

    const/4 v1, 0x0

    if-eqz p0, :cond_42

    const-string v2, "connectivity"

    .line 150
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 151
    instance-of v3, v2, Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_12

    .line 152
    check-cast v2, Landroid/net/ConnectivityManager;

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    if-eqz v2, :cond_3c

    .line 156
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_47

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    .line 157
    invoke-static {p0, v3}, Lcom/huawei/hms/framework/common/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_24

    return v1

    .line 160
    :cond_24
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p0

    if-eqz p0, :cond_36

    .line 161
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p0, v0, :cond_47

    .line 162
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result p0

    move v1, p0

    goto :goto_47

    :cond_36
    const-string p0, "ConnectType is not Mobile Network!"

    .line 165
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_47

    :cond_3c
    const-string p0, "readDataSaverMode Context is null!"

    .line 169
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_42
    const-string p0, "readDataSaverMode manager is null!"

    .line 173
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_47
    :goto_47
    return v1
.end method

.method public static readPowerSaverMode(Landroid/content/Context;)I
    .registers 5

    const-string v0, "PowerUtils"

    if-eqz p0, :cond_44

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/huawei/hms/framework/common/PowerUtils$PowerMode;->SMART_MODE_STATUS:Ljava/lang/String;

    sget v3, Lcom/huawei/hms/framework/common/PowerUtils$PowerMode;->POWER_MODE_DEFAULT_RETURN_VALUE:I

    invoke-static {v1, v2, v3}, Lcom/huawei/hms/framework/common/SettingUtil;->getSystemInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 63
    sget v2, Lcom/huawei/hms/framework/common/PowerUtils$PowerMode;->POWER_MODE_DEFAULT_RETURN_VALUE:I

    if-ne v1, v2, :cond_4a

    const/4 v2, 0x0

    const-string v3, "power"

    .line 65
    invoke-static {p0, v3}, Lcom/huawei/hms/framework/common/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 66
    instance-of v3, p0, Landroid/os/PowerManager;

    if-eqz v3, :cond_22

    .line 67
    move-object v2, p0

    check-cast v2, Landroid/os/PowerManager;

    :cond_22
    if-eqz v2, :cond_4a

    .line 71
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt p0, v3, :cond_3e

    .line 73
    :try_start_2a
    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    if-eqz p0, :cond_33

    .line 75
    sget p0, Lcom/huawei/hms/framework/common/PowerUtils$PowerMode;->POWER_SAVER_MODE:I

    goto :goto_35

    .line 77
    :cond_33
    sget p0, Lcom/huawei/hms/framework/common/PowerUtils$PowerMode;->POWER_MODE_DEFAULT_RETURN_VALUE:I
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_35} :catch_37

    :goto_35
    move v1, p0

    goto :goto_4a

    :catch_37
    move-exception p0

    const-string v2, "dealType rethrowFromSystemServer:"

    .line 80
    invoke-static {v0, v2, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4a

    :cond_3e
    const-string p0, "readPowerSaverMode is control by version!"

    .line 83
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4a

    :cond_44
    const-string p0, "readPowerSaverMode Context is null!"

    .line 88
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    :cond_4a
    :goto_4a
    return v1
.end method
