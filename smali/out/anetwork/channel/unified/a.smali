.class public Lanetwork/channel/unified/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/unified/IUnifiedTask;


# instance fields
.field private a:Lanetwork/channel/unified/j;

.field private b:Lanetwork/channel/cache/Cache;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lanetwork/channel/unified/j;Lanetwork/channel/cache/Cache;)V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lanetwork/channel/unified/a;->a:Lanetwork/channel/unified/j;

    .line 19
    iput-object v0, p0, Lanetwork/channel/unified/a;->b:Lanetwork/channel/cache/Cache;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lanetwork/channel/unified/a;->c:Z

    .line 23
    iput-object p1, p0, Lanetwork/channel/unified/a;->a:Lanetwork/channel/unified/j;

    .line 24
    iput-object p2, p0, Lanetwork/channel/unified/a;->b:Lanetwork/channel/cache/Cache;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lanetwork/channel/unified/a;->c:Z

    .line 30
    iget-object v0, p0, Lanetwork/channel/unified/a;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget-object v0, v0, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    const/4 v1, 0x2

    iput v1, v0, Lanet/channel/statist/RequestStatistic;->ret:I

    return-void
.end method

.method public run()V
    .registers 18

    move-object/from16 v0, p0

    .line 35
    iget-boolean v1, v0, Lanetwork/channel/unified/a;->c:Z

    if-eqz v1, :cond_7

    return-void

    .line 40
    :cond_7
    iget-object v1, v0, Lanetwork/channel/unified/a;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget-object v1, v1, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    .line 42
    iget-object v2, v0, Lanetwork/channel/unified/a;->b:Lanetwork/channel/cache/Cache;

    if-eqz v2, :cond_139

    .line 43
    iget-object v2, v0, Lanetwork/channel/unified/a;->a:Lanetwork/channel/unified/j;

    iget-object v2, v2, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v2}, Lanetwork/channel/entity/g;->g()Ljava/lang/String;

    move-result-object v2

    .line 44
    iget-object v3, v0, Lanetwork/channel/unified/a;->a:Lanetwork/channel/unified/j;

    iget-object v3, v3, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v3}, Lanetwork/channel/entity/g;->a()Lanet/channel/request/Request;

    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v5, "Cache-Control"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "no-store"

    .line 47
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "anet.CacheTask"

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v5, :cond_46

    .line 53
    iget-object v4, v0, Lanetwork/channel/unified/a;->b:Lanetwork/channel/cache/Cache;

    invoke-interface {v4, v2}, Lanetwork/channel/cache/Cache;->remove(Ljava/lang/String;)V

    move v4, v12

    const/4 v9, 0x0

    goto :goto_a0

    :cond_46
    const-string v13, "no-cache"

    .line 55
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 56
    iget-object v13, v0, Lanetwork/channel/unified/a;->b:Lanetwork/channel/cache/Cache;

    invoke-interface {v13, v2}, Lanetwork/channel/cache/Cache;->get(Ljava/lang/String;)Lanetwork/channel/cache/Cache$Entry;

    move-result-object v13

    .line 58
    invoke-static {v10}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v14

    if-eqz v14, :cond_9f

    .line 59
    iget-object v14, v0, Lanetwork/channel/unified/a;->a:Lanetwork/channel/unified/j;

    iget-object v14, v14, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/Object;

    const-string v16, "hit"

    aput-object v16, v15, v12

    if-eqz v13, :cond_69

    move/from16 v16, v11

    goto :goto_6b

    :cond_69
    move/from16 v16, v12

    :goto_6b
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v11

    const-string v16, "cost"

    aput-object v16, v15, v10

    const/16 v16, 0x3

    iget-wide v9, v1, Lanet/channel/statist/RequestStatistic;->cacheTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v15, v16

    const/4 v9, 0x4

    const-string v10, "length"

    aput-object v10, v15, v9

    const/4 v9, 0x5

    if-eqz v13, :cond_8b

    iget-object v10, v13, Lanetwork/channel/cache/Cache$Entry;->data:[B

    array-length v10, v10

    goto :goto_8c

    :cond_8b
    move v10, v12

    .line 60
    :goto_8c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v15, v9

    const/4 v9, 0x6

    const-string v10, "key"

    aput-object v10, v15, v9

    const/4 v9, 0x7

    aput-object v2, v15, v9

    const-string v2, "read cache"

    .line 59
    invoke-static {v8, v2, v14, v15}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9f
    move-object v9, v13

    .line 64
    :goto_a0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long v6, v13, v6

    .line 65
    iput-wide v6, v1, Lanet/channel/statist/RequestStatistic;->cacheTime:J

    if-eqz v9, :cond_120

    if-nez v4, :cond_120

    .line 67
    invoke-virtual {v9}, Lanetwork/channel/cache/Cache$Entry;->isFresh()Z

    move-result v2

    if-eqz v2, :cond_120

    .line 68
    iget-object v2, v0, Lanetwork/channel/unified/a;->a:Lanetwork/channel/unified/j;

    iget-object v2, v2, Lanetwork/channel/unified/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v12, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_11f

    .line 69
    iget-object v2, v0, Lanetwork/channel/unified/a;->a:Lanetwork/channel/unified/j;

    invoke-virtual {v2}, Lanetwork/channel/unified/j;->a()V

    .line 71
    iput v11, v1, Lanet/channel/statist/RequestStatistic;->ret:I

    const/16 v2, 0xc8

    .line 72
    iput v2, v1, Lanet/channel/statist/RequestStatistic;->statusCode:I

    const-string v4, "SUCCESS"

    .line 73
    iput-object v4, v1, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    const-string v5, "cache"

    .line 74
    iput-object v5, v1, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    .line 75
    iput-wide v13, v1, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    .line 76
    iget-wide v5, v1, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v13, v5

    iput-wide v13, v1, Lanet/channel/statist/RequestStatistic;->processTime:J

    const/4 v1, 0x2

    .line 78
    invoke-static {v1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v5

    if-eqz v5, :cond_fa

    .line 79
    iget-object v5, v0, Lanetwork/channel/unified/a;->a:Lanetwork/channel/unified/j;

    iget-object v5, v5, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, "URL"

    aput-object v6, v1, v12

    iget-object v6, v0, Lanetwork/channel/unified/a;->a:Lanetwork/channel/unified/j;

    iget-object v6, v6, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v6}, Lanetwork/channel/entity/g;->f()Lanet/channel/util/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lanet/channel/util/HttpUrl;->urlString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v11

    const-string v6, "hit fresh cache"

    invoke-static {v8, v6, v5, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_fa
    iget-object v1, v0, Lanetwork/channel/unified/a;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->b:Lanetwork/channel/interceptor/Callback;

    iget-object v5, v9, Lanetwork/channel/cache/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {v1, v2, v5}, Lanetwork/channel/interceptor/Callback;->onResponseCode(ILjava/util/Map;)V

    .line 85
    iget-object v1, v0, Lanetwork/channel/unified/a;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->b:Lanetwork/channel/interceptor/Callback;

    iget-object v5, v9, Lanetwork/channel/cache/Cache$Entry;->data:[B

    array-length v5, v5

    iget-object v6, v9, Lanetwork/channel/cache/Cache$Entry;->data:[B

    invoke-static {v6}, Lanet/channel/bytes/ByteArray;->wrap([B)Lanet/channel/bytes/ByteArray;

    move-result-object v6

    invoke-interface {v1, v11, v5, v6}, Lanetwork/channel/interceptor/Callback;->onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V

    .line 86
    new-instance v1, Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-direct {v1, v2, v4, v3}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanet/channel/request/Request;)V

    .line 87
    iget-object v2, v0, Lanetwork/channel/unified/a;->a:Lanetwork/channel/unified/j;

    iget-object v2, v2, Lanetwork/channel/unified/j;->b:Lanetwork/channel/interceptor/Callback;

    invoke-interface {v2, v1}, Lanetwork/channel/interceptor/Callback;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    :cond_11f
    return-void

    .line 91
    :cond_120
    iget-boolean v1, v0, Lanetwork/channel/unified/a;->c:Z

    if-eqz v1, :cond_125

    return-void

    .line 95
    :cond_125
    new-instance v1, Lanetwork/channel/unified/e;

    iget-object v2, v0, Lanetwork/channel/unified/a;->a:Lanetwork/channel/unified/j;

    if-eqz v5, :cond_12d

    const/4 v3, 0x0

    goto :goto_12f

    :cond_12d
    iget-object v3, v0, Lanetwork/channel/unified/a;->b:Lanetwork/channel/cache/Cache;

    :goto_12f
    invoke-direct {v1, v2, v3, v9}, Lanetwork/channel/unified/e;-><init>(Lanetwork/channel/unified/j;Lanetwork/channel/cache/Cache;Lanetwork/channel/cache/Cache$Entry;)V

    .line 96
    iget-object v2, v0, Lanetwork/channel/unified/a;->a:Lanetwork/channel/unified/j;

    iput-object v1, v2, Lanetwork/channel/unified/j;->e:Lanetwork/channel/unified/IUnifiedTask;

    .line 97
    invoke-virtual {v1}, Lanetwork/channel/unified/e;->run()V

    :cond_139
    return-void
.end method
