.class public final Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;
.super Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;
.source "PaymentSheetViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$TransitionTarget;,
        Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$Factory;,
        Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel<",
        "Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$TransitionTarget;",
        "Lcom/stripe/android/paymentsheet/model/ViewState;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentSheetViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentSheetViewModel.kt\ncom/stripe/android/paymentsheet/PaymentSheetViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,237:1\n1#2:238\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 22\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0003234BA\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0011J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 J\u0006\u0010!\u001a\u00020\u001eJ\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u001aJ \u0010$\u001a\u00020\u001e2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020&2\u0008\u0010(\u001a\u0004\u0018\u00010)J\u001b\u0010*\u001a\u00020\u001e2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020-0,H\u0001\u00a2\u0006\u0002\u0008.J\u0006\u0010/\u001a\u00020\u001eJ$\u0010/\u001a\u00020\u001e2\u0006\u00100\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002R\u0014\u0010\r\u001a\u00020\u000eX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u001aX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;",
        "Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;",
        "Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$TransitionTarget;",
        "Lcom/stripe/android/paymentsheet/model/ViewState;",
        "publishableKey",
        "",
        "stripeAccountId",
        "stripeRepository",
        "Lcom/stripe/android/networking/StripeRepository;",
        "paymentController",
        "Lcom/stripe/android/PaymentController;",
        "googlePayRepository",
        "Lcom/stripe/android/paymentsheet/GooglePayRepository;",
        "args",
        "Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;",
        "workContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/networking/StripeRepository;Lcom/stripe/android/PaymentController;Lcom/stripe/android/paymentsheet/GooglePayRepository;Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;Lkotlin/coroutines/CoroutineContext;)V",
        "getArgs$stripe_release",
        "()Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;",
        "confirmParamsFactory",
        "Lcom/stripe/android/paymentsheet/model/ConfirmParamsFactory;",
        "mutablePaymentIntent",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/stripe/android/model/PaymentIntent;",
        "paymentIntent",
        "Landroidx/lifecycle/LiveData;",
        "getPaymentIntent$stripe_release",
        "()Landroidx/lifecycle/LiveData;",
        "checkout",
        "",
        "activity",
        "Landroid/app/Activity;",
        "fetchPaymentIntent",
        "isGooglePayReady",
        "",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "setPaymentMethods",
        "paymentMethods",
        "",
        "Lcom/stripe/android/model/PaymentMethod;",
        "setPaymentMethods$stripe_release",
        "updatePaymentMethods",
        "ephemeralKey",
        "customerId",
        "Companion",
        "Factory",
        "TransitionTarget",
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
.field private static final Companion:Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PRODUCT_USAGE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final args:Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final confirmParamsFactory:Lcom/stripe/android/paymentsheet/model/ConfirmParamsFactory;

.field private final googlePayRepository:Lcom/stripe/android/paymentsheet/GooglePayRepository;

.field private final mutablePaymentIntent:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/stripe/android/model/PaymentIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentController:Lcom/stripe/android/PaymentController;

.field private final paymentIntent:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/stripe/android/model/PaymentIntent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final publishableKey:Ljava/lang/String;

.field private final stripeAccountId:Ljava/lang/String;

.field private final stripeRepository:Lcom/stripe/android/networking/StripeRepository;

.field private final workContext:Lkotlin/coroutines/CoroutineContext;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->Companion:Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$Companion;

    const-string v0, "PaymentSheet"

    .line 234
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->PRODUCT_USAGE:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/networking/StripeRepository;Lcom/stripe/android/PaymentController;Lcom/stripe/android/paymentsheet/GooglePayRepository;Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;Lkotlin/coroutines/CoroutineContext;)V
    .registers 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/networking/StripeRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/PaymentController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/android/paymentsheet/GooglePayRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "publishableKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripeRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "googlePayRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workContext"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    instance-of v0, p6, Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args$Guest;

    .line 44
    invoke-direct {p0, v0}, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;-><init>(Z)V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->publishableKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->stripeAccountId:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    iput-object p4, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->paymentController:Lcom/stripe/android/PaymentController;

    iput-object p5, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->googlePayRepository:Lcom/stripe/android/paymentsheet/GooglePayRepository;

    iput-object p6, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->args:Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;

    iput-object p7, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->workContext:Lkotlin/coroutines/CoroutineContext;

    .line 47
    new-instance p1, Lcom/stripe/android/paymentsheet/model/ConfirmParamsFactory;

    invoke-direct {p1}, Lcom/stripe/android/paymentsheet/model/ConfirmParamsFactory;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->confirmParamsFactory:Lcom/stripe/android/paymentsheet/model/ConfirmParamsFactory;

    .line 49
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->mutablePaymentIntent:Landroidx/lifecycle/MutableLiveData;

    .line 50
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->mutablePaymentIntent:Landroidx/lifecycle/MutableLiveData;

    check-cast p1, Landroidx/lifecycle/LiveData;

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->paymentIntent:Landroidx/lifecycle/LiveData;

    return-void
.end method

.method public static final synthetic access$Companion()Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$Companion;
    .registers 1

    sget-object v0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->Companion:Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$Companion;

    return-object v0
.end method

.method public static final synthetic access$getGooglePayRepository$p(Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;)Lcom/stripe/android/paymentsheet/GooglePayRepository;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->googlePayRepository:Lcom/stripe/android/paymentsheet/GooglePayRepository;

    return-object p0
.end method

.method public static final synthetic access$getMutablePaymentIntent$p(Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;)Landroidx/lifecycle/MutableLiveData;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->mutablePaymentIntent:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$getMutableViewState$p(Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;)Landroidx/lifecycle/MutableLiveData;
    .registers 1

    .line 36
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->getMutableViewState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPRODUCT_USAGE$cp()Ljava/util/Set;
    .registers 1

    .line 36
    sget-object v0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->PRODUCT_USAGE:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getPublishableKey$p(Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;)Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->publishableKey:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getStripeAccountId$p(Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;)Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->stripeAccountId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getStripeRepository$p(Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;)Lcom/stripe/android/networking/StripeRepository;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->stripeRepository:Lcom/stripe/android/networking/StripeRepository;

    return-object p0
.end method

.method public static final synthetic access$getWorkContext$p(Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;)Lkotlin/coroutines/CoroutineContext;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->workContext:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method private final updatePaymentMethods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 163
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v7, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$updatePaymentMethods$1;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$updatePaymentMethods$1;-><init>(Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v3, v7

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method static synthetic updatePaymentMethods$default(Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_6

    .line 161
    iget-object p3, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->stripeAccountId:Ljava/lang/String;

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->updatePaymentMethods(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final checkout(Landroid/app/Activity;)V
    .registers 11
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->getMutableProcessing()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->getSelection$stripe_release()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/paymentsheet/model/PaymentSelection;

    if-eqz v0, :cond_33

    .line 105
    iget-object v1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->confirmParamsFactory:Lcom/stripe/android/paymentsheet/model/ConfirmParamsFactory;

    .line 106
    iget-object v2, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->args:Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;

    invoke-virtual {v2}, Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;->getClientSecret()Ljava/lang/String;

    move-result-object v2

    const-string v3, "paymentSelection"

    .line 107
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->getShouldSavePaymentMethod$stripe_release()Z

    move-result v3

    .line 105
    invoke-virtual {v1, v2, v0, v3}, Lcom/stripe/android/paymentsheet/model/ConfirmParamsFactory;->create$stripe_release(Ljava/lang/String;Lcom/stripe/android/paymentsheet/model/PaymentSelection;Z)Lcom/stripe/android/model/ConfirmPaymentIntentParams;

    move-result-object v0

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    if-eqz v0, :cond_5a

    .line 114
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->getMutableViewState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    sget-object v2, Lcom/stripe/android/paymentsheet/model/ViewState$Confirming;->INSTANCE:Lcom/stripe/android/paymentsheet/model/ViewState$Confirming;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 115
    iget-object v1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->paymentController:Lcom/stripe/android/PaymentController;

    .line 116
    sget-object v2, Lcom/stripe/android/view/AuthActivityStarter$Host;->Companion:Lcom/stripe/android/view/AuthActivityStarter$Host$Companion;

    invoke-virtual {v2, p1}, Lcom/stripe/android/view/AuthActivityStarter$Host$Companion;->create$stripe_release(Landroid/app/Activity;)Lcom/stripe/android/view/AuthActivityStarter$Host;

    move-result-object p1

    .line 117
    check-cast v0, Lcom/stripe/android/model/ConfirmStripeIntentParams;

    .line 118
    new-instance v8, Lcom/stripe/android/networking/ApiRequest$Options;

    .line 119
    iget-object v3, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->publishableKey:Ljava/lang/String;

    .line 120
    iget-object v4, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->stripeAccountId:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    .line 118
    invoke-direct/range {v2 .. v7}, Lcom/stripe/android/networking/ApiRequest$Options;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 115
    invoke-interface {v1, p1, v0, v8}, Lcom/stripe/android/PaymentController;->startConfirmAndAuth(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/ConfirmStripeIntentParams;Lcom/stripe/android/networking/ApiRequest$Options;)V

    goto :goto_66

    .line 126
    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "checkout called when no payment method selected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    .line 125
    invoke-virtual {p0, p1}, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->onError(Ljava/lang/Throwable;)V

    :goto_66
    return-void
.end method

.method public final fetchPaymentIntent()V
    .registers 7

    .line 67
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$fetchPaymentIntent$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$fetchPaymentIntent$1;-><init>(Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final getArgs$stripe_release()Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->args:Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;

    return-object v0
.end method

.method public final getPaymentIntent$stripe_release()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/stripe/android/model/PaymentIntent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->paymentIntent:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final isGooglePayReady()Landroidx/lifecycle/LiveData;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 149
    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$isGooglePayReady$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$isGooglePayReady$1;-><init>(Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/lifecycle/CoroutineLiveDataKt;->liveData$default(Lkotlin/coroutines/CoroutineContext;JLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p3, :cond_1a

    .line 133
    iget-object p2, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->paymentController:Lcom/stripe/android/PaymentController;

    invoke-interface {p2, p1, p3}, Lcom/stripe/android/PaymentController;->shouldHandlePaymentResult(ILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 p3, 0x0

    :goto_c
    if-eqz p3, :cond_1a

    .line 134
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->paymentController:Lcom/stripe/android/PaymentController;

    .line 136
    new-instance p2, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$onActivityResult$$inlined$let$lambda$1;

    invoke-direct {p2, p0}, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$onActivityResult$$inlined$let$lambda$1;-><init>(Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;)V

    check-cast p2, Lcom/stripe/android/ApiResultCallback;

    .line 134
    invoke-interface {p1, p3, p2}, Lcom/stripe/android/PaymentController;->handlePaymentResult(Landroid/content/Intent;Lcom/stripe/android/ApiResultCallback;)V

    :cond_1a
    return-void
.end method

.method public final setPaymentMethods$stripe_release(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    const-string v0, "paymentMethods"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->getMutablePaymentMethods()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updatePaymentMethods()V
    .registers 8

    .line 53
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->args:Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;

    .line 54
    instance-of v1, v0, Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args$Default;

    if-eqz v1, :cond_1c

    .line 56
    check-cast v0, Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args$Default;

    invoke-virtual {v0}, Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args$Default;->getEphemeralKey()Ljava/lang/String;

    move-result-object v2

    .line 57
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->args:Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;

    check-cast v0, Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args$Default;

    invoke-virtual {v0}, Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args$Default;->getCustomerId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    .line 55
    invoke-static/range {v1 .. v6}, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->updatePaymentMethods$default(Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_2b

    .line 60
    :cond_1c
    instance-of v0, v0, Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args$Guest;

    if-eqz v0, :cond_2b

    .line 61
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->getMutablePaymentMethods()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2b
    :goto_2b
    return-void
.end method
