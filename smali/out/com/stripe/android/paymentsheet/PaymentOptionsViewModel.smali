.class public final Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;
.super Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;
.source "PaymentOptionsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;,
        Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel<",
        "Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;",
        "Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState;",
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
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u000c\rB\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;",
        "Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;",
        "Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;",
        "Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState;",
        "publishableKey",
        "",
        "stripeAccountId",
        "args",
        "Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;)V",
        "selectPaymentOption",
        "",
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


# instance fields
.field private final args:Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;

.field private final publishableKey:Ljava/lang/String;

.field private final stripeAccountId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "publishableKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p3, Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args$Guest;

    .line 15
    invoke-direct {p0, v0}, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;-><init>(Z)V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;->publishableKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;->stripeAccountId:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;->args:Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;

    .line 19
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;->getMutablePaymentMethods()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p2, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;->args:Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;

    invoke-virtual {p2}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;->getPaymentMethods()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final selectPaymentOption()V
    .registers 5

    .line 23
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;->getSelection$stripe_release()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/paymentsheet/model/PaymentSelection;

    if-eqz v0, :cond_1d

    .line 24
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;->getMutableViewState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    new-instance v2, Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Completed;

    const-string v3, "paymentSelection"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Completed;-><init>(Lcom/stripe/android/paymentsheet/model/PaymentSelection;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method
