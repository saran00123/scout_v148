.class Lio/noties/markwon/html/tag/ImageSizeParserImpl;
.super Ljava/lang/Object;
.source "ImageSizeParserImpl.java"

# interfaces
.implements Lio/noties/markwon/html/tag/ImageHandler$ImageSizeParser;


# instance fields
.field private final inlineStyleParser:Lio/noties/markwon/html/CssInlineStyleParser;


# direct methods
.method constructor <init>(Lio/noties/markwon/html/CssInlineStyleParser;)V
    .registers 2
    .param p1    # Lio/noties/markwon/html/CssInlineStyleParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lio/noties/markwon/html/tag/ImageSizeParserImpl;->inlineStyleParser:Lio/noties/markwon/html/CssInlineStyleParser;

    return-void
.end method


# virtual methods
.method dimension(Ljava/lang/String;)Lio/noties/markwon/image/ImageSize$Dimension;
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 86
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move v3, v2

    :goto_f
    const/4 v4, -0x1

    if-le v3, v4, :cond_39

    .line 90
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_36

    const/4 v4, 0x0

    add-int/lit8 v5, v3, 0x1

    .line 93
    :try_start_1f
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    if-ne v3, v2, :cond_2b

    move-object p1, v1

    goto :goto_2f

    .line 99
    :cond_2b
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 101
    :goto_2f
    new-instance v0, Lio/noties/markwon/image/ImageSize$Dimension;

    invoke-direct {v0, v4, p1}, Lio/noties/markwon/image/ImageSize$Dimension;-><init>(FLjava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_34} :catch_35

    return-object v0

    :catch_35
    return-object v1

    :cond_36
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    :cond_39
    return-object v1
.end method

.method public parse(Ljava/util/Map;)Lio/noties/markwon/image/ImageSize;
    .registers 11
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
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

    const-string v0, "style"

    .line 33
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "height"

    const-string v3, "width"

    const/4 v4, 0x0

    if-nez v1, :cond_51

    .line 39
    iget-object v1, p0, Lio/noties/markwon/html/tag/ImageSizeParserImpl;->inlineStyleParser:Lio/noties/markwon/html/CssInlineStyleParser;

    invoke-virtual {v1, v0}, Lio/noties/markwon/html/CssInlineStyleParser;->parse(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v4

    move-object v5, v1

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/noties/markwon/html/CssProperty;

    .line 41
    invoke-virtual {v6}, Lio/noties/markwon/html/CssProperty;->key()Ljava/lang/String;

    move-result-object v7

    .line 43
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 44
    invoke-virtual {v6}, Lio/noties/markwon/html/CssProperty;->value()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/noties/markwon/html/tag/ImageSizeParserImpl;->dimension(Ljava/lang/String;)Lio/noties/markwon/image/ImageSize$Dimension;

    move-result-object v1

    goto :goto_4c

    .line 45
    :cond_3e
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 46
    invoke-virtual {v6}, Lio/noties/markwon/html/CssProperty;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lio/noties/markwon/html/tag/ImageSizeParserImpl;->dimension(Ljava/lang/String;)Lio/noties/markwon/image/ImageSize$Dimension;

    move-result-object v5

    :cond_4c
    :goto_4c
    if-eqz v1, :cond_1f

    if-eqz v5, :cond_1f

    goto :goto_53

    :cond_51
    move-object v1, v4

    move-object v5, v1

    :cond_53
    :goto_53
    if-eqz v1, :cond_5d

    if-eqz v5, :cond_5d

    .line 58
    new-instance p1, Lio/noties/markwon/image/ImageSize;

    invoke-direct {p1, v1, v5}, Lio/noties/markwon/image/ImageSize;-><init>(Lio/noties/markwon/image/ImageSize$Dimension;Lio/noties/markwon/image/ImageSize$Dimension;)V

    return-object p1

    :cond_5d
    if-nez v1, :cond_69

    .line 63
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/noties/markwon/html/tag/ImageSizeParserImpl;->dimension(Ljava/lang/String;)Lio/noties/markwon/image/ImageSize$Dimension;

    move-result-object v1

    :cond_69
    if-nez v5, :cond_75

    .line 67
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/noties/markwon/html/tag/ImageSizeParserImpl;->dimension(Ljava/lang/String;)Lio/noties/markwon/image/ImageSize$Dimension;

    move-result-object v5

    :cond_75
    if-nez v1, :cond_7a

    if-nez v5, :cond_7a

    return-object v4

    .line 75
    :cond_7a
    new-instance p1, Lio/noties/markwon/image/ImageSize;

    invoke-direct {p1, v1, v5}, Lio/noties/markwon/image/ImageSize;-><init>(Lio/noties/markwon/image/ImageSize$Dimension;Lio/noties/markwon/image/ImageSize$Dimension;)V

    return-object p1
.end method
