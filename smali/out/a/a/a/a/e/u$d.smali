.class public final La/a/a/a/e/u$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/e/u;->a(La/a/a/a/f/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "La/a/a/a/e/g;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.android.stripe3ds2.transaction.StripeChallengeRequestExecutor$execute$2"
    f = "StripeChallengeRequestExecutor.kt"
    i = {}
    l = {
        0x3a,
        0x40
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:La/a/a/a/e/u;

.field public final synthetic d:La/a/a/a/f/a;


# direct methods
.method public constructor <init>(La/a/a/a/e/u;La/a/a/a/f/a;Lkotlin/coroutines/Continuation;)V
    .registers 4

    iput-object p1, p0, La/a/a/a/e/u$d;->c:La/a/a/a/e/u;

    iput-object p2, p0, La/a/a/a/e/u$d;->d:La/a/a/a/f/a;

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

    new-instance v0, La/a/a/a/e/u$d;

    iget-object v1, p0, La/a/a/a/e/u$d;->c:La/a/a/a/e/u;

    iget-object v2, p0, La/a/a/a/e/u$d;->d:La/a/a/a/f/a;

    invoke-direct {v0, v1, v2, p2}, La/a/a/a/e/u$d;-><init>(La/a/a/a/e/u;La/a/a/a/f/a;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, La/a/a/a/e/u$d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, La/a/a/a/e/u$d;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, La/a/a/a/e/u$d;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, La/a/a/a/e/u$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    move-result-object v0

    iget v1, p0, La/a/a/a/e/u$d;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    if-eq v1, v3, :cond_1a

    if-ne v1, v2, :cond_12

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_76

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1a
    :try_start_1a
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_49

    goto :goto_42

    :cond_1e
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, La/a/a/a/e/u$d;->a:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    :try_start_25
    iget-object p1, p0, La/a/a/a/e/u$d;->c:La/a/a/a/e/u;

    .line 1
    iget-object v1, p1, La/a/a/a/e/u;->i:La/a/a/a/e/n;

    .line 2
    iget-object v4, p0, La/a/a/a/e/u$d;->d:La/a/a/a/f/a;

    invoke-virtual {v4}, La/a/a/a/f/a;->c()Lorg/json/JSONObject;

    move-result-object v4

    .line 3
    iget-object v5, p1, La/a/a/a/e/u;->c:La/a/a/a/d/i;

    iget-object p1, p1, La/a/a/a/e/u;->a:Ljavax/crypto/SecretKey;

    invoke-interface {v5, v4, p1}, La/a/a/a/d/i;->a(Lorg/json/JSONObject;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p1
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_49

    const-string v4, "application/jose; charset=UTF-8"

    .line 4
    :try_start_39
    iput v3, p0, La/a/a/a/e/u$d;->b:I

    invoke-interface {v1, p1, v4, p0}, La/a/a/a/e/n;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_42

    return-object v0

    :cond_42
    :goto_42
    check-cast p1, La/a/a/a/e/o;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_49

    goto :goto_52

    :catchall_49
    move-exception p1

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_52
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5f

    iget-object v3, p0, La/a/a/a/e/u$d;->c:La/a/a/a/e/u;

    .line 5
    iget-object v3, v3, La/a/a/a/e/u;->g:La/a/a/a/c/c;

    .line 6
    invoke-interface {v3, v1}, La/a/a/a/c/c;->a(Ljava/lang/Throwable;)V

    :cond_5f
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_79

    check-cast p1, La/a/a/a/e/o;

    iget-object v1, p0, La/a/a/a/e/u$d;->c:La/a/a/a/e/u;

    .line 7
    iget-object v1, v1, La/a/a/a/e/u;->b:La/a/a/a/e/h;

    .line 8
    iget-object v3, p0, La/a/a/a/e/u$d;->d:La/a/a/a/f/a;

    iput v2, p0, La/a/a/a/e/u$d;->b:I

    invoke-interface {v1, v3, p1, p0}, La/a/a/a/e/h;->a(La/a/a/a/f/a;La/a/a/a/e/o;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_76

    return-object v0

    :cond_76
    :goto_76
    check-cast p1, La/a/a/a/e/g;

    goto :goto_7e

    :cond_79
    new-instance p1, La/a/a/a/e/g$b;

    invoke-direct {p1, v1}, La/a/a/a/e/g$b;-><init>(Ljava/lang/Throwable;)V

    :goto_7e
    return-object p1
.end method
