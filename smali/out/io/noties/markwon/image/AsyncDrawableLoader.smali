.class public abstract Lio/noties/markwon/image/AsyncDrawableLoader;
.super Ljava/lang/Object;
.source "AsyncDrawableLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static noOp()Lio/noties/markwon/image/AsyncDrawableLoader;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 15
    new-instance v0, Lio/noties/markwon/image/AsyncDrawableLoaderNoOp;

    invoke-direct {v0}, Lio/noties/markwon/image/AsyncDrawableLoaderNoOp;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract cancel(Lio/noties/markwon/image/AsyncDrawable;)V
    .param p1    # Lio/noties/markwon/image/AsyncDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract load(Lio/noties/markwon/image/AsyncDrawable;)V
    .param p1    # Lio/noties/markwon/image/AsyncDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract placeholder(Lio/noties/markwon/image/AsyncDrawable;)Landroid/graphics/drawable/Drawable;
    .param p1    # Lio/noties/markwon/image/AsyncDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
