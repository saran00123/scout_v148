.class final Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1$lambda$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CardNumberEditText.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "com/stripe/android/view/CardNumberEditText$2$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.android.view.CardNumberEditText$2$1$1"
    f = "CardNumberEditText.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $it:Z

.field label:I

.field final synthetic this$0:Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1;


# direct methods
.method constructor <init>(ZLkotlin/coroutines/Continuation;Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1;)V
    .registers 4

    iput-boolean p1, p0, Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1$lambda$1;->$it:Z

    iput-object p3, p0, Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1$lambda$1;->this$0:Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1$lambda$1;

    iget-boolean v0, p0, Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1$lambda$1;->$it:Z

    iget-object v1, p0, Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1$lambda$1;->this$0:Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1;

    invoke-direct {p1, v0, p2, v1}, Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1$lambda$1;-><init>(ZLkotlin/coroutines/Continuation;Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1$lambda$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1$lambda$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1$lambda$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 177
    iget v0, p0, Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1$lambda$1;->label:I

    if-nez v0, :cond_20

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 178
    iget-object p1, p0, Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1$lambda$1;->this$0:Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1;

    iget-object p1, p1, Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1;->this$0:Lcom/stripe/android/view/CardNumberEditText$2;

    iget-object p1, p1, Lcom/stripe/android/view/CardNumberEditText$2;->this$0:Lcom/stripe/android/view/CardNumberEditText;

    invoke-virtual {p1}, Lcom/stripe/android/view/CardNumberEditText;->isLoadingCallback$stripe_release()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-boolean v0, p0, Lcom/stripe/android/view/CardNumberEditText$2$invokeSuspend$$inlined$collect$1$lambda$1;->$it:Z

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
