.class Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;
.super Ljava/lang/Object;
.source "AsyncDrawableScheduler.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/image/AsyncDrawableScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrawableCallbackImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;
    }
.end annotation


# instance fields
.field private final invalidator:Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;

.field private previousBounds:Landroid/graphics/Rect;

.field private final view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;Landroid/graphics/Rect;)V
    .registers 4
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->view:Landroid/widget/TextView;

    .line 131
    iput-object p2, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->invalidator:Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;

    .line 132
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p1, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->previousBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 138
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_15

    .line 139
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->view:Landroid/widget/TextView;

    new-instance v1, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$1;

    invoke-direct {v1, p0, p1}, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$1;-><init>(Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 148
    :cond_15
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 153
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->previousBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 157
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->invalidator:Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;

    invoke-interface {v0}, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;->invalidate()V

    .line 158
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->previousBounds:Landroid/graphics/Rect;

    goto :goto_33

    .line 161
    :cond_2e
    iget-object p1, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->postInvalidate()V

    :goto_33
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 7
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr p3, v0

    .line 168
    iget-object p1, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->view:Landroid/widget/TextView;

    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 173
    iget-object p1, p0, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;->view:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
