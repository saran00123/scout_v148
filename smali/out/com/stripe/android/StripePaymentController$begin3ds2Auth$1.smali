.class final Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StripePaymentController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/StripePaymentController;->begin3ds2Auth(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/model/Stripe3ds2Fingerprint;Lcom/stripe/android/networking/ApiRequest$Options;)V
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
    c = "com.stripe.android.StripePaymentController$begin3ds2Auth$1"
    f = "StripePaymentController.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x343,
        0x359,
        0x36d,
        0x371
    }
    m = "invokeSuspend"
    n = {
        "$this$launch",
        "timeout"
    }
    s = {
        "L$0",
        "I$0"
    }
.end annotation


# instance fields
.field final synthetic $host:Lcom/stripe/android/view/AuthActivityStarter$Host;

.field final synthetic $requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

.field final synthetic $stripe3ds2Fingerprint:Lcom/stripe/android/model/Stripe3ds2Fingerprint;

.field final synthetic $stripeIntent:Lcom/stripe/android/model/StripeIntent;

.field final synthetic $transaction:Lcom/stripe/android/stripe3ds2/transaction/Transaction;

.field I$0:I

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/android/StripePaymentController;


# direct methods
.method constructor <init>(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Lcom/stripe/android/model/Stripe3ds2Fingerprint;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/view/AuthActivityStarter$Host;Lkotlin/coroutines/Continuation;)V
    .registers 8

    iput-object p1, p0, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->this$0:Lcom/stripe/android/StripePaymentController;

    iput-object p2, p0, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$transaction:Lcom/stripe/android/stripe3ds2/transaction/Transaction;

    iput-object p3, p0, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$stripe3ds2Fingerprint:Lcom/stripe/android/model/Stripe3ds2Fingerprint;

    iput-object p4, p0, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$stripeIntent:Lcom/stripe/android/model/StripeIntent;

    iput-object p5, p0, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iput-object p6, p0, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 12
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

    new-instance v0, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;

    iget-object v2, p0, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->this$0:Lcom/stripe/android/StripePaymentController;

    iget-object v3, p0, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$transaction:Lcom/stripe/android/stripe3ds2/transaction/Transaction;

    iget-object v4, p0, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$stripe3ds2Fingerprint:Lcom/stripe/android/model/Stripe3ds2Fingerprint;

    iget-object v5, p0, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$stripeIntent:Lcom/stripe/android/model/StripeIntent;

    iget-object v6, p0, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iget-object v7, p0, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    move-object v1, v0

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;-><init>(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Lcom/stripe/android/model/Stripe3ds2Fingerprint;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/view/AuthActivityStarter$Host;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    move-object/from16 v11, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v12

    .line 834
    iget v0, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->label:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_3c

    if-eq v0, v4, :cond_32

    if-eq v0, v3, :cond_25

    if-eq v0, v2, :cond_20

    if-ne v0, v1, :cond_18

    goto :goto_20

    .line 884
    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_20
    :goto_20
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_11b

    :cond_25
    iget v3, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->I$0:I

    :try_start_27
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_2e

    move-object/from16 v0, p1

    goto/16 :goto_af

    :catch_2e
    move-exception v0

    move v4, v3

    goto/16 :goto_c8

    :cond_32
    iget-object v0, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_50

    :cond_3c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 835
    iget-object v6, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$transaction:Lcom/stripe/android/stripe3ds2/transaction/Transaction;

    iput-object v0, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->L$0:Ljava/lang/Object;

    iput v4, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->label:I

    invoke-interface {v6, v11}, Lcom/stripe/android/stripe3ds2/transaction/Transaction;->createAuthenticationRequestParameters(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_50

    return-object v12

    .line 834
    :cond_50
    :goto_50
    check-cast v0, Lcom/stripe/android/stripe3ds2/transaction/AuthenticationRequestParameters;

    .line 837
    iget-object v4, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {v4}, Lcom/stripe/android/StripePaymentController;->access$getConfig$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/PaymentAuthConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stripe/android/PaymentAuthConfig;->getStripe3ds2Config$stripe_release()Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stripe/android/PaymentAuthConfig$Stripe3ds2Config;->getTimeout$stripe_release()I

    move-result v4

    .line 838
    new-instance v6, Lcom/stripe/android/model/Stripe3ds2AuthParams;

    .line 839
    iget-object v7, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$stripe3ds2Fingerprint:Lcom/stripe/android/model/Stripe3ds2Fingerprint;

    invoke-virtual {v7}, Lcom/stripe/android/model/Stripe3ds2Fingerprint;->getSource()Ljava/lang/String;

    move-result-object v14

    .line 840
    invoke-virtual {v0}, Lcom/stripe/android/stripe3ds2/transaction/AuthenticationRequestParameters;->getSdkAppId()Ljava/lang/String;

    move-result-object v15

    .line 841
    invoke-virtual {v0}, Lcom/stripe/android/stripe3ds2/transaction/AuthenticationRequestParameters;->getSdkReferenceNumber()Ljava/lang/String;

    move-result-object v16

    .line 842
    invoke-virtual {v0}, Lcom/stripe/android/stripe3ds2/transaction/AuthenticationRequestParameters;->getSdkTransactionId()Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    move-result-object v7

    invoke-virtual {v7}, Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;->getValue()Ljava/lang/String;

    move-result-object v17

    .line 843
    invoke-virtual {v0}, Lcom/stripe/android/stripe3ds2/transaction/AuthenticationRequestParameters;->getDeviceData()Ljava/lang/String;

    move-result-object v18

    .line 844
    invoke-virtual {v0}, Lcom/stripe/android/stripe3ds2/transaction/AuthenticationRequestParameters;->getSdkEphemeralPublicKey()Ljava/lang/String;

    move-result-object v19

    .line 845
    invoke-virtual {v0}, Lcom/stripe/android/stripe3ds2/transaction/AuthenticationRequestParameters;->getMessageVersion()Ljava/lang/String;

    move-result-object v20

    const/16 v22, 0x0

    move-object v13, v6

    move/from16 v21, v4

    .line 838
    invoke-direct/range {v13 .. v22}, Lcom/stripe/android/model/Stripe3ds2AuthParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 852
    :try_start_8c
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 854
    iget-object v0, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {v0}, Lcom/stripe/android/StripePaymentController;->access$getStripeRepository$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/networking/StripeRepository;

    move-result-object v0

    .line 856
    iget-object v7, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$stripeIntent:Lcom/stripe/android/model/StripeIntent;

    invoke-interface {v7}, Lcom/stripe/android/model/StripeIntent;->getId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9d

    goto :goto_9f

    :cond_9d
    const-string v7, ""

    .line 857
    :goto_9f
    iget-object v8, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iput-object v5, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->L$0:Ljava/lang/Object;

    iput v4, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->I$0:I

    iput v3, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->label:I

    .line 854
    invoke-interface {v0, v6, v7, v8, v11}, Lcom/stripe/android/networking/StripeRepository;->start3ds2Auth(Lcom/stripe/android/model/Stripe3ds2AuthParams;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_ab} :catch_c7

    if-ne v0, v12, :cond_ae

    return-object v12

    :cond_ae
    move v3, v4

    :goto_af
    if-eqz v0, :cond_b9

    .line 853
    :try_start_b1
    check-cast v0, Lcom/stripe/android/model/Stripe3ds2AuthResult;

    .line 852
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move v6, v3

    goto :goto_d3

    :cond_b9
    const-string v0, "Required value was null."

    .line 853
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4
    :try_end_c7
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_c7} :catch_2e

    :catch_c7
    move-exception v0

    .line 852
    :goto_c8
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move v6, v4

    .line 862
    :goto_d3
    sget-object v3, Lcom/stripe/android/PaymentRelayStarter;->Companion:Lcom/stripe/android/PaymentRelayStarter$Companion;

    .line 863
    iget-object v4, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    .line 864
    sget-object v7, Lcom/stripe/android/StripePaymentController;->Companion:Lcom/stripe/android/StripePaymentController$Companion;

    iget-object v8, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$stripeIntent:Lcom/stripe/android/model/StripeIntent;

    invoke-virtual {v7, v8}, Lcom/stripe/android/StripePaymentController$Companion;->getRequestCode$stripe_release(Lcom/stripe/android/model/StripeIntent;)I

    move-result v7

    .line 862
    invoke-virtual {v3, v4, v7}, Lcom/stripe/android/PaymentRelayStarter$Companion;->create$stripe_release(Lcom/stripe/android/view/AuthActivityStarter$Host;I)Lcom/stripe/android/PaymentRelayStarter;

    move-result-object v7

    .line 867
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_10e

    check-cast v0, Lcom/stripe/android/model/Stripe3ds2AuthResult;

    .line 869
    iget-object v1, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->this$0:Lcom/stripe/android/StripePaymentController;

    .line 871
    iget-object v3, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$transaction:Lcom/stripe/android/stripe3ds2/transaction/Transaction;

    .line 872
    iget-object v4, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$stripe3ds2Fingerprint:Lcom/stripe/android/model/Stripe3ds2Fingerprint;

    invoke-virtual {v4}, Lcom/stripe/android/model/Stripe3ds2Fingerprint;->getSource()Ljava/lang/String;

    move-result-object v4

    .line 875
    iget-object v8, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    .line 876
    iget-object v9, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$stripeIntent:Lcom/stripe/android/model/StripeIntent;

    .line 877
    iget-object v10, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iput-object v5, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->L$0:Ljava/lang/Object;

    iput v2, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->label:I

    move-object v2, v0

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object/from16 v10, p0

    .line 869
    invoke-virtual/range {v1 .. v10}, Lcom/stripe/android/StripePaymentController;->on3ds2AuthSuccess$stripe_release(Lcom/stripe/android/model/Stripe3ds2AuthResult;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Ljava/lang/String;ILcom/stripe/android/PaymentRelayStarter;Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_11b

    return-object v12

    .line 881
    :cond_10e
    iget-object v0, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->this$0:Lcom/stripe/android/StripePaymentController;

    iput-object v5, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->L$0:Ljava/lang/Object;

    iput v1, v11, Lcom/stripe/android/StripePaymentController$begin3ds2Auth$1;->label:I

    invoke-virtual {v0, v3, v7, v11}, Lcom/stripe/android/StripePaymentController;->on3ds2AuthFailure(Ljava/lang/Throwable;Lcom/stripe/android/PaymentRelayStarter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_11b

    return-object v12

    .line 884
    :cond_11b
    :goto_11b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
