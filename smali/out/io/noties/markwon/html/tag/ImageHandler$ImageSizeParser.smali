.class interface abstract Lio/noties/markwon/html/tag/ImageHandler$ImageSizeParser;
.super Ljava/lang/Object;
.source "ImageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/html/tag/ImageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ImageSizeParser"
.end annotation


# virtual methods
.method public abstract parse(Ljava/util/Map;)Lio/noties/markwon/image/ImageSize;
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/noties/markwon/image/ImageSize;"
        }
    .end annotation
.end method
