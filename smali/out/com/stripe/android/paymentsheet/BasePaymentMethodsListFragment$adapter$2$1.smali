.class final Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$adapter$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BasePaymentMethodsListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$adapter$2;->invoke()Lcom/stripe/android/paymentsheet/PaymentMethodsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/android/paymentsheet/model/PaymentSelection;",
        "Lkotlin/Unit;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/stripe/android/paymentsheet/model/PaymentSelection;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$adapter$2;


# direct methods
.method constructor <init>(Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$adapter$2;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$adapter$2$1;->this$0:Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$adapter$2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 15
    check-cast p1, Lcom/stripe/android/paymentsheet/model/PaymentSelection;

    invoke-virtual {p0, p1}, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$adapter$2$1;->invoke(Lcom/stripe/android/paymentsheet/model/PaymentSelection;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/android/paymentsheet/model/PaymentSelection;)V
    .registers 3
    .param p1    # Lcom/stripe/android/paymentsheet/model/PaymentSelection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$adapter$2$1;->this$0:Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$adapter$2;

    iget-object v0, v0, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$adapter$2;->this$0:Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;

    invoke-static {v0}, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;->access$getFragmentViewModel$p(Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;)Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$PaymentMethodsViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$PaymentMethodsViewModel;->setSelectedPaymentMethod$stripe_release(Lcom/stripe/android/paymentsheet/model/PaymentSelection;)V

    .line 27
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$adapter$2$1;->this$0:Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$adapter$2;

    iget-object v0, v0, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment$adapter$2;->this$0:Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;

    invoke-virtual {v0}, Lcom/stripe/android/paymentsheet/BasePaymentMethodsListFragment;->getSheetViewModel()Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->updateSelection(Lcom/stripe/android/paymentsheet/model/PaymentSelection;)V

    return-void
.end method
