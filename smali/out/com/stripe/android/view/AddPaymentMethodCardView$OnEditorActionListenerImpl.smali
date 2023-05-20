.class public final Lcom/stripe/android/view/AddPaymentMethodCardView$OnEditorActionListenerImpl;
.super Ljava/lang/Object;
.source "AddPaymentMethodCardView.kt"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/view/AddPaymentMethodCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnEditorActionListenerImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J$\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/android/view/AddPaymentMethodCardView$OnEditorActionListenerImpl;",
        "Landroid/widget/TextView$OnEditorActionListener;",
        "activity",
        "Lcom/stripe/android/view/AddPaymentMethodActivity;",
        "addPaymentMethodCardView",
        "Lcom/stripe/android/view/AddPaymentMethodCardView;",
        "keyboardController",
        "Lcom/stripe/android/view/KeyboardController;",
        "(Lcom/stripe/android/view/AddPaymentMethodActivity;Lcom/stripe/android/view/AddPaymentMethodCardView;Lcom/stripe/android/view/KeyboardController;)V",
        "onEditorAction",
        "",
        "v",
        "Landroid/widget/TextView;",
        "actionId",
        "",
        "event",
        "Landroid/view/KeyEvent;",
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
.field private final activity:Lcom/stripe/android/view/AddPaymentMethodActivity;

.field private final addPaymentMethodCardView:Lcom/stripe/android/view/AddPaymentMethodCardView;

.field private final keyboardController:Lcom/stripe/android/view/KeyboardController;


# direct methods
.method public constructor <init>(Lcom/stripe/android/view/AddPaymentMethodActivity;Lcom/stripe/android/view/AddPaymentMethodCardView;Lcom/stripe/android/view/KeyboardController;)V
    .registers 5
    .param p1    # Lcom/stripe/android/view/AddPaymentMethodActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/view/AddPaymentMethodCardView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/view/KeyboardController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addPaymentMethodCardView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyboardController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodCardView$OnEditorActionListenerImpl;->activity:Lcom/stripe/android/view/AddPaymentMethodActivity;

    iput-object p2, p0, Lcom/stripe/android/view/AddPaymentMethodCardView$OnEditorActionListenerImpl;->addPaymentMethodCardView:Lcom/stripe/android/view/AddPaymentMethodCardView;

    iput-object p3, p0, Lcom/stripe/android/view/AddPaymentMethodCardView$OnEditorActionListenerImpl;->keyboardController:Lcom/stripe/android/view/KeyboardController;

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x6

    if-ne p2, p1, :cond_17

    .line 113
    iget-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodCardView$OnEditorActionListenerImpl;->addPaymentMethodCardView:Lcom/stripe/android/view/AddPaymentMethodCardView;

    invoke-virtual {p1}, Lcom/stripe/android/view/AddPaymentMethodCardView;->getCreateParams()Lcom/stripe/android/model/PaymentMethodCreateParams;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 114
    iget-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodCardView$OnEditorActionListenerImpl;->keyboardController:Lcom/stripe/android/view/KeyboardController;

    invoke-virtual {p1}, Lcom/stripe/android/view/KeyboardController;->hide$stripe_release()V

    .line 116
    :cond_10
    iget-object p1, p0, Lcom/stripe/android/view/AddPaymentMethodCardView$OnEditorActionListenerImpl;->activity:Lcom/stripe/android/view/AddPaymentMethodActivity;

    invoke-virtual {p1}, Lcom/stripe/android/view/AddPaymentMethodActivity;->onActionSave()V

    const/4 p1, 0x1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method
