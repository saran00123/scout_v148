.class public Lcom/xiaomi/mipush/sdk/COSPushHelper;
.super Ljava/lang/Object;


# static fields
.field private static a:J = 0x0L

.field private static volatile a:Z = false


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

.method public static convertMessage(Landroid/content/Intent;)V
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public static doInNetworkChange(Landroid/content/Context;)V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/xiaomi/mipush/sdk/COSPushHelper;->getNeedRegister()Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-wide v2, Lcom/xiaomi/mipush/sdk/COSPushHelper;->a:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1a

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_1f

    :cond_1a
    sput-wide v0, Lcom/xiaomi/mipush/sdk/COSPushHelper;->a:J

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/COSPushHelper;->registerCOSAssemblePush(Landroid/content/Context;)V

    :cond_1f
    return-void
.end method

.method public static getNeedRegister()Z
    .registers 1

    sget-boolean v0, Lcom/xiaomi/mipush/sdk/COSPushHelper;->a:Z

    return v0
.end method

.method public static hasNetwork(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static onNotificationMessageCome(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static onPassThoughMessageCome(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static registerCOSAssemblePush(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/f;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/mipush/sdk/e;->c:Lcom/xiaomi/mipush/sdk/e;

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/f;->a(Lcom/xiaomi/mipush/sdk/e;)Lcom/xiaomi/mipush/sdk/AbstractPushManager;

    move-result-object p0

    if-eqz p0, :cond_14

    const-string v0, "ASSEMBLE_PUSH :  register cos when network change!"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/xiaomi/mipush/sdk/AbstractPushManager;->register()V

    :cond_14
    return-void
.end method

.method public static declared-synchronized setNeedRegister(Z)V
    .registers 2

    const-class v0, Lcom/xiaomi/mipush/sdk/COSPushHelper;

    monitor-enter v0

    :try_start_3
    sput-boolean p0, Lcom/xiaomi/mipush/sdk/COSPushHelper;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static uploadToken(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/xiaomi/mipush/sdk/e;->c:Lcom/xiaomi/mipush/sdk/e;

    invoke-static {p0, v0, p1}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;Ljava/lang/String;)V

    return-void
.end method
