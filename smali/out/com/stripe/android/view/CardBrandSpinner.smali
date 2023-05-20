.class public final Lcom/stripe/android/view/CardBrandSpinner;
.super Landroidx/appcompat/widget/AppCompatSpinner;
.source "CardBrandSpinner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/CardBrandSpinner$Adapter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0018B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0011\u001a\u00020\u0012H\u0014J\u0014\u0010\u0013\u001a\u00020\u00122\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0015J\u0010\u0010\u0016\u001a\u00020\u00122\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u0007R\u0013\u0010\t\u001a\u0004\u0018\u00010\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/android/view/CardBrandSpinner;",
        "Landroidx/appcompat/widget/AppCompatSpinner;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "cardBrand",
        "Lcom/stripe/android/model/CardBrand;",
        "getCardBrand",
        "()Lcom/stripe/android/model/CardBrand;",
        "cardBrandsAdapter",
        "Lcom/stripe/android/view/CardBrandSpinner$Adapter;",
        "defaultBackground",
        "Landroid/graphics/drawable/Drawable;",
        "onFinishInflate",
        "",
        "setCardBrands",
        "cardBrands",
        "",
        "setTintColor",
        "tintColor",
        "Adapter",
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
.field private final cardBrandsAdapter:Lcom/stripe/android/view/CardBrandSpinner$Adapter;

.field private defaultBackground:Landroid/graphics/drawable/Drawable;


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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/CardBrandSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/CardBrandSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    const/4 v0, 0x1

    .line 23
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 24
    new-instance p2, Lcom/stripe/android/view/CardBrandSpinner$Adapter;

    invoke-direct {p2, p1}, Lcom/stripe/android/view/CardBrandSpinner$Adapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/stripe/android/view/CardBrandSpinner;->cardBrandsAdapter:Lcom/stripe/android/view/CardBrandSpinner$Adapter;

    .line 28
    iget-object p1, p0, Lcom/stripe/android/view/CardBrandSpinner;->cardBrandsAdapter:Lcom/stripe/android/view/CardBrandSpinner$Adapter;

    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/CardBrandSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 29
    invoke-virtual {p0}, Lcom/stripe/android/view/CardBrandSpinner;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/stripe/android/R$dimen;->card_brand_spinner_dropdown_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/CardBrandSpinner;->setDropDownWidth(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    .line 21
    check-cast p2, Landroid/util/AttributeSet;

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_d

    .line 22
    sget p3, Landroidx/appcompat/R$attr;->spinnerStyle:I

    :cond_d
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/view/CardBrandSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final getCardBrand()Lcom/stripe/android/model/CardBrand;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/stripe/android/view/CardBrandSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/model/CardBrand;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 38
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSpinner;->onFinishInflate()V

    .line 40
    invoke-virtual {p0}, Lcom/stripe/android/view/CardBrandSpinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/android/view/CardBrandSpinner;->defaultBackground:Landroid/graphics/drawable/Drawable;

    .line 43
    sget-object v0, Lcom/stripe/android/model/CardBrand;->Unknown:Lcom/stripe/android/model/CardBrand;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/stripe/android/view/CardBrandSpinner;->setCardBrands(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic setCardBrands(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/android/model/CardBrand;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cardBrands"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/stripe/android/view/CardBrandSpinner;->cardBrandsAdapter:Lcom/stripe/android/view/CardBrandSpinner$Adapter;

    invoke-virtual {v0}, Lcom/stripe/android/view/CardBrandSpinner$Adapter;->clear()V

    .line 54
    iget-object v0, p0, Lcom/stripe/android/view/CardBrandSpinner;->cardBrandsAdapter:Lcom/stripe/android/view/CardBrandSpinner$Adapter;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/stripe/android/view/CardBrandSpinner$Adapter;->addAll(Ljava/util/Collection;)V

    .line 55
    iget-object v0, p0, Lcom/stripe/android/view/CardBrandSpinner;->cardBrandsAdapter:Lcom/stripe/android/view/CardBrandSpinner$Adapter;

    invoke-virtual {v0}, Lcom/stripe/android/view/CardBrandSpinner$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Lcom/stripe/android/view/CardBrandSpinner;->setSelection(I)V

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2e

    .line 60
    invoke-virtual {p0, v1}, Lcom/stripe/android/view/CardBrandSpinner;->setClickable(Z)V

    .line 61
    invoke-virtual {p0, v1}, Lcom/stripe/android/view/CardBrandSpinner;->setEnabled(Z)V

    .line 62
    iget-object p1, p0, Lcom/stripe/android/view/CardBrandSpinner;->defaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/CardBrandSpinner;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_42

    .line 64
    :cond_2e
    invoke-virtual {p0, v0}, Lcom/stripe/android/view/CardBrandSpinner;->setClickable(Z)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/stripe/android/view/CardBrandSpinner;->setEnabled(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/stripe/android/view/CardBrandSpinner;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x106000d

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/stripe/android/view/CardBrandSpinner;->setBackgroundColor(I)V

    :goto_42
    return-void
.end method

.method public final setTintColor(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 48
    iget-object v0, p0, Lcom/stripe/android/view/CardBrandSpinner;->cardBrandsAdapter:Lcom/stripe/android/view/CardBrandSpinner$Adapter;

    invoke-virtual {v0, p1}, Lcom/stripe/android/view/CardBrandSpinner$Adapter;->setTintColor$stripe_release(I)V

    return-void
.end method
