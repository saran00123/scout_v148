.class public final La/a/a/a/e/f0$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/e/f0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.android.stripe3ds2.transaction.TransactionTimer$Default$start$1$1"
    f = "TransactionTimer.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public final synthetic a:La/a/a/a/e/f0;


# direct methods
.method public constructor <init>(La/a/a/a/e/f0;Lkotlin/coroutines/Continuation;)V
    .registers 3

    iput-object p1, p0, La/a/a/a/e/f0$a;->a:La/a/a/a/e/f0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
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

    new-instance p1, La/a/a/a/e/f0$a;

    iget-object v0, p0, La/a/a/a/e/f0$a;->a:La/a/a/a/e/f0;

    invoke-direct {p1, v0, p2}, La/a/a/a/e/f0$a;-><init>(La/a/a/a/e/f0;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, La/a/a/a/e/f0$a;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, La/a/a/a/e/f0$a;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, La/a/a/a/e/f0$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, La/a/a/a/e/f0$a;->a:La/a/a/a/e/f0;

    iget-object p1, p1, La/a/a/a/e/f0;->b:La/a/a/a/e/g0$a;

    const/4 v0, 0x0

    .line 1
    iput-object v0, p1, La/a/a/a/e/g0$a;->d:Lkotlinx/coroutines/Job;

    iget-object v0, p1, La/a/a/a/e/g0$a;->h:La/a/a/a/e/h0;

    iget-object v1, p1, La/a/a/a/e/g0$a;->g:La/a/a/a/f/a;

    .line 2
    iget-object v1, v1, La/a/a/a/f/a;->d:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    .line 3
    invoke-interface {v0, v1}, La/a/a/a/e/h0;->a(Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;)V

    iget-object v0, p1, La/a/a/a/e/g0$a;->f:La/a/a/a/e/m;

    .line 4
    new-instance v13, La/a/a/a/f/c;

    iget-object v1, p1, La/a/a/a/e/g0$a;->g:La/a/a/a/f/a;

    .line 5
    iget-object v2, v1, La/a/a/a/f/a;->b:Ljava/lang/String;

    .line 6
    iget-object v3, v1, La/a/a/a/f/a;->c:Ljava/lang/String;

    const/16 v1, 0x192

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, La/a/a/a/f/c$c;->b:La/a/a/a/f/c$c;

    iget-object v1, p1, La/a/a/a/e/g0$a;->g:La/a/a/a/f/a;

    .line 8
    iget-object v10, v1, La/a/a/a/f/a;->a:Ljava/lang/String;

    .line 9
    iget-object v11, v1, La/a/a/a/f/a;->d:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    const/4 v4, 0x0

    const-string v7, "Transaction timed-out."

    const-string v8, "Timeout expiry reached for the transaction"

    const/4 v9, 0x0

    const/16 v12, 0x84

    move-object v1, v13

    .line 10
    invoke-direct/range {v1 .. v12}, La/a/a/a/f/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/a/a/a/f/c$c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;I)V

    .line 11
    invoke-interface {v0, v13}, La/a/a/a/e/m;->a(La/a/a/a/f/c;)V

    iget-object v0, p1, La/a/a/a/e/g0$a;->e:Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;

    new-instance v1, La/a/a/a/e/e0;

    invoke-direct {v1, p1}, La/a/a/a/e/e0;-><init>(La/a/a/a/e/g0$a;)V

    const-string p1, ""

    invoke-interface {v0, p1, v1}, Lcom/stripe/android/stripe3ds2/transaction/ChallengeStatusReceiver;->timedout(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 12
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
