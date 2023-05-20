.class public abstract Lio/noties/markwon/image/AsyncDrawableScheduler;
.super Ljava/lang/Object;
.source "AsyncDrawableScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/image/AsyncDrawableScheduler$TextViewInvalidator;,
        Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractSpans(Landroid/widget/TextView;)[Lio/noties/markwon/image/AsyncDrawableSpan;
    .registers 4
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 94
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    .line 96
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_d

    :cond_c
    move v1, v0

    :goto_d
    if-eqz v1, :cond_1f

    .line 99
    instance-of v2, p0, Landroid/text/Spanned;

    if-nez v2, :cond_14

    goto :goto_1f

    .line 107
    :cond_14
    check-cast p0, Landroid/text/Spanned;

    const-class v2, Lio/noties/markwon/image/AsyncDrawableSpan;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/noties/markwon/image/AsyncDrawableSpan;

    return-object p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static schedule(Landroid/widget/TextView;)V
    .registers 8
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    sget v0, Lio/noties/markwon/R$id;->markwon_drawables_scheduler_last_text_hashcode:I

    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 30
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eqz v0, :cond_19

    .line 32
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_19

    return-void

    .line 35
    :cond_19
    sget v0, Lio/noties/markwon/R$id;->markwon_drawables_scheduler_last_text_hashcode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 38
    invoke-static {p0}, Lio/noties/markwon/image/AsyncDrawableScheduler;->extractSpans(Landroid/widget/TextView;)[Lio/noties/markwon/image/AsyncDrawableSpan;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 39
    array-length v1, v0

    if-lez v1, :cond_5e

    .line 42
    sget v1, Lio/noties/markwon/R$id;->markwon_drawables_scheduler:I

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_40

    .line 43
    new-instance v1, Lio/noties/markwon/image/AsyncDrawableScheduler$1;

    invoke-direct {v1, p0}, Lio/noties/markwon/image/AsyncDrawableScheduler$1;-><init>(Landroid/widget/TextView;)V

    .line 56
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 57
    sget v2, Lio/noties/markwon/R$id;->markwon_drawables_scheduler:I

    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 61
    :cond_40
    new-instance v1, Lio/noties/markwon/image/AsyncDrawableScheduler$TextViewInvalidator;

    invoke-direct {v1, p0}, Lio/noties/markwon/image/AsyncDrawableScheduler$TextViewInvalidator;-><init>(Landroid/widget/TextView;)V

    .line 65
    array-length v2, v0

    const/4 v3, 0x0

    :goto_47
    if-ge v3, v2, :cond_5e

    aget-object v4, v0, v3

    .line 66
    invoke-virtual {v4}, Lio/noties/markwon/image/AsyncDrawableSpan;->getDrawable()Lio/noties/markwon/image/AsyncDrawable;

    move-result-object v4

    .line 67
    new-instance v5, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;

    invoke-virtual {v4}, Lio/noties/markwon/image/AsyncDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {v5, p0, v1, v6}, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;-><init>(Landroid/widget/TextView;Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;Landroid/graphics/Rect;)V

    invoke-virtual {v4, v5}, Lio/noties/markwon/image/AsyncDrawable;->setCallback2(Landroid/graphics/drawable/Drawable$Callback;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_5e
    return-void
.end method

.method public static unschedule(Landroid/widget/TextView;)V
    .registers 5
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    sget v0, Lio/noties/markwon/R$id;->markwon_drawables_scheduler_last_text_hashcode:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 79
    :cond_9
    sget v0, Lio/noties/markwon/R$id;->markwon_drawables_scheduler_last_text_hashcode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 82
    invoke-static {p0}, Lio/noties/markwon/image/AsyncDrawableScheduler;->extractSpans(Landroid/widget/TextView;)[Lio/noties/markwon/image/AsyncDrawableSpan;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 83
    array-length v0, p0

    if-lez v0, :cond_28

    .line 85
    array-length v0, p0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_28

    aget-object v3, p0, v2

    .line 86
    invoke-virtual {v3}, Lio/noties/markwon/image/AsyncDrawableSpan;->getDrawable()Lio/noties/markwon/image/AsyncDrawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/noties/markwon/image/AsyncDrawable;->setCallback2(Landroid/graphics/drawable/Drawable$Callback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_28
    return-void
.end method
