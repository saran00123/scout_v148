.class final Lcom/stripe/android/view/AddPaymentMethodActivity$attachPaymentMethodToCustomer$$inlined$fold$lambda$1;
.super Ljava/lang/Object;
.source "AddPaymentMethodActivity.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/AddPaymentMethodActivity;->attachPaymentMethodToCustomer(Lcom/stripe/android/model/PaymentMethod;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lkotlin/Result<",
        "+",
        "Lcom/stripe/android/model/PaymentMethod;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lkotlin/Result;",
        "Lcom/stripe/android/model/PaymentMethod;",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "com/stripe/android/view/AddPaymentMethodActivity$attachPaymentMethodToCustomer$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $paymentMethod$inlined:Lcom/stripe/android/model/PaymentMethod;

.field final synthetic this$0:Lcom/stripe/android/view/AddPaymentMethodActivity;


# direct methods
.method constructor <init>(Lcom/stripe/android/view/AddPaymentMethodActivity;Lcom/stripe/android/model/PaymentMethod;)V
    .registers 3

    iput-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodActivity$attachPaymentMethodToCustomer$$inlined$fold$lambda$1;->this$0:Lcom/stripe/android/view/AddPaymentMethodActivity;

    iput-object p2, p0, Lcom/stripe/android/view/AddPaymentMethodActivity$attachPaymentMethodToCustomer$$inlined$fold$lambda$1;->$paymentMethod$inlined:Lcom/stripe/android/model/PaymentMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 32
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/AddPaymentMethodActivity$attachPaymentMethodToCustomer$$inlined$fold$lambda$1;->onChanged(Lkotlin/Result;)V

    return-void
.end method

.method public final onChanged(Lkotlin/Result;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Result<",
            "+",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .line 216
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodActivity$attachPaymentMethodToCustomer$$inlined$fold$lambda$1;->this$0:Lcom/stripe/android/view/AddPaymentMethodActivity;

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_12

    check-cast p1, Lcom/stripe/android/model/PaymentMethod;

    .line 217
    invoke-static {v0, p1}, Lcom/stripe/android/view/AddPaymentMethodActivity;->access$finishWithPaymentMethod(Lcom/stripe/android/view/AddPaymentMethodActivity;Lcom/stripe/android/model/PaymentMethod;)V

    goto :goto_26

    .line 219
    :cond_12
    iget-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodActivity$attachPaymentMethodToCustomer$$inlined$fold$lambda$1;->this$0:Lcom/stripe/android/view/AddPaymentMethodActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/stripe/android/view/AddPaymentMethodActivity;->setProgressBarVisible(Z)V

    .line 220
    iget-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodActivity$attachPaymentMethodToCustomer$$inlined$fold$lambda$1;->this$0:Lcom/stripe/android/view/AddPaymentMethodActivity;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const-string v0, ""

    :goto_23
    invoke-virtual {p1, v0}, Lcom/stripe/android/view/AddPaymentMethodActivity;->showError(Ljava/lang/String;)V

    :goto_26
    return-void
.end method
