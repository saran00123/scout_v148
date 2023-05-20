.class public final Lcom/stripe/android/paymentsheet/DefaultGooglePayRepository;
.super Ljava/lang/Object;
.source "DefaultGooglePayRepository.kt"

# interfaces
.implements Lcom/stripe/android/paymentsheet/GooglePayRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/DefaultGooglePayRepository;",
        "Lcom/stripe/android/paymentsheet/GooglePayRepository;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "googlePayJsonFactory",
        "Lcom/stripe/android/GooglePayJsonFactory;",
        "paymentsClient",
        "Lcom/google/android/gms/wallet/PaymentsClient;",
        "getPaymentsClient",
        "()Lcom/google/android/gms/wallet/PaymentsClient;",
        "paymentsClient$delegate",
        "Lkotlin/Lazy;",
        "isReady",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
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
.field private final context:Landroid/content/Context;

.field private final googlePayJsonFactory:Lcom/stripe/android/GooglePayJsonFactory;

.field private final paymentsClient$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/DefaultGooglePayRepository;->context:Landroid/content/Context;

    .line 15
    new-instance p1, Lcom/stripe/android/GooglePayJsonFactory;

    iget-object v0, p0, Lcom/stripe/android/paymentsheet/DefaultGooglePayRepository;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/stripe/android/GooglePayJsonFactory;-><init>(Landroid/content/Context;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/DefaultGooglePayRepository;->googlePayJsonFactory:Lcom/stripe/android/GooglePayJsonFactory;

    .line 17
    new-instance p1, Lcom/stripe/android/paymentsheet/DefaultGooglePayRepository$paymentsClient$2;

    invoke-direct {p1, p0}, Lcom/stripe/android/paymentsheet/DefaultGooglePayRepository$paymentsClient$2;-><init>(Lcom/stripe/android/paymentsheet/DefaultGooglePayRepository;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/DefaultGooglePayRepository;->paymentsClient$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/stripe/android/paymentsheet/DefaultGooglePayRepository;)Landroid/content/Context;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/stripe/android/paymentsheet/DefaultGooglePayRepository;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final getPaymentsClient()Lcom/google/android/gms/wallet/PaymentsClient;
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/paymentsheet/DefaultGooglePayRepository;->paymentsClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wallet/PaymentsClient;

    return-object v0
.end method


# virtual methods
.method public isReady()Lkotlinx/coroutines/flow/Flow;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 27
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/stripe/android/paymentsheet/DefaultGooglePayRepository;->googlePayJsonFactory:Lcom/stripe/android/GooglePayJsonFactory;

    const/4 v3, 0x3

    invoke-static {v2, v0, v0, v3, v0}, Lcom/stripe/android/GooglePayJsonFactory;->createIsReadyToPayRequest$default(Lcom/stripe/android/GooglePayJsonFactory;Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters;Ljava/lang/Boolean;ILjava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/wallet/IsReadyToPayRequest;->fromJson(Ljava/lang/String;)Lcom/google/android/gms/wallet/IsReadyToPayRequest;

    move-result-object v0

    .line 33
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/DefaultGooglePayRepository;->getPaymentsClient()Lcom/google/android/gms/wallet/PaymentsClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/wallet/PaymentsClient;->isReadyToPay(Lcom/google/android/gms/wallet/IsReadyToPayRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 34
    new-instance v2, Lcom/stripe/android/paymentsheet/DefaultGooglePayRepository$isReady$1;

    invoke-direct {v2, p0, v1}, Lcom/stripe/android/paymentsheet/DefaultGooglePayRepository$isReady$1;-><init>(Lcom/stripe/android/paymentsheet/DefaultGooglePayRepository;Lkotlinx/coroutines/flow/MutableStateFlow;)V

    check-cast v2, Lcom/google/android/gms/tasks/OnCompleteListener;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 40
    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    return-object v1
.end method
