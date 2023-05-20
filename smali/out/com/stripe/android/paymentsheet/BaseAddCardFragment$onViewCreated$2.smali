.class public final Lcom/stripe/android/paymentsheet/BaseAddCardFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "BaseAddCardFragment.kt"

# interfaces
.implements Lcom/stripe/android/view/CardInputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/paymentsheet/BaseAddCardFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/stripe/android/paymentsheet/BaseAddCardFragment$onViewCreated$2",
        "Lcom/stripe/android/view/CardInputListener;",
        "onCardComplete",
        "",
        "onCvcComplete",
        "onExpirationComplete",
        "onFocusChange",
        "focusField",
        "Lcom/stripe/android/view/CardInputListener$FocusField;",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/android/paymentsheet/BaseAddCardFragment;


# direct methods
.method constructor <init>(Lcom/stripe/android/paymentsheet/BaseAddCardFragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/stripe/android/paymentsheet/BaseAddCardFragment$onViewCreated$2;->this$0:Lcom/stripe/android/paymentsheet/BaseAddCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCardComplete()V
    .registers 1

    return-void
.end method

.method public onCvcComplete()V
    .registers 1

    return-void
.end method

.method public onExpirationComplete()V
    .registers 1

    return-void
.end method

.method public onFocusChange(Lcom/stripe/android/view/CardInputListener$FocusField;)V
    .registers 3
    .param p1    # Lcom/stripe/android/view/CardInputListener$FocusField;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "focusField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/BaseAddCardFragment$onViewCreated$2;->this$0:Lcom/stripe/android/paymentsheet/BaseAddCardFragment;

    invoke-virtual {p1}, Lcom/stripe/android/paymentsheet/BaseAddCardFragment;->getSheetViewModel()Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;

    move-result-object p1

    sget-object v0, Lcom/stripe/android/paymentsheet/ui/SheetMode;->Full:Lcom/stripe/android/paymentsheet/ui/SheetMode;

    invoke-virtual {p1, v0}, Lcom/stripe/android/paymentsheet/viewmodels/SheetViewModel;->updateMode(Lcom/stripe/android/paymentsheet/ui/SheetMode;)V

    return-void
.end method
