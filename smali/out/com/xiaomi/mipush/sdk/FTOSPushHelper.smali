.class public Lcom/xiaomi/mipush/sdk/FTOSPushHelper;
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

.method private static a(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/f;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/f;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/mipush/sdk/e;->d:Lcom/xiaomi/mipush/sdk/e;

    invoke-virtual {p0, v0}, Lcom/xiaomi/mipush/sdk/f;->a(Lcom/xiaomi/mipush/sdk/e;)Lcom/xiaomi/mipush/sdk/AbstractPushManager;

    move-result-object p0

    if-eqz p0, :cond_14

    const-string v0, "ASSEMBLE_PUSH :  register fun touch os when network change!"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/xiaomi/mipush/sdk/AbstractPushManager;->register()V

    :cond_14
    return-void
.end method

.method public static doInNetworkChange(Landroid/content/Context;)V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/xiaomi/mipush/sdk/FTOSPushHelper;->getNeedRegister()Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-wide v2, Lcom/xiaomi/mipush/sdk/FTOSPushHelper;->a:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1a

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gtz v2, :cond_1f

    :cond_1a
    sput-wide v0, Lcom/xiaomi/mipush/sdk/FTOSPushHelper;->a:J

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/FTOSPushHelper;->a(Landroid/content/Context;)V

    :cond_1f
    return-void
.end method

.method public static getNeedRegister()Z
    .registers 1

    sget-boolean v0, Lcom/xiaomi/mipush/sdk/FTOSPushHelper;->a:Z

    return v0
.end method

.method public static hasNetwork(Landroid/content/Context;)Z
    .registers 1

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static notifyFTOSNotificationClicked(Landroid/content/Context;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_31

    const-string v0, "pushMsg"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_31

    :cond_b
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/PushMessageReceiver;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/i;->a(Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/MiPushMessage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/MiPushMessage;->getExtra()Ljava/util/Map;

    move-result-object v1

    const-string v2, "notify_effect"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    return-void

    :cond_2e
    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/mipush/sdk/PushMessageReceiver;->onNotificationMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public static setNeedRegister(Z)V
    .registers 1

    sput-boolean p0, Lcom/xiaomi/mipush/sdk/FTOSPushHelper;->a:Z

    return-void
.end method

.method public static uploadToken(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/xiaomi/mipush/sdk/e;->d:Lcom/xiaomi/mipush/sdk/e;

    invoke-static {p0, v0, p1}, Lcom/xiaomi/mipush/sdk/i;->a(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/e;Ljava/lang/String;)V

    return-void
.end method
