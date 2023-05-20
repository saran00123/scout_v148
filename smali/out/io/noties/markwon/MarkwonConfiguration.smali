.class public Lio/noties/markwon/MarkwonConfiguration;
.super Ljava/lang/Object;
.source "MarkwonConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/MarkwonConfiguration$Builder;
    }
.end annotation


# instance fields
.field private final asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

.field private final imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

.field private final linkResolver:Lio/noties/markwon/LinkResolver;

.field private final spansFactory:Lio/noties/markwon/MarkwonSpansFactory;

.field private final syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

.field private final theme:Lio/noties/markwon/core/MarkwonTheme;

.field private final urlProcessor:Lio/noties/markwon/urlprocessor/UrlProcessor;


# direct methods
.method private constructor <init>(Lio/noties/markwon/MarkwonConfiguration$Builder;)V
    .registers 3
    .param p1    # Lio/noties/markwon/MarkwonConfiguration$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lio/noties/markwon/MarkwonConfiguration$Builder;->access$000(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/core/MarkwonTheme;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 37
    invoke-static {p1}, Lio/noties/markwon/MarkwonConfiguration$Builder;->access$100(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/image/AsyncDrawableLoader;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

    .line 38
    invoke-static {p1}, Lio/noties/markwon/MarkwonConfiguration$Builder;->access$200(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/syntax/SyntaxHighlight;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

    .line 39
    invoke-static {p1}, Lio/noties/markwon/MarkwonConfiguration$Builder;->access$300(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/LinkResolver;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->linkResolver:Lio/noties/markwon/LinkResolver;

    .line 40
    invoke-static {p1}, Lio/noties/markwon/MarkwonConfiguration$Builder;->access$400(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/urlprocessor/UrlProcessor;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->urlProcessor:Lio/noties/markwon/urlprocessor/UrlProcessor;

    .line 41
    invoke-static {p1}, Lio/noties/markwon/MarkwonConfiguration$Builder;->access$500(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/image/ImageSizeResolver;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

    .line 42
    invoke-static {p1}, Lio/noties/markwon/MarkwonConfiguration$Builder;->access$600(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/MarkwonSpansFactory;

    move-result-object p1

    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration;->spansFactory:Lio/noties/markwon/MarkwonSpansFactory;

    return-void
.end method

.method synthetic constructor <init>(Lio/noties/markwon/MarkwonConfiguration$Builder;Lio/noties/markwon/MarkwonConfiguration$1;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonConfiguration;-><init>(Lio/noties/markwon/MarkwonConfiguration$Builder;)V

    return-void
.end method

.method public static builder()Lio/noties/markwon/MarkwonConfiguration$Builder;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 22
    new-instance v0, Lio/noties/markwon/MarkwonConfiguration$Builder;

    invoke-direct {v0}, Lio/noties/markwon/MarkwonConfiguration$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public asyncDrawableLoader()Lio/noties/markwon/image/AsyncDrawableLoader;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 52
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

    return-object v0
.end method

.method public imageSizeResolver()Lio/noties/markwon/image/ImageSizeResolver;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 72
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

    return-object v0
.end method

.method public linkResolver()Lio/noties/markwon/LinkResolver;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 62
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->linkResolver:Lio/noties/markwon/LinkResolver;

    return-object v0
.end method

.method public spansFactory()Lio/noties/markwon/MarkwonSpansFactory;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 80
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->spansFactory:Lio/noties/markwon/MarkwonSpansFactory;

    return-object v0
.end method

.method public syntaxHighlight()Lio/noties/markwon/syntax/SyntaxHighlight;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 57
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

    return-object v0
.end method

.method public theme()Lio/noties/markwon/core/MarkwonTheme;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 47
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->theme:Lio/noties/markwon/core/MarkwonTheme;

    return-object v0
.end method

.method public urlProcessor()Lio/noties/markwon/urlprocessor/UrlProcessor;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 67
    iget-object v0, p0, Lio/noties/markwon/MarkwonConfiguration;->urlProcessor:Lio/noties/markwon/urlprocessor/UrlProcessor;

    return-object v0
.end method
