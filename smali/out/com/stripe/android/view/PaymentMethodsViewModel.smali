.class public final Lcom/stripe/android/view/PaymentMethodsViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "PaymentMethodsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/PaymentMethodsViewModel$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentMethodsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentMethodsViewModel.kt\ncom/stripe/android/view/PaymentMethodsViewModel\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,118:1\n1#2:119\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001.B2\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ\u001c\u0010 \u001a\u0004\u0018\u00010\u00082\u0006\u0010!\u001a\u00020\"2\u0008\u0008\u0001\u0010#\u001a\u00020$H\u0002J\"\u0010%\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0\'0\u00050&H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008(J\u0015\u0010)\u001a\u00020*2\u0006\u0010!\u001a\u00020\"H\u0000\u00a2\u0006\u0002\u0008+J\u0015\u0010,\u001a\u00020*2\u0006\u0010!\u001a\u00020\"H\u0000\u00a2\u0006\u0002\u0008-R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0010X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0014X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0017\u001a\n \u0019*\u0004\u0018\u00010\u00180\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0014X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0008\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006/"
    }
    d2 = {
        "Lcom/stripe/android/view/PaymentMethodsViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "customerSession",
        "Lkotlin/Result;",
        "Lcom/stripe/android/CustomerSession;",
        "selectedPaymentMethodId",
        "",
        "startedFromPaymentSession",
        "",
        "(Landroid/app/Application;Ljava/lang/Object;Ljava/lang/String;Z)V",
        "cardDisplayTextFactory",
        "Lcom/stripe/android/view/CardDisplayTextFactory;",
        "Ljava/lang/Object;",
        "productUsage",
        "",
        "getProductUsage$stripe_release",
        "()Ljava/util/Set;",
        "progressData",
        "Landroidx/lifecycle/MutableLiveData;",
        "getProgressData$stripe_release",
        "()Landroidx/lifecycle/MutableLiveData;",
        "resources",
        "Landroid/content/res/Resources;",
        "kotlin.jvm.PlatformType",
        "getSelectedPaymentMethodId$stripe_release",
        "()Ljava/lang/String;",
        "setSelectedPaymentMethodId$stripe_release",
        "(Ljava/lang/String;)V",
        "snackbarData",
        "getSnackbarData$stripe_release",
        "createSnackbarText",
        "paymentMethod",
        "Lcom/stripe/android/model/PaymentMethod;",
        "stringRes",
        "",
        "getPaymentMethods",
        "Landroidx/lifecycle/LiveData;",
        "",
        "getPaymentMethods$stripe_release",
        "onPaymentMethodAdded",
        "",
        "onPaymentMethodAdded$stripe_release",
        "onPaymentMethodRemoved",
        "onPaymentMethodRemoved$stripe_release",
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
.field private final cardDisplayTextFactory:Lcom/stripe/android/view/CardDisplayTextFactory;

.field private final customerSession:Ljava/lang/Object;

.field private final productUsage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final progressData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final resources:Landroid/content/res/Resources;

.field private selectedPaymentMethodId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final snackbarData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final startedFromPaymentSession:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/lang/Object;Ljava/lang/String;Z)V
    .registers 6
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    iput-object p2, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->customerSession:Ljava/lang/Object;

    iput-object p3, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->selectedPaymentMethodId:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->startedFromPaymentSession:Z

    .line 23
    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->resources:Landroid/content/res/Resources;

    .line 24
    new-instance p2, Lcom/stripe/android/view/CardDisplayTextFactory;

    check-cast p1, Landroid/content/Context;

    invoke-direct {p2, p1}, Lcom/stripe/android/view/CardDisplayTextFactory;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->cardDisplayTextFactory:Lcom/stripe/android/view/CardDisplayTextFactory;

    const/4 p1, 0x2

    .line 26
    new-array p1, p1, [Ljava/lang/String;

    .line 27
    iget-boolean p2, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->startedFromPaymentSession:Z

    if-eqz p2, :cond_27

    const-string p2, "PaymentSession"

    goto :goto_28

    :cond_27
    const/4 p2, 0x0

    :goto_28
    const/4 p3, 0x0

    aput-object p2, p1, p3

    const/4 p2, 0x1

    const-string p3, "PaymentMethodsActivity"

    aput-object p3, p1, p2

    .line 26
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 29
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->productUsage:Ljava/util/Set;

    .line 31
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->snackbarData:Landroidx/lifecycle/MutableLiveData;

    .line 32
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->progressData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Application;Ljava/lang/Object;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_7

    const/4 p3, 0x0

    .line 20
    check-cast p3, Ljava/lang/String;

    :cond_7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/android/view/PaymentMethodsViewModel;-><init>(Landroid/app/Application;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method private final createSnackbarText(Lcom/stripe/android/model/PaymentMethod;I)Ljava/lang/String;
    .registers 7
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 52
    iget-object p1, p1, Lcom/stripe/android/model/PaymentMethod;->card:Lcom/stripe/android/model/PaymentMethod$Card;

    if-eqz p1, :cond_17

    .line 53
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->resources:Landroid/content/res/Resources;

    const/4 v1, 0x1

    .line 54
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 55
    iget-object v3, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->cardDisplayTextFactory:Lcom/stripe/android/view/CardDisplayTextFactory;

    invoke-virtual {v3, p1}, Lcom/stripe/android/view/CardDisplayTextFactory;->createUnstyled$stripe_release(Lcom/stripe/android/model/PaymentMethod$Card;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    .line 53
    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return-object p1
.end method


# virtual methods
.method public final synthetic getPaymentMethods$stripe_release()Landroidx/lifecycle/LiveData;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lkotlin/Result<",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;>;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 63
    iget-object v1, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->progressData:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 65
    iget-object v1, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->customerSession:Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_30

    move-object v3, v1

    check-cast v3, Lcom/stripe/android/CustomerSession;

    .line 68
    sget-object v4, Lcom/stripe/android/model/PaymentMethod$Type;->Card:Lcom/stripe/android/model/PaymentMethod$Type;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 69
    iget-object v8, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->productUsage:Ljava/util/Set;

    .line 70
    new-instance v1, Lcom/stripe/android/view/PaymentMethodsViewModel$getPaymentMethods$$inlined$fold$lambda$1;

    invoke-direct {v1, p0, v0}, Lcom/stripe/android/view/PaymentMethodsViewModel$getPaymentMethods$$inlined$fold$lambda$1;-><init>(Lcom/stripe/android/view/PaymentMethodsViewModel;Landroidx/lifecycle/MutableLiveData;)V

    move-object v9, v1

    check-cast v9, Lcom/stripe/android/CustomerSession$PaymentMethodsRetrievalListener;

    const/16 v10, 0xe

    const/4 v11, 0x0

    .line 67
    invoke-static/range {v3 .. v11}, Lcom/stripe/android/CustomerSession;->getPaymentMethods$stripe_release$default(Lcom/stripe/android/CustomerSession;Lcom/stripe/android/model/PaymentMethod$Type;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/stripe/android/CustomerSession$PaymentMethodsRetrievalListener;ILjava/lang/Object;)V

    goto :goto_4b

    .line 94
    :cond_30
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->progressData:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 99
    :goto_4b
    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getProductUsage$stripe_release()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->productUsage:Ljava/util/Set;

    return-object v0
.end method

.method public final getProgressData$stripe_release()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->progressData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getSelectedPaymentMethodId$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->selectedPaymentMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSnackbarData$stripe_release()Landroidx/lifecycle/MutableLiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->snackbarData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final onPaymentMethodAdded$stripe_release(Lcom/stripe/android/model/PaymentMethod;)V
    .registers 3
    .param p1    # Lcom/stripe/android/model/PaymentMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "paymentMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget v0, Lcom/stripe/android/R$string;->added:I

    invoke-direct {p0, p1, v0}, Lcom/stripe/android/view/PaymentMethodsViewModel;->createSnackbarText(Lcom/stripe/android/model/PaymentMethod;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 36
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->snackbarData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 37
    iget-object p1, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->snackbarData:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public final onPaymentMethodRemoved$stripe_release(Lcom/stripe/android/model/PaymentMethod;)V
    .registers 3
    .param p1    # Lcom/stripe/android/model/PaymentMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "paymentMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget v0, Lcom/stripe/android/R$string;->removed:I

    invoke-direct {p0, p1, v0}, Lcom/stripe/android/view/PaymentMethodsViewModel;->createSnackbarText(Lcom/stripe/android/model/PaymentMethod;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 43
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->snackbarData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->snackbarData:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public final setSelectedPaymentMethodId$stripe_release(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 20
    iput-object p1, p0, Lcom/stripe/android/view/PaymentMethodsViewModel;->selectedPaymentMethodId:Ljava/lang/String;

    return-void
.end method
