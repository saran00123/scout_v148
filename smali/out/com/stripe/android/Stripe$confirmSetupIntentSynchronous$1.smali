.class final Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Stripe.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/Stripe;->confirmSetupIntentSynchronous(Lcom/stripe/android/model/ConfirmSetupIntentParams;Ljava/lang/String;)Lcom/stripe/android/model/SetupIntent;
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
        "Lcom/stripe/android/model/SetupIntent;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/android/model/SetupIntent;",
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
    c = "com.stripe.android.Stripe$confirmSetupIntentSynchronous$1"
    f = "Stripe.kt"
    i = {}
    l = {
        0x2d7
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $confirmSetupIntentParams:Lcom/stripe/android/model/ConfirmSetupIntentParams;

.field final synthetic $idempotencyKey:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/stripe/android/Stripe;


# direct methods
.method constructor <init>(Lcom/stripe/android/Stripe;Lcom/stripe/android/model/ConfirmSetupIntentParams;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 5

    iput-object p1, p0, Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;->this$0:Lcom/stripe/android/Stripe;

    iput-object p2, p0, Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;->$confirmSetupIntentParams:Lcom/stripe/android/model/ConfirmSetupIntentParams;

    iput-object p3, p0, Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;->$idempotencyKey:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;

    iget-object v0, p0, Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;->this$0:Lcom/stripe/android/Stripe;

    iget-object v1, p0, Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;->$confirmSetupIntentParams:Lcom/stripe/android/model/ConfirmSetupIntentParams;

    iget-object v2, p0, Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;->$idempotencyKey:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;-><init>(Lcom/stripe/android/Stripe;Lcom/stripe/android/model/ConfirmSetupIntentParams;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 724
    iget v1, p0, Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_42

    .line 727
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 724
    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 725
    iget-object p1, p0, Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;->this$0:Lcom/stripe/android/Stripe;

    invoke-static {p1}, Lcom/stripe/android/Stripe;->access$getStripeRepository$p(Lcom/stripe/android/Stripe;)Lcom/stripe/android/networking/StripeRepository;

    move-result-object v3

    .line 726
    iget-object v4, p0, Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;->$confirmSetupIntentParams:Lcom/stripe/android/model/ConfirmSetupIntentParams;

    .line 727
    new-instance v5, Lcom/stripe/android/networking/ApiRequest$Options;

    .line 728
    iget-object p1, p0, Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;->this$0:Lcom/stripe/android/Stripe;

    invoke-static {p1}, Lcom/stripe/android/Stripe;->access$getPublishableKey$p(Lcom/stripe/android/Stripe;)Ljava/lang/String;

    move-result-object p1

    .line 729
    iget-object v1, p0, Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;->this$0:Lcom/stripe/android/Stripe;

    invoke-static {v1}, Lcom/stripe/android/Stripe;->access$getStripeAccountId$p(Lcom/stripe/android/Stripe;)Ljava/lang/String;

    move-result-object v1

    .line 730
    iget-object v6, p0, Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;->$idempotencyKey:Ljava/lang/String;

    .line 727
    invoke-direct {v5, p1, v1, v6}, Lcom/stripe/android/networking/ApiRequest$Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    iput v2, p0, Lcom/stripe/android/Stripe$confirmSetupIntentSynchronous$1;->label:I

    move-object v7, p0

    .line 725
    invoke-static/range {v3 .. v9}, Lcom/stripe/android/networking/StripeRepository$DefaultImpls;->confirmSetupIntent$default(Lcom/stripe/android/networking/StripeRepository;Lcom/stripe/android/model/ConfirmSetupIntentParams;Lcom/stripe/android/networking/ApiRequest$Options;Ljava/util/List;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_42

    return-object v0

    :cond_42
    :goto_42
    return-object p1
.end method
