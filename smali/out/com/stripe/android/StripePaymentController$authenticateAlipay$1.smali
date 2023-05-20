.class final Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StripePaymentController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/StripePaymentController;->authenticateAlipay(Lcom/stripe/android/model/StripeIntent;Ljava/lang/String;Lcom/stripe/android/AlipayAuthenticator;Lcom/stripe/android/ApiResultCallback;)V
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
    c = "com.stripe.android.StripePaymentController$authenticateAlipay$1"
    f = "StripePaymentController.kt"
    i = {
        0x1
    }
    l = {
        0x1cc,
        0x1d2,
        0x1db
    }
    m = "invokeSuspend"
    n = {
        "alipayAuth"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $authenticator:Lcom/stripe/android/AlipayAuthenticator;

.field final synthetic $callback:Lcom/stripe/android/ApiResultCallback;

.field final synthetic $intent:Lcom/stripe/android/model/StripeIntent;

.field final synthetic $requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/android/StripePaymentController;


# direct methods
.method constructor <init>(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/AlipayAuthenticator;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/ApiResultCallback;Lkotlin/coroutines/Continuation;)V
    .registers 7

    iput-object p1, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->this$0:Lcom/stripe/android/StripePaymentController;

    iput-object p2, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->$intent:Lcom/stripe/android/model/StripeIntent;

    iput-object p3, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->$authenticator:Lcom/stripe/android/AlipayAuthenticator;

    iput-object p4, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iput-object p5, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->$callback:Lcom/stripe/android/ApiResultCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 11
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

    new-instance v0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;

    iget-object v2, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->this$0:Lcom/stripe/android/StripePaymentController;

    iget-object v3, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->$intent:Lcom/stripe/android/model/StripeIntent;

    iget-object v4, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->$authenticator:Lcom/stripe/android/AlipayAuthenticator;

    iget-object v5, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iget-object v6, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->$callback:Lcom/stripe/android/ApiResultCallback;

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;-><init>(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/AlipayAuthenticator;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/ApiResultCallback;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 458
    iget v1, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2d

    if-eq v1, v4, :cond_29

    if-eq v1, v3, :cond_1e

    if-ne v1, v2, :cond_16

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_da

    .line 484
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 458
    :cond_1e
    iget-object v1, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/android/model/AlipayAuthResult;

    :try_start_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_8a

    :catch_26
    move-exception p1

    goto/16 :goto_b7

    :cond_29
    :try_start_29
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_52

    goto :goto_4b

    :cond_2d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 459
    :try_start_34
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 460
    iget-object p1, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {p1}, Lcom/stripe/android/StripePaymentController;->access$getAlipayRepository$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/networking/AlipayRepository;

    move-result-object p1

    iget-object v1, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->$intent:Lcom/stripe/android/model/StripeIntent;

    iget-object v5, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->$authenticator:Lcom/stripe/android/AlipayAuthenticator;

    iget-object v6, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iput v4, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->label:I

    invoke-interface {p1, v1, v5, v6, p0}, Lcom/stripe/android/networking/AlipayRepository;->authenticate(Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/AlipayAuthenticator;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4b

    return-object v0

    :cond_4b
    :goto_4b
    check-cast p1, Lcom/stripe/android/model/AlipayAuthResult;

    .line 459
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_51} :catch_52

    goto :goto_5d

    :catch_52
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 461
    :goto_5d
    invoke-static {p1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bd

    :try_start_63
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p1

    check-cast v1, Lcom/stripe/android/model/AlipayAuthResult;

    .line 463
    iget-object p1, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {p1}, Lcom/stripe/android/StripePaymentController;->access$getStripeRepository$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/networking/StripeRepository;

    move-result-object p1

    .line 464
    iget-object v4, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->$intent:Lcom/stripe/android/model/StripeIntent;

    invoke-interface {v4}, Lcom/stripe/android/model/StripeIntent;->getClientSecret()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_77

    goto :goto_79

    :cond_77
    const-string v4, ""

    .line 465
    :goto_79
    iget-object v5, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    .line 466
    invoke-static {}, Lcom/stripe/android/StripePaymentController;->access$getEXPAND_PAYMENT_METHOD$cp()Ljava/util/List;

    move-result-object v6

    iput-object v1, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->label:I

    .line 463
    invoke-interface {p1, v4, v5, v6, p0}, Lcom/stripe/android/networking/StripeRepository;->retrievePaymentIntent(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8a

    return-object v0

    :cond_8a
    :goto_8a
    if-eqz p1, :cond_a9

    .line 462
    check-cast p1, Lcom/stripe/android/model/PaymentIntent;

    .line 469
    new-instance v3, Lcom/stripe/android/PaymentIntentResult;

    .line 471
    invoke-virtual {v1}, Lcom/stripe/android/model/AlipayAuthResult;->getOutcome()I

    move-result v4

    .line 472
    iget-object v5, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->this$0:Lcom/stripe/android/StripePaymentController;

    move-object v6, p1

    check-cast v6, Lcom/stripe/android/model/StripeIntent;

    invoke-virtual {v1}, Lcom/stripe/android/model/AlipayAuthResult;->getOutcome()I

    move-result v1

    invoke-static {v5, v6, v1}, Lcom/stripe/android/StripePaymentController;->access$getFailureMessage(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/model/StripeIntent;I)Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-direct {v3, p1, v4, v1}, Lcom/stripe/android/PaymentIntentResult;-><init>(Lcom/stripe/android/model/PaymentIntent;ILjava/lang/String;)V

    .line 461
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_c1

    :cond_a9
    const-string p1, "Required value was null."

    .line 462
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_b7
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_b7} :catch_26

    .line 461
    :goto_b7
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :cond_bd
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 475
    :goto_c1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v3, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1$invokeSuspend$$inlined$let$lambda$1;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4, p0}, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1$invokeSuspend$$inlined$let$lambda$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    iput-object v4, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/android/StripePaymentController$authenticateAlipay$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_da

    return-object v0

    .line 484
    :cond_da
    :goto_da
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
