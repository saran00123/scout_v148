.class final Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StripePaymentController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/StripePaymentController;->startAuthenticateSource(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/Source;Lcom/stripe/android/networking/ApiRequest$Options;)V
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
    c = "com.stripe.android.StripePaymentController$startAuthenticateSource$1"
    f = "StripePaymentController.kt"
    i = {}
    l = {
        0xcd,
        0xd2
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $host:Lcom/stripe/android/view/AuthActivityStarter$Host;

.field final synthetic $requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

.field final synthetic $source:Lcom/stripe/android/model/Source;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/android/StripePaymentController;


# direct methods
.method constructor <init>(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/model/Source;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/view/AuthActivityStarter$Host;Lkotlin/coroutines/Continuation;)V
    .registers 6

    iput-object p1, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->this$0:Lcom/stripe/android/StripePaymentController;

    iput-object p2, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->$source:Lcom/stripe/android/model/Source;

    iput-object p3, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iput-object p4, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->$host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 10
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

    new-instance v0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;

    iget-object v2, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->this$0:Lcom/stripe/android/StripePaymentController;

    iget-object v3, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->$source:Lcom/stripe/android/model/Source;

    iget-object v4, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iget-object v5, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->$host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;-><init>(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/model/Source;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/view/AuthActivityStarter$Host;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 199
    iget v1, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_29

    if-eq v1, v3, :cond_1b

    if-ne v1, v2, :cond_13

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a2

    .line 220
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_1b
    iget-object v1, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_62

    :catch_27
    move-exception p1

    goto :goto_7b

    :cond_29
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 200
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_35
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 202
    iget-object p1, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->this$0:Lcom/stripe/android/StripePaymentController;

    invoke-static {p1}, Lcom/stripe/android/StripePaymentController;->access$getStripeRepository$p(Lcom/stripe/android/StripePaymentController;)Lcom/stripe/android/networking/StripeRepository;

    move-result-object p1

    .line 203
    iget-object v4, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->$source:Lcom/stripe/android/model/Source;

    invoke-virtual {v4}, Lcom/stripe/android/model/Source;->getId()Ljava/lang/String;

    move-result-object v4
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_43} :catch_79

    const-string v5, ""

    if-eqz v4, :cond_48

    goto :goto_49

    :cond_48
    move-object v4, v5

    .line 204
    :goto_49
    :try_start_49
    iget-object v6, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->$source:Lcom/stripe/android/model/Source;

    invoke-virtual {v6}, Lcom/stripe/android/model/Source;->getClientSecret()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_52

    move-object v5, v6

    .line 205
    :cond_52
    iget-object v6, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iput-object v1, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->label:I

    .line 202
    invoke-interface {p1, v4, v5, v6, p0}, Lcom/stripe/android/networking/StripeRepository;->retrieveSource(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/networking/ApiRequest$Options;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_5e} :catch_79

    if-ne p1, v0, :cond_61

    return-object v0

    :cond_61
    move-object v3, v1

    :goto_62
    if-eqz p1, :cond_6b

    .line 201
    :try_start_64
    check-cast p1, Lcom/stripe/android/model/Source;

    .line 200
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_85

    :cond_6b
    const-string p1, "Required value was null."

    .line 201
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_79} :catch_27

    :catch_79
    move-exception p1

    move-object v3, v1

    .line 200
    :goto_7b
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_85
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 210
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1$1;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1$1;-><init>(Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    iput-object v4, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/android/StripePaymentController$startAuthenticateSource$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a2

    return-object v0

    .line 220
    :cond_a2
    :goto_a2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
