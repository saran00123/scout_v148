.class Lcom/taobao/accs/data/c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/data/a;


# direct methods
.method constructor <init>(Lcom/taobao/accs/data/a;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/taobao/accs/data/c;->a:Lcom/taobao/accs/data/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 66
    iget-object v0, p0, Lcom/taobao/accs/data/c;->a:Lcom/taobao/accs/data/a;

    monitor-enter v0

    .line 67
    :try_start_3
    iget-object v1, p0, Lcom/taobao/accs/data/c;->a:Lcom/taobao/accs/data/a;

    invoke-static {v1}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/a;)I

    move-result v1

    if-nez v1, :cond_4d

    const-string v1, "AssembleMessage"

    const-string v2, "timeout"

    const/4 v3, 0x2

    .line 68
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "dataId"

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/taobao/accs/data/c;->a:Lcom/taobao/accs/data/a;

    invoke-static {v4}, Lcom/taobao/accs/data/a;->b(Lcom/taobao/accs/data/a;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lcom/taobao/accs/data/c;->a:Lcom/taobao/accs/data/a;

    invoke-static {v1, v5}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/a;I)I

    .line 70
    iget-object v1, p0, Lcom/taobao/accs/data/c;->a:Lcom/taobao/accs/data/a;

    invoke-static {v1}, Lcom/taobao/accs/data/a;->c(Lcom/taobao/accs/data/a;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 72
    new-instance v1, Lcom/taobao/accs/ut/monitor/AssembleMonitor;

    iget-object v2, p0, Lcom/taobao/accs/data/c;->a:Lcom/taobao/accs/data/a;

    invoke-static {v2}, Lcom/taobao/accs/data/a;->b(Lcom/taobao/accs/data/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/accs/data/c;->a:Lcom/taobao/accs/data/a;

    invoke-static {v3}, Lcom/taobao/accs/data/a;->a(Lcom/taobao/accs/data/a;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/taobao/accs/ut/monitor/AssembleMonitor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v2

    invoke-interface {v2, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 75
    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v1
.end method
