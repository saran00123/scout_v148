.class final Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentSheetPaymentMethodsListFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
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
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
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
.field final synthetic this$0:Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment;


# direct methods
.method constructor <init>(Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2;->this$0:Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModelProvider$Factory;
    .registers 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 9
    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$Factory;

    .line 10
    new-instance v1, Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2$1;

    invoke-direct {v1, p0}, Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2$1;-><init>(Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 11
    new-instance v2, Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2$2;

    invoke-direct {v2, p0}, Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2$2;-><init>(Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$Factory;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 7
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/PaymentSheetPaymentMethodsListFragment$activityViewModel$2;->invoke()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    return-object v0
.end method
