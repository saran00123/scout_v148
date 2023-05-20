.class Lcom/xiaomi/push/fq;
.super Lcom/xiaomi/push/service/XMPushService$j;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/fp;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/fp;I)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/push/fq;->a:Lcom/xiaomi/push/fp;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "Handling bind stats"

    return-object v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/fq;->a:Lcom/xiaomi/push/fp;

    invoke-static {v0}, Lcom/xiaomi/push/fp;->a(Lcom/xiaomi/push/fp;)V

    return-void
.end method
