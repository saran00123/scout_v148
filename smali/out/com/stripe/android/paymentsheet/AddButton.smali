.class public final Lcom/stripe/android/paymentsheet/AddButton;
.super Landroid/widget/FrameLayout;
.source "AddButton.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/paymentsheet/AddButton$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddButton.kt\ncom/stripe/android/paymentsheet/AddButton\n+ 2 Transformations.kt\nandroidx/lifecycle/TransformationsKt\n*L\n1#1,109:1\n87#2:110\n*E\n*S KotlinDebug\n*F\n+ 1 AddButton.kt\ncom/stripe/android/paymentsheet/AddButton\n*L\n33#1:110\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 $2\u00020\u0001:\u0001$B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\rH\u0002J\u000e\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\rJ\u0006\u0010\u001d\u001a\u00020\u001aJ\u0006\u0010\u001e\u001a\u00020\u001aJ\u0010\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020!H\u0016J\u000e\u0010\"\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020#R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\u000b\u001a\u0010\u0012\u000c\u0012\n \u000e*\u0004\u0018\u00010\r0\r0\u000cX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u0016X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006%"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/AddButton;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "animator",
        "Lcom/stripe/android/paymentsheet/ui/PrimaryButtonAnimator;",
        "completedAnimation",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Completed;",
        "kotlin.jvm.PlatformType",
        "getCompletedAnimation$stripe_release",
        "()Landroidx/lifecycle/LiveData;",
        "confirmedIcon",
        "Landroid/widget/ImageView;",
        "mutableCompletedAnimation",
        "Landroidx/lifecycle/MutableLiveData;",
        "viewBinding",
        "Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;",
        "getViewBinding$stripe_release",
        "()Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;",
        "animateConfirmedIcon",
        "",
        "state",
        "onCompletedState",
        "onProcessingState",
        "onReadyState",
        "setEnabled",
        "enabled",
        "",
        "updateState",
        "Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState;",
        "Companion",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final ALPHA_DISABLED:F = 0.5f

.field private static final ALPHA_ENABLED:F = 1.0f

.field private static final Companion:Lcom/stripe/android/paymentsheet/AddButton$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final animator:Lcom/stripe/android/paymentsheet/ui/PrimaryButtonAnimator;

.field private final completedAnimation:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Completed;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final confirmedIcon:Landroid/widget/ImageView;

.field private final mutableCompletedAnimation:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Completed;",
            ">;"
        }
    .end annotation
.end field

.field private final viewBinding:Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/paymentsheet/AddButton$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/paymentsheet/AddButton$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/paymentsheet/AddButton;->Companion:Lcom/stripe/android/paymentsheet/AddButton$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/paymentsheet/AddButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/paymentsheet/AddButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance p2, Lcom/stripe/android/paymentsheet/ui/PrimaryButtonAnimator;

    invoke-direct {p2, p1}, Lcom/stripe/android/paymentsheet/ui/PrimaryButtonAnimator;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/stripe/android/paymentsheet/AddButton;->animator:Lcom/stripe/android/paymentsheet/ui/PrimaryButtonAnimator;

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 27
    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    .line 25
    invoke-static {p1, p2}, Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;

    move-result-object p1

    const-string p2, "PaymentSheetBuyButtonBin\u2026text),\n        this\n    )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/AddButton;->viewBinding:Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;

    .line 30
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/AddButton;->viewBinding:Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;

    iget-object p1, p1, Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;->confirmedIcon:Landroid/widget/ImageView;

    const-string p2, "viewBinding.confirmedIcon"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/AddButton;->confirmedIcon:Landroid/widget/ImageView;

    .line 32
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/AddButton;->mutableCompletedAnimation:Landroidx/lifecycle/MutableLiveData;

    .line 33
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/AddButton;->mutableCompletedAnimation:Landroidx/lifecycle/MutableLiveData;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 110
    invoke-static {p1}, Landroidx/lifecycle/Transformations;->distinctUntilChanged(Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    const-string p2, "Transformations.distinctUntilChanged(this)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/AddButton;->completedAnimation:Landroidx/lifecycle/LiveData;

    .line 36
    sget p1, Lcom/stripe/android/R$drawable;->stripe_paymentsheet_buy_button_default_background:I

    invoke-virtual {p0, p1}, Lcom/stripe/android/paymentsheet/AddButton;->setBackgroundResource(I)V

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Lcom/stripe/android/paymentsheet/AddButton;->setClickable(Z)V

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Lcom/stripe/android/paymentsheet/AddButton;->setEnabled(Z)V

    .line 41
    iget-object p1, p0, Lcom/stripe/android/paymentsheet/AddButton;->viewBinding:Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;

    iget-object p1, p1, Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;->label:Landroid/widget/TextView;

    const-string p2, "viewBinding.label"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/AddButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 42
    sget p3, Lcom/stripe/android/R$string;->stripe_paymentsheet_add_button_label:I

    .line 41
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    .line 20
    check-cast p2, Landroid/util/AttributeSet;

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    const/4 p3, 0x0

    .line 21
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/paymentsheet/AddButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getMutableCompletedAnimation$p(Lcom/stripe/android/paymentsheet/AddButton;)Landroidx/lifecycle/MutableLiveData;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/stripe/android/paymentsheet/AddButton;->mutableCompletedAnimation:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private final animateConfirmedIcon(Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Completed;)V
    .registers 6

    .line 69
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/AddButton;->animator:Lcom/stripe/android/paymentsheet/ui/PrimaryButtonAnimator;

    iget-object v1, p0, Lcom/stripe/android/paymentsheet/AddButton;->confirmedIcon:Landroid/widget/ImageView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/AddButton;->getWidth()I

    move-result v2

    new-instance v3, Lcom/stripe/android/paymentsheet/AddButton$animateConfirmedIcon$1;

    invoke-direct {v3, p0, p1}, Lcom/stripe/android/paymentsheet/AddButton$animateConfirmedIcon$1;-><init>(Lcom/stripe/android/paymentsheet/AddButton;Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Completed;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2, v3}, Lcom/stripe/android/paymentsheet/ui/PrimaryButtonAnimator;->fadeIn$stripe_release(Landroid/view/View;ILkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final getCompletedAnimation$stripe_release()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Completed;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/AddButton;->completedAnimation:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getViewBinding$stripe_release()Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/AddButton;->viewBinding:Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;

    return-object v0
.end method

.method public final onCompletedState(Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Completed;)V
    .registers 5
    .param p1    # Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Completed;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget v0, Lcom/stripe/android/R$drawable;->stripe_paymentsheet_buy_button_confirmed_background:I

    invoke-virtual {p0, v0}, Lcom/stripe/android/paymentsheet/AddButton;->setBackgroundResource(I)V

    .line 62
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/AddButton;->animator:Lcom/stripe/android/paymentsheet/ui/PrimaryButtonAnimator;

    iget-object v1, p0, Lcom/stripe/android/paymentsheet/AddButton;->viewBinding:Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;

    iget-object v1, v1, Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;->label:Landroid/widget/TextView;

    const-string v2, "viewBinding.label"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/stripe/android/paymentsheet/ui/PrimaryButtonAnimator;->fadeOut$stripe_release(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/AddButton;->animator:Lcom/stripe/android/paymentsheet/ui/PrimaryButtonAnimator;

    iget-object v1, p0, Lcom/stripe/android/paymentsheet/AddButton;->viewBinding:Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;

    iget-object v1, v1, Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;->confirmingIcon:Landroid/widget/ProgressBar;

    const-string v2, "viewBinding.confirmingIcon"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/stripe/android/paymentsheet/ui/PrimaryButtonAnimator;->fadeOut$stripe_release(Landroid/view/View;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/stripe/android/paymentsheet/AddButton;->animateConfirmedIcon(Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Completed;)V

    return-void
.end method

.method public final onProcessingState()V
    .registers 4

    .line 51
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/AddButton;->viewBinding:Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;->lockIcon:Landroid/widget/ImageView;

    const-string v1, "viewBinding.lockIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/AddButton;->viewBinding:Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;->confirmingIcon:Landroid/widget/ProgressBar;

    const-string v1, "viewBinding.confirmingIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/AddButton;->viewBinding:Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;->label:Landroid/widget/TextView;

    const-string v1, "viewBinding.label"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/AddButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 55
    sget v2, Lcom/stripe/android/R$string;->stripe_paymentsheet_pay_button_processing:I

    .line 54
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onReadyState()V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/AddButton;->viewBinding:Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;->confirmingIcon:Landroid/widget/ProgressBar;

    const-string v1, "viewBinding.confirmingIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    .line 75
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 77
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/AddButton;->viewBinding:Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;->label:Landroid/widget/TextView;

    const-string v1, "viewBinding.label"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_11

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_13

    :cond_11
    const/high16 v1, 0x3f000000    # 0.5f

    :goto_13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 83
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/AddButton;->viewBinding:Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/PaymentSheetBuyButtonBinding;->lockIcon:Landroid/widget/ImageView;

    const-string v1, "viewBinding.lockIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_23

    const/4 p1, 0x0

    goto :goto_25

    :cond_23
    const/16 p1, 0x8

    :goto_25
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final updateState(Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState;)V
    .registers 3
    .param p1    # Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Ready;->INSTANCE:Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Ready;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 93
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/AddButton;->onReadyState()V

    goto :goto_26

    .line 95
    :cond_11
    sget-object v0, Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Processing;->INSTANCE:Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Processing;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 96
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/AddButton;->onProcessingState()V

    goto :goto_26

    .line 98
    :cond_1d
    instance-of v0, p1, Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Completed;

    if-eqz v0, :cond_26

    .line 99
    check-cast p1, Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Completed;

    invoke-virtual {p0, p1}, Lcom/stripe/android/paymentsheet/AddButton;->onCompletedState(Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Completed;)V

    :cond_26
    :goto_26
    return-void
.end method
