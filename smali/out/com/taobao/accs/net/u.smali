.class Lcom/taobao/accs/net/u;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/net/s;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/s;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/taobao/accs/net/u;->a:Lcom/taobao/accs/net/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 228
    iget-object v0, p0, Lcom/taobao/accs/net/u;->a:Lcom/taobao/accs/net/s;

    invoke-virtual {v0}, Lcom/taobao/accs/net/s;->l()V

    .line 229
    iget-object v0, p0, Lcom/taobao/accs/net/u;->a:Lcom/taobao/accs/net/s;

    invoke-static {v0}, Lcom/taobao/accs/net/s;->c(Lcom/taobao/accs/net/s;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 230
    iget-object v0, p0, Lcom/taobao/accs/net/u;->a:Lcom/taobao/accs/net/s;

    invoke-static {v0}, Lcom/taobao/accs/net/s;->c(Lcom/taobao/accs/net/s;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v0

    const-string v1, "shut down"

    invoke-virtual {v0, v1}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 232
    :cond_18
    iget-object v0, p0, Lcom/taobao/accs/net/u;->a:Lcom/taobao/accs/net/s;

    invoke-static {v0}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 234
    :try_start_1f
    iget-object v1, p0, Lcom/taobao/accs/net/u;->a:Lcom/taobao/accs/net/s;

    invoke-static {v1}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_28} :catch_2b
    .catchall {:try_start_1f .. :try_end_28} :catchall_29

    goto :goto_2b

    :catchall_29
    move-exception v1

    goto :goto_2d

    .line 237
    :catch_2b
    :goto_2b
    :try_start_2b
    monitor-exit v0

    return-void

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_29

    throw v1
.end method
