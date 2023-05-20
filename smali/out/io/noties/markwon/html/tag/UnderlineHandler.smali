.class public Lio/noties/markwon/html/tag/UnderlineHandler;
.super Lio/noties/markwon/html/TagHandler;
.source "UnderlineHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Lio/noties/markwon/html/TagHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lio/noties/markwon/MarkwonVisitor;Lio/noties/markwon/html/MarkwonHtmlRenderer;Lio/noties/markwon/html/HtmlTag;)V
    .registers 5
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

    .line 27
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag;->isBlock()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 28
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag;->getAsBlock()Lio/noties/markwon/html/HtmlTag$Block;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lio/noties/markwon/html/tag/UnderlineHandler;->visitChildren(Lio/noties/markwon/MarkwonVisitor;Lio/noties/markwon/html/MarkwonHtmlRenderer;Lio/noties/markwon/html/HtmlTag$Block;)V

    .line 32
    :cond_d
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object p1

    new-instance p2, Landroid/text/style/UnderlineSpan;

    invoke-direct {p2}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 34
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag;->start()I

    move-result v0

    .line 35
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag;->end()I

    move-result p3

    .line 31
    invoke-static {p1, p2, v0, p3}, Lio/noties/markwon/SpannableBuilder;->setSpans(Lio/noties/markwon/SpannableBuilder;Ljava/lang/Object;II)V

    return-void
.end method

.method public supportedTags()Ljava/util/Collection;
    .registers 3
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

    const-string v0, "u"

    const-string v1, "ins"

    .line 42
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
