.class Lio/noties/markwon/image/AsyncDrawable$WrappedCallback;
.super Ljava/lang/Object;
.source "AsyncDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/image/AsyncDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedCallback"
.end annotation


# instance fields
.field private final callback:Landroid/graphics/drawable/Drawable$Callback;

.field final synthetic this$0:Lio/noties/markwon/image/AsyncDrawable;


# direct methods
.method constructor <init>(Lio/noties/markwon/image/AsyncDrawable;Landroid/graphics/drawable/Drawable$Callback;)V
    .registers 3
    .param p1    # Lio/noties/markwon/image/AsyncDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 366
    iput-object p1, p0, Lio/noties/markwon/image/AsyncDrawable$WrappedCallback;->this$0:Lio/noties/markwon/image/AsyncDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p2, p0, Lio/noties/markwon/image/AsyncDrawable$WrappedCallback;->callback:Landroid/graphics/drawable/Drawable$Callback;

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 372
    iget-object p1, p0, Lio/noties/markwon/image/AsyncDrawable$WrappedCallback;->callback:Landroid/graphics/drawable/Drawable$Callback;

    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawable$WrappedCallback;->this$0:Lio/noties/markwon/image/AsyncDrawable;

    invoke-interface {p1, v0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 377
    iget-object p1, p0, Lio/noties/markwon/image/AsyncDrawable$WrappedCallback;->callback:Landroid/graphics/drawable/Drawable$Callback;

    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawable$WrappedCallback;->this$0:Lio/noties/markwon/image/AsyncDrawable;

    invoke-interface {p1, v0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 382
    iget-object p1, p0, Lio/noties/markwon/image/AsyncDrawable$WrappedCallback;->callback:Landroid/graphics/drawable/Drawable$Callback;

    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawable$WrappedCallback;->this$0:Lio/noties/markwon/image/AsyncDrawable;

    invoke-interface {p1, v0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method
