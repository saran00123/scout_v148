.class final Lcom/stripe/android/paymentsheet/BaseAddCardFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "BaseAddCardFragment.kt"

# interfaces
.implements Lcom/stripe/android/view/CardValidCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/paymentsheet/BaseAddCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "isValid",
        "",
        "<anonymous parameter 1>",
        "",
        "Lcom/stripe/android/view/CardValidCallback$Fields;",
        "onInputChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $cardMultilineWidget:Lcom/stripe/android/view/CardMultilineWidget;

.field final synthetic this$0:Lcom/stripe/android/paymentsheet/BaseAddCardFragment;


# direct methods
.method constructor <init>(Lcom/stripe/android/paymentsheet/BaseAddCardFragment;Lcom/stripe/android/view/CardMultilineWidget;)V
    .registers 3

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/BaseAddCardFragment$onViewCreated$1;->this$0:Lcom/stripe/android/paymentsheet/BaseAddCardFragment;

    iput-object p2, p0, Lcom/stripe/android/paymentsheet/BaseAddCardFragment$onViewCreated$1;->$cardMultilineWidget:Lcom/stripe/android/view/CardMultilineWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInputChanged(ZLjava/util/Set;)V
    .registers 4
    .param p2    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/android/view/CardValidCallback$Fields;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p1, :cond_15

    .line 35
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/BaseAddCardFragment$onViewCreated$1;->$cardMultilineWidget:Lcom/stripe/android/view/CardMultilineWidget;

    invoke-virtual {p1}, Lcom/stripe/android/view/CardMultilineWidget;->getPaymentMethodCreateParams()Lcom/stripe/android/model/PaymentMethodCreateParams;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 36
    new-instance p2, Lcom/stripe/android/paymentsheet/model/PaymentSelection$New;

    invoke-direct {p2, p1}, Lcom/stripe/android/paymentsheet/model/PaymentSelection$New;-><init>(Lcom/stripe/android/model/PaymentMethodCreateParams;)V

    .line 41
    :cond_15
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/BaseAddCardFragment$onViewCreated$1;->this$0:Lcom/stripe/android/paymentsheet/BaseAddCardFragment;

    invoke-virtual {p1}, Lcom/stripe/android/paymentsheet/BaseAddCardFragment;->getSheetViewModel()Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;

    move-result-object p1

    check-cast p2, Lcom/stripe/android/paymentsheet/model/PaymentSelection;

    invoke-virtual {p1, p2}, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->updateSelection(Lcom/stripe/android/paymentsheet/model/PaymentSelection;)V

    return-void
.end method
