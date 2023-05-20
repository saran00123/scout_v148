.class Lanetwork/channel/unified/i;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/RequestCb;


# instance fields
.field final synthetic a:Lanet/channel/request/Request;

.field final synthetic b:Lanet/channel/statist/RequestStatistic;

.field final synthetic c:Lanetwork/channel/unified/e;


# direct methods
.method constructor <init>(Lanetwork/channel/unified/e;Lanet/channel/request/Request;Lanet/channel/statist/RequestStatistic;)V
    .registers 4

    .line 373
    iput-object p1, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iput-object p2, p0, Lanetwork/channel/unified/i;->a:Lanet/channel/request/Request;

    iput-object p3, p0, Lanetwork/channel/unified/i;->b:Lanet/channel/statist/RequestStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceive(Lanet/channel/bytes/ByteArray;Z)V
    .registers 12

    .line 458
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 462
    :cond_b
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget v0, v0, Lanetwork/channel/unified/e;->j:I

    const-string v1, "anet.NetworkTask"

    const/4 v2, 0x0

    if-nez v0, :cond_21

    .line 463
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "[onDataReceive] receive first data chunk!"

    invoke-static {v1, v4, v0, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    if-eqz p2, :cond_30

    .line 467
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "[onDataReceive] receive last data chunk!"

    invoke-static {v1, v4, v0, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    :cond_30
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget v3, v0, Lanetwork/channel/unified/e;->j:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lanetwork/channel/unified/e;->j:I

    .line 473
    :try_start_38
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->m:Lanetwork/channel/unified/e$a;

    if-eqz v0, :cond_81

    .line 474
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->m:Lanetwork/channel/unified/e$a;

    iget-object v0, v0, Lanetwork/channel/unified/e$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v0, p0, Lanetwork/channel/unified/i;->b:Lanet/channel/statist/RequestStatistic;

    iget-wide v5, v0, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    const-wide/32 v7, 0x20000

    cmp-long v0, v5, v7

    if-gtz v0, :cond_54

    if-eqz p2, :cond_96

    .line 476
    :cond_54
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v3, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v3, v3, Lanetwork/channel/unified/e;->m:Lanetwork/channel/unified/e$a;

    iget-object v5, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v5, v5, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v5, v5, Lanetwork/channel/unified/j;->b:Lanetwork/channel/interceptor/Callback;

    iget-object v6, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget v6, v6, Lanetwork/channel/unified/e;->i:I

    invoke-virtual {v3, v5, v6}, Lanetwork/channel/unified/e$a;->a(Lanetwork/channel/interceptor/Callback;I)I

    move-result v3

    iput v3, v0, Lanetwork/channel/unified/e;->j:I

    .line 477
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iput-boolean v4, v0, Lanetwork/channel/unified/e;->k:Z

    .line 478
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v3, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget v3, v3, Lanetwork/channel/unified/e;->j:I

    if-le v3, v4, :cond_78

    move v3, v4

    goto :goto_79

    :cond_78
    move v3, v2

    :goto_79
    iput-boolean v3, v0, Lanetwork/channel/unified/e;->l:Z

    .line 479
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    const/4 v3, 0x0

    iput-object v3, v0, Lanetwork/channel/unified/e;->m:Lanetwork/channel/unified/e$a;

    goto :goto_96

    .line 482
    :cond_81
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->b:Lanetwork/channel/interceptor/Callback;

    iget-object v3, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget v3, v3, Lanetwork/channel/unified/e;->j:I

    iget-object v5, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget v5, v5, Lanetwork/channel/unified/e;->i:I

    invoke-interface {v0, v3, v5, p1}, Lanetwork/channel/interceptor/Callback;->onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V

    .line 483
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iput-boolean v4, v0, Lanetwork/channel/unified/e;->l:Z

    .line 486
    :cond_96
    :goto_96
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->d:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_11d

    .line 487
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v3

    invoke-virtual {p1}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result p1

    invoke-virtual {v0, v3, v2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz p2, :cond_11d

    .line 489
    iget-object p1, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p1, p1, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object p1, p1, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {p1}, Lanetwork/channel/entity/g;->g()Ljava/lang/String;

    move-result-object p1

    .line 490
    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->d:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p2, Lanetwork/channel/cache/Cache$Entry;->data:[B

    .line 491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 492
    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->b:Lanetwork/channel/cache/Cache;

    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    invoke-interface {p2, p1, v0}, Lanetwork/channel/cache/Cache;->put(Ljava/lang/String;Lanetwork/channel/cache/Cache$Entry;)V

    const-string/jumbo p2, "write cache"

    .line 493
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const-string v7, "cost"

    aput-object v7, v3, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "size"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v5, v5, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    iget-object v5, v5, Lanetwork/channel/cache/Cache$Entry;->data:[B

    array-length v5, v5

    .line 494
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "key"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p1, v3, v4

    .line 493
    invoke-static {v1, p2, v0, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_10e} :catch_10f

    goto :goto_11d

    :catch_10f
    move-exception p1

    .line 498
    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object p2, p2, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "[onDataReceive] error."

    invoke-static {v1, v2, p2, p1, v0}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_11d
    :goto_11d
    return-void
.end method

.method public onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .registers 16

    const-string/jumbo v0, "|"

    .line 504
    iget-object v1, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v1, v1, Lanetwork/channel/unified/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_f

    return-void

    :cond_f
    const/4 v1, 0x2

    .line 508
    invoke-static {v1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x4

    const-string v6, "anet.NetworkTask"

    const/4 v7, 0x0

    if-eqz v3, :cond_38

    .line 509
    iget-object v3, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v3, v3, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v3, v3, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    new-array v8, v5, [Ljava/lang/Object;

    const-string v9, "code"

    aput-object v9, v8, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    const-string v9, "msg"

    aput-object v9, v8, v1

    aput-object p2, v8, v4

    const-string v9, "[onFinish]"

    invoke-static {v6, v9, v3, v8}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_38
    if-gez p1, :cond_13c

    .line 513
    :try_start_3a
    iget-object v3, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v3, v3, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v3, v3, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v3}, Lanetwork/channel/entity/g;->d()Z

    move-result v3

    if-eqz v3, :cond_13c

    .line 514
    iget-object v3, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-boolean v3, v3, Lanetwork/channel/unified/e;->k:Z

    if-nez v3, :cond_109

    iget-object v3, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-boolean v3, v3, Lanetwork/channel/unified/e;->l:Z

    if-nez v3, :cond_109

    const-string p2, "clear response buffer and retry"

    .line 515
    iget-object v1, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v1, v1, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v6, p2, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->m:Lanetwork/channel/unified/e$a;

    if-eqz p2, :cond_81

    .line 519
    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->m:Lanetwork/channel/unified/e$a;

    iget-object p2, p2, Lanetwork/channel/unified/e$a;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_72

    goto :goto_73

    :cond_72
    move v4, v5

    :goto_73
    iput v4, p3, Lanet/channel/statist/RequestStatistic;->roaming:I

    .line 520
    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->m:Lanetwork/channel/unified/e$a;

    invoke-virtual {p2}, Lanetwork/channel/unified/e$a;->a()V

    .line 521
    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    const/4 v1, 0x0

    iput-object v1, p2, Lanetwork/channel/unified/e;->m:Lanetwork/channel/unified/e$a;

    .line 524
    :cond_81
    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object p2, p2, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget p2, p2, Lanetwork/channel/entity/g;->a:I

    if-nez p2, :cond_99

    .line 525
    iget-object p2, p3, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    iput-object p2, p3, Lanet/channel/statist/RequestStatistic;->firstProtocol:Ljava/lang/String;

    .line 526
    iget p2, p3, Lanet/channel/statist/RequestStatistic;->tnetErrorCode:I

    if-eqz p2, :cond_96

    iget p2, p3, Lanet/channel/statist/RequestStatistic;->tnetErrorCode:I

    goto :goto_97

    :cond_96
    move p2, p1

    :goto_97
    iput p2, p3, Lanet/channel/statist/RequestStatistic;->firstErrorCode:I

    .line 529
    :cond_99
    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object p2, p2, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {p2}, Lanetwork/channel/entity/g;->k()V

    .line 530
    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p2, Lanetwork/channel/unified/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 531
    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    new-instance v1, Lanetwork/channel/unified/e;

    iget-object v2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v2, v2, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v3, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v3, v3, Lanetwork/channel/unified/e;->b:Lanetwork/channel/cache/Cache;

    iget-object v4, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v4, v4, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    invoke-direct {v1, v2, v3, v4}, Lanetwork/channel/unified/e;-><init>(Lanetwork/channel/unified/j;Lanetwork/channel/cache/Cache;Lanetwork/channel/cache/Cache$Entry;)V

    iput-object v1, p2, Lanetwork/channel/unified/j;->e:Lanetwork/channel/unified/IUnifiedTask;

    .line 534
    iget p2, p3, Lanet/channel/statist/RequestStatistic;->tnetErrorCode:I

    if-eqz p2, :cond_e7

    .line 535
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Lanet/channel/statist/RequestStatistic;->tnetErrorCode:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 536
    iput v7, p3, Lanet/channel/statist/RequestStatistic;->tnetErrorCode:I

    goto :goto_eb

    .line 538
    :cond_e7
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 540
    :goto_eb
    invoke-virtual {p3, p1}, Lanet/channel/statist/RequestStatistic;->appendErrorTrace(Ljava/lang/String;)V

    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 543
    iget-wide v0, p3, Lanet/channel/statist/RequestStatistic;->retryCostTime:J

    iget-wide v2, p3, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    iput-wide v0, p3, Lanet/channel/statist/RequestStatistic;->retryCostTime:J

    .line 544
    iput-wide p1, p3, Lanet/channel/statist/RequestStatistic;->start:J

    .line 545
    iget-object p1, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p1, p1, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object p1, p1, Lanetwork/channel/unified/j;->e:Lanetwork/channel/unified/IUnifiedTask;

    sget p2, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->HIGH:I

    invoke-static {p1, p2}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    return-void

    .line 548
    :cond_109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\u56de\u8c03\u540e\u89e6\u53d1\u91cd\u8bd5"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 550
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-boolean v0, v0, Lanetwork/channel/unified/e;->l:Z

    if-eqz v0, :cond_127

    .line 551
    iput v1, p3, Lanet/channel/statist/RequestStatistic;->roaming:I

    goto :goto_12f

    .line 552
    :cond_127
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-boolean v0, v0, Lanetwork/channel/unified/e;->k:Z

    if-eqz v0, :cond_12f

    .line 553
    iput v2, p3, Lanet/channel/statist/RequestStatistic;->roaming:I

    :cond_12f
    :goto_12f
    const-string v0, "Cannot retry request after onHeader/onDataReceived callback!"

    .line 555
    iget-object v3, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v3, v3, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v3, v3, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, v0, v3, v8}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    :cond_13c
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->m:Lanetwork/channel/unified/e$a;

    if-eqz v0, :cond_153

    .line 561
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->m:Lanetwork/channel/unified/e$a;

    iget-object v3, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v3, v3, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v3, v3, Lanetwork/channel/unified/j;->b:Lanetwork/channel/interceptor/Callback;

    iget-object v8, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget v8, v8, Lanetwork/channel/unified/e;->i:I

    invoke-virtual {v0, v3, v8}, Lanetwork/channel/unified/e$a;->a(Lanetwork/channel/interceptor/Callback;I)I

    .line 564
    :cond_153
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    invoke-virtual {v0}, Lanetwork/channel/unified/j;->a()V

    .line 565
    iget-object v0, p3, Lanet/channel/statist/RequestStatistic;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 567
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v0}, Lanetwork/channel/entity/g;->j()Z

    move-result v0

    const/16 v3, -0xce

    if-eqz v0, :cond_1c9

    .line 568
    iget-wide v8, p3, Lanet/channel/statist/RequestStatistic;->contentLength:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_1c9

    iget-wide v8, p3, Lanet/channel/statist/RequestStatistic;->contentLength:J

    iget-wide v10, p3, Lanet/channel/statist/RequestStatistic;->rspBodyDeflateSize:J

    cmp-long v0, v8, v10

    if-eqz v0, :cond_1c9

    .line 569
    iput v7, p3, Lanet/channel/statist/RequestStatistic;->ret:I

    .line 570
    iput v3, p3, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 571
    invoke-static {v3}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    const-string p1, "received data length not match with content-length"

    .line 572
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "content-length"

    aput-object v8, v5, v7

    iget-object v7, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget v7, v7, Lanetwork/channel/unified/e;->i:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    const-string v2, "recDataLength"

    aput-object v2, v5, v1

    iget-wide v1, p3, Lanet/channel/statist/RequestStatistic;->rspBodyDeflateSize:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-static {v6, p1, v0, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    new-instance p1, Lanet/channel/statist/ExceptionStatistic;

    const-string v0, "rt"

    invoke-direct {p1, v3, p2, v0}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v0}, Lanetwork/channel/entity/g;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lanet/channel/statist/ExceptionStatistic;->url:Ljava/lang/String;

    .line 575
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    invoke-interface {v0, p1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    move p1, v3

    :cond_1c9
    const/16 v0, 0x130

    if-ne p1, v0, :cond_1e1

    .line 580
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    if-eqz v0, :cond_1e1

    const-string v0, "cache"

    .line 581
    iput-object v0, p3, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    .line 582
    new-instance v0, Lanetwork/channel/aidl/DefaultFinishEvent;

    const/16 v1, 0xc8

    iget-object v2, p0, Lanetwork/channel/unified/i;->a:Lanet/channel/request/Request;

    invoke-direct {v0, v1, p2, v2}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanet/channel/request/Request;)V

    goto :goto_1e8

    .line 584
    :cond_1e1
    new-instance v0, Lanetwork/channel/aidl/DefaultFinishEvent;

    iget-object v1, p0, Lanetwork/channel/unified/i;->a:Lanet/channel/request/Request;

    invoke-direct {v0, p1, p2, v1}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanet/channel/request/Request;)V

    .line 587
    :goto_1e8
    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object p2, p2, Lanetwork/channel/unified/j;->b:Lanetwork/channel/interceptor/Callback;

    invoke-interface {p2, v0}, Lanetwork/channel/interceptor/Callback;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    if-ltz p1, :cond_204

    .line 590
    invoke-static {}, Lanet/channel/monitor/b;->a()Lanet/channel/monitor/b;

    move-result-object v1

    iget-wide v2, p3, Lanet/channel/statist/RequestStatistic;->sendStart:J

    iget-wide v4, p3, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    iget-wide p1, p3, Lanet/channel/statist/RequestStatistic;->rspBodyDeflateSize:J

    iget-wide v6, p3, Lanet/channel/statist/RequestStatistic;->rspHeadDeflateSize:J

    add-long/2addr v6, p1

    invoke-virtual/range {v1 .. v7}, Lanet/channel/monitor/b;->a(JJJ)V

    goto :goto_20a

    .line 592
    :cond_204
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getNetworkSubType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lanet/channel/statist/RequestStatistic;->netType:Ljava/lang/String;

    .line 594
    :goto_20a
    invoke-static {}, Lanet/channel/flow/NetworkAnalysis;->getInstance()Lanet/channel/flow/INetworkAnalysis;

    move-result-object p1

    new-instance p2, Lanet/channel/flow/FlowStat;

    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->e:Ljava/lang/String;

    invoke-direct {p2, v0, p3}, Lanet/channel/flow/FlowStat;-><init>(Ljava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    invoke-interface {p1, p2}, Lanet/channel/flow/INetworkAnalysis;->commitFlow(Lanet/channel/flow/FlowStat;)V
    :try_end_21a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_21a} :catch_21a

    :catch_21a
    return-void
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "no-store"

    const-string v1, "Cache-Control"

    .line 376
    iget-object v2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v2, v2, Lanetwork/channel/unified/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_f

    return-void

    :cond_f
    const/4 v2, 0x2

    .line 380
    invoke-static {v2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v3

    const-string v4, "anet.NetworkTask"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_42

    .line 381
    iget-object v3, p0, Lanetwork/channel/unified/i;->a:Lanet/channel/request/Request;

    invoke-virtual {v3}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "code"

    aput-object v8, v7, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v8, "onResponseCode"

    invoke-static {v4, v8, v3, v7}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    iget-object v3, p0, Lanetwork/channel/unified/i;->a:Lanet/channel/request/Request;

    invoke-virtual {v3}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v3

    new-array v7, v2, [Ljava/lang/Object;

    const-string v9, "headers"

    aput-object v9, v7, v5

    aput-object p2, v7, v6

    invoke-static {v4, v8, v3, v7}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    :cond_42
    iget-object v3, p0, Lanetwork/channel/unified/i;->a:Lanet/channel/request/Request;

    invoke-static {v3, p1}, Lanet/channel/util/HttpHelper;->checkRedirect(Lanet/channel/request/Request;I)Z

    move-result v3

    if-eqz v3, :cond_b5

    const-string v3, "Location"

    .line 387
    invoke-static {p2, v3}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b5

    .line 389
    invoke-static {v3}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v7

    if-eqz v7, :cond_a2

    .line 391
    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_a1

    .line 392
    invoke-virtual {v7}, Lanet/channel/util/HttpUrl;->lockScheme()V

    .line 393
    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object p2, p2, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {p2, v7}, Lanetwork/channel/entity/g;->a(Lanet/channel/util/HttpUrl;)V

    .line 394
    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p2, Lanetwork/channel/unified/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 395
    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    new-instance v0, Lanetwork/channel/unified/e;

    iget-object v1, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v1, v1, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lanetwork/channel/unified/e;-><init>(Lanetwork/channel/unified/j;Lanetwork/channel/cache/Cache;Lanetwork/channel/cache/Cache$Entry;)V

    iput-object v0, p2, Lanetwork/channel/unified/j;->e:Lanetwork/channel/unified/IUnifiedTask;

    .line 397
    iget-object p2, p0, Lanetwork/channel/unified/i;->b:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v7}, Lanet/channel/util/HttpUrl;->simpleUrlString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lanet/channel/statist/RequestStatistic;->recordRedirect(ILjava/lang/String;)V

    .line 398
    iget-object p1, p0, Lanetwork/channel/unified/i;->b:Lanet/channel/statist/RequestStatistic;

    iput-object v3, p1, Lanet/channel/statist/RequestStatistic;->locationUrl:Ljava/lang/String;

    .line 399
    iget-object p1, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p1, p1, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object p1, p1, Lanetwork/channel/unified/j;->e:Lanetwork/channel/unified/IUnifiedTask;

    sget p2, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->HIGH:I

    invoke-static {p1, p2}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    :cond_a1
    return-void

    .line 403
    :cond_a2
    iget-object v7, p0, Lanetwork/channel/unified/i;->a:Lanet/channel/request/Request;

    invoke-virtual {v7}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "redirect url"

    aput-object v9, v8, v5

    aput-object v3, v8, v6

    const-string v3, "redirect url is invalid!"

    invoke-static {v4, v3, v7, v8}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    :cond_b5
    :try_start_b5
    iget-object v3, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v3, v3, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    invoke-virtual {v3}, Lanetwork/channel/unified/j;->a()V

    .line 410
    iget-object v3, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v3, v3, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v3, v3, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v3}, Lanetwork/channel/entity/g;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lanetwork/channel/cookie/CookieManager;->setCookie(Ljava/lang/String;Ljava/util/Map;)V

    .line 411
    iget-object v3, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    invoke-static {p2}, Lanet/channel/util/HttpHelper;->parseContentLength(Ljava/util/Map;)I

    move-result v7

    iput v7, v3, Lanetwork/channel/unified/e;->i:I

    .line 412
    iget-object v3, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v3, v3, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v3, v3, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v3}, Lanetwork/channel/entity/g;->g()Ljava/lang/String;

    move-result-object v3

    .line 414
    iget-object v7, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v7, v7, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    if-eqz v7, :cond_168

    const/16 v7, 0x130

    if-ne p1, v7, :cond_168

    .line 415
    iget-object p1, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p1, p1, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    iget-object p1, p1, Lanetwork/channel/cache/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 416
    invoke-static {p2}, Lanetwork/channel/cache/a;->a(Ljava/util/Map;)Lanetwork/channel/cache/Cache$Entry;

    move-result-object p1

    if-eqz p1, :cond_108

    .line 417
    iget-wide v0, p1, Lanetwork/channel/cache/Cache$Entry;->ttl:J

    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    iget-wide v7, p2, Lanetwork/channel/cache/Cache$Entry;->ttl:J

    cmp-long p2, v0, v7

    if-lez p2, :cond_108

    .line 418
    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    iget-wide v0, p1, Lanetwork/channel/cache/Cache$Entry;->ttl:J

    iput-wide v0, p2, Lanetwork/channel/cache/Cache$Entry;->ttl:J

    .line 420
    :cond_108
    iget-object p1, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p1, p1, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object p1, p1, Lanetwork/channel/unified/j;->b:Lanetwork/channel/interceptor/Callback;

    const/16 p2, 0xc8

    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    iget-object v0, v0, Lanetwork/channel/cache/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Lanetwork/channel/interceptor/Callback;->onResponseCode(ILjava/util/Map;)V

    .line 421
    iget-object p1, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p1, p1, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object p1, p1, Lanetwork/channel/unified/j;->b:Lanetwork/channel/interceptor/Callback;

    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    iget-object p2, p2, Lanetwork/channel/cache/Cache$Entry;->data:[B

    array-length p2, p2

    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    iget-object v0, v0, Lanetwork/channel/cache/Cache$Entry;->data:[B

    invoke-static {v0}, Lanet/channel/bytes/ByteArray;->wrap([B)Lanet/channel/bytes/ByteArray;

    move-result-object v0

    invoke-interface {p1, v6, p2, v0}, Lanetwork/channel/interceptor/Callback;->onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 425
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->b:Lanetwork/channel/cache/Cache;

    iget-object v1, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v1, v1, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    invoke-interface {v0, v3, v1}, Lanetwork/channel/cache/Cache;->put(Ljava/lang/String;Lanetwork/channel/cache/Cache$Entry;)V

    const-string/jumbo v0, "update cache"

    .line 426
    iget-object v1, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v1, v1, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "cost"

    aput-object v8, v7, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, p1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v7, v6

    const-string p1, "key"

    aput-object p1, v7, v2

    const/4 p1, 0x3

    aput-object v3, v7, p1

    invoke-static {v4, v0, v1, v7}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 431
    :cond_168
    iget-object v2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v2, v2, Lanetwork/channel/unified/e;->b:Lanetwork/channel/cache/Cache;

    if-eqz v2, :cond_1ae

    .line 432
    invoke-static {p2, v1}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_180

    .line 433
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->b:Lanetwork/channel/cache/Cache;

    invoke-interface {v0, v3}, Lanetwork/channel/cache/Cache;->remove(Ljava/lang/String;)V

    goto :goto_1ae

    .line 434
    :cond_180
    iget-object v2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    invoke-static {p2}, Lanetwork/channel/cache/a;->a(Ljava/util/Map;)Lanetwork/channel/cache/Cache$Entry;

    move-result-object v3

    iput-object v3, v2, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    if-eqz v3, :cond_1ae

    .line 435
    invoke-static {p2, v1}, Lanet/channel/util/HttpHelper;->removeHeaderFiledByKey(Ljava/util/Map;Ljava/lang/String;)V

    .line 436
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget v2, v2, Lanetwork/channel/unified/e;->i:I

    if-eqz v2, :cond_1a7

    iget-object v2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget v2, v2, Lanetwork/channel/unified/e;->i:I

    goto :goto_1a9

    :cond_1a7
    const/16 v2, 0x1400

    :goto_1a9
    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v1, v0, Lanetwork/channel/unified/e;->d:Ljava/io/ByteArrayOutputStream;

    :cond_1ae
    :goto_1ae
    const-string/jumbo v0, "x-protocol"

    .line 441
    new-array v1, v6, [Ljava/lang/String;

    iget-object v2, p0, Lanetwork/channel/unified/i;->b:Lanet/channel/statist/RequestStatistic;

    iget-object v2, v2, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "open"

    const-string/jumbo v1, "streaming-parser"

    .line 443
    invoke-static {p2, v1}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e7

    .line 444
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isResponseBufferEnable()Z

    move-result v0

    if-eqz v0, :cond_1e7

    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget v0, v0, Lanetwork/channel/unified/e;->i:I

    const/high16 v1, 0x20000

    if-gt v0, v1, :cond_1e7

    .line 445
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    new-instance v1, Lanetwork/channel/unified/e$a;

    invoke-direct {v1, p1, p2}, Lanetwork/channel/unified/e$a;-><init>(ILjava/util/Map;)V

    iput-object v1, v0, Lanetwork/channel/unified/e;->m:Lanetwork/channel/unified/e$a;

    return-void

    .line 448
    :cond_1e7
    iget-object v0, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object v0, v0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->b:Lanetwork/channel/interceptor/Callback;

    invoke-interface {v0, p1, p2}, Lanetwork/channel/interceptor/Callback;->onResponseCode(ILjava/util/Map;)V

    .line 449
    iget-object p1, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iput-boolean v6, p1, Lanetwork/channel/unified/e;->k:Z
    :try_end_1f4
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_1f4} :catch_1f5

    goto :goto_203

    :catch_1f5
    move-exception p1

    .line 452
    iget-object p2, p0, Lanetwork/channel/unified/i;->c:Lanetwork/channel/unified/e;

    iget-object p2, p2, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object p2, p2, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "[onResponseCode] error."

    invoke-static {v4, v1, p2, p1, v0}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_203
    return-void
.end method
