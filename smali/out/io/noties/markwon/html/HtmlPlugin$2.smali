.class Lio/noties/markwon/html/HtmlPlugin$2;
.super Ljava/lang/Object;
.source "HtmlPlugin.java"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor$NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/html/HtmlPlugin;->configureVisitor(Lio/noties/markwon/MarkwonVisitor$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/noties/markwon/MarkwonVisitor$NodeVisitor<",
        "Lorg/commonmark/node/HtmlBlock;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/noties/markwon/html/HtmlPlugin;


# direct methods
.method constructor <init>(Lio/noties/markwon/html/HtmlPlugin;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lio/noties/markwon/html/HtmlPlugin$2;->this$0:Lio/noties/markwon/html/HtmlPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/HtmlBlock;)V
    .registers 4
    .param p1    # Lio/noties/markwon/MarkwonVisitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/commonmark/node/HtmlBlock;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 150
    iget-object v0, p0, Lio/noties/markwon/html/HtmlPlugin$2;->this$0:Lio/noties/markwon/html/HtmlPlugin;

    invoke-virtual {p2}, Lorg/commonmark/node/HtmlBlock;->getLiteral()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lio/noties/markwon/html/HtmlPlugin;->access$000(Lio/noties/markwon/html/HtmlPlugin;Lio/noties/markwon/MarkwonVisitor;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Node;)V
    .registers 3
    .param p1    # Lio/noties/markwon/MarkwonVisitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/commonmark/node/Node;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 147
    check-cast p2, Lorg/commonmark/node/HtmlBlock;

    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/html/HtmlPlugin$2;->visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/HtmlBlock;)V

    return-void
.end method
