.class public final La/a/a/a/h/b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/lifecycle/LiveDataScope<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.android.stripe3ds2.views.ChallengeActivityViewModel$getImage$1"
    f = "ChallengeActivityViewModel.kt"
    i = {}
    l = {
        0x25,
        0x24
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:La/a/a/a/h/a;

.field public final synthetic d:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$Image;


# direct methods
.method public constructor <init>(La/a/a/a/h/a;Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$Image;Lkotlin/coroutines/Continuation;)V
    .registers 4

    iput-object p1, p0, La/a/a/a/h/b;->c:La/a/a/a/h/a;

    iput-object p2, p0, La/a/a/a/h/b;->d:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$Image;

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

    new-instance v0, La/a/a/a/h/b;

    iget-object v1, p0, La/a/a/a/h/b;->c:La/a/a/a/h/a;

    iget-object v2, p0, La/a/a/a/h/b;->d:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$Image;

    invoke-direct {v0, v1, v2, p2}, La/a/a/a/h/b;-><init>(La/a/a/a/h/a;Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$Image;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, La/a/a/a/h/b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, La/a/a/a/h/b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, La/a/a/a/h/b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, La/a/a/a/h/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v1, p0, La/a/a/a/h/b;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_23

    if-eq v1, v3, :cond_1b

    if-ne v1, v2, :cond_13

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_58

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    iget-object v1, p0, La/a/a/a/h/b;->a:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/LiveDataScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4d

    :cond_23
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, La/a/a/a/h/b;->a:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/LiveDataScope;

    iget-object p1, p0, La/a/a/a/h/b;->c:La/a/a/a/h/a;

    .line 1
    iget-object v5, p1, La/a/a/a/h/a;->b:La/a/a/a/h/w;

    .line 2
    iget-object v6, p0, La/a/a/a/h/b;->d:Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$Image;

    if-eqz v6, :cond_3a

    .line 3
    iget p1, p1, La/a/a/a/h/a;->a:I

    .line 4
    invoke-virtual {v6, p1}, Lcom/stripe/android/stripe3ds2/transactions/ChallengeResponseData$Image;->getUrlForDensity(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3b

    :cond_3a
    move-object p1, v4

    :goto_3b
    iput-object v1, p0, La/a/a/a/h/b;->a:Ljava/lang/Object;

    iput v3, p0, La/a/a/a/h/b;->b:I

    .line 5
    iget-object v3, v5, La/a/a/a/h/w;->a:Lkotlin/coroutines/CoroutineContext;

    new-instance v6, La/a/a/a/h/x;

    invoke-direct {v6, v5, p1, v4}, La/a/a/a/h/x;-><init>(La/a/a/a/h/w;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v6, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4d

    return-object v0

    .line 6
    :cond_4d
    :goto_4d
    iput-object v4, p0, La/a/a/a/h/b;->a:Ljava/lang/Object;

    iput v2, p0, La/a/a/a/h/b;->b:I

    invoke-interface {v1, p1, p0}, Landroidx/lifecycle/LiveDataScope;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_58

    return-object v0

    :cond_58
    :goto_58
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
