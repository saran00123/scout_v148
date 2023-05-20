.class final Lcom/stripe/android/view/PaymentFlowActivity$onShippingInfoValidated$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "PaymentFlowActivity.kt"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/view/PaymentFlowActivity;->onShippingInfoValidated(Ljava/util/List;)V
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
        "Lcom/stripe/android/model/Customer;",
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
        "Lcom/stripe/android/model/Customer;",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "com/stripe/android/view/PaymentFlowActivity$onShippingInfoValidated$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $shippingMethods$inlined:Ljava/util/List;

.field final synthetic this$0:Lcom/stripe/android/view/PaymentFlowActivity;


# direct methods
.method constructor <init>(Lcom/stripe/android/view/PaymentFlowActivity;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/stripe/android/view/PaymentFlowActivity$onShippingInfoValidated$$inlined$let$lambda$1;->this$0:Lcom/stripe/android/view/PaymentFlowActivity;

    iput-object p2, p0, Lcom/stripe/android/view/PaymentFlowActivity$onShippingInfoValidated$$inlined$let$lambda$1;->$shippingMethods$inlined:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 22
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/PaymentFlowActivity$onShippingInfoValidated$$inlined$let$lambda$1;->onChanged(Lkotlin/Result;)V

    return-void
.end method

.method public final onChanged(Lkotlin/Result;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Result<",
            "+",
            "Lcom/stripe/android/model/Customer;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_18

    check-cast p1, Lcom/stripe/android/model/Customer;

    .line 130
    iget-object v0, p0, Lcom/stripe/android/view/PaymentFlowActivity$onShippingInfoValidated$$inlined$let$lambda$1;->this$0:Lcom/stripe/android/view/PaymentFlowActivity;

    .line 131
    invoke-virtual {p1}, Lcom/stripe/android/model/Customer;->getShippingInformation()Lcom/stripe/android/model/ShippingInformation;

    move-result-object p1

    .line 132
    iget-object v1, p0, Lcom/stripe/android/view/PaymentFlowActivity$onShippingInfoValidated$$inlined$let$lambda$1;->$shippingMethods$inlined:Ljava/util/List;

    .line 130
    invoke-virtual {v0, p1, v1}, Lcom/stripe/android/view/PaymentFlowActivity;->onShippingInfoSaved$stripe_release(Lcom/stripe/android/model/ShippingInformation;Ljava/util/List;)V

    goto :goto_26

    .line 136
    :cond_18
    iget-object p1, p0, Lcom/stripe/android/view/PaymentFlowActivity$onShippingInfoValidated$$inlined$let$lambda$1;->this$0:Lcom/stripe/android/view/PaymentFlowActivity;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const-string v0, ""

    :goto_23
    invoke-virtual {p1, v0}, Lcom/stripe/android/view/PaymentFlowActivity;->showError(Ljava/lang/String;)V

    :goto_26
    return-void
.end method
