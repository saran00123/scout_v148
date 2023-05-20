.class public final Lcom/stripe/android/view/CardWidgetProgressView;
.super Landroid/widget/FrameLayout;
.source "CardWidgetProgressView.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardWidgetProgressView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardWidgetProgressView.kt\ncom/stripe/android/view/CardWidgetProgressView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,87:1\n306#2:88\n318#2,4:89\n307#2:93\n*E\n*S KotlinDebug\n*F\n+ 1 CardWidgetProgressView.kt\ncom/stripe/android/view/CardWidgetProgressView\n*L\n73#1:88\n73#1,4:89\n73#1:93\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\r\u001a\u00020\u000eJ\u0008\u0010\u000f\u001a\u00020\u000eH\u0014J\u0006\u0010\u0010\u001a\u00020\u000eR\u0016\u0010\t\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\n \u000b*\u0004\u0018\u00010\n0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/android/view/CardWidgetProgressView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "fadeIn",
        "Landroid/view/animation/Animation;",
        "kotlin.jvm.PlatformType",
        "fadeOut",
        "hide",
        "",
        "onAttachedToWindow",
        "show",
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
.field private final fadeIn:Landroid/view/animation/Animation;

.field private final fadeOut:Landroid/view/animation/Animation;


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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/CardWidgetProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/stripe/android/view/CardWidgetProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    sget p2, Lcom/stripe/android/R$anim;->stripe_card_widget_progress_fade_in:I

    .line 19
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 24
    new-instance p3, Lcom/stripe/android/view/CardWidgetProgressView$$special$$inlined$also$lambda$1;

    invoke-direct {p3, p0}, Lcom/stripe/android/view/CardWidgetProgressView$$special$$inlined$also$lambda$1;-><init>(Lcom/stripe/android/view/CardWidgetProgressView;)V

    check-cast p3, Landroid/view/animation/Animation$AnimationListener;

    .line 23
    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 36
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    iput-object p2, p0, Lcom/stripe/android/view/CardWidgetProgressView;->fadeIn:Landroid/view/animation/Animation;

    .line 40
    sget p2, Lcom/stripe/android/R$anim;->stripe_card_widget_progress_fade_out:I

    .line 38
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 43
    new-instance p3, Lcom/stripe/android/view/CardWidgetProgressView$$special$$inlined$also$lambda$2;

    invoke-direct {p3, p0}, Lcom/stripe/android/view/CardWidgetProgressView$$special$$inlined$also$lambda$2;-><init>(Lcom/stripe/android/view/CardWidgetProgressView;)V

    check-cast p3, Landroid/view/animation/Animation$AnimationListener;

    .line 42
    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 56
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 41
    iput-object p2, p0, Lcom/stripe/android/view/CardWidgetProgressView;->fadeOut:Landroid/view/animation/Animation;

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 61
    move-object p2, p0

    check-cast p2, Landroid/view/ViewGroup;

    .line 59
    invoke-static {p1, p2}, Lcom/stripe/android/databinding/CardWidgetProgressViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/stripe/android/databinding/CardWidgetProgressViewBinding;

    .line 64
    sget p1, Lcom/stripe/android/R$drawable;->stripe_card_progress_background:I

    invoke-virtual {p0, p1}, Lcom/stripe/android/view/CardWidgetProgressView;->setBackgroundResource(I)V

    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Lcom/stripe/android/view/CardWidgetProgressView;->setClipToOutline(Z)V

    const/4 p1, 0x4

    .line 66
    invoke-virtual {p0, p1}, Lcom/stripe/android/view/CardWidgetProgressView;->setVisibility(I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_7

    const/4 p2, 0x0

    .line 16
    check-cast p2, Landroid/util/AttributeSet;

    :cond_7
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_c

    const/4 p3, 0x0

    .line 17
    :cond_c
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/android/view/CardWidgetProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final hide()V
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/stripe/android/view/CardWidgetProgressView;->fadeOut:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/stripe/android/view/CardWidgetProgressView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 70
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 72
    invoke-virtual {p0}, Lcom/stripe/android/view/CardWidgetProgressView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/stripe/android/R$dimen;->stripe_card_widget_progress_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 74
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 75
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 91
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 89
    :cond_24
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final show()V
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/stripe/android/view/CardWidgetProgressView;->fadeIn:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/stripe/android/view/CardWidgetProgressView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
