.class Lcom/xiaomi/push/gr;
.super Lcom/xiaomi/push/service/XMPushService$j;


# instance fields
.field final synthetic a:J

.field final synthetic a:Lcom/xiaomi/push/gq;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lcom/xiaomi/push/gq;IJJ)V
    .registers 7

    iput-object p1, p0, Lcom/xiaomi/push/gr;->a:Lcom/xiaomi/push/gq;

    iput-wide p3, p0, Lcom/xiaomi/push/gr;->a:J

    iput-wide p5, p0, Lcom/xiaomi/push/gr;->b:J

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check the ping-pong."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/push/gr;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 4

    invoke-static {}, Ljava/lang/Thread;->yield()V

    iget-object v0, p0, Lcom/xiaomi/push/gr;->a:Lcom/xiaomi/push/gq;

    invoke-virtual {v0}, Lcom/xiaomi/push/gq;->c()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/xiaomi/push/gr;->a:Lcom/xiaomi/push/gq;

    iget-wide v1, p0, Lcom/xiaomi/push/gr;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/gq;->a(J)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/xiaomi/push/gr;->a:Lcom/xiaomi/push/gq;

    iget-object v0, v0, Lcom/xiaomi/push/gq;->b:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/et;->a(Landroid/content/Context;)Lcom/xiaomi/push/et;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/et;->d()V

    iget-object v0, p0, Lcom/xiaomi/push/gr;->a:Lcom/xiaomi/push/gq;

    iget-object v0, v0, Lcom/xiaomi/push/gq;->b:Lcom/xiaomi/push/service/XMPushService;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    :cond_2a
    return-void
.end method
