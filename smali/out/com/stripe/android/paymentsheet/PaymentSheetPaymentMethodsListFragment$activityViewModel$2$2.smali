.class final Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentSheetPaymentMethodsListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2;->invoke()Landroidx/lifecycle/ViewModelProvider$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;",
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
.field final synthetic this$0:Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2;


# direct methods
.method constructor <init>(Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2$2;->this$0:Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2$2;->this$0:Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2;

    iget-object v0, v0, Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2;->this$0:Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment;

    invoke-virtual {v0}, Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.stripe.android.paymentsheet.extra_starter_args"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 12
    check-cast v0, Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 7
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2$2;->invoke()Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;

    move-result-object v0

    return-object v0
.end method
