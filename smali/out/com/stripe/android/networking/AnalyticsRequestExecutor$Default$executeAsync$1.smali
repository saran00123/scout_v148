.class final Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default$executeAsync$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AnalyticsRequestExecutor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;->executeAsync(Lcom/stripe/android/networking/AnalyticsRequest;)V
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
    c = "com.stripe.android.networking.AnalyticsRequestExecutor$Default$executeAsync$1"
    f = "AnalyticsRequestExecutor.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $request:Lcom/stripe/android/networking/AnalyticsRequest;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;


# direct methods
.method constructor <init>(Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;Lcom/stripe/android/networking/AnalyticsRequest;Lkotlin/coroutines/Continuation;)V
    .registers 4

    iput-object p1, p0, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default$executeAsync$1;->this$0:Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;

    iput-object p2, p0, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default$executeAsync$1;->$request:Lcom/stripe/android/networking/AnalyticsRequest;

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

    new-instance v0, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default$executeAsync$1;

    iget-object v1, p0, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default$executeAsync$1;->this$0:Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;

    iget-object v2, p0, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default$executeAsync$1;->$request:Lcom/stripe/android/networking/AnalyticsRequest;

    invoke-direct {v0, v1, v2, p2}, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default$executeAsync$1;-><init>(Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;Lcom/stripe/android/networking/AnalyticsRequest;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default$executeAsync$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default$executeAsync$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default$executeAsync$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default$executeAsync$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 44
    iget v0, p0, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default$executeAsync$1;->label:I

    if-nez v0, :cond_40

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default$executeAsync$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 45
    :try_start_e
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 46
    iget-object p1, p0, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default$executeAsync$1;->this$0:Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;

    iget-object v0, p0, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default$executeAsync$1;->$request:Lcom/stripe/android/networking/AnalyticsRequest;

    invoke-virtual {p1, v0}, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;->execute$stripe_release(Lcom/stripe/android/networking/AnalyticsRequest;)I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    .line 45
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_20} :catch_21

    goto :goto_2c

    :catch_21
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 47
    :goto_2c
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 48
    iget-object v0, p0, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default$executeAsync$1;->this$0:Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;

    invoke-static {v0}, Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;->access$getLogger$p(Lcom/stripe/android/networking/AnalyticsRequestExecutor$Default;)Lcom/stripe/android/Logger;

    move-result-object v0

    const-string v1, "Exception while making analytics request"

    invoke-interface {v0, v1, p1}, Lcom/stripe/android/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :cond_3d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
