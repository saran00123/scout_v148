.class public abstract Lio/noties/markwon/image/ImageSizeResolver;
.super Ljava/lang/Object;
.source "ImageSizeResolver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract resolveImageSize(Lio/noties/markwon/image/AsyncDrawable;)Landroid/graphics/Rect;
    .param p1    # Lio/noties/markwon/image/AsyncDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
