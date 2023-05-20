.class public final La/a/a/a/h/t;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\u0008\u0008\u0002\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR$\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00028@@@X\u0080\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u0006R\u001c\u0010\u0015\u001a\u00020\u00108\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u001b\u001a\u00020\u00168\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006$"
    }
    d2 = {
        "La/a/a/a/h/t;",
        "Landroid/widget/LinearLayout;",
        "",
        "label",
        "",
        "setTextEntryLabel",
        "(Ljava/lang/String;)V",
        "Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;",
        "textBoxCustomization",
        "setTextBoxCustomization",
        "(Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;)V",
        "text",
        "getTextEntry$3ds2sdk_release",
        "()Ljava/lang/String;",
        "setTextEntry$3ds2sdk_release",
        "textEntry",
        "Lcom/google/android/material/textfield/TextInputEditText;",
        "b",
        "Lcom/google/android/material/textfield/TextInputEditText;",
        "getTextEntryView$3ds2sdk_release",
        "()Lcom/google/android/material/textfield/TextInputEditText;",
        "textEntryView",
        "Lcom/google/android/material/textfield/TextInputLayout;",
        "a",
        "Lcom/google/android/material/textfield/TextInputLayout;",
        "getInfoLabel$3ds2sdk_release",
        "()Lcom/google/android/material/textfield/TextInputLayout;",
        "infoLabel",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "3ds2sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/google/android/material/textfield/TextInputEditText;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
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

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, La/a/a/a/a/f;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)La/a/a/a/a/f;

    move-result-object p1

    const-string p2, "StripeChallengeZoneTextV\u2026           true\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, La/a/a/a/a/f;->b:Lcom/google/android/material/textfield/TextInputLayout;

    const-string/jumbo p3, "viewBinding.label"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, La/a/a/a/h/t;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p1, p1, La/a/a/a/a/f;->c:Lcom/google/android/material/textfield/TextInputEditText;

    const-string/jumbo p2, "viewBinding.textEntry"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, La/a/a/a/h/t;->b:Lcom/google/android/material/textfield/TextInputEditText;

    return-void
.end method


# virtual methods
.method public final getInfoLabel$3ds2sdk_release()Lcom/google/android/material/textfield/TextInputLayout;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, La/a/a/a/h/t;->a:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method public final getTextEntry$3ds2sdk_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, La/a/a/a/h/t;->b:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const-string v0, ""

    :goto_11
    return-object v0
.end method

.method public final getTextEntryView$3ds2sdk_release()Lcom/google/android/material/textfield/TextInputEditText;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, La/a/a/a/h/t;->b:Lcom/google/android/material/textfield/TextInputEditText;

    return-object v0
.end method

.method public final setTextBoxCustomization(Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;)V
    .registers 5
    .param p1    # Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Lcom/stripe/android/stripe3ds2/init/ui/Customization;->getTextColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, La/a/a/a/h/t;->b:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setTextColor(I)V

    :cond_12
    invoke-interface {p1}, Lcom/stripe/android/stripe3ds2/init/ui/Customization;->getTextFontSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-lez v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    if-eqz v1, :cond_26

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    const/4 v1, 0x2

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v2, p0, La/a/a/a/h/t;->b:Lcom/google/android/material/textfield/TextInputEditText;

    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setTextSize(IF)V

    :cond_34
    invoke-interface {p1}, Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;->getCornerRadius()I

    move-result v0

    if-ltz v0, :cond_44

    invoke-interface {p1}, Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;->getCornerRadius()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, La/a/a/a/h/t;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2, v0, v0, v0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxCornerRadii(FFFF)V

    :cond_44
    invoke-interface {p1}, Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;->getBorderColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v2, p0, La/a/a/a/h/t;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxBackgroundMode(I)V

    iget-object v1, p0, La/a/a/a/h/t;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBoxStrokeColor(I)V

    :cond_58
    invoke-interface {p1}, Lcom/stripe/android/stripe3ds2/init/ui/TextBoxCustomization;->getHintTextColor()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6b

    iget-object v0, p0, La/a/a/a/h/t;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setDefaultHintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_6b
    return-void
.end method

.method public final setTextEntry$3ds2sdk_release(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/h/t;->b:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTextEntryLabel(Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, La/a/a/a/h/t;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method
