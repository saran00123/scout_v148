.class final Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "PaymentSheetLoadingFragment.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Ljava/util/List<",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "paymentMethods",
        "",
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
.field final synthetic this$0:Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment;


# direct methods
.method constructor <init>(Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment$onViewCreated$1;->this$0:Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 10
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment$onViewCreated$1;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public final onChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 27
    sget-object p1, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$TransitionTarget;->AddPaymentMethodSheet:Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$TransitionTarget;

    goto :goto_b

    .line 29
    :cond_9
    sget-object p1, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$TransitionTarget;->SelectSavedPaymentMethod:Lcom/stripe/android/paymentsheet/PaymentSheetViewModel$TransitionTarget;

    .line 31
    :goto_b
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment$onViewCreated$1;->this$0:Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment;

    invoke-static {v0}, Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment;->access$getActivityViewModel$p(Lcom/stripe/android/paymentsheet/PaymentSheetLoadingFragment;)Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/android/paymentsheet/PaymentSheetViewModel;->transitionTo(Ljava/lang/Object;)V

    return-void
.end method
