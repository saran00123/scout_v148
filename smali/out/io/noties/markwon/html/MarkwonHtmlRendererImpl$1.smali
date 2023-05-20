.class Lio/noties/markwon/html/MarkwonHtmlRendererImpl$1;
.super Ljava/lang/Object;
.source "MarkwonHtmlRendererImpl.java"

# interfaces
.implements Lio/noties/markwon/html/MarkwonHtmlParser$FlushAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/html/MarkwonHtmlRendererImpl;->render(Lio/noties/markwon/MarkwonVisitor;Lio/noties/markwon/html/MarkwonHtmlParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/noties/markwon/html/MarkwonHtmlParser$FlushAction<",
        "Lio/noties/markwon/html/HtmlTag$Inline;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/noties/markwon/html/MarkwonHtmlRendererImpl;

.field final synthetic val$visitor:Lio/noties/markwon/MarkwonVisitor;


# direct methods
.method constructor <init>(Lio/noties/markwon/html/MarkwonHtmlRendererImpl;Lio/noties/markwon/MarkwonVisitor;)V
    .registers 3

    .line 36
    iput-object p1, p0, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$1;->this$0:Lio/noties/markwon/html/MarkwonHtmlRendererImpl;

    iput-object p2, p0, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$1;->val$visitor:Lio/noties/markwon/MarkwonVisitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/util/List;)V
    .registers 6
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/noties/markwon/html/HtmlTag$Inline;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/noties/markwon/html/HtmlTag$Inline;

    .line 45
    invoke-interface {v0}, Lio/noties/markwon/html/HtmlTag$Inline;->isClosed()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_4

    .line 49
    :cond_17
    iget-object v1, p0, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$1;->this$0:Lio/noties/markwon/html/MarkwonHtmlRendererImpl;

    invoke-interface {v0}, Lio/noties/markwon/html/HtmlTag$Inline;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/noties/markwon/html/MarkwonHtmlRendererImpl;->tagHandler(Ljava/lang/String;)Lio/noties/markwon/html/TagHandler;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 51
    iget-object v2, p0, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$1;->val$visitor:Lio/noties/markwon/MarkwonVisitor;

    iget-object v3, p0, Lio/noties/markwon/html/MarkwonHtmlRendererImpl$1;->this$0:Lio/noties/markwon/html/MarkwonHtmlRendererImpl;

    invoke-virtual {v1, v2, v3, v0}, Lio/noties/markwon/html/TagHandler;->handle(Lio/noties/markwon/MarkwonVisitor;Lio/noties/markwon/html/MarkwonHtmlRenderer;Lio/noties/markwon/html/HtmlTag;)V

    goto :goto_4

    :cond_2b
    return-void
.end method
