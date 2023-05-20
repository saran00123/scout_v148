.class public Lio/noties/markwon/html/HtmlPlugin;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "HtmlPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/html/HtmlPlugin$HtmlConfigure;
    }
.end annotation


# static fields
.field public static final SCRIPT_DEF_TEXT_SIZE_RATIO:F = 0.75f


# instance fields
.field private final builder:Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;

.field private final htmlParser:Lio/noties/markwon/html/MarkwonHtmlParser;

.field private htmlRenderer:Lio/noties/markwon/html/MarkwonHtmlRenderer;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Lio/noties/markwon/AbstractMarkwonPlugin;-><init>()V

    .line 61
    new-instance v0, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;

    invoke-direct {v0}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;-><init>()V

    iput-object v0, p0, Lio/noties/markwon/html/HtmlPlugin;->builder:Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;

    .line 62
    invoke-static {}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->create()Lio/noties/markwon/html/MarkwonHtmlParserImpl;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/html/HtmlPlugin;->htmlParser:Lio/noties/markwon/html/MarkwonHtmlParser;

    return-void
.end method

.method static synthetic access$000(Lio/noties/markwon/html/HtmlPlugin;Lio/noties/markwon/MarkwonVisitor;Ljava/lang/String;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Lio/noties/markwon/html/HtmlPlugin;->visitHtml(Lio/noties/markwon/MarkwonVisitor;Ljava/lang/String;)V

    return-void
.end method

.method public static create()Lio/noties/markwon/html/HtmlPlugin;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 40
    new-instance v0, Lio/noties/markwon/html/HtmlPlugin;

    invoke-direct {v0}, Lio/noties/markwon/html/HtmlPlugin;-><init>()V

    return-object v0
.end method

.method public static create(Lio/noties/markwon/html/HtmlPlugin$HtmlConfigure;)Lio/noties/markwon/html/HtmlPlugin;
    .registers 2
    .param p0    # Lio/noties/markwon/html/HtmlPlugin$HtmlConfigure;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 48
    invoke-static {}, Lio/noties/markwon/html/HtmlPlugin;->create()Lio/noties/markwon/html/HtmlPlugin;

    move-result-object v0

    .line 49
    invoke-interface {p0, v0}, Lio/noties/markwon/html/HtmlPlugin$HtmlConfigure;->configureHtml(Lio/noties/markwon/html/HtmlPlugin;)V

    return-object v0
.end method

.method private visitHtml(Lio/noties/markwon/MarkwonVisitor;Ljava/lang/String;)V
    .registers 4
    .param p1    # Lio/noties/markwon/MarkwonVisitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_b

    .line 163
    iget-object v0, p0, Lio/noties/markwon/html/HtmlPlugin;->htmlParser:Lio/noties/markwon/html/MarkwonHtmlParser;

    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lio/noties/markwon/html/MarkwonHtmlParser;->processFragment(Ljava/lang/Appendable;Ljava/lang/String;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public addHandler(Lio/noties/markwon/html/TagHandler;)Lio/noties/markwon/html/HtmlPlugin;
    .registers 3
    .param p1    # Lio/noties/markwon/html/TagHandler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 81
    iget-object v0, p0, Lio/noties/markwon/html/HtmlPlugin;->builder:Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;

    invoke-virtual {v0, p1}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;->addHandler(Lio/noties/markwon/html/TagHandler;)V

    return-object p0
.end method

.method public afterRender(Lorg/commonmark/node/Node;Lio/noties/markwon/MarkwonVisitor;)V
    .registers 4
    .param p1    # Lorg/commonmark/node/Node;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/MarkwonVisitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 136
    iget-object p1, p0, Lio/noties/markwon/html/HtmlPlugin;->htmlRenderer:Lio/noties/markwon/html/MarkwonHtmlRenderer;

    if-eqz p1, :cond_a

    .line 138
    iget-object v0, p0, Lio/noties/markwon/html/HtmlPlugin;->htmlParser:Lio/noties/markwon/html/MarkwonHtmlParser;

    invoke-virtual {p1, p2, v0}, Lio/noties/markwon/html/MarkwonHtmlRenderer;->render(Lio/noties/markwon/MarkwonVisitor;Lio/noties/markwon/html/MarkwonHtmlParser;)V

    return-void

    .line 140
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected state, html-renderer is not defined"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public allowNonClosedTags(Z)Lio/noties/markwon/html/HtmlPlugin;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 72
    iget-object v0, p0, Lio/noties/markwon/html/HtmlPlugin;->builder:Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;

    invoke-virtual {v0, p1}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;->allowNonClosedTags(Z)V

    return-object p0
.end method

.method public configureConfiguration(Lio/noties/markwon/MarkwonConfiguration$Builder;)V
    .registers 3
    .param p1    # Lio/noties/markwon/MarkwonConfiguration$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 112
    iget-object p1, p0, Lio/noties/markwon/html/HtmlPlugin;->builder:Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;

    .line 114
    invoke-virtual {p1}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;->excludeDefaults()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 118
    invoke-static {}, Lio/noties/markwon/html/tag/ImageHandler;->create()Lio/noties/markwon/html/tag/ImageHandler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;->addDefaultTagHandler(Lio/noties/markwon/html/TagHandler;)V

    .line 119
    new-instance v0, Lio/noties/markwon/html/tag/LinkHandler;

    invoke-direct {v0}, Lio/noties/markwon/html/tag/LinkHandler;-><init>()V

    invoke-virtual {p1, v0}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;->addDefaultTagHandler(Lio/noties/markwon/html/TagHandler;)V

    .line 120
    new-instance v0, Lio/noties/markwon/html/tag/BlockquoteHandler;

    invoke-direct {v0}, Lio/noties/markwon/html/tag/BlockquoteHandler;-><init>()V

    invoke-virtual {p1, v0}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;->addDefaultTagHandler(Lio/noties/markwon/html/TagHandler;)V

    .line 121
    new-instance v0, Lio/noties/markwon/html/tag/SubScriptHandler;

    invoke-direct {v0}, Lio/noties/markwon/html/tag/SubScriptHandler;-><init>()V

    invoke-virtual {p1, v0}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;->addDefaultTagHandler(Lio/noties/markwon/html/TagHandler;)V

    .line 122
    new-instance v0, Lio/noties/markwon/html/tag/SuperScriptHandler;

    invoke-direct {v0}, Lio/noties/markwon/html/tag/SuperScriptHandler;-><init>()V

    invoke-virtual {p1, v0}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;->addDefaultTagHandler(Lio/noties/markwon/html/TagHandler;)V

    .line 123
    new-instance v0, Lio/noties/markwon/html/tag/StrongEmphasisHandler;

    invoke-direct {v0}, Lio/noties/markwon/html/tag/StrongEmphasisHandler;-><init>()V

    invoke-virtual {p1, v0}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;->addDefaultTagHandler(Lio/noties/markwon/html/TagHandler;)V

    .line 124
    new-instance v0, Lio/noties/markwon/html/tag/StrikeHandler;

    invoke-direct {v0}, Lio/noties/markwon/html/tag/StrikeHandler;-><init>()V

    invoke-virtual {p1, v0}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;->addDefaultTagHandler(Lio/noties/markwon/html/TagHandler;)V

    .line 125
    new-instance v0, Lio/noties/markwon/html/tag/UnderlineHandler;

    invoke-direct {v0}, Lio/noties/markwon/html/tag/UnderlineHandler;-><init>()V

    invoke-virtual {p1, v0}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;->addDefaultTagHandler(Lio/noties/markwon/html/TagHandler;)V

    .line 126
    new-instance v0, Lio/noties/markwon/html/tag/ListHandler;

    invoke-direct {v0}, Lio/noties/markwon/html/tag/ListHandler;-><init>()V

    invoke-virtual {p1, v0}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;->addDefaultTagHandler(Lio/noties/markwon/html/TagHandler;)V

    .line 127
    new-instance v0, Lio/noties/markwon/html/tag/EmphasisHandler;

    invoke-direct {v0}, Lio/noties/markwon/html/tag/EmphasisHandler;-><init>()V

    invoke-virtual {p1, v0}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;->addDefaultTagHandler(Lio/noties/markwon/html/TagHandler;)V

    .line 128
    new-instance v0, Lio/noties/markwon/html/tag/HeadingHandler;

    invoke-direct {v0}, Lio/noties/markwon/html/tag/HeadingHandler;-><init>()V

    invoke-virtual {p1, v0}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;->addDefaultTagHandler(Lio/noties/markwon/html/TagHandler;)V

    .line 131
    :cond_5f
    invoke-virtual {p1}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;->build()Lio/noties/markwon/html/MarkwonHtmlRenderer;

    move-result-object p1

    iput-object p1, p0, Lio/noties/markwon/html/HtmlPlugin;->htmlRenderer:Lio/noties/markwon/html/MarkwonHtmlRenderer;

    return-void
.end method

.method public configureVisitor(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 4
    .param p1    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 146
    const-class v0, Lorg/commonmark/node/HtmlBlock;

    new-instance v1, Lio/noties/markwon/html/HtmlPlugin$2;

    invoke-direct {v1, p0}, Lio/noties/markwon/html/HtmlPlugin$2;-><init>(Lio/noties/markwon/html/HtmlPlugin;)V

    .line 147
    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    move-result-object p1

    const-class v0, Lorg/commonmark/node/HtmlInline;

    new-instance v1, Lio/noties/markwon/html/HtmlPlugin$1;

    invoke-direct {v1, p0}, Lio/noties/markwon/html/HtmlPlugin$1;-><init>(Lio/noties/markwon/html/HtmlPlugin;)V

    .line 153
    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method public excludeDefaults(Z)Lio/noties/markwon/html/HtmlPlugin;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 103
    iget-object v0, p0, Lio/noties/markwon/html/HtmlPlugin;->builder:Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;

    invoke-virtual {v0, p1}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;->excludeDefaults(Z)V

    return-object p0
.end method

.method public getHandler(Ljava/lang/String;)Lio/noties/markwon/html/TagHandler;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 90
    iget-object v0, p0, Lio/noties/markwon/html/HtmlPlugin;->builder:Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;

    invoke-virtual {v0, p1}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;->getHandler(Ljava/lang/String;)Lio/noties/markwon/html/TagHandler;

    move-result-object p1

    return-object p1
.end method
