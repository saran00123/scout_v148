.class final Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PaymentSheetFlowControllerFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->create(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
    c = "com.stripe.android.paymentsheet.PaymentSheetFlowControllerFactory$create$2"
    f = "PaymentSheetFlowControllerFactory.kt"
    i = {}
    l = {
        0x48,
        0x49
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $clientSecret:Ljava/lang/String;

.field final synthetic $onComplete:Lkotlin/jvm/functions/Function1;

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;


# direct methods
.method constructor <init>(Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .registers 5

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;->this$0:Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;

    iput-object p2, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;->$clientSecret:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;->$onComplete:Lkotlin/jvm/functions/Function1;

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

    new-instance p1, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;

    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;->this$0:Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;

    iget-object v1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;->$clientSecret:Ljava/lang/String;

    iget-object v2, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;->$onComplete:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;-><init>(Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 70
    iget v1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_22

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_44

    .line 75
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_1a
    iget-object v1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_34

    :cond_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    iget-object v1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;->this$0:Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;

    .line 72
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;->$clientSecret:Ljava/lang/String;

    iput-object v1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;->label:I

    invoke-virtual {v1, p1, p0}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->createWithGuestArgs(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_34

    return-object v0

    .line 70
    :cond_34
    :goto_34
    check-cast p1, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Result;

    .line 73
    iget-object v3, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;->$onComplete:Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$create$2;->label:I

    .line 71
    invoke-virtual {v1, p1, v3, p0}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory;->dispatchResult(Lcom/stripe/android/paymentsheet/PaymentSheetFlowControllerFactory$Result;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_44

    return-object v0

    .line 75
    :cond_44
    :goto_44
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
