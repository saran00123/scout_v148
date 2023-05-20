.class public Lio/noties/markwon/html/tag/BlockquoteHandler;
.super Lio/noties/markwon/html/TagHandler;
.source "BlockquoteHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lio/noties/markwon/html/TagHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lio/noties/markwon/MarkwonVisitor;Lio/noties/markwon/html/MarkwonHtmlRenderer;Lio/noties/markwon/html/HtmlTag;)V
    .registers 6
    .param p1    # Lio/noties/markwon/MarkwonVisitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/html/MarkwonHtmlRenderer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/noties/markwon/html/HtmlTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag;->isBlock()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 27
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag;->getAsBlock()Lio/noties/markwon/html/HtmlTag$Block;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lio/noties/markwon/html/tag/BlockquoteHandler;->visitChildren(Lio/noties/markwon/MarkwonVisitor;Lio/noties/markwon/html/MarkwonHtmlRenderer;Lio/noties/markwon/html/HtmlTag$Block;)V

    .line 30
    :cond_d
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->configuration()Lio/noties/markwon/MarkwonConfiguration;

    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lio/noties/markwon/MarkwonConfiguration;->spansFactory()Lio/noties/markwon/MarkwonSpansFactory;

    move-result-object v0

    const-class v1, Lorg/commonmark/node/BlockQuote;

    invoke-interface {v0, v1}, Lio/noties/markwon/MarkwonSpansFactory;->get(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 34
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object v1

    .line 35
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->renderProps()Lio/noties/markwon/RenderProps;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Lio/noties/markwon/SpanFactory;->getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object p1

    .line 36
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag;->start()I

    move-result p2

    .line 37
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag;->end()I

    move-result p3

    .line 33
    invoke-static {v1, p1, p2, p3}, Lio/noties/markwon/SpannableBuilder;->setSpans(Lio/noties/markwon/SpannableBuilder;Ljava/lang/Object;II)V

    :cond_34
    return-void
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

    const-string v0, "blockquote"

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
