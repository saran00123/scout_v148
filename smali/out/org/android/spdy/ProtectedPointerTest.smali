.class public Lorg/android/spdy/ProtectedPointerTest;
.super Ljava/lang/Object;
.source "ProtectedPointerTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/spdy/ProtectedPointerTest$Data;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3

    const/4 p0, 0x0

    :goto_1
    const/4 v0, 0x1

    if-ge p0, v0, :cond_1c

    .line 74
    new-instance v0, Lorg/android/spdy/ProtectedPointerTest$Data;

    invoke-direct {v0}, Lorg/android/spdy/ProtectedPointerTest$Data;-><init>()V

    .line 75
    new-instance v1, Lorg/android/spdy/ProtectedPointer;

    invoke-direct {v1, v0}, Lorg/android/spdy/ProtectedPointer;-><init>(Ljava/lang/Object;)V

    .line 76
    new-instance v0, Lorg/android/spdy/ProtectedPointerTest$3;

    invoke-direct {v0}, Lorg/android/spdy/ProtectedPointerTest$3;-><init>()V

    invoke-virtual {v1, v0}, Lorg/android/spdy/ProtectedPointer;->setHow2close(Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;)V

    .line 83
    invoke-static {v1}, Lorg/android/spdy/ProtectedPointerTest;->test_close_with_work(Lorg/android/spdy/ProtectedPointer;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1c
    return-void
.end method

.method public static test_close_anywhere1(Lorg/android/spdy/ProtectedPointer;)V
    .registers 2

    .line 62
    invoke-virtual {p0}, Lorg/android/spdy/ProtectedPointer;->enter()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 63
    invoke-virtual {p0}, Lorg/android/spdy/ProtectedPointer;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/spdy/ProtectedPointerTest$Data;

    .line 64
    invoke-virtual {p0}, Lorg/android/spdy/ProtectedPointer;->release()V

    .line 65
    invoke-virtual {v0}, Lorg/android/spdy/ProtectedPointerTest$Data;->work()V

    .line 66
    invoke-virtual {p0}, Lorg/android/spdy/ProtectedPointer;->exit()V

    :cond_15
    return-void
.end method

.method public static test_close_with_work(Lorg/android/spdy/ProtectedPointer;)V
    .registers 4

    .line 36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/android/spdy/ProtectedPointerTest$1;

    invoke-direct {v1, p0}, Lorg/android/spdy/ProtectedPointerTest$1;-><init>(Lorg/android/spdy/ProtectedPointer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/android/spdy/ProtectedPointerTest$2;

    invoke-direct {v2, p0}, Lorg/android/spdy/ProtectedPointerTest$2;-><init>(Lorg/android/spdy/ProtectedPointer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 57
    invoke-virtual {v1}, Ljava/lang/Thread;->run()V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    return-void
.end method

.method public static test_sequece(Lorg/android/spdy/ProtectedPointer;)V
    .registers 1

    .line 31
    invoke-virtual {p0}, Lorg/android/spdy/ProtectedPointer;->release()V

    return-void
.end method
