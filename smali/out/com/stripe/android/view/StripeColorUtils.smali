.class public final Lcom/stripe/android/view/StripeColorUtils;
.super Ljava/lang/Object;
.source "StripeColorUtils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/StripeColorUtils$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J&\u0010\u000f\u001a\u00020\u00102\n\u0010\u0011\u001a\u00060\u0012R\u00020\u00132\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0006J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u0006H\u0002R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008R\u0011\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0008\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/android/view/StripeColorUtils;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "colorAccent",
        "",
        "getColorAccent",
        "()I",
        "colorControlNormal",
        "getColorControlNormal",
        "textColorPrimary",
        "getTextColorPrimary",
        "textColorSecondary",
        "getTextColorSecondary",
        "getTintedIconWithAttribute",
        "Landroid/graphics/drawable/Drawable;",
        "theme",
        "Landroid/content/res/Resources$Theme;",
        "Landroid/content/res/Resources;",
        "attributeResource",
        "iconResourceId",
        "getTypedValue",
        "Landroid/util/TypedValue;",
        "idRes",
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
.field public static final Companion:Lcom/stripe/android/view/StripeColorUtils$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final colorAccent:I

.field private final colorControlNormal:I

.field private final context:Landroid/content/Context;

.field private final textColorPrimary:I

.field private final textColorSecondary:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/view/StripeColorUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/view/StripeColorUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/view/StripeColorUtils;->Companion:Lcom/stripe/android/view/StripeColorUtils$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/view/StripeColorUtils;->context:Landroid/content/Context;

    const p1, 0x1010435

    .line 15
    invoke-direct {p0, p1}, Lcom/stripe/android/view/StripeColorUtils;->getTypedValue(I)Landroid/util/TypedValue;

    move-result-object p1

    iget p1, p1, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/stripe/android/view/StripeColorUtils;->colorAccent:I

    const p1, 0x1010429

    .line 16
    invoke-direct {p0, p1}, Lcom/stripe/android/view/StripeColorUtils;->getTypedValue(I)Landroid/util/TypedValue;

    move-result-object p1

    iget p1, p1, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/stripe/android/view/StripeColorUtils;->colorControlNormal:I

    const p1, 0x1010036

    .line 17
    invoke-direct {p0, p1}, Lcom/stripe/android/view/StripeColorUtils;->getTypedValue(I)Landroid/util/TypedValue;

    move-result-object p1

    iget p1, p1, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/stripe/android/view/StripeColorUtils;->textColorPrimary:I

    const p1, 0x1010038

    .line 18
    invoke-direct {p0, p1}, Lcom/stripe/android/view/StripeColorUtils;->getTypedValue(I)Landroid/util/TypedValue;

    move-result-object p1

    iget p1, p1, Landroid/util/TypedValue;->data:I

    iput p1, p0, Lcom/stripe/android/view/StripeColorUtils;->textColorSecondary:I

    return-void
.end method

.method private final getTypedValue(I)Landroid/util/TypedValue;
    .registers 5
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 20
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 21
    iget-object v1, p0, Lcom/stripe/android/view/StripeColorUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    return-object v0
.end method


# virtual methods
.method public final getColorAccent()I
    .registers 2

    .line 15
    iget v0, p0, Lcom/stripe/android/view/StripeColorUtils;->colorAccent:I

    return v0
.end method

.method public final getColorControlNormal()I
    .registers 2

    .line 16
    iget v0, p0, Lcom/stripe/android/view/StripeColorUtils;->colorControlNormal:I

    return v0
.end method

.method public final getTextColorPrimary()I
    .registers 2

    .line 17
    iget v0, p0, Lcom/stripe/android/view/StripeColorUtils;->textColorPrimary:I

    return v0
.end method

.method public final getTextColorSecondary()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/stripe/android/view/StripeColorUtils;->textColorSecondary:I

    return v0
.end method

.method public final getTintedIconWithAttribute(Landroid/content/res/Resources$Theme;II)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "theme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/4 v1, 0x1

    .line 30
    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 31
    iget p1, v0, Landroid/util/TypedValue;->data:I

    .line 32
    iget-object p2, p0, Lcom/stripe/android/view/StripeColorUtils;->context:Landroid/content/Context;

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 33
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 34
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p3, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    const-string p1, "compatIcon"

    .line 35
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
