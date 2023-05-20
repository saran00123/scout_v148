.class public abstract Lio/noties/markwon/html/TagHandler;
.super Ljava/lang/Object;
.source "TagHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static visitChildren(Lio/noties/markwon/MarkwonVisitor;Lio/noties/markwon/html/MarkwonHtmlRenderer;Lio/noties/markwon/html/HtmlTag$Block;)V
    .registers 5
    .param p0    # Lio/noties/markwon/MarkwonVisitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/noties/markwon/html/MarkwonHtmlRenderer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/html/HtmlTag$Block;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    invoke-interface {p2}, Lio/noties/markwon/html/HtmlTag$Block;->children()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/noties/markwon/html/HtmlTag$Block;

    .line 33
    invoke-interface {v0}, Lio/noties/markwon/html/HtmlTag$Block;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_8

    .line 37
    :cond_1b
    invoke-interface {v0}, Lio/noties/markwon/html/HtmlTag$Block;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/noties/markwon/html/MarkwonHtmlRenderer;->tagHandler(Ljava/lang/String;)Lio/noties/markwon/html/TagHandler;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 39
    invoke-virtual {v1, p0, p1, v0}, Lio/noties/markwon/html/TagHandler;->handle(Lio/noties/markwon/MarkwonVisitor;Lio/noties/markwon/html/MarkwonHtmlRenderer;Lio/noties/markwon/html/HtmlTag;)V

    goto :goto_8

    .line 41
    :cond_29
    invoke-static {p0, p1, v0}, Lio/noties/markwon/html/TagHandler;->visitChildren(Lio/noties/markwon/MarkwonVisitor;Lio/noties/markwon/html/MarkwonHtmlRenderer;Lio/noties/markwon/html/HtmlTag$Block;)V

    goto :goto_8

    :cond_2d
    return-void
.end method


# virtual methods
.method public abstract handle(Lio/noties/markwon/MarkwonVisitor;Lio/noties/markwon/html/MarkwonHtmlRenderer;Lio/noties/markwon/html/HtmlTag;)V
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
.end method

.method public abstract supportedTags()Ljava/util/Collection;
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
.end method
