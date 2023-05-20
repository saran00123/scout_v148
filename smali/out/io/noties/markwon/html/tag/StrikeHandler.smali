.class public Lio/noties/markwon/html/tag/StrikeHandler;
.super Lio/noties/markwon/html/TagHandler;
.source "StrikeHandler.java"


# static fields
.field private static final HAS_MARKDOWN_IMPLEMENTATION:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    :try_start_0
    const-class v0, Lorg/commonmark/ext/gfm/strikethrough/Strikethrough;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v0, 0x1

    goto :goto_8

    :catch_7
    const/4 v0, 0x0

    .line 33
    :goto_8
    sput-boolean v0, Lio/noties/markwon/html/tag/StrikeHandler;->HAS_MARKDOWN_IMPLEMENTATION:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lio/noties/markwon/html/TagHandler;-><init>()V

    return-void
.end method

.method private static getMarkdownSpans(Lio/noties/markwon/MarkwonVisitor;)Ljava/lang/Object;
    .registers 4
    .param p0    # Lio/noties/markwon/MarkwonVisitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 62
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->configuration()Lio/noties/markwon/MarkwonConfiguration;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lio/noties/markwon/MarkwonConfiguration;->spansFactory()Lio/noties/markwon/MarkwonSpansFactory;

    move-result-object v1

    const-class v2, Lorg/commonmark/ext/gfm/strikethrough/Strikethrough;

    .line 64
    invoke-interface {v1, v2}, Lio/noties/markwon/MarkwonSpansFactory;->get(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 p0, 0x0

    return-object p0

    .line 68
    :cond_12
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->renderProps()Lio/noties/markwon/RenderProps;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Lio/noties/markwon/SpanFactory;->getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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

    .line 42
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag;->isBlock()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 43
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag;->getAsBlock()Lio/noties/markwon/html/HtmlTag$Block;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lio/noties/markwon/html/tag/StrikeHandler;->visitChildren(Lio/noties/markwon/MarkwonVisitor;Lio/noties/markwon/html/MarkwonHtmlRenderer;Lio/noties/markwon/html/HtmlTag$Block;)V

    .line 47
    :cond_d
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object p2

    .line 48
    sget-boolean v0, Lio/noties/markwon/html/tag/StrikeHandler;->HAS_MARKDOWN_IMPLEMENTATION:Z

    if-eqz v0, :cond_1a

    invoke-static {p1}, Lio/noties/markwon/html/tag/StrikeHandler;->getMarkdownSpans(Lio/noties/markwon/MarkwonVisitor;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1f

    :cond_1a
    new-instance p1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {p1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 49
    :goto_1f
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag;->start()I

    move-result v0

    .line 50
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag;->end()I

    move-result p3

    .line 46
    invoke-static {p2, p1, v0, p3}, Lio/noties/markwon/SpannableBuilder;->setSpans(Lio/noties/markwon/SpannableBuilder;Ljava/lang/Object;II)V

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

    const-string v0, "s"

    const-string v1, "del"

    .line 57
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
