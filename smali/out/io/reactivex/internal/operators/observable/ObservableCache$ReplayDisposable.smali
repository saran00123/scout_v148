.class final Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableCache.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x61f4da70baa2c698L


# instance fields
.field volatile cancelled:Z

.field final child:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field currentBuffer:[Ljava/lang/Object;

.field currentIndexInBuffer:I

.field index:I

.field final state:Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableCache$CacheState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/observable/ObservableCache$CacheState<",
            "TT;>;)V"
        }
    .end annotation

    .line 293
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 294
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->child:Lio/reactivex/Observer;

    .line 295
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->state:Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 305
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->cancelled:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->cancelled:Z

    .line 307
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->state:Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->removeChild(Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;)V

    :cond_c
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 300
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->cancelled:Z

    return v0
.end method

.method public replay()V
    .registers 10

    .line 316
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 320
    :cond_7
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->child:Lio/reactivex/Observer;

    const/4 v1, 0x1

    move v2, v1

    .line 325
    :cond_b
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->cancelled:Z

    if-eqz v3, :cond_10

    return-void

    .line 331
    :cond_10
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->state:Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;

    invoke-virtual {v3}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->size()I

    move-result v3

    if-eqz v3, :cond_53

    .line 333
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->currentBuffer:[Ljava/lang/Object;

    if-nez v4, :cond_24

    .line 337
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->state:Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;

    invoke-virtual {v4}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheState;->head()[Ljava/lang/Object;

    move-result-object v4

    .line 338
    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->currentBuffer:[Ljava/lang/Object;

    .line 340
    :cond_24
    array-length v5, v4

    sub-int/2addr v5, v1

    .line 341
    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->index:I

    .line 342
    iget v7, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->currentIndexInBuffer:I

    :goto_2a
    if-ge v6, v3, :cond_48

    .line 345
    iget-boolean v8, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->cancelled:Z

    if-eqz v8, :cond_31

    return-void

    :cond_31
    if-ne v7, v5, :cond_3a

    .line 349
    aget-object v4, v4, v5

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 352
    :cond_3a
    aget-object v8, v4, v7

    .line 354
    invoke-static {v8, v0}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lio/reactivex/Observer;)Z

    move-result v8

    if-eqz v8, :cond_43

    return-void

    :cond_43
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2a

    .line 362
    :cond_48
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->cancelled:Z

    if-eqz v3, :cond_4d

    return-void

    .line 366
    :cond_4d
    iput v6, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->index:I

    .line 367
    iput v7, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->currentIndexInBuffer:I

    .line 368
    iput-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->currentBuffer:[Ljava/lang/Object;

    :cond_53
    neg-int v2, v2

    .line 372
    invoke-virtual {p0, v2}, Lio/reactivex/internal/operators/observable/ObservableCache$ReplayDisposable;->addAndGet(I)I

    move-result v2

    if-nez v2, :cond_b

    return-void
.end method
