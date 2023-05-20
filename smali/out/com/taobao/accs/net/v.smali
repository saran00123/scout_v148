.class Lcom/taobao/accs/net/v;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/taobao/accs/net/s;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/s;Ljava/lang/String;)V
    .registers 3

    .line 540
    iput-object p1, p0, Lcom/taobao/accs/net/v;->b:Lcom/taobao/accs/net/s;

    iput-object p2, p0, Lcom/taobao/accs/net/v;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 544
    iget-object v0, p0, Lcom/taobao/accs/net/v;->a:Ljava/lang/String;

    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/taobao/accs/net/v;->b:Lcom/taobao/accs/net/s;

    invoke-static {v1}, Lcom/taobao/accs/net/s;->d(Lcom/taobao/accs/net/s;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 545
    iget-object v0, p0, Lcom/taobao/accs/net/v;->b:Lcom/taobao/accs/net/s;

    invoke-static {v0}, Lcom/taobao/accs/net/s;->b(Lcom/taobao/accs/net/s;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_35

    .line 546
    iget-object v0, p0, Lcom/taobao/accs/net/v;->b:Lcom/taobao/accs/net/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;Z)Z

    .line 547
    iget-object v0, p0, Lcom/taobao/accs/net/v;->b:Lcom/taobao/accs/net/s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taobao/accs/net/s;->b(Lcom/taobao/accs/net/s;Z)Z

    .line 548
    iget-object v0, p0, Lcom/taobao/accs/net/v;->b:Lcom/taobao/accs/net/s;

    invoke-virtual {v0}, Lcom/taobao/accs/net/s;->l()V

    .line 549
    iget-object v0, p0, Lcom/taobao/accs/net/v;->b:Lcom/taobao/accs/net/s;

    invoke-static {v0}, Lcom/taobao/accs/net/s;->c(Lcom/taobao/accs/net/s;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v0

    const-string v1, "conn timeout"

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    :cond_35
    return-void
.end method
