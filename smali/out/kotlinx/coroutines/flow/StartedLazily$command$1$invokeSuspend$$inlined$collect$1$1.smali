.class public final Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u00022\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0096@\u00a8\u0006\u0007"
    }
    d2 = {
        "emit",
        "",
        "T",
        "value",
        "continuation",
        "Lkotlin/coroutines/Continuation;",
        "",
        "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.StartedLazily$command$1$invokeSuspend$$inlined$collect$1"
    f = "SharingStarted.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x87
    }
    m = "emit"
    n = {
        "this",
        "value",
        "continuation",
        "count"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "I$0"
    }
.end annotation


# instance fields
.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1;Lkotlin/coroutines/Continuation;)V
    .registers 3

    iput-object p1, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;->this$0:Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;->result:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;->label:I

    iget-object p1, p0, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1$1;->this$0:Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/StartedLazily$command$1$invokeSuspend$$inlined$collect$1;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
