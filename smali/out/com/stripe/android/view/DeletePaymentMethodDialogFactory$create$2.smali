.class final Lcom/stripe/android/view/DeletePaymentMethodDialogFactory$create$2;
.super Ljava/lang/Object;
.source "DeletePaymentMethodDialogFactory.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/DeletePaymentMethodDialogFactory;->create(Lcom/stripe/android/model/PaymentMethod;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $paymentMethod:Lcom/stripe/android/model/PaymentMethod;

.field final synthetic this$0:Lcom/stripe/android/view/DeletePaymentMethodDialogFactory;


# direct methods
.method constructor <init>(Lcom/stripe/android/view/DeletePaymentMethodDialogFactory;Lcom/stripe/android/model/PaymentMethod;)V
    .registers 3

    iput-object p1, p0, Lcom/stripe/android/view/DeletePaymentMethodDialogFactory$create$2;->this$0:Lcom/stripe/android/view/DeletePaymentMethodDialogFactory;

    iput-object p2, p0, Lcom/stripe/android/view/DeletePaymentMethodDialogFactory$create$2;->$paymentMethod:Lcom/stripe/android/model/PaymentMethod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 30
    iget-object p1, p0, Lcom/stripe/android/view/DeletePaymentMethodDialogFactory$create$2;->this$0:Lcom/stripe/android/view/DeletePaymentMethodDialogFactory;

    invoke-static {p1}, Lcom/stripe/android/view/DeletePaymentMethodDialogFactory;->access$getAdapter$p(Lcom/stripe/android/view/DeletePaymentMethodDialogFactory;)Lcom/stripe/android/view/PaymentMethodsAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/stripe/android/view/DeletePaymentMethodDialogFactory$create$2;->$paymentMethod:Lcom/stripe/android/model/PaymentMethod;

    invoke-virtual {p1, p2}, Lcom/stripe/android/view/PaymentMethodsAdapter;->resetPaymentMethod$stripe_release(Lcom/stripe/android/model/PaymentMethod;)V

    return-void
.end method
