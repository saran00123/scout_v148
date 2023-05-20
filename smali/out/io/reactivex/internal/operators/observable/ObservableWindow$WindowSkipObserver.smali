.class final Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "ObservableWindow.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowSkipObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2eb9e739d805fc76L


# instance fields
.field volatile cancelled:Z

.field final capacityHint:I

.field final count:J

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/Observable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field firstEmission:J

.field index:J

.field final skip:J

.field upstream:Lio/reactivex/disposables/Disposable;

.field final windows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/reactivex/subjects/UnicastSubject<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;JJI)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lio/reactivex/Observable<",
            "TT;>;>;JJI)V"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 156
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 159
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->downstream:Lio/reactivex/Observer;

    .line 160
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->count:J

    .line 161
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->skip:J

    .line 162
    iput p6, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->capacityHint:I

    .line 163
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->windows:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->cancelled:Z

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 235
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .registers 3

    .line 221
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->windows:Ljava/util/ArrayDeque;

    .line 222
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 223
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v1}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    goto :goto_2

    .line 225
    :cond_12
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 212
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->windows:Ljava/util/ArrayDeque;

    .line 213
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v1, p1}, Lio/reactivex/subjects/UnicastSubject;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 216
    :cond_12
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->windows:Ljava/util/ArrayDeque;

    .line 179
    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->index:J

    .line 181
    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->skip:J

    .line 183
    rem-long v5, v1, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_25

    iget-boolean v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->cancelled:Z

    if-nez v5, :cond_25

    .line 184
    iget-object v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 185
    iget v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->capacityHint:I

    invoke-static {v5, p0}, Lio/reactivex/subjects/UnicastSubject;->create(ILjava/lang/Runnable;)Lio/reactivex/subjects/UnicastSubject;

    move-result-object v5

    .line 186
    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 187
    iget-object v6, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v6, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 190
    :cond_25
    iget-wide v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->firstEmission:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 192
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lio/reactivex/subjects/UnicastSubject;

    .line 193
    invoke-virtual {v10, p1}, Lio/reactivex/subjects/UnicastSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_2e

    .line 196
    :cond_3e
    iget-wide v9, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->count:J

    cmp-long p1, v5, v9

    if-ltz p1, :cond_61

    .line 197
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {p1}, Lio/reactivex/subjects/UnicastSubject;->onComplete()V

    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5d

    iget-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->cancelled:Z

    if-eqz p1, :cond_5d

    .line 199
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void

    :cond_5d
    sub-long/2addr v5, v3

    .line 202
    iput-wide v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->firstEmission:J

    goto :goto_63

    .line 204
    :cond_61
    iput-wide v5, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->firstEmission:J

    :goto_63
    add-long/2addr v1, v7

    .line 207
    iput-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->index:J

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 169
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 171
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_f
    return-void
.end method

.method public run()V
    .registers 2

    .line 240
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_11

    .line 241
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->cancelled:Z

    if-eqz v0, :cond_11

    .line 242
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWindow$WindowSkipObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_11
    return-void
.end method
