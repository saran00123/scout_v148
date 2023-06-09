.class public final Lcom/google/common/util/concurrent/Uninterruptibles;
.super Ljava/lang/Object;
.source "Uninterruptibles.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    const/4 v0, 0x0

    .line 54
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_19
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    if-eqz v0, :cond_d

    .line 62
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_d
    return-void

    :catchall_e
    move-exception p0

    if-eqz v0, :cond_18

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 64
    :cond_18
    throw p0

    :catch_19
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;JLjava/util/concurrent/TimeUnit;)Z
    .registers 7
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    const/4 v0, 0x0

    .line 77
    :try_start_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 78
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_22

    add-long/2addr v1, p1

    .line 83
    :goto_a
    :try_start_a
    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_10} :catch_1a
    .catchall {:try_start_a .. :try_end_10} :catchall_22

    if-eqz v0, :cond_19

    .line 91
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_19
    return p0

    :catch_1a
    const/4 v0, 0x1

    .line 86
    :try_start_1b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_22

    sub-long p1, v1, p1

    goto :goto_a

    :catchall_22
    move-exception p0

    if-eqz v0, :cond_2c

    .line 91
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 93
    :cond_2c
    throw p0
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/locks/Condition;JLjava/util/concurrent/TimeUnit;)Z
    .registers 7
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    const/4 v0, 0x0

    .line 107
    :try_start_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 108
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_22

    add-long/2addr v1, p1

    .line 112
    :goto_a
    :try_start_a
    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_10} :catch_1a
    .catchall {:try_start_a .. :try_end_10} :catchall_22

    if-eqz v0, :cond_19

    .line 120
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_19
    return p0

    :catch_1a
    const/4 v0, 0x1

    .line 115
    :try_start_1b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_22

    sub-long p1, v1, p1

    goto :goto_a

    :catchall_22
    move-exception p0

    if-eqz v0, :cond_2c

    .line 120
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 122
    :cond_2c
    throw p0
.end method

.method public static getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 197
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_1a
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    if-eqz v0, :cond_e

    .line 204
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_e
    return-object p0

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 206
    :cond_19
    throw p0

    :catch_1a
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static getUninterruptibly(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 7
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 234
    :try_start_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 235
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_22

    add-long/2addr v1, p1

    .line 240
    :goto_a
    :try_start_a
    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_10} :catch_1a
    .catchall {:try_start_a .. :try_end_10} :catchall_22

    if-eqz v0, :cond_19

    .line 248
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_19
    return-object p0

    :catch_1a
    const/4 v0, 0x1

    .line 243
    :try_start_1b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_22

    sub-long p1, v1, p1

    goto :goto_a

    :catchall_22
    move-exception p0

    if-eqz v0, :cond_2c

    .line 248
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 250
    :cond_2c
    throw p0
.end method

.method public static joinUninterruptibly(Ljava/lang/Thread;)V
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    const/4 v0, 0x0

    .line 132
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_19
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    if-eqz v0, :cond_d

    .line 140
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_d
    return-void

    :catchall_e
    move-exception p0

    if-eqz v0, :cond_18

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 142
    :cond_18
    throw p0

    :catch_19
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static joinUninterruptibly(Ljava/lang/Thread;JLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .line 152
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 155
    :try_start_4
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 156
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_24

    add-long/2addr v1, p1

    .line 160
    :goto_d
    :try_start_d
    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->timedJoin(Ljava/lang/Thread;J)V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_12} :catch_1c
    .catchall {:try_start_d .. :try_end_12} :catchall_24

    if-eqz v0, :cond_1b

    .line 169
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_1b
    return-void

    :catch_1c
    const/4 v0, 0x1

    .line 164
    :try_start_1d
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_24

    sub-long p1, v1, p1

    goto :goto_d

    :catchall_24
    move-exception p0

    if-eqz v0, :cond_2e

    .line 169
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 171
    :cond_2e
    throw p0
.end method

.method public static putUninterruptibly(Ljava/util/concurrent/BlockingQueue;Ljava/lang/Object;)V
    .registers 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue<",
            "TE;>;TE;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 286
    :goto_1
    :try_start_1
    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_19
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    if-eqz v0, :cond_d

    .line 294
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_d
    return-void

    :catchall_e
    move-exception p0

    if-eqz v0, :cond_18

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 296
    :cond_18
    throw p0

    :catch_19
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static sleepUninterruptibly(JLjava/util/concurrent/TimeUnit;)V
    .registers 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    const/4 v0, 0x0

    .line 306
    :try_start_1
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p0

    .line 307
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_21

    add-long/2addr v1, p0

    .line 311
    :goto_a
    :try_start_a
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_f} :catch_19
    .catchall {:try_start_a .. :try_end_f} :catchall_21

    if-eqz v0, :cond_18

    .line 320
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_18
    return-void

    :catch_19
    const/4 v0, 0x1

    .line 315
    :try_start_1a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_21

    sub-long p0, v1, p0

    goto :goto_a

    :catchall_21
    move-exception p0

    if-eqz v0, :cond_2b

    .line 320
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 322
    :cond_2b
    throw p0
.end method

.method public static takeUninterruptibly(Ljava/util/concurrent/BlockingQueue;)Ljava/lang/Object;
    .registers 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/BlockingQueue<",
            "TE;>;)TE;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 260
    :goto_1
    :try_start_1
    invoke-interface {p0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_1a
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    if-eqz v0, :cond_e

    .line 267
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_e
    return-object p0

    :catchall_f
    move-exception p0

    if-eqz v0, :cond_19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 269
    :cond_19
    throw p0

    :catch_1a
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static tryAcquireUninterruptibly(Ljava/util/concurrent/Semaphore;IJLjava/util/concurrent/TimeUnit;)Z
    .registers 8
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    const/4 v0, 0x0

    .line 350
    :try_start_1
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    .line 351
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_22

    add-long/2addr v1, p2

    .line 356
    :goto_a
    :try_start_a
    sget-object p4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_10} :catch_1a
    .catchall {:try_start_a .. :try_end_10} :catchall_22

    if-eqz v0, :cond_19

    .line 364
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_19
    return p0

    :catch_1a
    const/4 v0, 0x1

    .line 359
    :try_start_1b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p2
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_22

    sub-long p2, v1, p2

    goto :goto_a

    :catchall_22
    move-exception p0

    if-eqz v0, :cond_2c

    .line 364
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 366
    :cond_2c
    throw p0
.end method

.method public static tryAcquireUninterruptibly(Ljava/util/concurrent/Semaphore;JLjava/util/concurrent/TimeUnit;)Z
    .registers 5
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
    .end annotation

    const/4 v0, 0x1

    .line 335
    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/common/util/concurrent/Uninterruptibles;->tryAcquireUninterruptibly(Ljava/util/concurrent/Semaphore;IJLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    return p0
.end method
