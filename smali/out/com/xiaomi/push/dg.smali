.class Lcom/xiaomi/push/dg;
.super Lcom/xiaomi/push/an$b;


# instance fields
.field a:Lcom/xiaomi/push/an$b;

.field final synthetic a:Lcom/xiaomi/push/de;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/de;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/dg;->a:Lcom/xiaomi/push/de;

    invoke-direct {p0}, Lcom/xiaomi/push/an$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/dg;->a:Lcom/xiaomi/push/de;

    invoke-static {v0}, Lcom/xiaomi/push/de;->a(Lcom/xiaomi/push/de;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/de$b;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/xiaomi/push/de$b;->a()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/xiaomi/push/dg;->a:Lcom/xiaomi/push/de;

    invoke-static {v1}, Lcom/xiaomi/push/de;->a(Lcom/xiaomi/push/de;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    iput-object v0, p0, Lcom/xiaomi/push/dg;->a:Lcom/xiaomi/push/an$b;

    :cond_22
    iget-object v0, p0, Lcom/xiaomi/push/dg;->a:Lcom/xiaomi/push/an$b;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lcom/xiaomi/push/an$b;->b()V

    :cond_29
    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dg;->a:Lcom/xiaomi/push/an$b;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/xiaomi/push/an$b;->c()V

    :cond_7
    return-void
.end method
