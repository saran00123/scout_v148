.class public abstract Lorg/commonmark/node/AbstractVisitor;
.super Ljava/lang/Object;
.source "AbstractVisitor.java"

# interfaces
.implements Lorg/commonmark/node/Visitor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lorg/commonmark/node/BlockQuote;)V
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/BulletList;)V
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Code;)V
    .registers 2

    .line 23
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/CustomBlock;)V
    .registers 2

    .line 118
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/CustomNode;)V
    .registers 2

    .line 123
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Document;)V
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Emphasis;)V
    .registers 2

    .line 33
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/FencedCodeBlock;)V
    .registers 2

    .line 38
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/HardLineBreak;)V
    .registers 2

    .line 43
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Heading;)V
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/HtmlBlock;)V
    .registers 2

    .line 63
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/HtmlInline;)V
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Image;)V
    .registers 2

    .line 68
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/IndentedCodeBlock;)V
    .registers 2

    .line 73
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Link;)V
    .registers 2

    .line 78
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/LinkReferenceDefinition;)V
    .registers 2

    .line 113
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/ListItem;)V
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/OrderedList;)V
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Paragraph;)V
    .registers 2

    .line 93
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/SoftLineBreak;)V
    .registers 2

    .line 98
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/StrongEmphasis;)V
    .registers 2

    .line 103
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Text;)V
    .registers 2

    .line 108
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/ThematicBreak;)V
    .registers 2

    .line 53
    invoke-virtual {p0, p1}, Lorg/commonmark/node/AbstractVisitor;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method protected visitChildren(Lorg/commonmark/node/Node;)V
    .registers 3

    .line 132
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_f

    .line 136
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v0

    .line 137
    invoke-virtual {p1, p0}, Lorg/commonmark/node/Node;->accept(Lorg/commonmark/node/Visitor;)V

    move-object p1, v0

    goto :goto_4

    :cond_f
    return-void
.end method
