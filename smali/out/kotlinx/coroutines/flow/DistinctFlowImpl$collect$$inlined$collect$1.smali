.class public final Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/DistinctFlowImpl;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 Distinct.kt\nkotlinx/coroutines/flow/DistinctFlowImpl\n*L\n1#1,132:1\n78#2,7:133\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "emit",
        "",
        "value",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $collector$inlined:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic $previousKey$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic this$0:Lkotlinx/coroutines/flow/DistinctFlowImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/DistinctFlowImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/FlowCollector;)V
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;->this$0:Lkotlinx/coroutines/flow/DistinctFlowImpl;

    iput-object p2, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;->$previousKey$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;->$collector$inlined:Lkotlinx/coroutines/flow/FlowCollector;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 9
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;

    if-eqz v0, :cond_14

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;

    iget v1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_14

    iget p2, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->label:I

    goto :goto_19

    :cond_14
    new-instance v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;-><init>(Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;Lkotlin/coroutines/Continuation;)V

    :goto_19
    iget-object p2, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 77
    iget v2, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_40

    if-ne v2, v3, :cond_38

    iget-object p1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$4:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$3:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lkotlin/coroutines/Continuation;

    iget-object p1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_83

    .line 139
    :cond_38
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_40
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    move-object p2, v0

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 133
    iget-object v2, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;->this$0:Lkotlinx/coroutines/flow/DistinctFlowImpl;

    iget-object v2, v2, Lkotlinx/coroutines/flow/DistinctFlowImpl;->keySelector:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 135
    iget-object v4, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;->$previousKey$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v5, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    if-eq v4, v5, :cond_6a

    iget-object v4, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;->this$0:Lkotlinx/coroutines/flow/DistinctFlowImpl;

    iget-object v4, v4, Lkotlinx/coroutines/flow/DistinctFlowImpl;->areEquivalent:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;->$previousKey$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v4, v5, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_83

    .line 136
    :cond_6a
    iget-object v4, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;->$previousKey$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 137
    iget-object v4, p0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1;->$collector$inlined:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p0, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/DistinctFlowImpl$collect$$inlined$collect$1$1;->label:I

    invoke-interface {v4, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_83

    return-object v1

    .line 139
    :cond_83
    :goto_83
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
