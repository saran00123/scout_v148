.class public Lcom/xiaomi/mipush/sdk/Logger;
.super Ljava/lang/Object;


# static fields
.field private static sDisablePushLog:Z = false

.field private static sUserLogger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disablePushFileLog(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/mipush/sdk/Logger;->sDisablePushLog:Z

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/Logger;->setPushLog(Landroid/content/Context;)V

    return-void
.end method

.method public static enablePushFileLog(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/mipush/sdk/Logger;->sDisablePushLog:Z

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/Logger;->setPushLog(Landroid/content/Context;)V

    return-void
.end method

.method public static getLogFile(Ljava/lang/String;)Ljava/io/File;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected static getUserLogger()Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;
    .registers 1

    sget-object v0, Lcom/xiaomi/mipush/sdk/Logger;->sUserLogger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    return-object v0
.end method

.method private static hasWritePermission(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x1000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p0, :cond_26

    array-length v1, p0

    move v2, v0

    :goto_15
    if-ge v2, v1, :cond_26

    aget-object v3, p0, v2

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_26

    if-eqz v3, :cond_23

    const/4 p0, 0x1

    return p0

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :catch_26
    :cond_26
    return v0
.end method

.method public static setLogger(Landroid/content/Context;Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V
    .registers 2

    sput-object p1, Lcom/xiaomi/mipush/sdk/Logger;->sUserLogger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/Logger;->setPushLog(Landroid/content/Context;)V

    return-void
.end method

.method public static setPushLog(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/xiaomi/mipush/sdk/Logger;->sUserLogger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    sget-boolean v3, Lcom/xiaomi/mipush/sdk/Logger;->sDisablePushLog:Z

    if-eqz v3, :cond_f

    move v0, v2

    goto :goto_16

    :cond_f
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/Logger;->hasWritePermission(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_16

    move v2, v1

    :cond_16
    :goto_16
    new-instance v1, Lcom/xiaomi/push/dh;

    const/4 v3, 0x0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/xiaomi/mipush/sdk/Logger;->sUserLogger:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    goto :goto_1f

    :cond_1e
    move-object v0, v3

    :goto_1f
    if-eqz v2, :cond_25

    invoke-static {p0}, Lcom/xiaomi/push/di;->a(Landroid/content/Context;)Lcom/xiaomi/push/di;

    move-result-object v3

    :cond_25
    invoke-direct {v1, v0, v3}, Lcom/xiaomi/push/dh;-><init>(Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V

    return-void
.end method

.method public static uploadLogFile(Landroid/content/Context;Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method
