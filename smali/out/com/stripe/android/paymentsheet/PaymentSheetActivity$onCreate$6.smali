.class final Lcom/stripe/android/paymentsheet/PaymentSheetActivity$onCreate$6;
.super Ljava/lang/Object;
.source "PaymentSheetActivity.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/paymentsheet/PaymentSheetActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$TransitionTarget;",
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
        "transitionTarget",
        "Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$TransitionTarget;",
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
.field final synthetic $fragmentArgs:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/stripe/android/paymentsheet/PaymentSheetActivity;


# direct methods
.method constructor <init>(Lcom/stripe/android/paymentsheet/PaymentSheetActivity;Landroid/os/Bundle;)V
    .registers 3

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetActivity$onCreate$6;->this$0:Lcom/stripe/android/paymentsheet/PaymentSheetActivity;

    iput-object p2, p0, Lcom/stripe/android/paymentsheet/PaymentSheetActivity$onCreate$6;->$fragmentArgs:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$TransitionTarget;)V
    .registers 4

    if-eqz p1, :cond_9

    .line 131
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetActivity$onCreate$6;->this$0:Lcom/stripe/android/paymentsheet/PaymentSheetActivity;

    iget-object v1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetActivity$onCreate$6;->$fragmentArgs:Landroid/os/Bundle;

    invoke-static {v0, p1, v1}, Lcom/stripe/android/paymentsheet/PaymentSheetActivity;->access$onTransitionTarget(Lcom/stripe/android/paymentsheet/PaymentSheetActivity;Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$TransitionTarget;Landroid/os/Bundle;)V

    :cond_9
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 20
    check-cast p1, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$TransitionTarget;

    invoke-virtual {p0, p1}, Lcom/stripe/android/paymentsheet/PaymentSheetActivity$onCreate$6;->onChanged(Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$TransitionTarget;)V

    return-void
.end method
