.class public final Lkotlinx/coroutines/scheduling/CoroutineSchedulerKt;
.super Ljava/lang/Object;
.source "CoroutineScheduler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u001a\u0010\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0001\u00a8\u0006\u0005"
    }
    d2 = {
        "isSchedulerWorker",
        "",
        "thread",
        "Ljava/lang/Thread;",
        "mayNotBlock",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method public static final isSchedulerWorker(Ljava/lang/Thread;)Z
    .registers 1
    .param p0    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "isSchedulerWorker"
    .end annotation

    .line 961
    instance-of p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    return p0
.end method

.method public static final mayNotBlock(Ljava/lang/Thread;)Z
    .registers 2
    .param p0    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
        name = "mayNotBlock"
    .end annotation

    .line 969
    instance-of v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    if-eqz v0, :cond_e

    check-cast p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method
