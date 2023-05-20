.class public final Lcom/stripe/android/view/MaskedCardView;
.super Landroid/widget/LinearLayout;
.source "MaskedCardView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u000e\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020 J\u0010\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020#H\u0016J\u0008\u0010$\u001a\u00020\u001bH\u0002J\u0008\u0010%\u001a\u00020\u001bH\u0002J\u0008\u0010&\u001a\u00020\u001bH\u0002R\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\t\u001a\u0004\u0018\u00010\u00108G@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u0017X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/android/view/MaskedCardView;",
        "Landroid/widget/LinearLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyle",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "<set-?>",
        "Lcom/stripe/android/model/CardBrand;",
        "cardBrand",
        "getCardBrand",
        "()Lcom/stripe/android/model/CardBrand;",
        "cardDisplayFactory",
        "Lcom/stripe/android/view/CardDisplayTextFactory;",
        "",
        "last4",
        "getLast4",
        "()Ljava/lang/String;",
        "themeConfig",
        "Lcom/stripe/android/view/ThemeConfig;",
        "viewBinding",
        "Lcom/stripe/android/databinding/MaskedCardViewBinding;",
        "getViewBinding$stripe_release",
        "()Lcom/stripe/android/databinding/MaskedCardViewBinding;",
        "applyTint",
        "",
        "imageView",
        "Landroid/widget/ImageView;",
        "setPaymentMethod",
        "paymentMethod",
        "Lcom/stripe/android/model/PaymentMethod;",
        "setSelected",
        "selected",
        "",
        "updateBrandIcon",
        "updateCheckMark",
        "updateUi",
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
.field private cardBrand:Lcom/stripe/android/model/CardBrand;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cardDisplayFactory:Lcom/stripe/android/view/CardDisplayTextFactory;

.field private last4:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final themeConfig:Lcom/stripe/android/view/ThemeConfig;

.field private final viewBinding:Lcom/stripe/android/databinding/MaskedCardViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/MaskedCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/MaskedCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    sget-object p2, Lcom/stripe/android/model/CardBrand;->Unknown:Lcom/stripe/android/model/CardBrand;

    iput-object p2, p0, Lcom/stripe/android/view/MaskedCardView;->cardBrand:Lcom/stripe/android/model/CardBrand;

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 39
    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    .line 37
    invoke-static {p2, p3}, Lcom/stripe/android/databinding/MaskedCardViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/stripe/android/databinding/MaskedCardViewBinding;

    move-result-object p2

    const-string p3, "MaskedCardViewBinding.in\u2026text),\n        this\n    )"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/stripe/android/view/MaskedCardView;->viewBinding:Lcom/stripe/android/databinding/MaskedCardViewBinding;

    .line 41
    new-instance p2, Lcom/stripe/android/view/ThemeConfig;

    invoke-direct {p2, p1}, Lcom/stripe/android/view/ThemeConfig;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/stripe/android/view/MaskedCardView;->themeConfig:Lcom/stripe/android/view/ThemeConfig;

    .line 42
    new-instance p1, Lcom/stripe/android/view/CardDisplayTextFactory;

    invoke-virtual {p0}, Lcom/stripe/android/view/MaskedCardView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string p3, "resources"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/stripe/android/view/MaskedCardView;->themeConfig:Lcom/stripe/android/view/ThemeConfig;

    invoke-direct {p1, p2, p3}, Lcom/stripe/android/view/CardDisplayTextFactory;-><init>(Landroid/content/res/Resources;Lcom/stripe/android/view/ThemeConfig;)V

    iput-object p1, p0, Lcom/stripe/android/view/MaskedCardView;->cardDisplayFactory:Lcom/stripe/android/view/CardDisplayTextFactory;

    .line 45
    iget-object p1, p0, Lcom/stripe/android/view/MaskedCardView;->viewBinding:Lcom/stripe/android/databinding/MaskedCardViewBinding;

    iget-object p1, p1, Lcom/stripe/android/databinding/MaskedCardViewBinding;->brandIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p2, "viewBinding.brandIcon"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/stripe/android/view/MaskedCardView;->applyTint(Landroid/widget/ImageView;)V

    .line 46
    iget-object p1, p0, Lcom/stripe/android/view/MaskedCardView;->viewBinding:Lcom/stripe/android/databinding/MaskedCardViewBinding;

    iget-object p1, p1, Lcom/stripe/android/databinding/MaskedCardViewBinding;->checkIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p2, "viewBinding.checkIcon"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/stripe/android/view/MaskedCardView;->applyTint(Landroid/widget/ImageView;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    .line 26
    check-cast p2, Landroid/util/AttributeSet;

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    const/4 p3, 0x0

    .line 27
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/view/MaskedCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final applyTint(Landroid/widget/ImageView;)V
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/stripe/android/view/MaskedCardView;->themeConfig:Lcom/stripe/android/view/ThemeConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/ThemeConfig;->getTintColor$stripe_release(Z)I

    move-result v0

    .line 52
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 50
    invoke-static {p1, v0}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private final updateBrandIcon()V
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/stripe/android/view/MaskedCardView;->viewBinding:Lcom/stripe/android/databinding/MaskedCardViewBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/MaskedCardViewBinding;->brandIcon:Landroidx/appcompat/widget/AppCompatImageView;

    .line 78
    invoke-virtual {p0}, Lcom/stripe/android/view/MaskedCardView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/stripe/android/view/MaskedCardView;->cardBrand:Lcom/stripe/android/model/CardBrand;

    sget-object v3, Lcom/stripe/android/view/MaskedCardView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/stripe/android/model/CardBrand;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_3a

    .line 87
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_1b
    sget v2, Lcom/stripe/android/R$drawable;->stripe_ic_unknown:I

    goto :goto_32

    .line 86
    :pswitch_1e
    sget v2, Lcom/stripe/android/R$drawable;->stripe_ic_unionpay_template_32:I

    goto :goto_32

    .line 85
    :pswitch_21
    sget v2, Lcom/stripe/android/R$drawable;->stripe_ic_mastercard_template_32:I

    goto :goto_32

    .line 84
    :pswitch_24
    sget v2, Lcom/stripe/android/R$drawable;->stripe_ic_visa_template_32:I

    goto :goto_32

    .line 83
    :pswitch_27
    sget v2, Lcom/stripe/android/R$drawable;->stripe_ic_diners_template_32:I

    goto :goto_32

    .line 82
    :pswitch_2a
    sget v2, Lcom/stripe/android/R$drawable;->stripe_ic_jcb_template_32:I

    goto :goto_32

    .line 81
    :pswitch_2d
    sget v2, Lcom/stripe/android/R$drawable;->stripe_ic_discover_template_32:I

    goto :goto_32

    .line 80
    :pswitch_30
    sget v2, Lcom/stripe/android/R$drawable;->stripe_ic_amex_template_32:I

    .line 77
    :goto_32
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
    .end packed-switch
.end method

.method private final updateCheckMark()V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/stripe/android/view/MaskedCardView;->viewBinding:Lcom/stripe/android/databinding/MaskedCardViewBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/MaskedCardViewBinding;->checkIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "viewBinding.checkIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stripe/android/view/MaskedCardView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    const/4 v1, 0x4

    :goto_12
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method

.method private final updateUi()V
    .registers 6

    .line 71
    invoke-direct {p0}, Lcom/stripe/android/view/MaskedCardView;->updateBrandIcon()V

    .line 72
    iget-object v0, p0, Lcom/stripe/android/view/MaskedCardView;->viewBinding:Lcom/stripe/android/databinding/MaskedCardViewBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/MaskedCardViewBinding;->details:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "viewBinding.details"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/android/view/MaskedCardView;->cardDisplayFactory:Lcom/stripe/android/view/CardDisplayTextFactory;

    iget-object v2, p0, Lcom/stripe/android/view/MaskedCardView;->cardBrand:Lcom/stripe/android/model/CardBrand;

    iget-object v3, p0, Lcom/stripe/android/view/MaskedCardView;->last4:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/stripe/android/view/MaskedCardView;->isSelected()Z

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/stripe/android/view/CardDisplayTextFactory;->createStyled$stripe_release(Lcom/stripe/android/model/CardBrand;Ljava/lang/String;Z)Landroid/text/SpannableString;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final getCardBrand()Lcom/stripe/android/model/CardBrand;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/stripe/android/view/MaskedCardView;->cardBrand:Lcom/stripe/android/model/CardBrand;

    return-object v0
.end method

.method public final getLast4()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/stripe/android/view/MaskedCardView;->last4:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewBinding$stripe_release()Lcom/stripe/android/databinding/MaskedCardViewBinding;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/stripe/android/view/MaskedCardView;->viewBinding:Lcom/stripe/android/databinding/MaskedCardViewBinding;

    return-object v0
.end method

.method public final setPaymentMethod(Lcom/stripe/android/model/PaymentMethod;)V
    .registers 3
    .param p1    # Lcom/stripe/android/model/PaymentMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "paymentMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p1, Lcom/stripe/android/model/PaymentMethod;->card:Lcom/stripe/android/model/PaymentMethod$Card;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/stripe/android/model/PaymentMethod$Card;->brand:Lcom/stripe/android/model/CardBrand;

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    sget-object v0, Lcom/stripe/android/model/CardBrand;->Unknown:Lcom/stripe/android/model/CardBrand;

    :goto_10
    iput-object v0, p0, Lcom/stripe/android/view/MaskedCardView;->cardBrand:Lcom/stripe/android/model/CardBrand;

    .line 66
    iget-object p1, p1, Lcom/stripe/android/model/PaymentMethod;->card:Lcom/stripe/android/model/PaymentMethod$Card;

    if-eqz p1, :cond_19

    iget-object p1, p1, Lcom/stripe/android/model/PaymentMethod$Card;->last4:Ljava/lang/String;

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    iput-object p1, p0, Lcom/stripe/android/view/MaskedCardView;->last4:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/stripe/android/view/MaskedCardView;->updateUi()V

    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    .line 59
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 60
    invoke-direct {p0}, Lcom/stripe/android/view/MaskedCardView;->updateCheckMark()V

    .line 61
    invoke-direct {p0}, Lcom/stripe/android/view/MaskedCardView;->updateUi()V

    return-void
.end method
