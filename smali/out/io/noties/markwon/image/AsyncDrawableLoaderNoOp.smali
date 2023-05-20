.class Lio/noties/markwon/image/AsyncDrawableLoaderNoOp;
.super Lio/noties/markwon/image/AsyncDrawableLoader;
.source "AsyncDrawableLoaderNoOp.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lio/noties/markwon/image/AsyncDrawableLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Lio/noties/markwon/image/AsyncDrawable;)V
    .registers 2
    .param p1    # Lio/noties/markwon/image/AsyncDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public load(Lio/noties/markwon/image/AsyncDrawable;)V
    .registers 2
    .param p1    # Lio/noties/markwon/image/AsyncDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public placeholder(Lio/noties/markwon/image/AsyncDrawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p1    # Lio/noties/markwon/image/AsyncDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
