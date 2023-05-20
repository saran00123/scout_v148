.class Lcom/xiaomi/push/service/cl;
.super Lcom/xiaomi/push/service/XMPushService$j;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;I)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/push/service/cl;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "[Guardian] send parents_guardian_state"

    return-object v0
.end method

.method public a()V
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_60

    iget-object v0, p0, Lcom/xiaomi/push/service/cl;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "parents_guardian_state"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/cl;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/push/service/s;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/r;

    move-result-object v1

    if-nez v1, :cond_1b

    return-void

    :cond_1b
    new-instance v2, Lcom/xiaomi/push/iu;

    invoke-direct {v2}, Lcom/xiaomi/push/iu;-><init>()V

    iget-object v3, v1, Lcom/xiaomi/push/service/r;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/iu;->b(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "kids_mode_on"

    goto :goto_32

    :cond_30
    const-string v0, "kids_mode_off"

    :goto_32
    invoke-virtual {v2, v0}, Lcom/xiaomi/push/iu;->c(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    invoke-static {}, Lcom/xiaomi/push/service/ba;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/iu;->a(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v0}, Lcom/xiaomi/push/iu;->a(Ljava/util/Map;)Lcom/xiaomi/push/iu;

    iget-object v0, p0, Lcom/xiaomi/push/service/cl;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/xiaomi/push/service/r;->d:Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/push/service/af;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;)Lcom/xiaomi/push/ir;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/cl;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/XMPushService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/xiaomi/push/service/XMPushService;->a(Ljava/lang/String;[BZ)V

    :cond_60
    return-void
.end method
