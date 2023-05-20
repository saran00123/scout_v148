.class final Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "StripePaymentController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.stripe.android.StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1"
    f = "StripePaymentController.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $setupIntentResult:Lkotlin/jvm/internal/Ref$ObjectRef;

.field label:I

.field final synthetic this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;


# direct methods
.method constructor <init>(Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V
    .registers 4

    iput-object p1, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;->this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;

    iput-object p2, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;->$setupIntentResult:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
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

    new-instance p1, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;

    iget-object v0, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;->this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;

    iget-object v1, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;->$setupIntentResult:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, v1, p2}, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;-><init>(Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 617
    iget v0, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;->label:I

    if-nez v0, :cond_4d

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 618
    iget-object p1, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;->this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;

    iget-object p1, p1, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;

    iget-object v0, p1, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->this$0:Lcom/stripe/android/StripePaymentController;

    .line 619
    iget-object p1, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;->this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;

    iget-object p1, p1, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;

    iget-object v1, p1, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->$requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    .line 620
    iget-object p1, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;->this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;

    iget-object p1, p1, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;

    iget v2, p1, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->$flowOutcome:I

    .line 621
    iget-object p1, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;->this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;

    iget-object p1, p1, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;

    iget-object v3, p1, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->$sourceId:Ljava/lang/String;

    const/4 v4, 0x0

    .line 623
    iget-object p1, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;->this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;

    iget-object p1, p1, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1;->this$0:Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;

    iget-object v5, p1, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1;->$callback:Lcom/stripe/android/ApiResultCallback;

    .line 618
    invoke-static/range {v0 .. v5}, Lcom/stripe/android/StripePaymentController;->access$createSetupIntentCallback(Lcom/stripe/android/StripePaymentController;Lcom/stripe/android/networking/ApiRequest$Options;ILjava/lang/String;ZLcom/stripe/android/ApiResultCallback;)Lcom/stripe/android/ApiResultCallback;

    move-result-object p1

    .line 626
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController$createSetupIntentCallback$1$onSuccess$1$1;->$setupIntentResult:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_3f

    check-cast v0, Lcom/stripe/android/model/SetupIntent;

    check-cast v0, Lcom/stripe/android/model/StripeModel;

    .line 627
    invoke-interface {p1, v0}, Lcom/stripe/android/ApiResultCallback;->onSuccess(Lcom/stripe/android/model/StripeModel;)V

    goto :goto_4a

    .line 630
    :cond_3f
    sget-object v0, Lcom/stripe/android/exception/StripeException;->Companion:Lcom/stripe/android/exception/StripeException$Companion;

    invoke-virtual {v0, v1}, Lcom/stripe/android/exception/StripeException$Companion;->create(Ljava/lang/Throwable;)Lcom/stripe/android/exception/StripeException;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 629
    invoke-interface {p1, v0}, Lcom/stripe/android/ApiResultCallback;->onError(Ljava/lang/Exception;)V

    .line 634
    :goto_4a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_4d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
