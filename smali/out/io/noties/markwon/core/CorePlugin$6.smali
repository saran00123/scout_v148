.class Lio/noties/markwon/core/CorePlugin$6;
.super Ljava/lang/Object;
.source "CorePlugin.java"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor$NodeVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/core/CorePlugin;->fencedCodeBlock(Lio/noties/markwon/MarkwonVisitor$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/noties/markwon/MarkwonVisitor$NodeVisitor<",
        "Lorg/commonmark/node/FencedCodeBlock;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/FencedCodeBlock;)V
    .registers 5
    .param p1    # Lio/noties/markwon/MarkwonVisitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/commonmark/node/FencedCodeBlock;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 251
    invoke-virtual {p2}, Lorg/commonmark/node/FencedCodeBlock;->getInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/commonmark/node/FencedCodeBlock;->getLiteral()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lio/noties/markwon/core/CorePlugin;->visitCodeBlock(Lio/noties/markwon/MarkwonVisitor;Ljava/lang/String;Ljava/lang/String;Lorg/commonmark/node/Node;)V

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

    .line 248
    check-cast p2, Lorg/commonmark/node/FencedCodeBlock;

    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/core/CorePlugin$6;->visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/FencedCodeBlock;)V

    return-void
.end method
