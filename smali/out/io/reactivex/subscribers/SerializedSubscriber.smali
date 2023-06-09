.class public final Lio/reactivex/subscribers/SerializedSubscriber;
.super Ljava/lang/Object;
.source "SerializedSubscriber.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field static final QUEUE_LINK_SIZE:I = 0x4


# instance fields
.field final delayError:Z

.field volatile done:Z

.field final downstream:Lorg/reactivestreams/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field emitting:Z

.field queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field upstream:Lorg/reactivestreams/Subscription;


# direct methods
.method public constructor <init>(Lorg/reactivestreams/Subscriber;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lio/reactivex/subscribers/SerializedSubscriber;-><init>(Lorg/reactivestreams/Subscriber;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/reactivestreams/Subscriber;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;Z)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    .line 63
    iput-boolean p2, p0, Lio/reactivex/subscribers/SerializedSubscriber;->delayError:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 197
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method emitLoop()V
    .registers 3

    .line 175
    :cond_0
    monitor-enter p0

    .line 176
    :try_start_1
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->emitting:Z

    .line 179
    monitor-exit p0

    return-void

    :cond_a
    const/4 v1, 0x0

    .line 181
    iput-object v1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 182
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_17

    .line 184
    iget-object v1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->accept(Lorg/reactivestreams/Subscriber;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :catchall_17
    move-exception v0

    .line 182
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public onComplete()V
    .registers 3

    .line 148
    iget-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->done:Z

    if-eqz v0, :cond_5

    return-void

    .line 151
    :cond_5
    monitor-enter p0

    .line 152
    :try_start_6
    iget-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->done:Z

    if-eqz v0, :cond_c

    .line 153
    monitor-exit p0

    return-void

    .line 155
    :cond_c
    iget-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->emitting:Z

    if-eqz v0, :cond_25

    .line 156
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_1c

    .line 158
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 159
    iput-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 161
    :cond_1c
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    .line 162
    monitor-exit p0

    return-void

    :cond_25
    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->done:Z

    .line 165
    iput-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->emitting:Z

    .line 166
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_31

    .line 168
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void

    :catchall_31
    move-exception v0

    .line 166
    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 107
    iget-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->done:Z

    if-eqz v0, :cond_8

    .line 108
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 112
    :cond_8
    monitor-enter p0

    .line 113
    :try_start_9
    iget-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->done:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    goto :goto_37

    .line 116
    :cond_f
    iget-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->emitting:Z

    if-eqz v0, :cond_32

    .line 117
    iput-boolean v1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->done:Z

    .line 118
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_21

    .line 120
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 121
    iput-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 123
    :cond_21
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 124
    iget-boolean v1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->delayError:Z

    if-eqz v1, :cond_2d

    .line 125
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    goto :goto_30

    .line 127
    :cond_2d
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->setFirst(Ljava/lang/Object;)V

    .line 129
    :goto_30
    monitor-exit p0

    return-void

    .line 131
    :cond_32
    iput-boolean v1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->done:Z

    .line 132
    iput-boolean v1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->emitting:Z

    const/4 v1, 0x0

    .line 135
    :goto_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_44

    if-eqz v1, :cond_3e

    .line 138
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 142
    :cond_3e
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_44
    move-exception p1

    .line 135
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 76
    iget-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->done:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_17

    .line 80
    iget-object p1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 81
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/subscribers/SerializedSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 84
    :cond_17
    monitor-enter p0

    .line 85
    :try_start_18
    iget-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->done:Z

    if-eqz v0, :cond_1e

    .line 86
    monitor-exit p0

    return-void

    .line 88
    :cond_1e
    iget-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->emitting:Z

    if-eqz v0, :cond_37

    .line 89
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_2e

    .line 91
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 92
    iput-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->queue:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 94
    :cond_2e
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->add(Ljava/lang/Object;)V

    .line 95
    monitor-exit p0

    return-void

    :cond_37
    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->emitting:Z

    .line 98
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_18 .. :try_end_3b} :catchall_44

    .line 100
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {v0, p1}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p0}, Lio/reactivex/subscribers/SerializedSubscriber;->emitLoop()V

    return-void

    :catchall_44
    move-exception p1

    .line 98
    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 3

    .line 68
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lorg/reactivestreams/Subscription;Lorg/reactivestreams/Subscription;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 69
    iput-object p1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    .line 70
    iget-object p1, p0, Lio/reactivex/subscribers/SerializedSubscriber;->downstream:Lorg/reactivestreams/Subscriber;

    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    :cond_f
    return-void
.end method

.method public request(J)V
    .registers 4

    .line 192
    iget-object v0, p0, Lio/reactivex/subscribers/SerializedSubscriber;->upstream:Lorg/reactivestreams/Subscription;

    invoke-interface {v0, p1, p2}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
