.class final Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IssuingCardPinService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/IssuingCardPinService;->fireRetrievePinRequest(Lcom/stripe/android/EphemeralKey;Lcom/stripe/android/EphemeralOperation$Issuing$RetrievePin;Lcom/stripe/android/IssuingCardPinService$IssuingCardPinRetrievalListener;)V
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
        "Ljava/lang/String;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "com/stripe/android/IssuingCardPinService$fireRetrievePinRequest$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.android.IssuingCardPinService$fireRetrievePinRequest$1$1"
    f = "IssuingCardPinService.kt"
    i = {}
    l = {
        0x8f
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $ephemeralKey$inlined:Lcom/stripe/android/EphemeralKey;

.field final synthetic $operation$inlined:Lcom/stripe/android/EphemeralOperation$Issuing$RetrievePin;

.field final synthetic $this_runCatching:Lcom/stripe/android/IssuingCardPinService;

.field label:I


# direct methods
.method constructor <init>(Lcom/stripe/android/IssuingCardPinService;Lkotlin/coroutines/Continuation;Lcom/stripe/android/EphemeralOperation$Issuing$RetrievePin;Lcom/stripe/android/EphemeralKey;)V
    .registers 5

    iput-object p1, p0, Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;->$this_runCatching:Lcom/stripe/android/IssuingCardPinService;

    iput-object p3, p0, Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;->$operation$inlined:Lcom/stripe/android/EphemeralOperation$Issuing$RetrievePin;

    iput-object p4, p0, Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;->$ephemeralKey$inlined:Lcom/stripe/android/EphemeralKey;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance p1, Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;

    iget-object v0, p0, Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;->$this_runCatching:Lcom/stripe/android/IssuingCardPinService;

    iget-object v1, p0, Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;->$operation$inlined:Lcom/stripe/android/EphemeralOperation$Issuing$RetrievePin;

    iget-object v2, p0, Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;->$ephemeralKey$inlined:Lcom/stripe/android/EphemeralKey;

    invoke-direct {p1, v0, p2, v1, v2}, Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;-><init>(Lcom/stripe/android/IssuingCardPinService;Lkotlin/coroutines/Continuation;Lcom/stripe/android/EphemeralOperation$Issuing$RetrievePin;Lcom/stripe/android/EphemeralKey;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 137
    iget v1, p0, Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_42

    .line 138
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 137
    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 139
    iget-object p1, p0, Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;->$this_runCatching:Lcom/stripe/android/IssuingCardPinService;

    invoke-static {p1}, Lcom/stripe/android/IssuingCardPinService;->access$getStripeRepository$p(Lcom/stripe/android/IssuingCardPinService;)Lcom/stripe/android/networking/StripeRepository;

    move-result-object v3

    .line 140
    iget-object p1, p0, Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;->$operation$inlined:Lcom/stripe/android/EphemeralOperation$Issuing$RetrievePin;

    invoke-virtual {p1}, Lcom/stripe/android/EphemeralOperation$Issuing$RetrievePin;->getCardId()Ljava/lang/String;

    move-result-object v4

    .line 141
    iget-object p1, p0, Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;->$operation$inlined:Lcom/stripe/android/EphemeralOperation$Issuing$RetrievePin;

    invoke-virtual {p1}, Lcom/stripe/android/EphemeralOperation$Issuing$RetrievePin;->getVerificationId()Ljava/lang/String;

    move-result-object v5

    .line 142
    iget-object p1, p0, Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;->$operation$inlined:Lcom/stripe/android/EphemeralOperation$Issuing$RetrievePin;

    invoke-virtual {p1}, Lcom/stripe/android/EphemeralOperation$Issuing$RetrievePin;->getUserOneTimeCode()Ljava/lang/String;

    move-result-object v6

    .line 143
    iget-object p1, p0, Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;->$ephemeralKey$inlined:Lcom/stripe/android/EphemeralKey;

    invoke-virtual {p1}, Lcom/stripe/android/EphemeralKey;->getSecret()Ljava/lang/String;

    move-result-object v7

    iput v2, p0, Lcom/stripe/android/IssuingCardPinService$fireRetrievePinRequest$$inlined$runCatching$lambda$1;->label:I

    move-object v8, p0

    .line 139
    invoke-interface/range {v3 .. v8}, Lcom/stripe/android/networking/StripeRepository;->retrieveIssuingCardPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_42

    return-object v0

    :cond_42
    :goto_42
    if-eqz p1, :cond_45

    return-object p1

    .line 138
    :cond_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not retrieve issuing card PIN."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
