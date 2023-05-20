.class public final Lcom/stripe/android/view/AddPaymentMethodRowView;
.super Landroid/widget/FrameLayout;
.source "AddPaymentMethodRowView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/AddPaymentMethodRowView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB+\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\u000c\u001a\u00020\rH\u0014R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/android/view/AddPaymentMethodRowView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "idRes",
        "",
        "labelRes",
        "args",
        "Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;",
        "(Landroid/content/Context;IILcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;)V",
        "viewBinding",
        "Lcom/stripe/android/databinding/AddPaymentMethodRowBinding;",
        "onAttachedToWindow",
        "",
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
.field public static final Companion:Lcom/stripe/android/view/AddPaymentMethodRowView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final args:Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;

.field private final labelRes:I

.field private final viewBinding:Lcom/stripe/android/databinding/AddPaymentMethodRowBinding;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/view/AddPaymentMethodRowView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/view/AddPaymentMethodRowView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/view/AddPaymentMethodRowView;->Companion:Lcom/stripe/android/view/AddPaymentMethodRowView$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IILcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;)V
    .registers 6
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput p3, p0, Lcom/stripe/android/view/AddPaymentMethodRowView;->labelRes:I

    iput-object p4, p0, Lcom/stripe/android/view/AddPaymentMethodRowView;->args:Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 24
    move-object p4, p0

    check-cast p4, Landroid/view/ViewGroup;

    const/4 v0, 0x1

    .line 22
    invoke-static {p3, p4, v0}, Lcom/stripe/android/databinding/AddPaymentMethodRowBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/stripe/android/databinding/AddPaymentMethodRowBinding;

    move-result-object p3

    const-string p4, "AddPaymentMethodRowBindi\u2026 this,\n        true\n    )"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/stripe/android/view/AddPaymentMethodRowView;->viewBinding:Lcom/stripe/android/databinding/AddPaymentMethodRowBinding;

    .line 29
    invoke-virtual {p0, p2}, Lcom/stripe/android/view/AddPaymentMethodRowView;->setId(I)V

    .line 30
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    const/4 p4, -0x2

    invoke-direct {p2, p3, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2}, Lcom/stripe/android/view/AddPaymentMethodRowView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/stripe/android/view/AddPaymentMethodRowView;->setFocusable(Z)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/stripe/android/view/AddPaymentMethodRowView;->setClickable(Z)V

    .line 35
    iget p2, p0, Lcom/stripe/android/view/AddPaymentMethodRowView;->labelRes:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/AddPaymentMethodRowView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IILcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/android/view/AddPaymentMethodRowView;-><init>(Landroid/content/Context;IILcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;)V

    return-void
.end method

.method public static final synthetic access$getArgs$p(Lcom/stripe/android/view/AddPaymentMethodRowView;)Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/stripe/android/view/AddPaymentMethodRowView;->args:Lcom/stripe/android/view/AddPaymentMethodActivityStarter$Args;

    return-object p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 3

    .line 39
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 40
    iget-object v0, p0, Lcom/stripe/android/view/AddPaymentMethodRowView;->viewBinding:Lcom/stripe/android/databinding/AddPaymentMethodRowBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/AddPaymentMethodRowBinding;->label:Landroidx/appcompat/widget/AppCompatTextView;

    iget v1, p0, Lcom/stripe/android/view/AddPaymentMethodRowView;->labelRes:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 42
    invoke-virtual {p0}, Lcom/stripe/android/view/AddPaymentMethodRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_15

    const/4 v0, 0x0

    :cond_15
    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_23

    .line 43
    new-instance v1, Lcom/stripe/android/view/AddPaymentMethodRowView$onAttachedToWindow$$inlined$let$lambda$1;

    invoke-direct {v1, v0, p0}, Lcom/stripe/android/view/AddPaymentMethodRowView$onAttachedToWindow$$inlined$let$lambda$1;-><init>(Landroid/app/Activity;Lcom/stripe/android/view/AddPaymentMethodRowView;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/stripe/android/view/AddPaymentMethodRowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_23
    return-void
.end method
