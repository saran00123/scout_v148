.class final Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StripePaymentController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/StripePaymentController;->startChallengeFlow$stripe_release(Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Ljava/lang/String;ILcom/stripe/android/PaymentRelayStarter;Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.stripe.android.StripePaymentController$startChallengeFlow$2"
    f = "StripePaymentController.kt"
    i = {
        0x0
    }
    l = {
        0x3e3,
        0x3f7,
        0x3fd
    }
    m = "invokeSuspend"
    n = {
        "stripe3ds2Host"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $ares:Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;

.field final synthetic $host:Lcom/stripe/android/view/AuthActivityStarter$Host;

.field final synthetic $maxTimeout:I

.field final synthetic $paymentRelayStarter:Lcom/stripe/android/PaymentRelayStarter;

.field final synthetic $requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

.field final synthetic $sourceId:Ljava/lang/String;

.field final synthetic $stripeIntent:Lcom/stripe/android/model/StripeIntent;

.field final synthetic $transaction:Lcom/stripe/android/stripe3ds2/transaction/Transaction;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/android/StripePaymentController;


# direct methods
.method constructor <init>(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;Lcom/stripe/android/model/StripeIntent;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;ILcom/stripe/android/PaymentRelayStarter;Lkotlin/coroutines/Continuation;)V
    .registers 11

    iput-object p1, p0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->this$0:Lcom/stripe/android/StripePaymentController;

    iput-object p2, p0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    iput-object p3, p0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$transaction:Lcom/stripe/android/stripe3ds2/transaction/Transaction;

    iput-object p4, p0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$ares:Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;

    iput-object p5, p0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$stripeIntent:Lcom/stripe/android/model/StripeIntent;

    iput-object p6, p0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$sourceId:Ljava/lang/String;

    iput-object p7, p0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iput p8, p0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$maxTimeout:I

    iput-object p9, p0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$paymentRelayStarter:Lcom/stripe/android/PaymentRelayStarter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 15
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

    new-instance v0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;

    iget-object v2, p0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->this$0:Lcom/stripe/android/StripePaymentController;

    iget-object v3, p0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    iget-object v4, p0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$transaction:Lcom/stripe/android/stripe3ds2/transaction/Transaction;

    iget-object v5, p0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$ares:Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;

    iget-object v6, p0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$stripeIntent:Lcom/stripe/android/model/StripeIntent;

    iget-object v7, p0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$sourceId:Ljava/lang/String;

    iget-object v8, p0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iget v9, p0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$maxTimeout:I

    iget-object v10, p0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$paymentRelayStarter:Lcom/stripe/android/PaymentRelayStarter;

    move-object v1, v0

    move-object v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;-><init>(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;Lcom/stripe/android/model/StripeIntent;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;ILcom/stripe/android/PaymentRelayStarter;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 28
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v7, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v8

    .line 982
    iget v0, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->label:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2b

    if-eq v0, v4, :cond_22

    if-eq v0, v3, :cond_1d

    if-ne v0, v2, :cond_15

    goto :goto_1d

    .line 1025
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 982
    :cond_1d
    :goto_1d
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_fd

    :cond_22
    iget-object v0, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_29
    move-object v2, v0

    goto :goto_8a

    :cond_2b
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    .line 983
    :try_start_32
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 985
    iget-object v0, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    invoke-virtual {v0}, Lcom/stripe/android/view/AuthActivityStarter$Host;->getFragment$stripe_release()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 986
    new-instance v5, Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;

    invoke-direct {v5, v0}, Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;-><init>(Landroidx/fragment/app/Fragment;)V

    goto :goto_51

    .line 987
    :cond_42
    iget-object v0, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    invoke-virtual {v0}, Lcom/stripe/android/view/AuthActivityStarter$Host;->getActivity$stripe_release()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 988
    new-instance v5, Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;

    invoke-direct {v5, v0}, Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;-><init>(Landroid/app/Activity;)V

    goto :goto_51

    :cond_50
    move-object v5, v1

    :goto_51
    if-eqz v5, :cond_58

    .line 983
    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_71

    :cond_58
    const-string v0, "Error while attempting to start 3DS2 challenge flow."

    .line 984
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v5, Ljava/lang/Throwable;

    throw v5
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_66} :catch_66

    :catch_66
    move-exception v0

    .line 983
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 993
    :goto_71
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_f0

    check-cast v0, Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;

    .line 995
    sget-object v2, Lcom/stripe/android/StripePaymentController;->Companion:Lcom/stripe/android/StripePaymentController$Companion;

    invoke-virtual {v2}, Lcom/stripe/android/StripePaymentController$Companion;->getCHALLENGE_DELAY$stripe_release()J

    move-result-wide v5

    iput-object v0, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->L$0:Ljava/lang/Object;

    iput v4, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->label:I

    invoke-static {v5, v6, v7}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v8, :cond_29

    return-object v8

    .line 997
    :goto_8a
    iget-object v0, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$transaction:Lcom/stripe/android/stripe3ds2/transaction/Transaction;

    .line 999
    new-instance v4, Lcom/stripe/android/stripe3ds2/transaction/ChallengeParameters;

    .line 1000
    iget-object v5, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$ares:Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;

    invoke-virtual {v5}, Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;->getAcsSignedContent$stripe_release()Ljava/lang/String;

    move-result-object v13

    .line 1001
    iget-object v5, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$ares:Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;

    invoke-virtual {v5}, Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;->getThreeDSServerTransId$stripe_release()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    .line 1002
    iget-object v5, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$ares:Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;

    invoke-virtual {v5}, Lcom/stripe/android/model/Stripe3ds2AuthResult$Ares;->getAcsTransId$stripe_release()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x4

    const/4 v15, 0x0

    move-object v9, v4

    .line 999
    invoke-direct/range {v9 .. v15}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1004
    sget-object v16, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->Companion:Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$Companion;

    .line 1005
    iget-object v5, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {v5}, Lcom/stripe/android/StripePaymentController;->access$getStripeRepository$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/networking/StripeRepository;

    move-result-object v17

    .line 1006
    iget-object v5, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$stripeIntent:Lcom/stripe/android/model/StripeIntent;

    .line 1007
    iget-object v6, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$sourceId:Ljava/lang/String;

    .line 1008
    iget-object v9, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    .line 1009
    iget-object v10, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {v10}, Lcom/stripe/android/StripePaymentController;->access$getAnalyticsRequestExecutor$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/networking/AnalyticsRequestExecutor;

    move-result-object v21

    .line 1010
    iget-object v10, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {v10}, Lcom/stripe/android/StripePaymentController;->access$getAnalyticsDataFactory$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/networking/AnalyticsDataFactory;

    move-result-object v22

    .line 1011
    iget-object v10, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$transaction:Lcom/stripe/android/stripe3ds2/transaction/Transaction;

    .line 1012
    iget-object v11, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {v11}, Lcom/stripe/android/StripePaymentController;->access$getAnalyticsRequestFactory$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/networking/AnalyticsRequest$Factory;

    move-result-object v24

    .line 1013
    iget-object v11, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {v11}, Lcom/stripe/android/StripePaymentController;->access$getWorkContext$p(Lcom/stripe/android/StripePaymentController;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v25

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v9

    move-object/from16 v23, v10

    .line 1004
    invoke-virtual/range {v16 .. v25}, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$Companion;->create$stripe_release(Lcom/stripe/android/networking/StripeRepository;Lcom/stripe/android/model/StripeIntent;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/networking/AnalyticsRequestExecutor;Lcom/stripe/android/networking/AnalyticsDataFactory;Lcom/stripe/android/stripe3ds2/transaction/Transaction;Lcom/stripe/android/networking/AnalyticsRequest$Factory;Lkotlin/coroutines/CoroutineContext;)Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;

    move-result-object v5

    check-cast v5, Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;

    .line 1015
    iget v6, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$maxTimeout:I

    iput-object v1, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->L$0:Ljava/lang/Object;

    iput v3, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->label:I

    move-object v1, v0

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object/from16 v6, p0

    .line 997
    invoke-interface/range {v1 .. v6}, Lcom/stripe/android/stripe3ds2/transaction/Transaction;->doChallenge(Lcom/stripe/android/stripe3ds2/transaction/Stripe3ds2ActivityStarterHost;Lcom/stripe/android/stripe3ds2/transaction/ChallengeParameters;Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_fd

    return-object v8

    .line 1019
    :cond_f0
    iget-object v0, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->this$0:Lcom/stripe/android/StripePaymentController;

    .line 1021
    iget-object v1, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->$paymentRelayStarter:Lcom/stripe/android/PaymentRelayStarter;

    iput v2, v7, Lcom/stripe/android/StripePaymentController$startChallengeFlow$2;->label:I

    .line 1019
    invoke-virtual {v0, v5, v1, v7}, Lcom/stripe/android/StripePaymentController;->on3ds2AuthFailure(Ljava/lang/Throwable;Lcom/stripe/android/PaymentRelayStarter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_fd

    return-object v8

    .line 1025
    :cond_fd
    :goto_fd
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
