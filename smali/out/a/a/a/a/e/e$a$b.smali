.class public final La/a/a/a/e/e$a$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/a/a/e/e$a;->a(La/a/a/a/e/d;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.stripe.android.stripe3ds2.transaction.ChallengeActionHandler$Default$submit$2"
    f = "ChallengeActionHandler.kt"
    i = {}
    l = {
        0x49
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:La/a/a/a/e/e$a;

.field public final synthetic c:La/a/a/a/e/d;


# direct methods
.method public constructor <init>(La/a/a/a/e/e$a;La/a/a/a/e/d;Lkotlin/coroutines/Continuation;)V
    .registers 4

    iput-object p1, p0, La/a/a/a/e/e$a$b;->b:La/a/a/a/e/e$a;

    iput-object p2, p0, La/a/a/a/e/e$a$b;->c:La/a/a/a/e/d;

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

    new-instance p1, La/a/a/a/e/e$a$b;

    iget-object v0, p0, La/a/a/a/e/e$a$b;->b:La/a/a/a/e/e$a;

    iget-object v1, p0, La/a/a/a/e/e$a$b;->c:La/a/a/a/e/d;

    invoke-direct {p1, v0, v1, p2}, La/a/a/a/e/e$a$b;-><init>(La/a/a/a/e/e$a;La/a/a/a/e/d;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, La/a/a/a/e/e$a$b;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, La/a/a/a/e/e$a$b;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, La/a/a/a/e/e$a$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 18
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, La/a/a/a/e/e$a$b;->a:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1c

    if-ne v2, v3, :cond_14

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_b3

    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance v2, La/a/a/a/f/a;

    iget-object v4, v0, La/a/a/a/e/e$a$b;->b:La/a/a/a/e/e$a;

    .line 1
    iget-object v4, v4, La/a/a/a/e/e$a;->a:La/a/a/a/f/a;

    .line 2
    iget-object v5, v4, La/a/a/a/f/a;->a:Ljava/lang/String;

    .line 3
    iget-object v6, v4, La/a/a/a/f/a;->b:Ljava/lang/String;

    .line 4
    iget-object v7, v4, La/a/a/a/f/a;->c:Ljava/lang/String;

    .line 5
    iget-object v8, v4, La/a/a/a/f/a;->d:Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 6
    iget-object v12, v4, La/a/a/a/f/a;->h:Ljava/util/List;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x370

    move-object v4, v2

    .line 7
    invoke-direct/range {v4 .. v15}, La/a/a/a/f/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;Ljava/lang/String;La/a/a/a/f/a$a;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    iget-object v4, v0, La/a/a/a/e/e$a$b;->c:La/a/a/a/e/d;

    instance-of v5, v4, La/a/a/a/e/d$c;

    if-eqz v5, :cond_55

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    check-cast v4, La/a/a/a/e/d$c;

    .line 8
    iget-object v9, v4, La/a/a/a/e/d$c;->a:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3ef

    move-object v4, v2

    .line 9
    invoke-static/range {v4 .. v15}, La/a/a/a/f/a;->a(La/a/a/a/f/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;Ljava/lang/String;La/a/a/a/f/a$a;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;I)La/a/a/a/f/a;

    move-result-object v2

    goto :goto_a8

    :cond_55
    instance-of v5, v4, La/a/a/a/e/d$b;

    if-eqz v5, :cond_6e

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    check-cast v4, La/a/a/a/e/d$b;

    .line 10
    iget-object v11, v4, La/a/a/a/e/d$b;->a:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3bf

    :goto_68
    move-object v4, v2

    .line 11
    invoke-static/range {v4 .. v15}, La/a/a/a/f/a;->a(La/a/a/a/f/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/transaction/SdkTransactionId;Ljava/lang/String;La/a/a/a/f/a$a;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;I)La/a/a/a/f/a;

    move-result-object v2

    goto :goto_a8

    :cond_6e
    instance-of v5, v4, La/a/a/a/e/d$d;

    if-eqz v5, :cond_82

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x2ff

    goto :goto_68

    :cond_82
    instance-of v5, v4, La/a/a/a/e/d$e;

    if-eqz v5, :cond_96

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0x1ff

    goto :goto_68

    :cond_96
    instance-of v4, v4, La/a/a/a/e/d$a;

    if-eqz v4, :cond_b4

    sget-object v10, La/a/a/a/f/a$a;->b:La/a/a/a/f/a$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x3df

    goto :goto_68

    :goto_a8
    iget-object v4, v0, La/a/a/a/e/e$a$b;->b:La/a/a/a/e/e$a;

    iput v3, v0, La/a/a/a/e/e$a$b;->a:I

    invoke-virtual {v4, v2, v0}, La/a/a/a/e/e$a;->a(La/a/a/a/f/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_b3

    return-object v1

    :cond_b3
    :goto_b3
    return-object v2

    :cond_b4
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method
