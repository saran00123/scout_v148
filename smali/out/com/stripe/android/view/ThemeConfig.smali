.class public final Lcom/stripe/android/view/ThemeConfig;
.super Ljava/lang/Object;
.source "ThemeConfig.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J$\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u00082\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u0008H\u0003J\u0015\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0016H\u0001\u00a2\u0006\u0002\u0008\u0017J\u0015\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0016H\u0001\u00a2\u0006\u0002\u0008\u0019J\u0015\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u0016H\u0001\u00a2\u0006\u0002\u0008\u001bR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00088\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0010\u0010\u000e\u001a\u00020\u00088\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00088\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00088\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/android/view/ThemeConfig;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "colorUtils",
        "Lcom/stripe/android/view/StripeColorUtils;",
        "selectedColorInt",
        "",
        "selectedTextAlphaColorInt",
        "textColorValues",
        "",
        "getTextColorValues$stripe_release",
        "()[I",
        "unselectedColorInt",
        "unselectedTextAlphaColorInt",
        "unselectedTextColorInt",
        "determineColor",
        "defaultColor",
        "colorIfTransparent",
        "getTextAlphaColor",
        "isSelected",
        "",
        "getTextAlphaColor$stripe_release",
        "getTextColor",
        "getTextColor$stripe_release",
        "getTintColor",
        "getTintColor$stripe_release",
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

.field private final selectedTextAlphaColorInt:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final textColorValues:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final unselectedColorInt:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final unselectedTextAlphaColorInt:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final unselectedTextColorInt:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/stripe/android/view/StripeColorUtils;

    invoke-direct {v0, p1}, Lcom/stripe/android/view/StripeColorUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/stripe/android/view/ThemeConfig;->colorUtils:Lcom/stripe/android/view/StripeColorUtils;

    .line 16
    iget-object v0, p0, Lcom/stripe/android/view/ThemeConfig;->colorUtils:Lcom/stripe/android/view/StripeColorUtils;

    invoke-virtual {v0}, Lcom/stripe/android/view/StripeColorUtils;->getColorAccent()I

    move-result v0

    .line 17
    sget v1, Lcom/stripe/android/R$color;->stripe_accent_color_default:I

    .line 14
    invoke-direct {p0, p1, v0, v1}, Lcom/stripe/android/view/ThemeConfig;->determineColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/stripe/android/view/ThemeConfig;->selectedColorInt:I

    .line 23
    iget-object v0, p0, Lcom/stripe/android/view/ThemeConfig;->colorUtils:Lcom/stripe/android/view/StripeColorUtils;

    invoke-virtual {v0}, Lcom/stripe/android/view/StripeColorUtils;->getColorControlNormal()I

    move-result v0

    .line 24
    sget v1, Lcom/stripe/android/R$color;->stripe_control_normal_color_default:I

    .line 21
    invoke-direct {p0, p1, v0, v1}, Lcom/stripe/android/view/ThemeConfig;->determineColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/stripe/android/view/ThemeConfig;->unselectedColorInt:I

    .line 30
    iget-object v0, p0, Lcom/stripe/android/view/ThemeConfig;->colorUtils:Lcom/stripe/android/view/StripeColorUtils;

    invoke-virtual {v0}, Lcom/stripe/android/view/StripeColorUtils;->getTextColorSecondary()I

    move-result v0

    .line 31
    sget v1, Lcom/stripe/android/R$color;->stripe_color_text_secondary_default:I

    .line 28
    invoke-direct {p0, p1, v0, v1}, Lcom/stripe/android/view/ThemeConfig;->determineColor(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/stripe/android/view/ThemeConfig;->unselectedTextColorInt:I

    .line 36
    iget v0, p0, Lcom/stripe/android/view/ThemeConfig;->selectedColorInt:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/stripe/android/R$integer;->stripe_light_text_alpha_hex:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 35
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Lcom/stripe/android/view/ThemeConfig;->selectedTextAlphaColorInt:I

    .line 42
    iget v0, p0, Lcom/stripe/android/view/ThemeConfig;->unselectedTextColorInt:I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/stripe/android/R$integer;->stripe_light_text_alpha_hex:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 41
    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Lcom/stripe/android/view/ThemeConfig;->unselectedTextAlphaColorInt:I

    const/4 p1, 0x4

    .line 46
    new-array p1, p1, [I

    .line 47
    iget v0, p0, Lcom/stripe/android/view/ThemeConfig;->selectedColorInt:I

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 48
    iget v0, p0, Lcom/stripe/android/view/ThemeConfig;->selectedTextAlphaColorInt:I

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 49
    iget v0, p0, Lcom/stripe/android/view/ThemeConfig;->unselectedTextColorInt:I

    const/4 v1, 0x2

    aput v0, p1, v1

    .line 50
    iget v0, p0, Lcom/stripe/android/view/ThemeConfig;->unselectedTextAlphaColorInt:I

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 46
    iput-object p1, p0, Lcom/stripe/android/view/ThemeConfig;->textColorValues:[I

    return-void
.end method

.method private final determineColor(Landroid/content/Context;II)I
    .registers 5
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 74
    sget-object v0, Lcom/stripe/android/view/StripeColorUtils;->Companion:Lcom/stripe/android/view/StripeColorUtils$Companion;

    invoke-virtual {v0, p2}, Lcom/stripe/android/view/StripeColorUtils$Companion;->isColorTransparent(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 75
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    :cond_c
    return p2
.end method


# virtual methods
.method public final getTextAlphaColor$stripe_release(Z)I
    .registers 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    if-eqz p1, :cond_5

    .line 65
    iget p1, p0, Lcom/stripe/android/view/ThemeConfig;->selectedTextAlphaColorInt:I

    goto :goto_7

    :cond_5
    iget p1, p0, Lcom/stripe/android/view/ThemeConfig;->unselectedTextAlphaColorInt:I

    :goto_7
    return p1
.end method

.method public final getTextColor$stripe_release(Z)I
    .registers 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    if-eqz p1, :cond_5

    .line 60
    iget p1, p0, Lcom/stripe/android/view/ThemeConfig;->selectedColorInt:I

    goto :goto_7

    :cond_5
    iget p1, p0, Lcom/stripe/android/view/ThemeConfig;->unselectedTextColorInt:I

    :goto_7
    return p1
.end method

.method public final getTextColorValues$stripe_release()[I
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/stripe/android/view/ThemeConfig;->textColorValues:[I

    return-object v0
.end method

.method public final getTintColor$stripe_release(Z)I
    .registers 2
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    if-eqz p1, :cond_5

    .line 55
    iget p1, p0, Lcom/stripe/android/view/ThemeConfig;->selectedColorInt:I

    goto :goto_7

    :cond_5
    iget p1, p0, Lcom/stripe/android/view/ThemeConfig;->unselectedColorInt:I

    :goto_7
    return p1
.end method
