.class Lio/noties/markwon/html/MarkwonHtmlRendererNoOp;
.super Lio/noties/markwon/html/MarkwonHtmlRenderer;
.source "MarkwonHtmlRendererNoOp.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lio/noties/markwon/html/MarkwonHtmlRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public render(Lio/noties/markwon/MarkwonVisitor;Lio/noties/markwon/html/MarkwonHtmlParser;)V
    .registers 3
    .param p1    # Lio/noties/markwon/MarkwonVisitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/html/MarkwonHtmlParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 12
    invoke-virtual {p2}, Lio/noties/markwon/html/MarkwonHtmlParser;->reset()V

    return-void
.end method

.method public tagHandler(Ljava/lang/String;)Lio/noties/markwon/html/TagHandler;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
