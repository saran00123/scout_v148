.class public final Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableWithLatestFromMany.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$SingletonArrayFunc;,
        Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$WithLatestInnerObserver;,
        Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$WithLatestFromObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final combiner:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation
.end field

.field final otherArray:[Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/ObservableSource<",
            "*>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field

.field final otherIterable:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ObservableSource<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ObservableSource;Ljava/lang/Iterable;Lio/reactivex/functions/Function;)V
    .registers 4
    .param p1    # Lio/reactivex/ObservableSource;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/reactivex/ObservableSource<",
            "*>;>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->otherArray:[Lio/reactivex/ObservableSource;

    .line 57
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->otherIterable:Ljava/lang/Iterable;

    .line 58
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->combiner:Lio/reactivex/functions/Function;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/ObservableSource;[Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;)V
    .registers 4
    .param p1    # Lio/reactivex/ObservableSource;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p2    # [Lio/reactivex/ObservableSource;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/reactivex/functions/Function;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableSource<",
            "TT;>;[",
            "Lio/reactivex/ObservableSource<",
            "*>;",
            "Lio/reactivex/functions/Function<",
            "-[",
            "Ljava/lang/Object;",
            "TR;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 49
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->otherArray:[Lio/reactivex/ObservableSource;

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->otherIterable:Ljava/lang/Iterable;

    .line 51
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->combiner:Lio/reactivex/functions/Function;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->otherArray:[Lio/reactivex/ObservableSource;

    if-nez v0, :cond_35

    const/16 v0, 0x8

    .line 66
    new-array v0, v0, [Lio/reactivex/ObservableSource;

    .line 69
    :try_start_8
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->otherIterable:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/ObservableSource;

    .line 70
    array-length v4, v0

    if-ne v2, v4, :cond_27

    shr-int/lit8 v4, v2, 0x1

    add-int/2addr v4, v2

    .line 71
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/ObservableSource;

    :cond_27
    add-int/lit8 v4, v2, 0x1

    .line 73
    aput-object v3, v0, v2
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_2b} :catch_2d

    move v2, v4

    goto :goto_f

    :catch_2d
    move-exception v0

    .line 76
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 77
    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->error(Ljava/lang/Throwable;Lio/reactivex/Observer;)V

    return-void

    .line 82
    :cond_35
    array-length v2, v0

    :cond_36
    if-nez v2, :cond_48

    .line 86
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableMap;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->source:Lio/reactivex/ObservableSource;

    new-instance v2, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$SingletonArrayFunc;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$SingletonArrayFunc;-><init>(Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;)V

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableMap;-><init>(Lio/reactivex/ObservableSource;Lio/reactivex/functions/Function;)V

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/observable/ObservableMap;->subscribeActual(Lio/reactivex/Observer;)V

    return-void

    .line 90
    :cond_48
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$WithLatestFromObserver;

    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->combiner:Lio/reactivex/functions/Function;

    invoke-direct {v1, p1, v3, v2}, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$WithLatestFromObserver;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;I)V

    .line 91
    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 92
    invoke-virtual {v1, v0, v2}, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$WithLatestFromObserver;->subscribe([Lio/reactivex/ObservableSource;I)V

    .line 94
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->source:Lio/reactivex/ObservableSource;

    invoke-interface {p1, v1}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
