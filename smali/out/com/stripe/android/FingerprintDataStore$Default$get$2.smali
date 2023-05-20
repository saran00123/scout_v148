.class final Lcom/stripe/android/FingerprintDataStore$Default$get$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "FingerprintDataStore.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/FingerprintDataStore$Default;->get(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "com.stripe.android.FingerprintDataStore$Default$get$2"
    f = "FingerprintDataStore.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/android/FingerprintDataStore$Default;


# direct methods
.method constructor <init>(Lcom/stripe/android/FingerprintDataStore$Default;Lkotlin/coroutines/Continuation;)V
    .registers 3

    iput-object p1, p0, Lcom/stripe/android/FingerprintDataStore$Default$get$2;->this$0:Lcom/stripe/android/FingerprintDataStore$Default;

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/android/FingerprintDataStore$Default$get$2;

    iget-object v1, p0, Lcom/stripe/android/FingerprintDataStore$Default$get$2;->this$0:Lcom/stripe/android/FingerprintDataStore$Default;

    invoke-direct {v0, v1, p2}, Lcom/stripe/android/FingerprintDataStore$Default$get$2;-><init>(Lcom/stripe/android/FingerprintDataStore$Default;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/android/FingerprintDataStore$Default$get$2;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/FingerprintDataStore$Default$get$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/FingerprintDataStore$Default$get$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/android/FingerprintDataStore$Default$get$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 25
    iget v0, p0, Lcom/stripe/android/FingerprintDataStore$Default$get$2;->label:I

    if-nez v0, :cond_53

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/android/FingerprintDataStore$Default$get$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    .line 26
    :try_start_f
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/stripe/android/FingerprintDataStore$Default$get$2;->this$0:Lcom/stripe/android/FingerprintDataStore$Default;

    invoke-static {v1}, Lcom/stripe/android/FingerprintDataStore$Default;->access$getPrefs$p(Lcom/stripe/android/FingerprintDataStore$Default;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Lcom/stripe/android/FingerprintDataStore$Default;->access$Companion()Lcom/stripe/android/FingerprintDataStore$Default$Companion;

    const-string v2, "key_fingerprint_data"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    goto :goto_27

    :cond_25
    const-string v1, ""

    :goto_27
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v1, Lcom/stripe/android/FingerprintDataStore$Default$get$2$1$timestampSupplier$1;

    invoke-direct {v1, v0}, Lcom/stripe/android/FingerprintDataStore$Default$get$2$1$timestampSupplier$1;-><init>(Lorg/json/JSONObject;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 31
    new-instance v2, Lcom/stripe/android/model/parsers/FingerprintDataJsonParser;

    invoke-direct {v2, v1}, Lcom/stripe/android/model/parsers/FingerprintDataJsonParser;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v2, v0}, Lcom/stripe/android/model/parsers/FingerprintDataJsonParser;->parse(Lorg/json/JSONObject;)Lcom/stripe/android/FingerprintData;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_3e} :catch_3f

    goto :goto_4a

    :catch_3f
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    :goto_4a
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    goto :goto_52

    :cond_51
    move-object p1, v0

    :goto_52
    return-object p1

    :cond_53
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
