.class public final Lcom/stripe/android/view/ShippingMethodView;
.super Landroid/widget/RelativeLayout;
.source "ShippingMethodView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u000e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00078\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\u00078\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00078\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/android/view/ShippingMethodView;",
        "Landroid/widget/RelativeLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "colorUtils",
        "Lcom/stripe/android/view/StripeColorUtils;",
        "selectedColorInt",
        "unselectedTextColorPrimaryInt",
        "unselectedTextColorSecondaryInt",
        "viewBinding",
        "Lcom/stripe/android/databinding/ShippingMethodViewBinding;",
        "setSelected",
        "",
        "selected",
        "",
        "setShippingMethod",
        "shippingMethod",
        "Lcom/stripe/android/model/ShippingMethod;",
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
.field private final colorUtils:Lcom/stripe/android/view/StripeColorUtils;

.field private final selectedColorInt:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final unselectedTextColorPrimaryInt:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final unselectedTextColorSecondaryInt:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final viewBinding:Lcom/stripe/android/databinding/ShippingMethodViewBinding;


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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/ShippingMethodView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/ShippingMethodView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
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

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p2, Lcom/stripe/android/view/StripeColorUtils;

    invoke-direct {p2, p1}, Lcom/stripe/android/view/StripeColorUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/stripe/android/view/ShippingMethodView;->colorUtils:Lcom/stripe/android/view/StripeColorUtils;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 35
    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    .line 33
    invoke-static {p2, p3}, Lcom/stripe/android/databinding/ShippingMethodViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/stripe/android/databinding/ShippingMethodViewBinding;

    move-result-object p2

    const-string p3, "ShippingMethodViewBindin\u2026text),\n        this\n    )"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/stripe/android/view/ShippingMethodView;->viewBinding:Lcom/stripe/android/databinding/ShippingMethodViewBinding;

    .line 39
    iget-object p2, p0, Lcom/stripe/android/view/ShippingMethodView;->colorUtils:Lcom/stripe/android/view/StripeColorUtils;

    invoke-virtual {p2}, Lcom/stripe/android/view/StripeColorUtils;->getColorAccent()I

    move-result p2

    .line 40
    iget-object p3, p0, Lcom/stripe/android/view/ShippingMethodView;->colorUtils:Lcom/stripe/android/view/StripeColorUtils;

    invoke-virtual {p3}, Lcom/stripe/android/view/StripeColorUtils;->getTextColorPrimary()I

    move-result p3

    .line 41
    iget-object v0, p0, Lcom/stripe/android/view/ShippingMethodView;->colorUtils:Lcom/stripe/android/view/StripeColorUtils;

    invoke-virtual {v0}, Lcom/stripe/android/view/StripeColorUtils;->getTextColorSecondary()I

    move-result v0

    .line 44
    sget-object v1, Lcom/stripe/android/view/StripeColorUtils;->Companion:Lcom/stripe/android/view/StripeColorUtils$Companion;

    invoke-virtual {v1, p2}, Lcom/stripe/android/view/StripeColorUtils$Companion;->isColorTransparent(I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 45
    sget p2, Lcom/stripe/android/R$color;->stripe_accent_color_default:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 44
    :cond_41
    iput p2, p0, Lcom/stripe/android/view/ShippingMethodView;->selectedColorInt:I

    .line 51
    sget-object p2, Lcom/stripe/android/view/StripeColorUtils;->Companion:Lcom/stripe/android/view/StripeColorUtils$Companion;

    invoke-virtual {p2, p3}, Lcom/stripe/android/view/StripeColorUtils$Companion;->isColorTransparent(I)Z

    move-result p2

    if-eqz p2, :cond_51

    .line 52
    sget p2, Lcom/stripe/android/R$color;->stripe_color_text_unselected_primary_default:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    .line 51
    :cond_51
    iput p3, p0, Lcom/stripe/android/view/ShippingMethodView;->unselectedTextColorPrimaryInt:I

    .line 58
    sget-object p2, Lcom/stripe/android/view/StripeColorUtils;->Companion:Lcom/stripe/android/view/StripeColorUtils$Companion;

    invoke-virtual {p2, v0}, Lcom/stripe/android/view/StripeColorUtils$Companion;->isColorTransparent(I)Z

    move-result p2

    if-eqz p2, :cond_61

    .line 59
    sget p2, Lcom/stripe/android/R$color;->stripe_color_text_unselected_secondary_default:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 58
    :cond_61
    iput v0, p0, Lcom/stripe/android/view/ShippingMethodView;->unselectedTextColorSecondaryInt:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    .line 19
    check-cast p2, Landroid/util/AttributeSet;

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    const/4 p3, 0x0

    .line 20
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/view/ShippingMethodView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setSelected(Z)V
    .registers 4

    const-string v0, "viewBinding.selectedIcon"

    if-eqz p1, :cond_2b

    .line 67
    iget-object p1, p0, Lcom/stripe/android/view/ShippingMethodView;->viewBinding:Lcom/stripe/android/databinding/ShippingMethodViewBinding;

    iget-object p1, p1, Lcom/stripe/android/databinding/ShippingMethodViewBinding;->name:Landroid/widget/TextView;

    iget v1, p0, Lcom/stripe/android/view/ShippingMethodView;->selectedColorInt:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    iget-object p1, p0, Lcom/stripe/android/view/ShippingMethodView;->viewBinding:Lcom/stripe/android/databinding/ShippingMethodViewBinding;

    iget-object p1, p1, Lcom/stripe/android/databinding/ShippingMethodViewBinding;->description:Landroid/widget/TextView;

    iget v1, p0, Lcom/stripe/android/view/ShippingMethodView;->selectedColorInt:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object p1, p0, Lcom/stripe/android/view/ShippingMethodView;->viewBinding:Lcom/stripe/android/databinding/ShippingMethodViewBinding;

    iget-object p1, p1, Lcom/stripe/android/databinding/ShippingMethodViewBinding;->price:Landroid/widget/TextView;

    iget v1, p0, Lcom/stripe/android/view/ShippingMethodView;->selectedColorInt:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object p1, p0, Lcom/stripe/android/view/ShippingMethodView;->viewBinding:Lcom/stripe/android/databinding/ShippingMethodViewBinding;

    iget-object p1, p1, Lcom/stripe/android/databinding/ShippingMethodViewBinding;->selectedIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    goto :goto_51

    .line 72
    :cond_2b
    iget-object p1, p0, Lcom/stripe/android/view/ShippingMethodView;->viewBinding:Lcom/stripe/android/databinding/ShippingMethodViewBinding;

    iget-object p1, p1, Lcom/stripe/android/databinding/ShippingMethodViewBinding;->name:Landroid/widget/TextView;

    iget v1, p0, Lcom/stripe/android/view/ShippingMethodView;->unselectedTextColorPrimaryInt:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object p1, p0, Lcom/stripe/android/view/ShippingMethodView;->viewBinding:Lcom/stripe/android/databinding/ShippingMethodViewBinding;

    iget-object p1, p1, Lcom/stripe/android/databinding/ShippingMethodViewBinding;->description:Landroid/widget/TextView;

    iget v1, p0, Lcom/stripe/android/view/ShippingMethodView;->unselectedTextColorSecondaryInt:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    iget-object p1, p0, Lcom/stripe/android/view/ShippingMethodView;->viewBinding:Lcom/stripe/android/databinding/ShippingMethodViewBinding;

    iget-object p1, p1, Lcom/stripe/android/databinding/ShippingMethodViewBinding;->price:Landroid/widget/TextView;

    iget v1, p0, Lcom/stripe/android/view/ShippingMethodView;->unselectedTextColorPrimaryInt:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object p1, p0, Lcom/stripe/android/view/ShippingMethodView;->viewBinding:Lcom/stripe/android/databinding/ShippingMethodViewBinding;

    iget-object p1, p1, Lcom/stripe/android/databinding/ShippingMethodViewBinding;->selectedIcon:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    :goto_51
    return-void
.end method

.method public final setShippingMethod(Lcom/stripe/android/model/ShippingMethod;)V
    .registers 7
    .param p1    # Lcom/stripe/android/model/ShippingMethod;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shippingMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/stripe/android/view/ShippingMethodView;->viewBinding:Lcom/stripe/android/databinding/ShippingMethodViewBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/ShippingMethodViewBinding;->name:Landroid/widget/TextView;

    const-string v1, "viewBinding.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/stripe/android/model/ShippingMethod;->getLabel()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/stripe/android/view/ShippingMethodView;->viewBinding:Lcom/stripe/android/databinding/ShippingMethodViewBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/ShippingMethodViewBinding;->description:Landroid/widget/TextView;

    const-string v1, "viewBinding.description"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/stripe/android/model/ShippingMethod;->getDetail()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lcom/stripe/android/view/ShippingMethodView;->viewBinding:Lcom/stripe/android/databinding/ShippingMethodViewBinding;

    iget-object v0, v0, Lcom/stripe/android/databinding/ShippingMethodViewBinding;->price:Landroid/widget/TextView;

    const-string v1, "viewBinding.price"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/stripe/android/model/ShippingMethod;->getAmount()J

    move-result-wide v1

    .line 84
    invoke-virtual {p1}, Lcom/stripe/android/model/ShippingMethod;->getCurrency()Ljava/util/Currency;

    move-result-object p1

    .line 85
    invoke-virtual {p0}, Lcom/stripe/android/view/ShippingMethodView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/stripe/android/R$string;->price_free:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "context.getString(R.string.price_free)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-static {v1, v2, p1, v3}, Lcom/stripe/android/view/PaymentUtils;->formatPriceStringUsingFree(JLjava/util/Currency;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
