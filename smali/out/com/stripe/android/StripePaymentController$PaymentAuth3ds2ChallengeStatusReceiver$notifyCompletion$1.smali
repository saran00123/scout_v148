.class final Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StripePaymentController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->notifyCompletion(Lkotlin/jvm/functions/Function0;)V
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
    c = "com.stripe.android.StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1"
    f = "StripePaymentController.kt"
    i = {}
    l = {
        0x48d,
        0x491
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $completed3ds2Callback:Lkotlin/jvm/functions/Function0;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;


# direct methods
.method constructor <init>(Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .registers 4

    iput-object p1, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;->this$0:Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;

    iput-object p2, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;->$completed3ds2Callback:Lkotlin/jvm/functions/Function0;

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

    new-instance v0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;

    iget-object v1, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;->this$0:Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;

    iget-object v2, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;->$completed3ds2Callback:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2, p2}, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;-><init>(Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1161
    iget v1, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_69

    .line 1172
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1161
    :cond_1a
    :try_start_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1d} :catch_48

    goto :goto_42

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 1162
    :try_start_25
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 1163
    iget-object p1, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;->this$0:Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;

    invoke-static {p1}, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->access$getStripeRepository$p(Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;)Lcom/stripe/android/networking/StripeRepository;

    move-result-object p1

    .line 1164
    iget-object v1, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;->this$0:Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;

    invoke-static {v1}, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->access$getSourceId$p(Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;)Ljava/lang/String;

    move-result-object v1

    .line 1165
    iget-object v4, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;->this$0:Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;

    invoke-static {v4}, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;->access$getRequestOptions$p(Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver;)Lcom/stripe/android/networking/ApiRequest$Options;

    move-result-object v4

    iput v3, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;->label:I

    .line 1163
    invoke-interface {p1, v1, v4, p0}, Lcom/stripe/android/networking/StripeRepository;->complete3ds2Auth(Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_42

    return-object v0

    .line 1165
    :cond_42
    :goto_42
    check-cast p1, Lcom/stripe/android/model/Stripe3ds2AuthResult;

    .line 1162
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_47} :catch_48

    goto :goto_52

    :catch_48
    move-exception p1

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    :goto_52
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1$1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1$1;-><init>(Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    iput v2, p0, Lcom/stripe/android/StripePaymentController$PaymentAuth3ds2ChallengeStatusReceiver$notifyCompletion$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_69

    return-object v0

    .line 1172
    :cond_69
    :goto_69
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
