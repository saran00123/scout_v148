.class public Lio/noties/markwon/MarkwonConfiguration$Builder;
.super Ljava/lang/Object;
.source "MarkwonConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/MarkwonConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

.field private imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

.field private linkResolver:Lio/noties/markwon/LinkResolver;

.field private spansFactory:Lio/noties/markwon/MarkwonSpansFactory;

.field private syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

.field private theme:Lio/noties/markwon/core/MarkwonTheme;

.field private urlProcessor:Lio/noties/markwon/urlprocessor/UrlProcessor;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/core/MarkwonTheme;
    .registers 1

    .line 84
    iget-object p0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->theme:Lio/noties/markwon/core/MarkwonTheme;

    return-object p0
.end method

.method static synthetic access$100(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/image/AsyncDrawableLoader;
    .registers 1

    .line 84
    iget-object p0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

    return-object p0
.end method

.method static synthetic access$200(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/syntax/SyntaxHighlight;
    .registers 1

    .line 84
    iget-object p0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

    return-object p0
.end method

.method static synthetic access$300(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/LinkResolver;
    .registers 1

    .line 84
    iget-object p0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->linkResolver:Lio/noties/markwon/LinkResolver;

    return-object p0
.end method

.method static synthetic access$400(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/urlprocessor/UrlProcessor;
    .registers 1

    .line 84
    iget-object p0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->urlProcessor:Lio/noties/markwon/urlprocessor/UrlProcessor;

    return-object p0
.end method

.method static synthetic access$500(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/image/ImageSizeResolver;
    .registers 1

    .line 84
    iget-object p0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

    return-object p0
.end method

.method static synthetic access$600(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/MarkwonSpansFactory;
    .registers 1

    .line 84
    iget-object p0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->spansFactory:Lio/noties/markwon/MarkwonSpansFactory;

    return-object p0
.end method


# virtual methods
.method public asyncDrawableLoader(Lio/noties/markwon/image/AsyncDrawableLoader;)Lio/noties/markwon/MarkwonConfiguration$Builder;
    .registers 2
    .param p1    # Lio/noties/markwon/image/AsyncDrawableLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 102
    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

    return-object p0
.end method

.method public build(Lio/noties/markwon/core/MarkwonTheme;Lio/noties/markwon/MarkwonSpansFactory;)Lio/noties/markwon/MarkwonConfiguration;
    .registers 3
    .param p1    # Lio/noties/markwon/core/MarkwonTheme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/MarkwonSpansFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 138
    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 139
    iput-object p2, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->spansFactory:Lio/noties/markwon/MarkwonSpansFactory;

    .line 142
    iget-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

    if-nez p1, :cond_e

    .line 143
    invoke-static {}, Lio/noties/markwon/image/AsyncDrawableLoader;->noOp()Lio/noties/markwon/image/AsyncDrawableLoader;

    move-result-object p1

    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

    .line 146
    :cond_e
    iget-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

    if-nez p1, :cond_19

    .line 147
    new-instance p1, Lio/noties/markwon/syntax/SyntaxHighlightNoOp;

    invoke-direct {p1}, Lio/noties/markwon/syntax/SyntaxHighlightNoOp;-><init>()V

    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

    .line 150
    :cond_19
    iget-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->linkResolver:Lio/noties/markwon/LinkResolver;

    if-nez p1, :cond_24

    .line 151
    new-instance p1, Lio/noties/markwon/LinkResolverDef;

    invoke-direct {p1}, Lio/noties/markwon/LinkResolverDef;-><init>()V

    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->linkResolver:Lio/noties/markwon/LinkResolver;

    .line 154
    :cond_24
    iget-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->urlProcessor:Lio/noties/markwon/urlprocessor/UrlProcessor;

    if-nez p1, :cond_2f

    .line 155
    new-instance p1, Lio/noties/markwon/urlprocessor/UrlProcessorNoOp;

    invoke-direct {p1}, Lio/noties/markwon/urlprocessor/UrlProcessorNoOp;-><init>()V

    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->urlProcessor:Lio/noties/markwon/urlprocessor/UrlProcessor;

    .line 158
    :cond_2f
    iget-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

    if-nez p1, :cond_3a

    .line 159
    new-instance p1, Lio/noties/markwon/image/ImageSizeResolverDef;

    invoke-direct {p1}, Lio/noties/markwon/image/ImageSizeResolverDef;-><init>()V

    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

    .line 162
    :cond_3a
    new-instance p1, Lio/noties/markwon/MarkwonConfiguration;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/noties/markwon/MarkwonConfiguration;-><init>(Lio/noties/markwon/MarkwonConfiguration$Builder;Lio/noties/markwon/MarkwonConfiguration$1;)V

    return-object p1
.end method

.method public imageSizeResolver(Lio/noties/markwon/image/ImageSizeResolver;)Lio/noties/markwon/MarkwonConfiguration$Builder;
    .registers 2
    .param p1    # Lio/noties/markwon/image/ImageSizeResolver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 129
    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

    return-object p0
.end method

.method public linkResolver(Lio/noties/markwon/LinkResolver;)Lio/noties/markwon/MarkwonConfiguration$Builder;
    .registers 2
    .param p1    # Lio/noties/markwon/LinkResolver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 114
    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->linkResolver:Lio/noties/markwon/LinkResolver;

    return-object p0
.end method

.method public syntaxHighlight(Lio/noties/markwon/syntax/SyntaxHighlight;)Lio/noties/markwon/MarkwonConfiguration$Builder;
    .registers 2
    .param p1    # Lio/noties/markwon/syntax/SyntaxHighlight;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 108
    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

    return-object p0
.end method

.method public urlProcessor(Lio/noties/markwon/urlprocessor/UrlProcessor;)Lio/noties/markwon/MarkwonConfiguration$Builder;
    .registers 2
    .param p1    # Lio/noties/markwon/urlprocessor/UrlProcessor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 120
    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->urlProcessor:Lio/noties/markwon/urlprocessor/UrlProcessor;

    return-object p0
.end method
