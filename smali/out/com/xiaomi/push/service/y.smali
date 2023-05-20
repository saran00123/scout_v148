.class Lcom/xiaomi/push/service/y;
.super Lcom/xiaomi/push/service/XMPushService$j;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/ir;

.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(ILcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/ir;)V
    .registers 4

    iput-object p2, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    iput-object p3, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/ir;

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "send ack message for message."

    return-object v0
.end method

.method public a()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result v1
    :try_end_7
    .catch Lcom/xiaomi/push/gu; {:try_start_1 .. :try_end_7} :catch_1f

    if-eqz v1, :cond_11

    :try_start_9
    iget-object v1, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    iget-object v2, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/ir;

    invoke-static {v1, v2}, Lcom/xiaomi/push/service/ae;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;)Ljava/util/Map;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_11} :catch_11
    .catch Lcom/xiaomi/push/gu; {:try_start_9 .. :try_end_11} :catch_1f

    :catch_11
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    iget-object v2, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/ir;

    invoke-static {v1, v2, v0}, Lcom/xiaomi/push/service/w;->a(Landroid/content/Context;Lcom/xiaomi/push/ir;Ljava/util/Map;)Lcom/xiaomi/push/ir;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1, v0}, Lcom/xiaomi/push/service/af;->a(Lcom/xiaomi/push/service/XMPushService;Lcom/xiaomi/push/ir;)V
    :try_end_1e
    .catch Lcom/xiaomi/push/gu; {:try_start_11 .. :try_end_1e} :catch_1f

    goto :goto_2a

    :catch_1f
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/y;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    :goto_2a
    return-void
.end method
