.class Lio/noties/markwon/html/MarkwonHtmlRendererImpl;
.super Lio/noties/markwon/html/MarkwonHtmlRenderer;
.source "MarkwonHtmlRendererImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/html/MarkwonHtmlRendererImpl$Builder;
    }
.end annotation


# instance fields
.field private final allowNonClosedTags:Z

.field private final tagHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/noties/markwon/html/TagHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLjava/util/Map;)V
    .registers 3
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/noties/markwon/html/TagHandler;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lio/noties/markwon/html/MarkwonHtmlRenderer;-><init>()V

    .line 20
    iput-boolean p1, p0, Lio/noties/markwon/html/MarkwonHtmlRendererImpl;->allowNonClosedTags:Z

    .line 21
    iput-object p2, p0, Lio/noties/markwon/html/MarkwonHtmlRendererImpl;->tagHandlers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public render(Lio/noties/markwon/MarkwonVisitor;Lio/noties/markwon/html/MarkwonHtmlParser;)V
    .registers 5
    .param p1    # Lio/noties/markwon/MarkwonVisitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/html/MarkwonHtmlParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    iget-boolean v0, p0, Lio/noties/markwon/html/MarkwonHtmlRendererImpl;->allowNonClosedTags:Z

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_a

    .line 33
    :cond_6
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->length()I

    move-result v0

    .line 36
    :goto_a
    new-instance v1, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$1;

    invoke-direct {v1, p0, p1}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$1;-><init>(Lio/noties/markwon/html/MarkwonHtmlRendererImpl;Lio/noties/markwon/MarkwonVisitor;)V

    invoke-virtual {p2, v0, v1}, Lio/noties/markwon/html/MarkwonHtmlParser;->flushInlineTags(ILio/noties/markwon/html/MarkwonHtmlParser$FlushAction;)V

    .line 57
    new-instance v1, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$2;

    invoke-direct {v1, p0, p1}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$2;-><init>(Lio/noties/markwon/html/MarkwonHtmlRendererImpl;Lio/noties/markwon/MarkwonVisitor;)V

    invoke-virtual {p2, v0, v1}, Lio/noties/markwon/html/MarkwonHtmlParser;->flushBlockTags(ILio/noties/markwon/html/MarkwonHtmlParser$FlushAction;)V

    .line 80
    invoke-virtual {p2}, Lio/noties/markwon/html/MarkwonHtmlParser;->reset()V

    return-void
.end method

.method public tagHandler(Ljava/lang/String;)Lio/noties/markwon/html/TagHandler;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 86
    iget-object v0, p0, Lio/noties/markwon/html/MarkwonHtmlRendererImpl;->tagHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/noties/markwon/html/TagHandler;

    return-object p1
.end method
