.class final Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Delay.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__DelayKt;->debounceInternal$FlowKt__DelayKt(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-TT;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,351:1\n16#2:352\n16#2:354\n1#3:353\n199#4,11:355\n*E\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n*L\n222#1:352\n225#1:354\n232#1,11:355\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0005H\u008a@\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
        "downstream",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1"
    f = "Delay.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1
    }
    l = {
        0x162,
        0x166
    }
    m = "invokeSuspend"
    n = {
        "$this$scopedFlow",
        "downstream",
        "values",
        "lastValue",
        "timeoutMillis",
        "$this$scopedFlow",
        "downstream",
        "values",
        "lastValue",
        "timeoutMillis"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4"
    }
.end annotation


# instance fields
.field final synthetic $this_debounceInternal:Lkotlinx/coroutines/flow/Flow;

.field final synthetic $timeoutMillisSelector:Lkotlin/jvm/functions/Function1;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field private p$0:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .registers 4

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$this_debounceInternal:Lkotlinx/coroutines/flow/Flow;

    iput-object p2, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$timeoutMillisSelector:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 7
    .param p1    # Lkotlinx/coroutines/CoroutineScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/coroutines/flow/FlowCollector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$this_debounceInternal:Lkotlinx/coroutines/flow/Flow;

    iget-object v2, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$timeoutMillisSelector:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, v2, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->p$0:Lkotlinx/coroutines/flow/FlowCollector;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->create(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 25
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 210
    iget v2, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->label:I

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v2, :cond_5a

    if-eq v2, v7, :cond_3e

    if-ne v2, v4, :cond_36

    iget-object v2, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;

    iget-object v2, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v2, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v11, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v2

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_1b3

    .line 251
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_3e
    iget-object v2, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v9, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v12, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v13, v2

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_dc

    :cond_5a
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    iget-object v9, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->p$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 213
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-instance v11, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1;

    invoke-direct {v11, v1, v8}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$values$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v16, v11

    check-cast v16, Lkotlin/jvm/functions/Function2;

    const/16 v17, 0x3

    const/16 v18, 0x0

    move-object v13, v2

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v11

    iput-object v11, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 217
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v8, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v12, v2

    move-object v2, v0

    move-object v0, v1

    move-object/from16 v22, v11

    move-object v11, v9

    move-object/from16 v9, v22

    .line 218
    :goto_8b
    iget-object v13, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v14, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->DONE:Lkotlinx/coroutines/internal/Symbol;

    if-eq v13, v14, :cond_1ba

    .line 219
    new-instance v13, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide v5, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 221
    iget-object v14, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v14, :cond_de

    .line 222
    iget-object v14, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->$timeoutMillisSelector:Lkotlin/jvm/functions/Function1;

    sget-object v15, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    iget-object v3, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-ne v3, v15, :cond_a5

    move-object v3, v8

    .line 352
    :cond_a5
    invoke-interface {v14, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    iput-wide v14, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 223
    iget-wide v14, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v3, v14, v5

    if-ltz v3, :cond_b9

    move v3, v7

    goto :goto_ba

    :cond_b9
    const/4 v3, 0x0

    :goto_ba
    if-eqz v3, :cond_e6

    .line 224
    iget-wide v14, v13, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v3, v14, v5

    if-nez v3, :cond_de

    .line 225
    sget-object v3, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    iget-object v14, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-ne v14, v3, :cond_c9

    move-object v14, v8

    .line 354
    :cond_c9
    iput-object v12, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    iput-object v11, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    iput-object v10, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$2:Ljava/lang/Object;

    iput-object v9, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$3:Ljava/lang/Object;

    iput-object v13, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$4:Ljava/lang/Object;

    iput v7, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->label:I

    .line 225
    invoke-interface {v11, v14, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_dc

    return-object v2

    .line 226
    :cond_dc
    :goto_dc
    iput-object v8, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_de
    move-object v3, v0

    move-object v14, v11

    move-object v15, v12

    move-object v0, v13

    move-object v12, v2

    move-object v2, v9

    move-object v13, v10

    goto :goto_f4

    .line 223
    :cond_e6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Debounce timeout should not be negative"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 230
    :goto_f4
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v9

    if-eqz v9, :cond_11b

    iget-object v9, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v9, :cond_107

    iget-wide v9, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v9, v9, v5

    if-lez v9, :cond_105

    goto :goto_107

    :cond_105
    const/4 v9, 0x0

    goto :goto_108

    :cond_107
    :goto_107
    move v9, v7

    :goto_108
    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_113

    goto :goto_11b

    :cond_113
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 358
    :cond_11b
    :goto_11b
    iput-object v15, v3, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$0:Ljava/lang/Object;

    iput-object v14, v3, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$1:Ljava/lang/Object;

    iput-object v13, v3, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$2:Ljava/lang/Object;

    iput-object v2, v3, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$3:Ljava/lang/Object;

    iput-object v0, v3, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$4:Ljava/lang/Object;

    iput-object v3, v3, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->L$5:Ljava/lang/Object;

    iput v4, v3, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1;->label:I

    move-object v11, v3

    check-cast v11, Lkotlin/coroutines/Continuation;

    .line 359
    new-instance v10, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-direct {v10, v11}, Lkotlinx/coroutines/selects/SelectBuilderImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 361
    :try_start_131
    move-object v9, v10

    check-cast v9, Lkotlinx/coroutines/selects/SelectBuilder;

    .line 234
    iget-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_136
    .catch Ljava/lang/Throwable; {:try_start_131 .. :try_end_136} :catch_18e

    if-eqz v4, :cond_169

    .line 235
    :try_start_138
    iget-wide v5, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$1;
    :try_end_13c
    .catch Ljava/lang/Throwable; {:try_start_138 .. :try_end_13c} :catch_15f

    const/16 v19, 0x0

    move-object v7, v9

    move-object v9, v4

    move-object v8, v10

    move-object/from16 v10, v19

    move-object/from16 v19, v11

    move-object v11, v2

    move-object/from16 v20, v12

    move-object v12, v0

    move-object/from16 p1, v13

    move-object v13, v14

    move-object/from16 v21, v14

    move-object/from16 v14, p1

    :try_start_150
    invoke-direct/range {v9 .. v14}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v5, v6, v4}, Lkotlinx/coroutines/selects/SelectBuilder;->onTimeout(JLkotlin/jvm/functions/Function1;)V
    :try_end_158
    .catch Ljava/lang/Throwable; {:try_start_150 .. :try_end_158} :catch_15b

    move-object/from16 v4, p1

    goto :goto_172

    :catch_15b
    move-exception v0

    move-object/from16 v4, p1

    goto :goto_197

    :catch_15f
    move-exception v0

    move-object v8, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v14

    move-object v4, v13

    goto :goto_197

    :cond_169
    move-object v7, v9

    move-object v8, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v21, v14

    move-object v4, v13

    .line 241
    :goto_172
    :try_start_172
    iget-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v5}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceiveOrNull()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v5

    new-instance v6, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;

    const/4 v10, 0x0

    move-object v9, v6

    move-object v11, v2

    move-object v12, v0

    move-object/from16 v13, v21

    move-object v14, v4

    invoke-direct/range {v9 .. v14}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$invokeSuspend$$inlined$select$lambda$2;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-interface {v7, v5, v6}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V
    :try_end_18b
    .catch Ljava/lang/Throwable; {:try_start_172 .. :try_end_18b} :catch_18c

    goto :goto_19a

    :catch_18c
    move-exception v0

    goto :goto_197

    :catch_18e
    move-exception v0

    move-object v8, v10

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object v4, v13

    move-object/from16 v21, v14

    .line 363
    :goto_197
    invoke-virtual {v8, v0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->handleBuilderException(Ljava/lang/Throwable;)V

    .line 365
    :goto_19a
    invoke-virtual {v8}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 358
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    if-ne v0, v5, :cond_1a7

    invoke-static/range {v19 .. v19}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1a7
    move-object/from16 v5, v20

    if-ne v0, v5, :cond_1ac

    return-object v5

    :cond_1ac
    move-object v9, v2

    move-object v0, v3

    move-object v10, v4

    move-object v2, v5

    move-object v12, v15

    move-object/from16 v11, v21

    :goto_1b3
    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto/16 :goto_8b

    .line 251
    :cond_1ba
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
