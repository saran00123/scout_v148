.class public Lio/noties/markwon/html/tag/LinkHandler;
.super Lio/noties/markwon/html/tag/SimpleTagHandler;
.source "LinkHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lio/noties/markwon/html/tag/SimpleTagHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;Lio/noties/markwon/html/HtmlTag;)Ljava/lang/Object;
    .registers 7
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

    .line 23
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag;->attributes()Ljava/util/Map;

    move-result-object p3

    const-string v0, "href"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 24
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 25
    invoke-virtual {p1}, Lio/noties/markwon/MarkwonConfiguration;->spansFactory()Lio/noties/markwon/MarkwonSpansFactory;

    move-result-object v0

    const-class v1, Lorg/commonmark/node/Link;

    invoke-interface {v0, v1}, Lio/noties/markwon/MarkwonSpansFactory;->get(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 28
    sget-object v1, Lio/noties/markwon/core/CoreProps;->LINK_DESTINATION:Lio/noties/markwon/Prop;

    .line 30
    invoke-virtual {p1}, Lio/noties/markwon/MarkwonConfiguration;->urlProcessor()Lio/noties/markwon/urlprocessor/UrlProcessor;

    move-result-object v2

    invoke-interface {v2, p3}, Lio/noties/markwon/urlprocessor/UrlProcessor;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 28
    invoke-virtual {v1, p2, p3}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 32
    invoke-interface {v0, p1, p2}, Lio/noties/markwon/SpanFactory;->getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_30
    const/4 p1, 0x0

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

    const-string v0, "a"

    .line 41
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
