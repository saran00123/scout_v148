.class Lanetwork/channel/unified/k;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/unified/k$a;
    }
.end annotation


# instance fields
.field protected a:Lanetwork/channel/unified/j;


# direct methods
.method public constructor <init>(Lanetwork/channel/entity/g;Lanetwork/channel/entity/c;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iget-object v0, p1, Lanetwork/channel/entity/g;->e:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lanetwork/channel/entity/c;->a(Ljava/lang/String;)V

    .line 44
    new-instance v0, Lanetwork/channel/unified/j;

    invoke-direct {v0, p1, p2}, Lanetwork/channel/unified/j;-><init>(Lanetwork/channel/entity/g;Lanetwork/channel/interceptor/Callback;)V

    iput-object v0, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    return-void
.end method

.method static synthetic a(Lanetwork/channel/unified/k;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Lanetwork/channel/unified/k;->c()V

    return-void
.end method

.method private c()V
    .registers 6

    .line 152
    iget-object v0, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    new-instance v1, Lanetwork/channel/unified/n;

    invoke-direct {v1, p0}, Lanetwork/channel/unified/n;-><init>(Lanetwork/channel/unified/k;)V

    iget-object v2, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v2, v2, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    .line 168
    invoke-virtual {v2}, Lanetwork/channel/entity/g;->b()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 152
    invoke-static {v1, v2, v3, v4}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/unified/j;->f:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Future;
    .registers 8

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 97
    iget-object v2, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v2, v2, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget-object v2, v2, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    iput-wide v0, v2, Lanet/channel/statist/RequestStatistic;->reqServiceTransmissionEnd:J

    .line 98
    iget-object v2, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v2, v2, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget-object v2, v2, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    iput-wide v0, v2, Lanet/channel/statist/RequestStatistic;->start:J

    .line 99
    iget-object v0, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget-object v0, v0, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    iget-object v1, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v1}, Lanetwork/channel/entity/g;->c()Z

    move-result v1

    iput-boolean v1, v0, Lanet/channel/statist/RequestStatistic;->isReqSync:Z

    .line 100
    iget-object v0, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget-object v0, v0, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_38

    move v1, v3

    goto :goto_39

    :cond_38
    move v1, v4

    :goto_39
    iput-boolean v1, v0, Lanet/channel/statist/RequestStatistic;->isReqMain:Z

    .line 104
    :try_start_3b
    iget-object v0, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget-object v0, v0, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    iget-object v1, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    const-string v2, "f-netReqStart"

    invoke-virtual {v1, v2}, Lanetwork/channel/entity/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lanet/channel/statist/RequestStatistic;->netReqStart:J
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_55} :catch_55

    .line 108
    :catch_55
    iget-object v0, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    const-string v1, "f-traceId"

    invoke-virtual {v0, v1}, Lanetwork/channel/entity/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 110
    iget-object v1, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget-object v1, v1, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    iput-object v0, v1, Lanet/channel/statist/RequestStatistic;->traceId:Ljava/lang/String;

    .line 114
    :cond_6d
    iget-object v1, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    const-string v2, "f-reqProcess"

    invoke-virtual {v1, v2}, Lanetwork/channel/entity/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v2, v2, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget-object v2, v2, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    iput-object v1, v2, Lanet/channel/statist/RequestStatistic;->process:Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v2, v2, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget-object v2, v2, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    iget-object v5, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v5, v5, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    const-string v6, "f-pTraceId"

    invoke-virtual {v5, v6}, Lanetwork/channel/entity/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lanet/channel/statist/RequestStatistic;->pTraceId:Ljava/lang/String;

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[traceId:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "start"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v2, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v2, v2, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "bizId"

    aput-object v6, v5, v4

    iget-object v4, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v4, v4, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v4}, Lanetwork/channel/entity/g;->a()Lanet/channel/request/Request;

    move-result-object v4

    invoke-virtual {v4}, Lanet/channel/request/Request;->getBizId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "processFrom"

    aput-object v4, v5, v3

    const/4 v3, 0x3

    aput-object v1, v5, v3

    const/4 v1, 0x4

    const-string/jumbo v3, "url"

    aput-object v3, v5, v1

    const/4 v1, 0x5

    iget-object v3, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v3, v3, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v3}, Lanetwork/channel/entity/g;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    const-string v1, "anet.UnifiedRequestTask"

    invoke-static {v1, v0, v2, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v0}, Lanetwork/channel/entity/g;->f()Lanet/channel/util/HttpUrl;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/config/NetworkConfigCenter;->isUrlInDegradeList(Lanet/channel/util/HttpUrl;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 126
    new-instance v0, Lanetwork/channel/unified/b;

    iget-object v1, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    invoke-direct {v0, v1}, Lanetwork/channel/unified/b;-><init>(Lanetwork/channel/unified/j;)V

    .line 127
    iget-object v1, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iput-object v0, v1, Lanetwork/channel/unified/j;->e:Lanetwork/channel/unified/IUnifiedTask;

    .line 128
    new-instance v1, Lanet/channel/request/b;

    new-instance v2, Lanetwork/channel/unified/l;

    invoke-direct {v2, p0}, Lanetwork/channel/unified/l;-><init>(Lanetwork/channel/unified/k;)V

    invoke-static {v2}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitBackupTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    iget-object v3, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v3, v3, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    .line 133
    invoke-virtual {v3}, Lanetwork/channel/entity/g;->a()Lanet/channel/request/Request;

    move-result-object v3

    invoke-virtual {v3}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lanet/channel/request/b;-><init>(Ljava/util/concurrent/Future;Ljava/lang/String;)V

    .line 134
    iput-object v1, v0, Lanetwork/channel/unified/b;->a:Lanet/channel/request/Cancelable;

    .line 135
    invoke-direct {p0}, Lanetwork/channel/unified/k;->c()V

    .line 136
    new-instance v0, Lanetwork/channel/unified/d;

    invoke-direct {v0, p0}, Lanetwork/channel/unified/d;-><init>(Lanetwork/channel/unified/k;)V

    return-object v0

    .line 139
    :cond_122
    new-instance v0, Lanetwork/channel/unified/m;

    invoke-direct {v0, p0}, Lanetwork/channel/unified/m;-><init>(Lanetwork/channel/unified/k;)V

    sget v1, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->HIGH:I

    invoke-static {v0, v1}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    .line 148
    new-instance v0, Lanetwork/channel/unified/d;

    invoke-direct {v0, p0}, Lanetwork/channel/unified/d;-><init>(Lanetwork/channel/unified/k;)V

    return-object v0
.end method

.method b()V
    .registers 12

    .line 172
    iget-object v0, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 173
    iget-object v0, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v0}, Lanetwork/channel/entity/g;->f()Lanet/channel/util/HttpUrl;

    move-result-object v0

    .line 174
    iget-object v3, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v3, v3, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "URL"

    aput-object v6, v5, v2

    invoke-virtual {v0}, Lanet/channel/util/HttpUrl;->simpleUrlString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v0, "anet.UnifiedRequestTask"

    const-string/jumbo v6, "task cancelled"

    invoke-static {v0, v6, v3, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget-object v0, v0, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    .line 177
    iget-object v3, v0, Lanet/channel/statist/RequestStatistic;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, -0xcc

    if-eqz v1, :cond_70

    .line 178
    iput v4, v0, Lanet/channel/statist/RequestStatistic;->ret:I

    .line 179
    iput v3, v0, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 180
    invoke-static {v3}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    .line 182
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v1

    new-instance v4, Lanet/channel/statist/ExceptionStatistic;

    invoke-direct {v4, v3, v2, v0, v2}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;Ljava/lang/Throwable;)V

    invoke-interface {v1, v4}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 183
    iget-wide v4, v0, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    const-wide/32 v6, 0x19000

    cmp-long v1, v4, v6

    if-lez v1, :cond_70

    .line 185
    invoke-static {}, Lanet/channel/monitor/b;->a()Lanet/channel/monitor/b;

    move-result-object v4

    iget-wide v5, v0, Lanet/channel/statist/RequestStatistic;->sendStart:J

    iget-wide v7, v0, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    iget-wide v9, v0, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    invoke-virtual/range {v4 .. v10}, Lanet/channel/monitor/b;->a(JJJ)V

    .line 189
    :cond_70
    iget-object v0, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    invoke-virtual {v0}, Lanetwork/channel/unified/j;->b()V

    .line 190
    iget-object v0, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    invoke-virtual {v0}, Lanetwork/channel/unified/j;->a()V

    .line 191
    iget-object v0, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->b:Lanetwork/channel/interceptor/Callback;

    new-instance v1, Lanetwork/channel/aidl/DefaultFinishEvent;

    iget-object v4, p0, Lanetwork/channel/unified/k;->a:Lanetwork/channel/unified/j;

    iget-object v4, v4, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v4}, Lanetwork/channel/entity/g;->a()Lanet/channel/request/Request;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanet/channel/request/Request;)V

    invoke-interface {v0, v1}, Lanetwork/channel/interceptor/Callback;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    :cond_8e
    return-void
.end method
