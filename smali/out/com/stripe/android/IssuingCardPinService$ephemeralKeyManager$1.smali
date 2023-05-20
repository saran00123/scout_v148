.class public final Lcom/stripe/android/IssuingCardPinService$ephemeralKeyManager$1;
.super Ljava/lang/Object;
.source "IssuingCardPinService.kt"

# interfaces
.implements Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/IssuingCardPinService;-><init>(Lcom/stripe/android/EphemeralKeyProvider;Lcom/stripe/android/networking/StripeRepository;Lcom/stripe/android/OperationIdFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005H\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/stripe/android/IssuingCardPinService$ephemeralKeyManager$1",
        "Lcom/stripe/android/EphemeralKeyManager$KeyManagerListener;",
        "onKeyError",
        "",
        "operationId",
        "",
        "errorCode",
        "",
        "errorMessage",
        "onKeyUpdate",
        "ephemeralKey",
        "Lcom/stripe/android/EphemeralKey;",
        "operation",
        "Lcom/stripe/android/EphemeralOperation;",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/android/IssuingCardPinService;


# direct methods
.method constructor <init>(Lcom/stripe/android/IssuingCardPinService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/stripe/android/IssuingCardPinService$ephemeralKeyManager$1;->this$0:Lcom/stripe/android/IssuingCardPinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyError(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "operationId"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "errorMessage"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lcom/stripe/android/IssuingCardPinService$ephemeralKeyManager$1;->this$0:Lcom/stripe/android/IssuingCardPinService;

    invoke-static {p2}, Lcom/stripe/android/IssuingCardPinService;->access$getUpdateListeners$p(Lcom/stripe/android/IssuingCardPinService;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/stripe/android/IssuingCardPinService$IssuingCardPinUpdateListener;

    .line 58
    iget-object v0, p0, Lcom/stripe/android/IssuingCardPinService$ephemeralKeyManager$1;->this$0:Lcom/stripe/android/IssuingCardPinService;

    invoke-static {v0}, Lcom/stripe/android/IssuingCardPinService;->access$getRetrievalListeners$p(Lcom/stripe/android/IssuingCardPinService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/IssuingCardPinService$IssuingCardPinRetrievalListener;

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    .line 60
    sget-object p2, Lcom/stripe/android/IssuingCardPinService$CardPinActionError;->EPHEMERAL_KEY_ERROR:Lcom/stripe/android/IssuingCardPinService$CardPinActionError;

    .line 59
    invoke-interface {p1, p2, p3, v0}, Lcom/stripe/android/IssuingCardPinService$IssuingCardPinRetrievalListener;->onError(Lcom/stripe/android/IssuingCardPinService$CardPinActionError;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    :cond_2b
    if-eqz p2, :cond_32

    .line 64
    sget-object p1, Lcom/stripe/android/IssuingCardPinService$CardPinActionError;->EPHEMERAL_KEY_ERROR:Lcom/stripe/android/IssuingCardPinService$CardPinActionError;

    .line 63
    invoke-interface {p2, p1, p3, v0}, Lcom/stripe/android/IssuingCardPinService$IssuingCardPinUpdateListener;->onError(Lcom/stripe/android/IssuingCardPinService$CardPinActionError;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_32
    :goto_32
    return-void
.end method

.method public onKeyUpdate(Lcom/stripe/android/EphemeralKey;Lcom/stripe/android/EphemeralOperation;)V
    .registers 5
    .param p1    # Lcom/stripe/android/EphemeralKey;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/EphemeralOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ephemeralKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    instance-of v0, p2, Lcom/stripe/android/EphemeralOperation$Issuing$RetrievePin;

    if-eqz v0, :cond_2e

    .line 33
    iget-object v0, p0, Lcom/stripe/android/IssuingCardPinService$ephemeralKeyManager$1;->this$0:Lcom/stripe/android/IssuingCardPinService;

    invoke-static {v0}, Lcom/stripe/android/IssuingCardPinService;->access$getRetrievalListeners$p(Lcom/stripe/android/IssuingCardPinService;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/stripe/android/EphemeralOperation;->getId$stripe_release()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/IssuingCardPinService$IssuingCardPinRetrievalListener;

    if-eqz v0, :cond_28

    .line 34
    iget-object v1, p0, Lcom/stripe/android/IssuingCardPinService$ephemeralKeyManager$1;->this$0:Lcom/stripe/android/IssuingCardPinService;

    .line 36
    check-cast p2, Lcom/stripe/android/EphemeralOperation$Issuing$RetrievePin;

    .line 34
    invoke-static {v1, p1, p2, v0}, Lcom/stripe/android/IssuingCardPinService;->access$fireRetrievePinRequest(Lcom/stripe/android/IssuingCardPinService;Lcom/stripe/android/EphemeralKey;Lcom/stripe/android/EphemeralOperation$Issuing$RetrievePin;Lcom/stripe/android/IssuingCardPinService$IssuingCardPinRetrievalListener;)V

    goto :goto_51

    .line 39
    :cond_28
    iget-object p1, p0, Lcom/stripe/android/IssuingCardPinService$ephemeralKeyManager$1;->this$0:Lcom/stripe/android/IssuingCardPinService;

    invoke-static {p1}, Lcom/stripe/android/IssuingCardPinService;->access$logMissingListener(Lcom/stripe/android/IssuingCardPinService;)V

    goto :goto_51

    .line 41
    :cond_2e
    instance-of v0, p2, Lcom/stripe/android/EphemeralOperation$Issuing$UpdatePin;

    if-eqz v0, :cond_51

    .line 42
    iget-object v0, p0, Lcom/stripe/android/IssuingCardPinService$ephemeralKeyManager$1;->this$0:Lcom/stripe/android/IssuingCardPinService;

    invoke-static {v0}, Lcom/stripe/android/IssuingCardPinService;->access$getUpdateListeners$p(Lcom/stripe/android/IssuingCardPinService;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p2}, Lcom/stripe/android/EphemeralOperation;->getId$stripe_release()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/IssuingCardPinService$IssuingCardPinUpdateListener;

    if-eqz v0, :cond_4c

    .line 43
    iget-object v1, p0, Lcom/stripe/android/IssuingCardPinService$ephemeralKeyManager$1;->this$0:Lcom/stripe/android/IssuingCardPinService;

    .line 45
    check-cast p2, Lcom/stripe/android/EphemeralOperation$Issuing$UpdatePin;

    .line 43
    invoke-static {v1, p1, p2, v0}, Lcom/stripe/android/IssuingCardPinService;->access$fireUpdatePinRequest(Lcom/stripe/android/IssuingCardPinService;Lcom/stripe/android/EphemeralKey;Lcom/stripe/android/EphemeralOperation$Issuing$UpdatePin;Lcom/stripe/android/IssuingCardPinService$IssuingCardPinUpdateListener;)V

    goto :goto_51

    .line 48
    :cond_4c
    iget-object p1, p0, Lcom/stripe/android/IssuingCardPinService$ephemeralKeyManager$1;->this$0:Lcom/stripe/android/IssuingCardPinService;

    invoke-static {p1}, Lcom/stripe/android/IssuingCardPinService;->access$logMissingListener(Lcom/stripe/android/IssuingCardPinService;)V

    :cond_51
    :goto_51
    return-void
.end method
