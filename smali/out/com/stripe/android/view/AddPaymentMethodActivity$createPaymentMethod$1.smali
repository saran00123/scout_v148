.class final Lcom/stripe/android/view/AddPaymentMethodActivity$createPaymentMethod$1;
.super Ljava/lang/Object;
.source "AddPaymentMethodActivity.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/AddPaymentMethodActivity;->createPaymentMethod$stripe_release(Lcom/stripe/android/view/AddPaymentMethodViewModel;Lcom/stripe/android/model/PaymentMethodCreateParams;)V
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lkotlin/Result;",
        "Lcom/stripe/android/model/PaymentMethod;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/android/view/AddPaymentMethodActivity;


# direct methods
.method constructor <init>(Lcom/stripe/android/view/AddPaymentMethodActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodActivity$createPaymentMethod$1;->this$0:Lcom/stripe/android/view/AddPaymentMethodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 32
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/AddPaymentMethodActivity$createPaymentMethod$1;->onChanged(Lkotlin/Result;)V

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

    .line 188
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_20

    check-cast p1, Lcom/stripe/android/model/PaymentMethod;

    .line 190
    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodActivity$createPaymentMethod$1;->this$0:Lcom/stripe/android/view/AddPaymentMethodActivity;

    invoke-static {v0}, Lcom/stripe/android/view/AddPaymentMethodActivity;->access$getShouldAttachToCustomer$p(Lcom/stripe/android/view/AddPaymentMethodActivity;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 191
    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodActivity$createPaymentMethod$1;->this$0:Lcom/stripe/android/view/AddPaymentMethodActivity;

    invoke-static {v0, p1}, Lcom/stripe/android/view/AddPaymentMethodActivity;->access$attachPaymentMethodToCustomer(Lcom/stripe/android/view/AddPaymentMethodActivity;Lcom/stripe/android/model/PaymentMethod;)V

    goto :goto_34

    .line 193
    :cond_1a
    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodActivity$createPaymentMethod$1;->this$0:Lcom/stripe/android/view/AddPaymentMethodActivity;

    invoke-static {v0, p1}, Lcom/stripe/android/view/AddPaymentMethodActivity;->access$finishWithPaymentMethod(Lcom/stripe/android/view/AddPaymentMethodActivity;Lcom/stripe/android/model/PaymentMethod;)V

    goto :goto_34

    .line 197
    :cond_20
    iget-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodActivity$createPaymentMethod$1;->this$0:Lcom/stripe/android/view/AddPaymentMethodActivity;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/stripe/android/view/AddPaymentMethodActivity;->setProgressBarVisible(Z)V

    .line 198
    iget-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodActivity$createPaymentMethod$1;->this$0:Lcom/stripe/android/view/AddPaymentMethodActivity;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    goto :goto_31

    :cond_2f
    const-string v0, ""

    :goto_31
    invoke-virtual {p1, v0}, Lcom/stripe/android/view/AddPaymentMethodActivity;->showError(Ljava/lang/String;)V

    :goto_34
    return-void
.end method
