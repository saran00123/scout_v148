.class public final Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$PaymentMethodsViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "BasePaymentMethodsListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentMethodsViewModel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$PaymentMethodsViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "selectedPaymentMethod",
        "Lcom/stripe/android/paymentsheet/model/PaymentSelection;",
        "getSelectedPaymentMethod$stripe_release",
        "()Lcom/stripe/android/paymentsheet/model/PaymentSelection;",
        "setSelectedPaymentMethod$stripe_release",
        "(Lcom/stripe/android/paymentsheet/model/PaymentSelection;)V",
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
.field private selectedPaymentMethod:Lcom/stripe/android/paymentsheet/model/PaymentSelection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSelectedPaymentMethod$stripe_release()Lcom/stripe/android/paymentsheet/model/PaymentSelection;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$PaymentMethodsViewModel;->selectedPaymentMethod:Lcom/stripe/android/paymentsheet/model/PaymentSelection;

    return-object v0
.end method

.method public final setSelectedPaymentMethod$stripe_release(Lcom/stripe/android/paymentsheet/model/PaymentSelection;)V
    .registers 2
    .param p1    # Lcom/stripe/android/paymentsheet/model/PaymentSelection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 60
    iput-object p1, p0, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$PaymentMethodsViewModel;->selectedPaymentMethod:Lcom/stripe/android/paymentsheet/model/PaymentSelection;

    return-void
.end method
