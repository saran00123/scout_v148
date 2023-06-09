.class final Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;
.super Ljava/lang/Object;
.source "ObservableGenerate.java"

# interfaces
.implements Lio/reactivex/Emitter;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableGenerate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GeneratorDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Emitter<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field volatile cancelled:Z

.field final disposeState:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TS;>;"
        }
    .end annotation
.end field

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final generator:Lio/reactivex/functions/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiFunction<",
            "TS;-",
            "Lio/reactivex/Emitter<",
            "TT;>;TS;>;"
        }
    .end annotation
.end field

.field hasNext:Z

.field state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field terminate:Z


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/BiFunction;Lio/reactivex/functions/Consumer;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/functions/BiFunction<",
            "TS;-",
            "Lio/reactivex/Emitter<",
            "TT;>;TS;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TS;>;TS;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->downstream:Lio/reactivex/Observer;

    .line 73
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->generator:Lio/reactivex/functions/BiFunction;

    .line 74
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->disposeState:Lio/reactivex/functions/Consumer;

    .line 75
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->state:Ljava/lang/Object;

    return-void
.end method

.method private dispose(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 122
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->disposeState:Lio/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    move-exception p1

    .line 124
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 125
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    :goto_d
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->cancelled:Z

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 136
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .registers 2

    .line 170
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->terminate:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->terminate:Z

    .line 172
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    :cond_c
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 157
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->terminate:Z

    if-eqz v0, :cond_8

    .line 158
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_19

    :cond_8
    if-nez p1, :cond_11

    .line 161
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onError called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_11
    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->terminate:Z

    .line 164
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    :goto_19
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 141
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->terminate:Z

    if-nez v0, :cond_28

    .line 142
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->hasNext:Z

    if-eqz v0, :cond_13

    .line 143
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onNext already called in this generate turn"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->onError(Ljava/lang/Throwable;)V

    goto :goto_28

    :cond_13
    if-nez p1, :cond_20

    .line 146
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->onError(Ljava/lang/Throwable;)V

    goto :goto_28

    :cond_20
    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->hasNext:Z

    .line 149
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_28
    :goto_28
    return-void
.end method

.method public run()V
    .registers 6

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->state:Ljava/lang/Object;

    .line 81
    iget-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->cancelled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 82
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->state:Ljava/lang/Object;

    .line 83
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->dispose(Ljava/lang/Object;)V

    return-void

    .line 87
    :cond_d
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->generator:Lio/reactivex/functions/BiFunction;

    .line 91
    :cond_f
    iget-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->cancelled:Z

    if-eqz v3, :cond_19

    .line 92
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->state:Ljava/lang/Object;

    .line 93
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->dispose(Ljava/lang/Object;)V

    return-void

    :cond_19
    const/4 v3, 0x0

    .line 97
    iput-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->hasNext:Z

    const/4 v3, 0x1

    .line 100
    :try_start_1d
    invoke-interface {v1, v0, p0}, Lio/reactivex/functions/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_21} :catch_2d

    .line 110
    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->terminate:Z

    if-eqz v4, :cond_f

    .line 111
    iput-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->cancelled:Z

    .line 112
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->state:Ljava/lang/Object;

    .line 113
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->dispose(Ljava/lang/Object;)V

    return-void

    :catch_2d
    move-exception v1

    .line 102
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 103
    iput-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->state:Ljava/lang/Object;

    .line 104
    iput-boolean v3, p0, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->cancelled:Z

    .line 105
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->onError(Ljava/lang/Throwable;)V

    .line 106
    invoke-direct {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableGenerate$GeneratorDisposable;->dispose(Ljava/lang/Object;)V

    return-void
.end method
