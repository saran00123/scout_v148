.class public final Lio/reactivex/exceptions/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .registers 1
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 46
    invoke-static {p0}, Lio/reactivex/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static throwIfFatal(Ljava/lang/Throwable;)V
    .registers 2
    .param p0    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 68
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_13

    .line 70
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_10

    .line 72
    instance-of v0, p0, Ljava/lang/LinkageError;

    if-nez v0, :cond_d

    return-void

    .line 73
    :cond_d
    check-cast p0, Ljava/lang/LinkageError;

    throw p0

    .line 71
    :cond_10
    check-cast p0, Ljava/lang/ThreadDeath;

    throw p0

    .line 69
    :cond_13
    check-cast p0, Ljava/lang/VirtualMachineError;

    throw p0
.end method
