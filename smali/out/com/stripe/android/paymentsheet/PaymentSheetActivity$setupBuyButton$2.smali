.class final Lcom/stripe/android/paymentsheet/PaymentSheetActivity$setupBuyButton$2;
.super Ljava/lang/Object;
.source "PaymentSheetActivity.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/paymentsheet/PaymentSheetActivity;->setupBuyButton()V
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
        "Lcom/stripe/android/paymentsheet/model/ViewState;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "state",
        "Lcom/stripe/android/paymentsheet/model/ViewState;",
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
.field final synthetic this$0:Lcom/stripe/android/paymentsheet/PaymentSheetActivity;


# direct methods
.method constructor <init>(Lcom/stripe/android/paymentsheet/PaymentSheetActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetActivity$setupBuyButton$2;->this$0:Lcom/stripe/android/paymentsheet/PaymentSheetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/stripe/android/paymentsheet/model/ViewState;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 204
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetActivity$setupBuyButton$2;->this$0:Lcom/stripe/android/paymentsheet/PaymentSheetActivity;

    invoke-virtual {v0}, Lcom/stripe/android/paymentsheet/PaymentSheetActivity;->getViewBinding$stripe_release()Lcom/stripe/android/databinding/ActivityPaymentSheetBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/android/databinding/ActivityPaymentSheetBinding;->buyButton:Lcom/stripe/android/paymentsheet/BuyButton;

    invoke-virtual {v0, p1}, Lcom/stripe/android/paymentsheet/BuyButton;->updateState(Lcom/stripe/android/paymentsheet/model/ViewState;)V

    :cond_d
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 20
    check-cast p1, Lcom/stripe/android/paymentsheet/model/ViewState;

    invoke-virtual {p0, p1}, Lcom/stripe/android/paymentsheet/PaymentSheetActivity$setupBuyButton$2;->onChanged(Lcom/stripe/android/paymentsheet/model/ViewState;)V

    return-void
.end method
