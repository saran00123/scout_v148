.class Lanetwork/channel/unified/n;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanetwork/channel/unified/k;


# direct methods
.method constructor <init>(Lanetwork/channel/unified/k;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lanetwork/channel/unified/n;->a:Lanetwork/channel/unified/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 155
    iget-object v0, p0, Lanetwork/channel/unified/n;->a:Lanetwork/channel/unified/k;

    iget-object v0, v0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 156
    iget-object v0, p0, Lanetwork/channel/unified/n;->a:Lanetwork/channel/unified/k;

    iget-object v0, v0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget-object v0, v0, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    .line 157
    iget-object v3, v0, Lanet/channel/statist/RequestStatistic;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, -0xca

    if-eqz v3, :cond_52

    .line 158
    iput v5, v0, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 159
    invoke-static {v5}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    .line 161
    iget-object v3, p0, Lanetwork/channel/unified/n;->a:Lanetwork/channel/unified/k;

    iget-object v3, v3, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v3, v3, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "rs"

    aput-object v7, v6, v2

    aput-object v0, v6, v1

    const-string v1, "anet.UnifiedRequestTask"

    const-string/jumbo v2, "task time out"

    invoke-static {v1, v2, v3, v6}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v1

    new-instance v2, Lanet/channel/statist/ExceptionStatistic;

    invoke-direct {v2, v5, v4, v0, v4}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 164
    :cond_52
    iget-object v0, p0, Lanetwork/channel/unified/n;->a:Lanetwork/channel/unified/k;

    iget-object v0, v0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    invoke-virtual {v0}, Lanetwork/channel/unified/j;->b()V

    .line 165
    iget-object v0, p0, Lanetwork/channel/unified/n;->a:Lanetwork/channel/unified/k;

    iget-object v0, v0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->b:Lanetwork/channel/interceptor/Callback;

    new-instance v1, Lanetwork/channel/aidl/DefaultFinishEvent;

    iget-object v2, p0, Lanetwork/channel/unified/n;->a:Lanetwork/channel/unified/k;

    iget-object v2, v2, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v2, v2, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v2}, Lanetwork/channel/entity/g;->a()Lanet/channel/request/Request;

    move-result-object v2

    invoke-direct {v1, v5, v4, v2}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanet/channel/request/Request;)V

    invoke-interface {v0, v1}, Lanetwork/channel/interceptor/Callback;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    :cond_71
    return-void
.end method
