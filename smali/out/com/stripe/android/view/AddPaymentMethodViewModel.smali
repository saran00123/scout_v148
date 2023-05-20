.class public final Lcom/stripe/android/view/AddPaymentMethodViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "AddPaymentMethodViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/AddPaymentMethodViewModel$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddPaymentMethodViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddPaymentMethodViewModel.kt\ncom/stripe/android/view/AddPaymentMethodViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,98:1\n1#2:99\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u001aB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J,\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000fH\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u0013J$\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\r2\u0006\u0010\u0015\u001a\u00020\u0016H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u0017J\u0015\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0016H\u0001\u00a2\u0006\u0002\u0008\u0019R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/android/view/AddPaymentMethodViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "stripe",
        "Lcom/stripe/android/Stripe;",
        "args",
        "Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;",
        "errorMessageTranslator",
        "Lcom/stripe/android/view/i18n/ErrorMessageTranslator;",
        "(Lcom/stripe/android/Stripe;Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;Lcom/stripe/android/view/i18n/ErrorMessageTranslator;)V",
        "productUsage",
        "",
        "",
        "attachPaymentMethod",
        "Landroidx/lifecycle/LiveData;",
        "Lkotlin/Result;",
        "Lcom/stripe/android/model/PaymentMethod;",
        "customerSession",
        "Lcom/stripe/android/CustomerSession;",
        "paymentMethod",
        "attachPaymentMethod$stripe_release",
        "createPaymentMethod",
        "params",
        "Lcom/stripe/android/model/PaymentMethodCreateParams;",
        "createPaymentMethod$stripe_release",
        "updatedPaymentMethodCreateParams",
        "updatedPaymentMethodCreateParams$stripe_release",
        "Factory",
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
.field private final args:Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;

.field private final errorMessageTranslator:Lcom/stripe/android/view/i18n/ErrorMessageTranslator;

.field private final productUsage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final stripe:Lcom/stripe/android/Stripe;


# direct methods
.method public constructor <init>(Lcom/stripe/android/Stripe;Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;Lcom/stripe/android/view/i18n/ErrorMessageTranslator;)V
    .registers 5
    .param p1    # Lcom/stripe/android/Stripe;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/view/i18n/ErrorMessageTranslator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "stripe"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageTranslator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodViewModel;->stripe:Lcom/stripe/android/Stripe;

    iput-object p2, p0, Lcom/stripe/android/view/AddPaymentMethodViewModel;->args:Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;

    iput-object p3, p0, Lcom/stripe/android/view/AddPaymentMethodViewModel;->errorMessageTranslator:Lcom/stripe/android/view/i18n/ErrorMessageTranslator;

    const/4 p1, 0x2

    .line 26
    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "AddPaymentMethodActivity"

    aput-object p3, p1, p2

    .line 28
    iget-object p2, p0, Lcom/stripe/android/view/AddPaymentMethodViewModel;->args:Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;

    invoke-virtual {p2}, Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;->isPaymentSessionActive$stripe_release()Z

    move-result p2

    if-eqz p2, :cond_2b

    const-string p2, "PaymentSession"

    goto :goto_2c

    :cond_2b
    const/4 p2, 0x0

    :goto_2c
    const/4 p3, 0x1

    aput-object p2, p1, p3

    .line 26
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 29
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodViewModel;->productUsage:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/android/Stripe;Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;Lcom/stripe/android/view/i18n/ErrorMessageTranslator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    .line 23
    sget-object p3, Lcom/stripe/android/view/i18n/TranslatorManager;->INSTANCE:Lcom/stripe/android/view/i18n/TranslatorManager;

    invoke-virtual {p3}, Lcom/stripe/android/view/i18n/TranslatorManager;->getErrorMessageTranslator()Lcom/stripe/android/view/i18n/ErrorMessageTranslator;

    move-result-object p3

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/view/AddPaymentMethodViewModel;-><init>(Lcom/stripe/android/Stripe;Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;Lcom/stripe/android/view/i18n/ErrorMessageTranslator;)V

    return-void
.end method

.method public static final synthetic access$getErrorMessageTranslator$p(Lcom/stripe/android/view/AddPaymentMethodViewModel;)Lcom/stripe/android/view/i18n/ErrorMessageTranslator;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/stripe/android/view/AddPaymentMethodViewModel;->errorMessageTranslator:Lcom/stripe/android/view/i18n/ErrorMessageTranslator;

    return-object p0
.end method


# virtual methods
.method public final synthetic attachPaymentMethod$stripe_release(Lcom/stripe/android/CustomerSession;Lcom/stripe/android/model/PaymentMethod;)Landroidx/lifecycle/LiveData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/CustomerSession;",
            "Lcom/stripe/android/model/PaymentMethod;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lkotlin/Result<",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;>;"
        }
    .end annotation

    const-string v0, "customerSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethod"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 62
    iget-object p2, p2, Lcom/stripe/android/model/PaymentMethod;->id:Ljava/lang/String;

    if-eqz p2, :cond_14

    goto :goto_16

    :cond_14
    const-string p2, ""

    .line 63
    :goto_16
    iget-object v1, p0, Lcom/stripe/android/view/AddPaymentMethodViewModel;->productUsage:Ljava/util/Set;

    .line 64
    new-instance v2, Lcom/stripe/android/view/AddPaymentMethodViewModel$attachPaymentMethod$1;

    invoke-direct {v2, p0, v0}, Lcom/stripe/android/view/AddPaymentMethodViewModel$attachPaymentMethod$1;-><init>(Lcom/stripe/android/view/AddPaymentMethodViewModel;Landroidx/lifecycle/MutableLiveData;)V

    check-cast v2, Lcom/stripe/android/CustomerSession$PaymentMethodRetrievalListener;

    .line 61
    invoke-virtual {p1, p2, v1, v2}, Lcom/stripe/android/CustomerSession;->attachPaymentMethod$stripe_release(Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/CustomerSession$PaymentMethodRetrievalListener;)V

    .line 86
    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final createPaymentMethod$stripe_release(Lcom/stripe/android/model/PaymentMethodCreateParams;)Landroidx/lifecycle/LiveData;
    .registers 10
    .param p1    # Lcom/stripe/android/model/PaymentMethodCreateParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/model/PaymentMethodCreateParams;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lkotlin/Result<",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/stripe/android/view/AddPaymentMethodViewModel;->stripe:Lcom/stripe/android/Stripe;

    .line 36
    invoke-virtual {p0, p1}, Lcom/stripe/android/view/AddPaymentMethodViewModel;->updatedPaymentMethodCreateParams$stripe_release(Lcom/stripe/android/model/PaymentMethodCreateParams;)Lcom/stripe/android/model/PaymentMethodCreateParams;

    move-result-object v2

    .line 37
    new-instance p1, Lcom/stripe/android/view/AddPaymentMethodViewModel$createPaymentMethod$1;

    invoke-direct {p1, v0}, Lcom/stripe/android/view/AddPaymentMethodViewModel$createPaymentMethod$1;-><init>(Landroidx/lifecycle/MutableLiveData;)V

    move-object v5, p1

    check-cast v5, Lcom/stripe/android/ApiResultCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 35
    invoke-static/range {v1 .. v7}, Lcom/stripe/android/Stripe;->createPaymentMethod$default(Lcom/stripe/android/Stripe;Lcom/stripe/android/model/PaymentMethodCreateParams;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/ApiResultCallback;ILjava/lang/Object;)V

    .line 47
    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final updatedPaymentMethodCreateParams$stripe_release(Lcom/stripe/android/model/PaymentMethodCreateParams;)Lcom/stripe/android/model/PaymentMethodCreateParams;
    .registers 19
    .param p1    # Lcom/stripe/android/model/PaymentMethodCreateParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "params"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 53
    iget-object v14, v0, Lcom/stripe/android/view/AddPaymentMethodViewModel;->productUsage:Ljava/util/Set;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v15, 0xfff

    const/16 v16, 0x0

    invoke-static/range {v1 .. v16}, Lcom/stripe/android/model/PaymentMethodCreateParams;->copy$default(Lcom/stripe/android/model/PaymentMethodCreateParams;Lcom/stripe/android/model/PaymentMethodCreateParams$Type;Lcom/stripe/android/model/PaymentMethodCreateParams$Card;Lcom/stripe/android/model/PaymentMethodCreateParams$Ideal;Lcom/stripe/android/model/PaymentMethodCreateParams$Fpx;Lcom/stripe/android/model/PaymentMethodCreateParams$SepaDebit;Lcom/stripe/android/model/PaymentMethodCreateParams$AuBecsDebit;Lcom/stripe/android/model/PaymentMethodCreateParams$BacsDebit;Lcom/stripe/android/model/PaymentMethodCreateParams$Sofort;Lcom/stripe/android/model/PaymentMethodCreateParams$Upi;Lcom/stripe/android/model/PaymentMethodCreateParams$Netbanking;Lcom/stripe/android/model/PaymentMethod$BillingDetails;Ljava/util/Map;Ljava/util/Set;ILjava/lang/Object;)Lcom/stripe/android/model/PaymentMethodCreateParams;

    move-result-object v1

    return-object v1
.end method
