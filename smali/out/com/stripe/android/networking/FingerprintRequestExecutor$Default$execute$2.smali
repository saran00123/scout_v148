.class final Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$execute$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FingerprintRequestExecutor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;->execute(Lcom/stripe/android/networking/FingerprintRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lcom/stripe/android/FingerprintData;",
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
        "Lcom/stripe/android/FingerprintData;",
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
    c = "com.stripe.android.networking.FingerprintRequestExecutor$Default$execute$2"
    f = "FingerprintRequestExecutor.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $request:Lcom/stripe/android/networking/FingerprintRequest;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;


# direct methods
.method constructor <init>(Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;Lcom/stripe/android/networking/FingerprintRequest;Lkotlin/coroutines/Continuation;)V
    .registers 4

    iput-object p1, p0, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$execute$2;->this$0:Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;

    iput-object p2, p0, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$execute$2;->$request:Lcom/stripe/android/networking/FingerprintRequest;

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

    new-instance v0, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$execute$2;

    iget-object v1, p0, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$execute$2;->this$0:Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;

    iget-object v2, p0, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$execute$2;->$request:Lcom/stripe/android/networking/FingerprintRequest;

    invoke-direct {v0, v1, v2, p2}, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$execute$2;-><init>(Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;Lcom/stripe/android/networking/FingerprintRequest;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$execute$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$execute$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$execute$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$execute$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 25
    iget v0, p0, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$execute$2;->label:I

    if-nez v0, :cond_30

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$execute$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 27
    :try_start_e
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 28
    iget-object p1, p0, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$execute$2;->this$0:Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;

    iget-object v0, p0, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default$execute$2;->$request:Lcom/stripe/android/networking/FingerprintRequest;

    invoke-static {p1, v0}, Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;->access$executeInternal(Lcom/stripe/android/networking/FingerprintRequestExecutor$Default;Lcom/stripe/android/networking/FingerprintRequest;)Lcom/stripe/android/FingerprintData;

    move-result-object p1

    .line 27
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1c} :catch_1d

    goto :goto_28

    :catch_1d
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 29
    :goto_28
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 p1, 0x0

    :cond_2f
    return-object p1

    :cond_30
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
