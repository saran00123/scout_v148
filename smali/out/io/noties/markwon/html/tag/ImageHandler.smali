.class public Lio/noties/markwon/html/tag/ImageHandler;
.super Lio/noties/markwon/html/tag/SimpleTagHandler;
.source "ImageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/html/tag/ImageHandler$ImageSizeParser;
    }
.end annotation


# instance fields
.field private final imageSizeParser:Lio/noties/markwon/html/tag/ImageHandler$ImageSizeParser;


# direct methods
.method constructor <init>(Lio/noties/markwon/html/tag/ImageHandler$ImageSizeParser;)V
    .registers 2
    .param p1    # Lio/noties/markwon/html/tag/ImageHandler$ImageSizeParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 43
    invoke-direct {p0}, Lio/noties/markwon/html/tag/SimpleTagHandler;-><init>()V

    .line 44
    iput-object p1, p0, Lio/noties/markwon/html/tag/ImageHandler;->imageSizeParser:Lio/noties/markwon/html/tag/ImageHandler$ImageSizeParser;

    return-void
.end method

.method public static create()Lio/noties/markwon/html/tag/ImageHandler;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 37
    new-instance v0, Lio/noties/markwon/html/tag/ImageHandler;

    new-instance v1, Lio/noties/markwon/html/tag/ImageSizeParserImpl;

    invoke-static {}, Lio/noties/markwon/html/CssInlineStyleParser;->create()Lio/noties/markwon/html/CssInlineStyleParser;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/noties/markwon/html/tag/ImageSizeParserImpl;-><init>(Lio/noties/markwon/html/CssInlineStyleParser;)V

    invoke-direct {v0, v1}, Lio/noties/markwon/html/tag/ImageHandler;-><init>(Lio/noties/markwon/html/tag/ImageHandler$ImageSizeParser;)V

    return-object v0
.end method


# virtual methods
.method public getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;Lio/noties/markwon/html/HtmlTag;)Ljava/lang/Object;
    .registers 8
    .param p1    # Lio/noties/markwon/MarkwonConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/RenderProps;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/noties/markwon/html/HtmlTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 54
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag;->attributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "src"

    .line 55
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    return-object v2

    .line 60
    :cond_14
    invoke-virtual {p1}, Lio/noties/markwon/MarkwonConfiguration;->spansFactory()Lio/noties/markwon/MarkwonSpansFactory;

    move-result-object v1

    const-class v3, Lorg/commonmark/node/Image;

    invoke-interface {v1, v3}, Lio/noties/markwon/MarkwonSpansFactory;->get(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;

    move-result-object v1

    if-nez v1, :cond_21

    return-object v2

    .line 65
    :cond_21
    invoke-virtual {p1}, Lio/noties/markwon/MarkwonConfiguration;->urlProcessor()Lio/noties/markwon/urlprocessor/UrlProcessor;

    move-result-object v2

    invoke-interface {v2, v0}, Lio/noties/markwon/urlprocessor/UrlProcessor;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v2, p0, Lio/noties/markwon/html/tag/ImageHandler;->imageSizeParser:Lio/noties/markwon/html/tag/ImageHandler$ImageSizeParser;

    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag;->attributes()Ljava/util/Map;

    move-result-object p3

    invoke-interface {v2, p3}, Lio/noties/markwon/html/tag/ImageHandler$ImageSizeParser;->parse(Ljava/util/Map;)Lio/noties/markwon/image/ImageSize;

    move-result-object p3

    .line 74
    sget-object v2, Lio/noties/markwon/image/ImageProps;->DESTINATION:Lio/noties/markwon/Prop;

    invoke-virtual {v2, p2, v0}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 75
    sget-object v0, Lio/noties/markwon/image/ImageProps;->IMAGE_SIZE:Lio/noties/markwon/Prop;

    invoke-virtual {v0, p2, p3}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 76
    sget-object p3, Lio/noties/markwon/image/ImageProps;->REPLACEMENT_TEXT_IS_LINK:Lio/noties/markwon/Prop;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 78
    invoke-interface {v1, p1, p2}, Lio/noties/markwon/SpanFactory;->getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public supportedTags()Ljava/util/Collection;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "img"

    .line 27
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
