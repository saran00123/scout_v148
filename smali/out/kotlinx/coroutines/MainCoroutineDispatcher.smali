.class public abstract Lkotlinx/coroutines/MainCoroutineDispatcher;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "MainCoroutineDispatcher.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\n\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0005R\u0012\u0010\u0003\u001a\u00020\u0000X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/coroutines/MainCoroutineDispatcher;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "()V",
        "immediate",
        "getImmediate",
        "()Lkotlinx/coroutines/MainCoroutineDispatcher;",
        "toString",
        "",
        "toStringInternalImpl",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 52
    invoke-virtual {p0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->toStringInternalImpl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_23

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_23
    return-object v0
.end method

.method protected final toStringInternalImpl()Ljava/lang/String;
    .registers 4
    .annotation build Lkotlinx/coroutines/InternalCoroutinesApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 61
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    .line 62
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/MainCoroutineDispatcher;

    if-ne v1, v0, :cond_c

    const-string v0, "Dispatchers.Main"

    return-object v0

    :cond_c
    const/4 v2, 0x0

    .line 64
    :try_start_d
    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_11} :catch_12

    goto :goto_13

    :catch_12
    move-object v0, v2

    :goto_13
    if-ne v1, v0, :cond_18

    const-string v0, "Dispatchers.Main.immediate"

    return-object v0

    :cond_18
    return-object v2
.end method