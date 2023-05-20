.class public final Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;
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
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010M\u001a\u00020L\u0012\n\u0008\u0002\u0010O\u001a\u0004\u0018\u00010N\u0012\u0008\u0008\u0002\u0010P\u001a\u00020\u000b\u00a2\u0006\u0004\u0008Q\u0010RJ#\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J#\u0010\n\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\n\u0010\u0008J\u0017\u0010\r\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eJ#\u0010\n\u001a\u00020\u00062\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\n\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J#\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0007\u0010\u0012J\u0017\u0010\u0018\u001a\u00020\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0018\u0010\u0016J/\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0007\u0010\u001aJ\u0015\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eR\u001c\u0010$\u001a\u00020\u001f8\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#R\u001c\u0010*\u001a\u00020%8\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)R\u001c\u0010\u001c\u001a\u00020+8\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/R\u001c\u00102\u001a\u00020\u001f8\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u00080\u0010!\u001a\u0004\u00081\u0010#R\u001c\u00107\u001a\u0002038\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0007\u00104\u001a\u0004\u00085\u00106R\u0016\u0010;\u001a\u0002088@@\u0000X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u00089\u0010:R\u001c\u0010>\u001a\u00020%8\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008<\u0010\'\u001a\u0004\u0008=\u0010)R\u001c\u0010\u0019\u001a\u00020?8\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008@\u0010A\u001a\u0004\u0008B\u0010CR\u001c\u0010I\u001a\u00020D8\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008E\u0010F\u001a\u0004\u0008G\u0010HR\u001c\u0010K\u001a\u00020?8\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010A\u001a\u0004\u0008J\u0010C\u00a8\u0006S"
    }
    d2 = {
        "Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;",
        "Landroid/widget/LinearLayout;",
        "",
        "headerText",
        "Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;",
        "labelCustomization",
        "",
        "a",
        "(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;)V",
        "infoText",
        "b",
        "",
        "indicatorResId",
        "setInfoTextIndicator",
        "(I)V",
        "submitButtonLabel",
        "Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;",
        "buttonCustomization",
        "(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;)V",
        "Landroid/view/View$OnClickListener;",
        "listener",
        "setSubmitButtonClickListener",
        "(Landroid/view/View$OnClickListener;)V",
        "resendButtonLabel",
        "setResendButtonClickListener",
        "whitelistingLabel",
        "(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;)V",
        "Landroid/view/View;",
        "challengeEntryView",
        "setChallengeEntryView",
        "(Landroid/view/View;)V",
        "Landroid/widget/RadioButton;",
        "i",
        "Landroid/widget/RadioButton;",
        "getWhitelistNoRadioButton$3ds2sdk_release",
        "()Landroid/widget/RadioButton;",
        "whitelistNoRadioButton",
        "Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;",
        "c",
        "Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;",
        "getSubmitButton$3ds2sdk_release",
        "()Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;",
        "submitButton",
        "Landroid/widget/FrameLayout;",
        "g",
        "Landroid/widget/FrameLayout;",
        "getChallengeEntryView$3ds2sdk_release",
        "()Landroid/widget/FrameLayout;",
        "h",
        "getWhitelistYesRadioButton$3ds2sdk_release",
        "whitelistYesRadioButton",
        "Lcom/stripe/android/stripe3ds2/views/ThreeDS2HeaderTextView;",
        "Lcom/stripe/android/stripe3ds2/views/ThreeDS2HeaderTextView;",
        "getInfoHeader$3ds2sdk_release",
        "()Lcom/stripe/android/stripe3ds2/views/ThreeDS2HeaderTextView;",
        "infoHeader",
        "",
        "getWhitelistingSelection$3ds2sdk_release",
        "()Z",
        "whitelistingSelection",
        "d",
        "getResendButton$3ds2sdk_release",
        "resendButton",
        "Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;",
        "e",
        "Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;",
        "getWhitelistingLabel$3ds2sdk_release",
        "()Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;",
        "Landroid/widget/RadioGroup;",
        "f",
        "Landroid/widget/RadioGroup;",
        "getWhitelistRadioGroup$3ds2sdk_release",
        "()Landroid/widget/RadioGroup;",
        "whitelistRadioGroup",
        "getInfoTextView$3ds2sdk_release",
        "infoTextView",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
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
.field public final a:Lcom/stripe/android/stripe3ds2/views/ThreeDS2HeaderTextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Landroid/widget/RadioGroup;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Landroid/widget/RadioButton;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Landroid/widget/RadioButton;
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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0}, La/a/a/a/a/g;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)La/a/a/a/a/g;

    move-result-object p1

    const-string p2, "StripeChallengeZoneViewB\u2026           this\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p1, La/a/a/a/a/g;->c:Lcom/stripe/android/stripe3ds2/views/ThreeDS2HeaderTextView;

    const-string p3, "viewBinding.czvHeader"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->a:Lcom/stripe/android/stripe3ds2/views/ThreeDS2HeaderTextView;

    iget-object p2, p1, La/a/a/a/a/g;->d:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;

    const-string p3, "viewBinding.czvInfo"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->b:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;

    iget-object p2, p1, La/a/a/a/a/g;->f:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    const-string p3, "viewBinding.czvSubmitButton"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->c:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    iget-object p2, p1, La/a/a/a/a/g;->e:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    const-string p3, "viewBinding.czvResendButton"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->d:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    iget-object p2, p1, La/a/a/a/a/g;->j:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;

    const-string p3, "viewBinding.czvWhitelistingLabel"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->e:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;

    iget-object p2, p1, La/a/a/a/a/g;->h:Landroid/widget/RadioGroup;

    const-string p3, "viewBinding.czvWhitelistRadioGroup"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->f:Landroid/widget/RadioGroup;

    iget-object p2, p1, La/a/a/a/a/g;->b:Landroid/widget/FrameLayout;

    const-string p3, "viewBinding.czvEntryView"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->g:Landroid/widget/FrameLayout;

    iget-object p2, p1, La/a/a/a/a/g;->i:Landroid/widget/RadioButton;

    const-string p3, "viewBinding.czvWhitelistYesButton"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->h:Landroid/widget/RadioButton;

    iget-object p1, p1, La/a/a/a/a/g;->g:Landroid/widget/RadioButton;

    const-string p2, "viewBinding.czvWhitelistNoButton"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->i:Landroid/widget/RadioButton;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_c

    :cond_a
    move v1, v0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v1, 0x1

    :goto_d
    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->d:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    invoke-virtual {v1, v0}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->d:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->d:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    invoke-virtual {p1, p2}, Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;->setButtonCustomization(Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;)V

    :cond_1e
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_b

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_16

    iget-object p1, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->a:Lcom/stripe/android/stripe3ds2/views/ThreeDS2HeaderTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    goto :goto_1b

    :cond_16
    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->a:Lcom/stripe/android/stripe3ds2/views/ThreeDS2HeaderTextView;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/android/stripe3ds2/views/ThreeDS2HeaderTextView;->a(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;)V

    :goto_1b
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_d

    :cond_b
    move v2, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v2, v0

    :goto_e
    if-nez v2, :cond_a3

    iget-object v2, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->e:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;

    invoke-virtual {v2, p1, p2}, Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;->a(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;)V

    if-eqz p3, :cond_99

    iget-object p1, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->f:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p1

    invoke-static {v1, p1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2a
    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    move-object v2, p1

    check-cast v2, Lkotlin/collections/IntIterator;

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    iget-object v3, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->f:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/RadioButton;

    if-nez v3, :cond_42

    const/4 v2, 0x0

    :cond_42
    check-cast v2, Landroid/widget/RadioButton;

    if-eqz v2, :cond_2a

    invoke-interface {p2, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_4a
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4e
    :goto_4e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_99

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    invoke-interface {p3}, Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;->getBackgroundColor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_69

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_67

    goto :goto_69

    :cond_67
    move v2, v1

    goto :goto_6a

    :cond_69
    :goto_69
    move v2, v0

    :goto_6a
    if-nez v2, :cond_7b

    invoke-interface {p3}, Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;->getBackgroundColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {p2, v2}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    :cond_7b
    invoke-interface {p3}, Lcom/stripe/android/stripe3ds2/init/ui/Customization;->getTextColor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8a

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_88

    goto :goto_8a

    :cond_88
    move v2, v1

    goto :goto_8b

    :cond_8a
    :goto_8a
    move v2, v0

    :goto_8b
    if-nez v2, :cond_4e

    invoke-interface {p3}, Lcom/stripe/android/stripe3ds2/init/ui/Customization;->getTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/RadioButton;->setTextColor(I)V

    goto :goto_4e

    :cond_99
    iget-object p1, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->e:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;

    invoke-virtual {p1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->f:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    :cond_a3
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_b

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_16

    iget-object p1, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->c:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    goto :goto_20

    :cond_16
    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->c:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->c:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    invoke-virtual {p1, p2}, Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;->setButtonCustomization(Lcom/stripe/android/stripe3ds2/init/ui/ButtonCustomization;)V

    :goto_20
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_b

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_16

    iget-object p1, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->b:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->setVisibility(I)V

    goto :goto_1b

    :cond_16
    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->b:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;->a(Ljava/lang/String;Lcom/stripe/android/stripe3ds2/init/ui/LabelCustomization;)V

    :goto_1b
    return-void
.end method

.method public final getChallengeEntryView$3ds2sdk_release()Landroid/widget/FrameLayout;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->g:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getInfoHeader$3ds2sdk_release()Lcom/stripe/android/stripe3ds2/views/ThreeDS2HeaderTextView;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->a:Lcom/stripe/android/stripe3ds2/views/ThreeDS2HeaderTextView;

    return-object v0
.end method

.method public final getInfoTextView$3ds2sdk_release()Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->b:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;

    return-object v0
.end method

.method public final getResendButton$3ds2sdk_release()Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->d:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    return-object v0
.end method

.method public final getSubmitButton$3ds2sdk_release()Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->c:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    return-object v0
.end method

.method public final getWhitelistNoRadioButton$3ds2sdk_release()Landroid/widget/RadioButton;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->i:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public final getWhitelistRadioGroup$3ds2sdk_release()Landroid/widget/RadioGroup;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->f:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method public final getWhitelistYesRadioButton$3ds2sdk_release()Landroid/widget/RadioButton;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->h:Landroid/widget/RadioButton;

    return-object v0
.end method

.method public final getWhitelistingLabel$3ds2sdk_release()Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->e:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;

    return-object v0
.end method

.method public final getWhitelistingSelection$3ds2sdk_release()Z
    .registers 3

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->f:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    sget v1, Lcom/stripe/android/stripe3ds2/R$id;->czv_whitelist_yes_button:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final setChallengeEntryView(Landroid/view/View;)V
    .registers 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "challengeEntryView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final setInfoTextIndicator(I)V
    .registers 4
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->b:Lcom/stripe/android/stripe3ds2/views/ThreeDS2TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/google/android/material/textview/MaterialTextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public final setResendButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->d:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setSubmitButtonClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/stripe/android/stripe3ds2/views/ChallengeZoneView;->c:Lcom/stripe/android/stripe3ds2/views/ThreeDS2Button;

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
