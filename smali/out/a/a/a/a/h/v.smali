.class public final La/a/a/a/h/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/a/a/h/v$a;
    }
.end annotation


# static fields
.field public static final b:La/a/a/a/h/v$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Landroidx/appcompat/app/AppCompatActivity;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, La/a/a/a/h/v$a;

    .line 1
    invoke-direct {v0}, La/a/a/a/h/v$a;-><init>()V

    .line 2
    sput-object v0, La/a/a/a/h/v;->b:La/a/a/a/h/v$a;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .registers 3
    .param p1    # Landroidx/appcompat/app/AppCompatActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/a/h/v;->a:Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;)Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;
    .registers 11
    .param p1    # Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, La/a/a/a/h/v;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_e2

    const-string v1, "activity.supportActionBar ?: return null"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroidx/appcompat/view/ContextThemeWrapper;

    iget-object v1, p0, La/a/a/a/h/v;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lcom/stripe/android/stripe3ds2/R$style;->Stripe3DS2ActionBarButton:I

    invoke-direct {v3, v1, v2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, p2}, Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;->setButtonCustomization(Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;)V

    new-instance p2, Landroidx/appcompat/app/ActionBar$LayoutParams;

    const v3, 0x800015

    const/4 v4, -0x2

    invoke-direct {p2, v4, v4, v3}, Landroidx/appcompat/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, p2}, Landroidx/appcompat/app/ActionBar;->setCustomView(Landroid/view/View;Landroidx/appcompat/app/ActionBar$LayoutParams;)V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    if-eqz p1, :cond_d7

    invoke-interface {p1}, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;->getButtonText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4a

    goto :goto_4c

    :cond_4a
    move v3, v2

    goto :goto_4d

    :cond_4c
    :goto_4c
    move v3, p2

    :goto_4d
    if-nez v3, :cond_57

    invoke-interface {p1}, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;->getButtonText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5c

    :cond_57
    sget v3, Lcom/stripe/android/stripe3ds2/R$string;->stripe_3ds2_hzv_cancel_label:I

    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setText(I)V

    :goto_5c
    invoke-interface {p1}, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;->getBackgroundColor()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a6

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v4, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, La/a/a/a/h/v;->a:Landroidx/appcompat/app/AppCompatActivity;

    const-string v4, "activity"

    .line 1
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "toolbarCustomization"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;->getStatusBarColor()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8f

    sget-object v4, Lcom/stripe/android/stripe3ds2/utils/CustomizeUtils;->INSTANCE:Lcom/stripe/android/stripe3ds2/utils/CustomizeUtils;

    invoke-interface {p1}, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;->getStatusBarColor()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/stripe/android/stripe3ds2/utils/CustomizeUtils;->setStatusBarColor(Landroidx/appcompat/app/AppCompatActivity;I)V

    goto :goto_a6

    :cond_8f
    invoke-interface {p1}, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;->getBackgroundColor()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a6

    invoke-interface {p1}, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;->getBackgroundColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/stripe/android/stripe3ds2/utils/CustomizeUtils;->INSTANCE:Lcom/stripe/android/stripe3ds2/utils/CustomizeUtils;

    invoke-virtual {v5, v4}, Lcom/stripe/android/stripe3ds2/utils/CustomizeUtils;->darken$3ds2sdk_release(I)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Lcom/stripe/android/stripe3ds2/utils/CustomizeUtils;->setStatusBarColor(Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 2
    :cond_a6
    :goto_a6
    invoke-interface {p1}, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;->getHeaderText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b4

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b3

    goto :goto_b4

    :cond_b3
    move p2, v2

    :cond_b4
    :goto_b4
    if-nez p2, :cond_be

    invoke-interface {p1}, Lcom/stripe/android/stripe3ds2/init/ui/ToolbarCustomization;->getHeaderText()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "toolbarCustomization.headerText"

    goto :goto_c8

    :cond_be
    iget-object p2, p0, La/a/a/a/h/v;->a:Landroidx/appcompat/app/AppCompatActivity;

    sget v2, Lcom/stripe/android/stripe3ds2/R$string;->stripe_3ds2_hzv_header_label:I

    invoke-virtual {p2, v2}, Landroidx/appcompat/app/AppCompatActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "activity.getString(R.str\u2026pe_3ds2_hzv_header_label)"

    :goto_c8
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/stripe/android/stripe3ds2/utils/CustomizeUtils;->INSTANCE:Lcom/stripe/android/stripe3ds2/utils/CustomizeUtils;

    iget-object v3, p0, La/a/a/a/h/v;->a:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v2, v3, p2, p1}, Lcom/stripe/android/stripe3ds2/utils/CustomizeUtils;->buildStyledText(Landroid/content/Context;Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/Customization;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_e1

    :cond_d7
    sget p1, Lcom/stripe/android/stripe3ds2/R$string;->stripe_3ds2_hzv_header_label:I

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    sget p1, Lcom/stripe/android/stripe3ds2/R$string;->stripe_3ds2_hzv_cancel_label:I

    invoke-virtual {v1, p1}, Lcom/google/android/material/button/MaterialButton;->setText(I)V

    :goto_e1
    return-object v1

    :cond_e2
    const/4 p1, 0x0

    return-object p1
.end method
