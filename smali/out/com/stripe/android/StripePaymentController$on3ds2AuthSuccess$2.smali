.class final Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StripePaymentController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/StripePaymentController;->on3ds2AuthSuccess$stripe_release(Lcom/stripe/android/model/Stripe3ds2AuthResult;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Ljava/lang/String;ILcom/stripe/android/PaymentRelayStarter;Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.stripe.android.StripePaymentController$on3ds2AuthSuccess$2"
    f = "StripePaymentController.kt"
    i = {}
    l = {
        0x38d,
        0x392,
        0x3b8
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $host:Lcom/stripe/android/view/AuthActivityStarter$Host;

.field final synthetic $paymentRelayStarter:Lcom/stripe/android/PaymentRelayStarter;

.field final synthetic $requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

.field final synthetic $result:Lcom/stripe/android/model/Stripe3ds2AuthResult;

.field final synthetic $sourceId:Ljava/lang/String;

.field final synthetic $stripeIntent:Lcom/stripe/android/model/StripeIntent;

.field final synthetic $timeout:I

.field final synthetic $transaction:Lcom/stripe/android/stripe3ds2/transaction/Transaction;

.field label:I

.field final synthetic this$0:Lcom/stripe/android/StripePaymentController;


# direct methods
.method constructor <init>(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/model/Stripe3ds2AuthResult;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Ljava/lang/String;ILcom/stripe/android/PaymentRelayStarter;Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)V
    .registers 11

    iput-object p1, p0, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->this$0:Lcom/stripe/android/StripePaymentController;

    iput-object p2, p0, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$result:Lcom/stripe/android/model/Stripe3ds2AuthResult;

    iput-object p3, p0, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$transaction:Lcom/stripe/android/stripe3ds2/transaction/Transaction;

    iput-object p4, p0, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$sourceId:Ljava/lang/String;

    iput p5, p0, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$timeout:I

    iput-object p6, p0, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$paymentRelayStarter:Lcom/stripe/android/PaymentRelayStarter;

    iput-object p7, p0, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    iput-object p8, p0, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$stripeIntent:Lcom/stripe/android/model/StripeIntent;

    iput-object p9, p0, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 14
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;

    iget-object v1, p0, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->this$0:Lcom/stripe/android/StripePaymentController;

    iget-object v2, p0, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$result:Lcom/stripe/android/model/Stripe3ds2AuthResult;

    iget-object v3, p0, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$transaction:Lcom/stripe/android/stripe3ds2/transaction/Transaction;

    iget-object v4, p0, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$sourceId:Ljava/lang/String;

    iget v5, p0, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$timeout:I

    iget-object v6, p0, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$paymentRelayStarter:Lcom/stripe/android/PaymentRelayStarter;

    iget-object v7, p0, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    iget-object v8, p0, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$stripeIntent:Lcom/stripe/android/model/StripeIntent;

    iget-object v9, p0, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;-><init>(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/model/Stripe3ds2AuthResult;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Ljava/lang/String;ILcom/stripe/android/PaymentRelayStarter;Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    move-object/from16 v10, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v11

    .line 897
    iget v0, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->label:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_21

    if-eq v0, v3, :cond_1c

    if-eq v0, v2, :cond_1c

    if-ne v0, v1, :cond_14

    goto :goto_1c

    .line 955
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_1c
    :goto_1c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_145

    :cond_21
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 898
    iget-object v0, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$result:Lcom/stripe/android/model/Stripe3ds2AuthResult;

    invoke-virtual {v0}, Lcom/stripe/android/model/Stripe3ds2AuthResult;->getAres()Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;

    move-result-object v4

    if-eqz v4, :cond_63

    .line 900
    invoke-virtual {v4}, Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;->isChallenge()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 901
    iget-object v0, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->this$0:Lcom/stripe/android/StripePaymentController;

    .line 903
    iget-object v2, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$transaction:Lcom/stripe/android/stripe3ds2/transaction/Transaction;

    .line 904
    iget-object v5, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$sourceId:Ljava/lang/String;

    .line 905
    iget v6, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$timeout:I

    .line 906
    iget-object v7, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$paymentRelayStarter:Lcom/stripe/android/PaymentRelayStarter;

    .line 907
    iget-object v8, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    .line 908
    iget-object v9, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$stripeIntent:Lcom/stripe/android/model/StripeIntent;

    .line 909
    iget-object v12, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iput v3, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->label:I

    move-object v1, v4

    move-object v3, v5

    move v4, v6

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v12

    move-object/from16 v9, p0

    .line 901
    invoke-virtual/range {v0 .. v9}, Lcom/stripe/android/StripePaymentController;->startChallengeFlow$stripe_release(Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Ljava/lang/String;ILcom/stripe/android/PaymentRelayStarter;Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_145

    return-object v11

    .line 912
    :cond_54
    iget-object v0, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->this$0:Lcom/stripe/android/StripePaymentController;

    .line 913
    iget-object v1, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$paymentRelayStarter:Lcom/stripe/android/PaymentRelayStarter;

    .line 914
    iget-object v3, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$stripeIntent:Lcom/stripe/android/model/StripeIntent;

    iput v2, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->label:I

    .line 912
    invoke-virtual {v0, v1, v3, v10}, Lcom/stripe/android/StripePaymentController;->startFrictionlessFlow(Lcom/stripe/android/PaymentRelayStarter;Lcom/stripe/android/model/StripeIntent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_145

    return-object v11

    .line 917
    :cond_63
    iget-object v0, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$result:Lcom/stripe/android/model/Stripe3ds2AuthResult;

    invoke-virtual {v0}, Lcom/stripe/android/model/Stripe3ds2AuthResult;->getFallbackRedirectUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d1

    .line 918
    iget-object v0, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {v0}, Lcom/stripe/android/StripePaymentController;->access$getAnalyticsRequestExecutor$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    move-result-object v0

    .line 919
    iget-object v1, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {v1}, Lcom/stripe/android/StripePaymentController;->access$getAnalyticsRequestFactory$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    move-result-object v1

    .line 920
    iget-object v2, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {v2}, Lcom/stripe/android/StripePaymentController;->access$getAnalyticsDataFactory$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/networking/AnalyticsDataFactory;

    move-result-object v3

    .line 921
    sget-object v4, Lcom/stripe/android/AnalyticsEvent;->Auth3ds2Fallback:Lcom/stripe/android/AnalyticsEvent;

    .line 922
    iget-object v2, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$stripeIntent:Lcom/stripe/android/model/StripeIntent;

    invoke-interface {v2}, Lcom/stripe/android/model/StripeIntent;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v9, ""

    if-eqz v2, :cond_8b

    move-object v5, v2

    goto :goto_8c

    :cond_8b
    move-object v5, v9

    :goto_8c
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    .line 920
    invoke-static/range {v3 .. v8}, Lcom/stripe/android/networking/AnalyticsDataFactory;->createAuthParams$stripe_release$default(Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/AnalyticsEvent;Ljava/lang/String;Lcom/stripe/android/networking/RequestId;ILjava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 919
    invoke-virtual {v1, v2}, Lcom/stripe/android/networking/AnalyticsRequest$Factory;->create$stripe_release(Ljava/util/Map;)Lcom/stripe/android/networking/AnalyticsRequest;

    move-result-object v1

    .line 918
    invoke-interface {v0, v1}, Lcom/stripe/android/networking/AnalyticsRequestExecutor;->executeAsync(Lcom/stripe/android/networking/AnalyticsRequest;)V

    .line 926
    sget-object v11, Lcom/stripe/android/StripePaymentController;->Companion:Lcom/stripe/android/StripePaymentController$Companion;

    .line 927
    iget-object v12, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    .line 928
    sget-object v0, Lcom/stripe/android/StripePaymentController;->Companion:Lcom/stripe/android/StripePaymentController$Companion;

    iget-object v1, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$stripeIntent:Lcom/stripe/android/model/StripeIntent;

    invoke-virtual {v0, v1}, Lcom/stripe/android/StripePaymentController$Companion;->getRequestCode$stripe_release(Lcom/stripe/android/model/StripeIntent;)I

    move-result v13

    .line 929
    iget-object v0, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$stripeIntent:Lcom/stripe/android/model/StripeIntent;

    invoke-interface {v0}, Lcom/stripe/android/model/StripeIntent;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b0

    move-object v14, v0

    goto :goto_b1

    :cond_b0
    move-object v14, v9

    .line 930
    :goto_b1
    iget-object v0, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$result:Lcom/stripe/android/model/Stripe3ds2AuthResult;

    invoke-virtual {v0}, Lcom/stripe/android/model/Stripe3ds2AuthResult;->getFallbackRedirectUrl()Ljava/lang/String;

    move-result-object v15

    .line 931
    iget-object v0, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    invoke-virtual {v0}, Lcom/stripe/android/networking/ApiRequest$Options;->getStripeAccount$stripe_release()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    .line 932
    iget-object v0, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {v0}, Lcom/stripe/android/StripePaymentController;->access$getEnableLogging$p(Lcom/stripe/android/StripePaymentController;)Z

    move-result v18

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x120

    const/16 v22, 0x0

    .line 926
    invoke-static/range {v11 .. v22}, Lcom/stripe/android/StripePaymentController$Companion;->beginWebAuth$default(Lcom/stripe/android/StripePaymentController$Companion;Lcom/stripe/android/view/AuthActivityStarter$Host;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZILjava/lang/Object;)V

    goto :goto_145

    .line 937
    :cond_d1
    iget-object v0, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$result:Lcom/stripe/android/model/Stripe3ds2AuthResult;

    invoke-virtual {v0}, Lcom/stripe/android/model/Stripe3ds2AuthResult;->getError()Lcom/stripe/android/model/Stripe3ds2AuthResult$ThreeDS2Error;

    move-result-object v0

    if-eqz v0, :cond_11e

    .line 940
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/stripe/android/model/Stripe3ds2AuthResult$ThreeDS2Error;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Detail: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    invoke-virtual {v0}, Lcom/stripe/android/model/Stripe3ds2AuthResult$ThreeDS2Error;->getErrorDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Description: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {v0}, Lcom/stripe/android/model/Stripe3ds2AuthResult$ThreeDS2Error;->getErrorDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Component: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    invoke-virtual {v0}, Lcom/stripe/android/model/Stripe3ds2AuthResult$ThreeDS2Error;->getErrorComponent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_120

    :cond_11e
    const-string v0, "Invalid 3DS2 authentication response"

    .line 948
    :goto_120
    iget-object v2, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->this$0:Lcom/stripe/android/StripePaymentController;

    .line 949
    new-instance v3, Ljava/lang/RuntimeException;

    .line 950
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error encountered during 3DS2 authentication request. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 949
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    .line 952
    iget-object v0, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->$paymentRelayStarter:Lcom/stripe/android/PaymentRelayStarter;

    iput v1, v10, Lcom/stripe/android/StripePaymentController$on3ds2AuthSuccess$2;->label:I

    .line 948
    invoke-virtual {v2, v3, v0, v10}, Lcom/stripe/android/StripePaymentController;->on3ds2AuthFailure(Ljava/lang/Throwable;Lcom/stripe/android/PaymentRelayStarter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v11, :cond_145

    return-object v11

    .line 955
    :cond_145
    :goto_145
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
