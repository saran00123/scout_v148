.class final Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StripePaymentController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->onSuccess(Lcom/stripe/android/model/StripeIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.android.StripePaymentController$createSetupIntentCallback$1$onSuccess$1"
    f = "StripePaymentController.kt"
    i = {}
    l = {
        0x264,
        0x269
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $result:Lcom/stripe/android/model/StripeIntent;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;


# direct methods
.method constructor <init>(Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;Lcom/stripe/android/model/StripeIntent;Lkotlin/coroutines/Continuation;)V
    .registers 4

    iput-object p1, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;

    iput-object p2, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->$result:Lcom/stripe/android/model/StripeIntent;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;

    iget-object v1, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;

    iget-object v2, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->$result:Lcom/stripe/android/model/StripeIntent;

    invoke-direct {v0, v1, v2, p2}, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;-><init>(Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;Lcom/stripe/android/model/StripeIntent;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 606
    iget v1, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_29

    if-eq v1, v3, :cond_1b

    if-ne v1, v2, :cond_13

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a0

    .line 635
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 606
    :cond_1b
    iget-object v1, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_60

    :catch_27
    move-exception p1

    goto :goto_79

    :cond_29
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 607
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_35
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 609
    iget-object p1, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;

    iget-object p1, p1, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {p1}, Lcom/stripe/android/StripePaymentController;->access$getStripeRepository$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/networking/StripeRepository;

    move-result-object p1

    .line 610
    iget-object v4, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->$result:Lcom/stripe/android/model/StripeIntent;

    invoke-interface {v4}, Lcom/stripe/android/model/StripeIntent;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_48

    goto :goto_4a

    :cond_48
    const-string v4, ""

    .line 611
    :goto_4a
    iget-object v5, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;

    iget-object v5, v5, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->$sourceId:Ljava/lang/String;

    .line 612
    iget-object v6, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;

    iget-object v6, v6, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iput-object v1, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->label:I

    .line 609
    invoke-interface {p1, v4, v5, v6, p0}, Lcom/stripe/android/networking/StripeRepository;->cancelSetupIntentSource(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_5c} :catch_77

    if-ne p1, v0, :cond_5f

    return-object v0

    :cond_5f
    move-object v3, v1

    :goto_60
    if-eqz p1, :cond_69

    .line 608
    :try_start_62
    check-cast p1, Lcom/stripe/android/model/SetupIntent;

    .line 607
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_83

    :cond_69
    const-string p1, "Required value was null."

    .line 608
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_77} :catch_27

    :catch_77
    move-exception p1

    move-object v3, v1

    .line 607
    :goto_79
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_83
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 617
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;-><init>(Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    iput-object v4, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a0

    return-object v0

    .line 635
    :cond_a0
    :goto_a0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
