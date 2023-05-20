.class public final Lcom/stripe/android/view/PaymentMethodsActivity$setupRecyclerView$1;
.super Ljava/lang/Object;
.source "PaymentMethodsActivity.kt"

# interfaces
.implements Lcom/stripe/android/view/PaymentMethodsAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/PaymentMethodsActivity;->setupRecyclerView()V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/stripe/android/view/PaymentMethodsActivity$setupRecyclerView$1",
        "Lcom/stripe/android/view/PaymentMethodsAdapter$Listener;",
        "onDeletePaymentMethodAction",
        "",
        "paymentMethod",
        "Lcom/stripe/android/model/PaymentMethod;",
        "onGooglePayClick",
        "onPaymentMethodClick",
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
.field final synthetic $deletePaymentMethodDialogFactory:Lcom/stripe/android/view/DeletePaymentMethodDialogFactory;

.field final synthetic this$0:Lcom/stripe/android/view/PaymentMethodsActivity;


# direct methods
.method constructor <init>(Lcom/stripe/android/view/PaymentMethodsActivity;Lcom/stripe/android/view/DeletePaymentMethodDialogFactory;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/view/DeletePaymentMethodDialogFactory;",
            ")V"
        }
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/stripe/android/view/PaymentMethodsActivity$setupRecyclerView$1;->this$0:Lcom/stripe/android/view/PaymentMethodsActivity;

    iput-object p2, p0, Lcom/stripe/android/view/PaymentMethodsActivity$setupRecyclerView$1;->$deletePaymentMethodDialogFactory:Lcom/stripe/android/view/DeletePaymentMethodDialogFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletePaymentMethodAction(Lcom/stripe/android/model/PaymentMethod;)V
    .registers 3
    .param p1    # Lcom/stripe/android/model/PaymentMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "paymentMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivity$setupRecyclerView$1;->$deletePaymentMethodDialogFactory:Lcom/stripe/android/view/DeletePaymentMethodDialogFactory;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/DeletePaymentMethodDialogFactory;->create(Lcom/stripe/android/model/PaymentMethod;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public onGooglePayClick()V
    .registers 2

    .line 155
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivity$setupRecyclerView$1;->this$0:Lcom/stripe/android/view/PaymentMethodsActivity;

    invoke-static {v0}, Lcom/stripe/android/view/PaymentMethodsActivity;->access$finishWithGooglePay(Lcom/stripe/android/view/PaymentMethodsActivity;)V

    return-void
.end method

.method public onPaymentMethodClick(Lcom/stripe/android/model/PaymentMethod;)V
    .registers 3
    .param p1    # Lcom/stripe/android/model/PaymentMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "paymentMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/stripe/android/view/PaymentMethodsActivity$setupRecyclerView$1;->this$0:Lcom/stripe/android/view/PaymentMethodsActivity;

    invoke-virtual {v0}, Lcom/stripe/android/view/PaymentMethodsActivity;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/PaymentMethodsActivityBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/android/databinding/PaymentMethodsActivityBinding;->recycler:Lcom/stripe/android/view/PaymentMethodsRecyclerView;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/PaymentMethodsRecyclerView;->setTappedPaymentMethod$stripe_release(Lcom/stripe/android/model/PaymentMethod;)V

    return-void
.end method
