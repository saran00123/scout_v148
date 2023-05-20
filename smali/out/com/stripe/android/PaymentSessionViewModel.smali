.class public final Lcom/stripe/android/PaymentSessionViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "PaymentSessionViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/PaymentSessionViewModel$FetchCustomerResult;,
        Lcom/stripe/android/PaymentSessionViewModel$NetworkState;,
        Lcom/stripe/android/PaymentSessionViewModel$Factory;,
        Lcom/stripe/android/PaymentSessionViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 <2\u00020\u0001:\u0004<=>?B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0006\u0010\u001c\u001a\u00020\u001dJ\u0016\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00122\u0008\u0008\u0002\u0010 \u001a\u00020!J7\u0010\"\u001a\u00020\u001d2\u0008\u0010#\u001a\u0004\u0018\u00010$2#\u0010%\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\'\u00a2\u0006\u000c\u0008(\u0012\u0008\u0008)\u0012\u0004\u0008\u0008(*\u0012\u0004\u0012\u00020\u001d0&H\u0002J\u0014\u0010+\u001a\u0004\u0018\u00010$2\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010$J\u0006\u0010-\u001a\u00020\u001dJ/\u0010.\u001a\u00020\u001d2\u0008\u0010/\u001a\u0004\u0018\u00010$2\u0008\u0008\u0002\u0010 \u001a\u00020!2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u001d00H\u0000\u00a2\u0006\u0002\u00081J\u0006\u00102\u001a\u00020\u001dJ\u000e\u00103\u001a\u00020\u001d2\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u00104\u001a\u00020\u001d2\u0008\u00105\u001a\u0004\u0018\u000106J\u001a\u00107\u001a\u00020\u001d2\u0008\u0010*\u001a\u0004\u0018\u00010\'2\u0006\u00108\u001a\u00020!H\u0002J\u0010\u00109\u001a\u00020\u001d2\u0008\u0008\u0001\u0010:\u001a\u00020;R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0012X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R$\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0007@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006@"
    }
    d2 = {
        "Lcom/stripe/android/PaymentSessionViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "savedStateHandle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "paymentSessionData",
        "Lcom/stripe/android/PaymentSessionData;",
        "customerSession",
        "Lcom/stripe/android/CustomerSession;",
        "paymentSessionPrefs",
        "Lcom/stripe/android/PaymentSessionPrefs;",
        "(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/stripe/android/PaymentSessionData;Lcom/stripe/android/CustomerSession;Lcom/stripe/android/PaymentSessionPrefs;)V",
        "mutableNetworkState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/stripe/android/PaymentSessionViewModel$NetworkState;",
        "mutablePaymentSessionDataLiveData",
        "networkState",
        "Landroidx/lifecycle/LiveData;",
        "getNetworkState$stripe_release",
        "()Landroidx/lifecycle/LiveData;",
        "value",
        "getPaymentSessionData",
        "()Lcom/stripe/android/PaymentSessionData;",
        "setPaymentSessionData",
        "(Lcom/stripe/android/PaymentSessionData;)V",
        "paymentSessionDataLiveData",
        "getPaymentSessionDataLiveData",
        "clearPaymentMethod",
        "",
        "fetchCustomer",
        "Lcom/stripe/android/PaymentSessionViewModel$FetchCustomerResult;",
        "isInitialFetch",
        "",
        "fetchCustomerPaymentMethod",
        "paymentMethodId",
        "",
        "onComplete",
        "Lkotlin/Function1;",
        "Lcom/stripe/android/model/PaymentMethod;",
        "Lkotlin/ParameterName;",
        "name",
        "paymentMethod",
        "getSelectedPaymentMethodId",
        "userSelectedPaymentMethodId",
        "onCompleted",
        "onCustomerRetrieved",
        "customerId",
        "Lkotlin/Function0;",
        "onCustomerRetrieved$stripe_release",
        "onListenerAttached",
        "onPaymentFlowResult",
        "onPaymentMethodResult",
        "result",
        "Lcom/stripe/android/view/PaymentMethodsActivityStarter$Result;",
        "persistPaymentMethodResult",
        "useGooglePay",
        "updateCartTotal",
        "cartTotal",
        "",
        "Companion",
        "Factory",
        "FetchCustomerResult",
        "NetworkState",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/android/PaymentSessionViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_PAYMENT_SESSION_DATA:Ljava/lang/String; = "key_payment_session_data"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MAX_PAYMENT_METHODS_LIMIT:I = 0x64


# instance fields
.field private final customerSession:Lcom/stripe/android/CustomerSession;

.field private final mutableNetworkState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/stripe/android/PaymentSessionViewModel$NetworkState;",
            ">;"
        }
    .end annotation
.end field

.field private final mutablePaymentSessionDataLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/stripe/android/PaymentSessionData;",
            ">;"
        }
    .end annotation
.end field

.field private final networkState:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/stripe/android/PaymentSessionViewModel$NetworkState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private paymentSessionData:Lcom/stripe/android/PaymentSessionData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final paymentSessionDataLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/stripe/android/PaymentSessionData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final paymentSessionPrefs:Lcom/stripe/android/PaymentSessionPrefs;

.field private final savedStateHandle:Landroidx/lifecycle/SavedStateHandle;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/PaymentSessionViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/PaymentSessionViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/PaymentSessionViewModel;->Companion:Lcom/stripe/android/PaymentSessionViewModel$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/stripe/android/PaymentSessionData;Lcom/stripe/android/CustomerSession;Lcom/stripe/android/PaymentSessionPrefs;)V
    .registers 7
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/SavedStateHandle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/PaymentSessionData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/CustomerSession;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/PaymentSessionPrefs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "savedStateHandle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentSessionData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customerSession"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentSessionPrefs"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    iput-object p2, p0, Lcom/stripe/android/PaymentSessionViewModel;->savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

    iput-object p4, p0, Lcom/stripe/android/PaymentSessionViewModel;->customerSession:Lcom/stripe/android/CustomerSession;

    iput-object p5, p0, Lcom/stripe/android/PaymentSessionViewModel;->paymentSessionPrefs:Lcom/stripe/android/PaymentSessionPrefs;

    .line 24
    iput-object p3, p0, Lcom/stripe/android/PaymentSessionViewModel;->paymentSessionData:Lcom/stripe/android/PaymentSessionData;

    .line 33
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/PaymentSessionViewModel;->mutablePaymentSessionDataLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 34
    iget-object p1, p0, Lcom/stripe/android/PaymentSessionViewModel;->mutablePaymentSessionDataLiveData:Landroidx/lifecycle/MutableLiveData;

    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/stripe/android/PaymentSessionViewModel;->paymentSessionDataLiveData:Landroidx/lifecycle/LiveData;

    .line 38
    iget-object p1, p0, Lcom/stripe/android/PaymentSessionViewModel;->savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

    const-string p2, "key_payment_session_data"

    invoke-virtual {p1, p2}, Landroidx/lifecycle/SavedStateHandle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/PaymentSessionData;

    if-eqz p1, :cond_45

    const-string p2, "it"

    .line 39
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/stripe/android/PaymentSessionViewModel;->setPaymentSessionData(Lcom/stripe/android/PaymentSessionData;)V

    .line 43
    :cond_45
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/PaymentSessionViewModel;->mutableNetworkState:Landroidx/lifecycle/MutableLiveData;

    .line 44
    iget-object p1, p0, Lcom/stripe/android/PaymentSessionViewModel;->mutableNetworkState:Landroidx/lifecycle/MutableLiveData;

    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/stripe/android/PaymentSessionViewModel;->networkState:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/stripe/android/PaymentSessionData;Lcom/stripe/android/CustomerSession;Lcom/stripe/android/PaymentSessionPrefs;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_e

    .line 21
    new-instance p5, Lcom/stripe/android/PaymentSessionPrefs$Default;

    move-object p6, p1

    check-cast p6, Landroid/content/Context;

    invoke-direct {p5, p6}, Lcom/stripe/android/PaymentSessionPrefs$Default;-><init>(Landroid/content/Context;)V

    check-cast p5, Lcom/stripe/android/PaymentSessionPrefs;

    :cond_e
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/PaymentSessionViewModel;-><init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/stripe/android/PaymentSessionData;Lcom/stripe/android/CustomerSession;Lcom/stripe/android/PaymentSessionPrefs;)V

    return-void
.end method

.method public static final synthetic access$getMutableNetworkState$p(Lcom/stripe/android/PaymentSessionViewModel;)Landroidx/lifecycle/MutableLiveData;
    .registers 1

    .line 16
    iget-object p0, p0, Lcom/stripe/android/PaymentSessionViewModel;->mutableNetworkState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static synthetic fetchCustomer$default(Lcom/stripe/android/PaymentSessionViewModel;ZILjava/lang/Object;)Landroidx/lifecycle/LiveData;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 60
    :cond_5
    invoke-virtual {p0, p1}, Lcom/stripe/android/PaymentSessionViewModel;->fetchCustomer(Z)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method private final fetchCustomerPaymentMethod(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/android/model/PaymentMethod;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1c

    .line 124
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionViewModel;->customerSession:Lcom/stripe/android/CustomerSession;

    .line 125
    sget-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Card:Lcom/stripe/android/model/PaymentMethod$Type;

    const/16 v2, 0x64

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 127
    new-instance v5, Lcom/stripe/android/PaymentSessionViewModel$fetchCustomerPaymentMethod$1;

    invoke-direct {v5, p2, p1}, Lcom/stripe/android/PaymentSessionViewModel$fetchCustomerPaymentMethod$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    check-cast v5, Lcom/stripe/android/CustomerSession$PaymentMethodsRetrievalListener;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 124
    invoke-static/range {v0 .. v7}, Lcom/stripe/android/CustomerSession;->getPaymentMethods$default(Lcom/stripe/android/CustomerSession;Lcom/stripe/android/model/PaymentMethod$Type;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/CustomerSession$PaymentMethodsRetrievalListener;ILjava/lang/Object;)V

    goto :goto_20

    :cond_1c
    const/4 p1, 0x0

    .line 147
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_20
    return-void
.end method

.method public static synthetic getSelectedPaymentMethodId$default(Lcom/stripe/android/PaymentSessionViewModel;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    .line 152
    check-cast p1, Ljava/lang/String;

    :cond_7
    invoke-virtual {p0, p1}, Lcom/stripe/android/PaymentSessionViewModel;->getSelectedPaymentMethodId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic onCustomerRetrieved$stripe_release$default(Lcom/stripe/android/PaymentSessionViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_5

    const/4 p2, 0x0

    .line 98
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/android/PaymentSessionViewModel;->onCustomerRetrieved$stripe_release(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final persistPaymentMethodResult(Lcom/stripe/android/model/PaymentMethod;Z)V
    .registers 17

    move-object v0, p0

    move-object v10, p1

    .line 179
    iget-object v1, v0, Lcom/stripe/android/PaymentSessionViewModel;->customerSession:Lcom/stripe/android/CustomerSession;

    invoke-virtual {v1}, Lcom/stripe/android/CustomerSession;->getCachedCustomer()Lcom/stripe/android/model/Customer;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/stripe/android/model/Customer;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 180
    iget-object v2, v0, Lcom/stripe/android/PaymentSessionViewModel;->paymentSessionPrefs:Lcom/stripe/android/PaymentSessionPrefs;

    if-eqz v10, :cond_17

    iget-object v3, v10, Lcom/stripe/android/model/PaymentMethod;->id:Ljava/lang/String;

    goto :goto_18

    :cond_17
    const/4 v3, 0x0

    :goto_18
    invoke-interface {v2, v1, v3}, Lcom/stripe/android/PaymentSessionPrefs;->savePaymentMethodId(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1b
    iget-object v1, v0, Lcom/stripe/android/PaymentSessionViewModel;->paymentSessionData:Lcom/stripe/android/PaymentSessionData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0x3f

    const/4 v13, 0x0

    move-object v10, p1

    move/from16 v11, p2

    invoke-static/range {v1 .. v13}, Lcom/stripe/android/PaymentSessionData;->copy$default(Lcom/stripe/android/PaymentSessionData;ZZJJLcom/stripe/android/model/ShippingInformation;Lcom/stripe/android/model/ShippingMethod;Lcom/stripe/android/model/PaymentMethod;ZILjava/lang/Object;)Lcom/stripe/android/PaymentSessionData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/stripe/android/PaymentSessionViewModel;->setPaymentSessionData(Lcom/stripe/android/PaymentSessionData;)V

    return-void
.end method


# virtual methods
.method public final clearPaymentMethod()V
    .registers 14

    .line 52
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionViewModel;->paymentSessionData:Lcom/stripe/android/PaymentSessionData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xbf

    const/4 v12, 0x0

    invoke-static/range {v0 .. v12}, Lcom/stripe/android/PaymentSessionData;->copy$default(Lcom/stripe/android/PaymentSessionData;ZZJJLcom/stripe/android/model/ShippingInformation;Lcom/stripe/android/model/ShippingMethod;Lcom/stripe/android/model/PaymentMethod;ZILjava/lang/Object;)Lcom/stripe/android/PaymentSessionData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/android/PaymentSessionViewModel;->setPaymentSessionData(Lcom/stripe/android/PaymentSessionData;)V

    return-void
.end method

.method public final synthetic fetchCustomer(Z)Landroidx/lifecycle/LiveData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/stripe/android/PaymentSessionViewModel$FetchCustomerResult;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionViewModel;->mutableNetworkState:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/stripe/android/PaymentSessionViewModel$NetworkState;->Active:Lcom/stripe/android/PaymentSessionViewModel$NetworkState;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 63
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/stripe/android/PaymentSessionViewModel;->customerSession:Lcom/stripe/android/CustomerSession;

    const-string v2, "PaymentSession"

    .line 65
    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 66
    new-instance v3, Lcom/stripe/android/PaymentSessionViewModel$fetchCustomer$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/stripe/android/PaymentSessionViewModel$fetchCustomer$1;-><init>(Lcom/stripe/android/PaymentSessionViewModel;ZLandroidx/lifecycle/MutableLiveData;)V

    check-cast v3, Lcom/stripe/android/CustomerSession$CustomerRetrievalListener;

    .line 64
    invoke-virtual {v1, v2, v3}, Lcom/stripe/android/CustomerSession;->retrieveCurrentCustomer$stripe_release(Ljava/util/Set;Lcom/stripe/android/CustomerSession$CustomerRetrievalListener;)V

    .line 92
    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getNetworkState$stripe_release()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/stripe/android/PaymentSessionViewModel$NetworkState;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionViewModel;->networkState:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getPaymentSessionData()Lcom/stripe/android/PaymentSessionData;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionViewModel;->paymentSessionData:Lcom/stripe/android/PaymentSessionData;

    return-object v0
.end method

.method public final getPaymentSessionDataLiveData()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/stripe/android/PaymentSessionData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionViewModel;->paymentSessionDataLiveData:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final synthetic getSelectedPaymentMethodId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 153
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionViewModel;->paymentSessionData:Lcom/stripe/android/PaymentSessionData;

    invoke-virtual {v0}, Lcom/stripe/android/PaymentSessionData;->getUseGooglePay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    :cond_9
    move-object p1, v1

    goto :goto_35

    :cond_b
    if-eqz p1, :cond_e

    goto :goto_35

    .line 157
    :cond_e
    iget-object p1, p0, Lcom/stripe/android/PaymentSessionViewModel;->paymentSessionData:Lcom/stripe/android/PaymentSessionData;

    invoke-virtual {p1}, Lcom/stripe/android/PaymentSessionData;->getPaymentMethod()Lcom/stripe/android/model/PaymentMethod;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 158
    iget-object p1, p0, Lcom/stripe/android/PaymentSessionViewModel;->paymentSessionData:Lcom/stripe/android/PaymentSessionData;

    invoke-virtual {p1}, Lcom/stripe/android/PaymentSessionData;->getPaymentMethod()Lcom/stripe/android/model/PaymentMethod;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/stripe/android/model/PaymentMethod;->id:Ljava/lang/String;

    goto :goto_35

    .line 160
    :cond_21
    iget-object p1, p0, Lcom/stripe/android/PaymentSessionViewModel;->customerSession:Lcom/stripe/android/CustomerSession;

    invoke-virtual {p1}, Lcom/stripe/android/CustomerSession;->getCachedCustomer()Lcom/stripe/android/model/Customer;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/stripe/android/model/Customer;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 161
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionViewModel;->paymentSessionPrefs:Lcom/stripe/android/PaymentSessionPrefs;

    invoke-interface {v0, p1}, Lcom/stripe/android/PaymentSessionPrefs;->getPaymentMethodId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_35
    return-object p1
.end method

.method public final synthetic onCompleted()V
    .registers 1

    return-void
.end method

.method public final synthetic onCustomerRetrieved$stripe_release(Ljava/lang/String;ZLkotlin/jvm/functions/Function0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onComplete"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_18

    .line 103
    iget-object p2, p0, Lcom/stripe/android/PaymentSessionViewModel;->paymentSessionPrefs:Lcom/stripe/android/PaymentSessionPrefs;

    invoke-interface {p2, p1}, Lcom/stripe/android/PaymentSessionPrefs;->getPaymentMethodId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    new-instance p2, Lcom/stripe/android/PaymentSessionViewModel$onCustomerRetrieved$1;

    invoke-direct {p2, p0, p3}, Lcom/stripe/android/PaymentSessionViewModel$onCustomerRetrieved$1;-><init>(Lcom/stripe/android/PaymentSessionViewModel;Lkotlin/jvm/functions/Function0;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/PaymentSessionViewModel;->fetchCustomerPaymentMethod(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_1b

    .line 113
    :cond_18
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_1b
    return-void
.end method

.method public final synthetic onListenerAttached()V
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionViewModel;->mutablePaymentSessionDataLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/stripe/android/PaymentSessionViewModel;->paymentSessionData:Lcom/stripe/android/PaymentSessionData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic onPaymentFlowResult(Lcom/stripe/android/PaymentSessionData;)V
    .registers 3

    const-string v0, "paymentSessionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0, p1}, Lcom/stripe/android/PaymentSessionViewModel;->setPaymentSessionData(Lcom/stripe/android/PaymentSessionData;)V

    return-void
.end method

.method public final synthetic onPaymentMethodResult(Lcom/stripe/android/view/PaymentMethodsActivityStarter$Result;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 170
    iget-object v0, p1, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Result;->paymentMethod:Lcom/stripe/android/model/PaymentMethod;

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    if-eqz p1, :cond_d

    .line 171
    invoke-virtual {p1}, Lcom/stripe/android/view/PaymentMethodsActivityStarter$Result;->getUseGooglePay()Z

    move-result p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 169
    :goto_e
    invoke-direct {p0, v0, p1}, Lcom/stripe/android/PaymentSessionViewModel;->persistPaymentMethodResult(Lcom/stripe/android/model/PaymentMethod;Z)V

    return-void
.end method

.method public final setPaymentSessionData(Lcom/stripe/android/PaymentSessionData;)V
    .registers 4
    .param p1    # Lcom/stripe/android/PaymentSessionData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionViewModel;->paymentSessionData:Lcom/stripe/android/PaymentSessionData;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d

    .line 27
    iput-object p1, p0, Lcom/stripe/android/PaymentSessionViewModel;->paymentSessionData:Lcom/stripe/android/PaymentSessionData;

    .line 28
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionViewModel;->savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

    const-string v1, "key_payment_session_data"

    invoke-virtual {v0, v1, p1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionViewModel;->mutablePaymentSessionDataLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method

.method public final synthetic updateCartTotal(J)V
    .registers 16
    .param p1    # J
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 48
    iget-object v0, p0, Lcom/stripe/android/PaymentSessionViewModel;->paymentSessionData:Lcom/stripe/android/PaymentSessionData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfb

    const/4 v12, 0x0

    move-wide v3, p1

    invoke-static/range {v0 .. v12}, Lcom/stripe/android/PaymentSessionData;->copy$default(Lcom/stripe/android/PaymentSessionData;ZZJJLcom/stripe/android/model/ShippingInformation;Lcom/stripe/android/model/ShippingMethod;Lcom/stripe/android/model/PaymentMethod;ZILjava/lang/Object;)Lcom/stripe/android/PaymentSessionData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/android/PaymentSessionViewModel;->setPaymentSessionData(Lcom/stripe/android/PaymentSessionData;)V

    return-void
.end method
