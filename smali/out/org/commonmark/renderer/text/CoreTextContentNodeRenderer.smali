.class public Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;
.super Lorg/commonmark/node/AbstractVisitor;
.source "CoreTextContentNodeRenderer.java"

# interfaces
.implements Lorg/commonmark/renderer/NodeRenderer;


# instance fields
.field protected final context:Lorg/commonmark/renderer/text/TextContentNodeRendererContext;

.field private listHolder:Lorg/commonmark/internal/renderer/text/ListHolder;

.field private final textContent:Lorg/commonmark/renderer/text/TextContentWriter;


# direct methods
.method public constructor <init>(Lorg/commonmark/renderer/text/TextContentNodeRendererContext;)V
    .registers 2

    .line 23
    invoke-direct {p0}, Lorg/commonmark/node/AbstractVisitor;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->context:Lorg/commonmark/renderer/text/TextContentNodeRendererContext;

    .line 25
    invoke-interface {p1}, Lorg/commonmark/renderer/text/TextContentNodeRendererContext;->getWriter()Lorg/commonmark/renderer/text/TextContentWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    return-void
.end method

.method private writeEndOfLine()V
    .registers 2

    .line 274
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->context:Lorg/commonmark/renderer/text/TextContentNodeRendererContext;

    invoke-interface {v0}, Lorg/commonmark/renderer/text/TextContentNodeRendererContext;->stripNewlines()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 275
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {v0}, Lorg/commonmark/renderer/text/TextContentWriter;->whitespace()V

    goto :goto_13

    .line 277
    :cond_e
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {v0}, Lorg/commonmark/renderer/text/TextContentWriter;->line()V

    :goto_13
    return-void
.end method

.method private writeEndOfLineIfNeeded(Lorg/commonmark/node/Node;Ljava/lang/Character;)V
    .registers 4

    .line 259
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->context:Lorg/commonmark/renderer/text/TextContentNodeRendererContext;

    invoke-interface {v0}, Lorg/commonmark/renderer/text/TextContentNodeRendererContext;->stripNewlines()Z

    move-result v0

    if-eqz v0, :cond_1f

    if-eqz p2, :cond_13

    .line 261
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-virtual {v0, p2}, Lorg/commonmark/renderer/text/TextContentWriter;->write(C)V

    .line 263
    :cond_13
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 264
    iget-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {p1}, Lorg/commonmark/renderer/text/TextContentWriter;->whitespace()V

    goto :goto_2a

    .line 267
    :cond_1f
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 268
    iget-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {p1}, Lorg/commonmark/renderer/text/TextContentWriter;->line()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method private writeLink(Lorg/commonmark/node/Node;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 227
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    if-eqz p2, :cond_15

    .line 228
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    move v3, v1

    goto :goto_16

    :cond_15
    move v3, v2

    :goto_16
    if-eqz p3, :cond_21

    const-string v4, ""

    .line 229
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_22

    :cond_21
    move v1, v2

    :goto_22
    if-eqz v0, :cond_43

    .line 232
    iget-object v2, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    const/16 v4, 0x22

    invoke-virtual {v2, v4}, Lorg/commonmark/renderer/text/TextContentWriter;->write(C)V

    .line 233
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 234
    iget-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {p1, v4}, Lorg/commonmark/renderer/text/TextContentWriter;->write(C)V

    if-nez v3, :cond_37

    if-eqz v1, :cond_43

    .line 236
    :cond_37
    iget-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {p1}, Lorg/commonmark/renderer/text/TextContentWriter;->whitespace()V

    .line 237
    iget-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    const/16 v2, 0x28

    invoke-virtual {p1, v2}, Lorg/commonmark/renderer/text/TextContentWriter;->write(C)V

    :cond_43
    if-eqz v3, :cond_56

    .line 242
    iget-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {p1, p2}, Lorg/commonmark/renderer/text/TextContentWriter;->write(Ljava/lang/String;)V

    if-eqz v1, :cond_56

    .line 244
    iget-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {p1}, Lorg/commonmark/renderer/text/TextContentWriter;->colon()V

    .line 245
    iget-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {p1}, Lorg/commonmark/renderer/text/TextContentWriter;->whitespace()V

    :cond_56
    if-eqz v1, :cond_5d

    .line 250
    iget-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {p1, p3}, Lorg/commonmark/renderer/text/TextContentWriter;->write(Ljava/lang/String;)V

    :cond_5d
    if-eqz v0, :cond_6a

    if-nez v3, :cond_63

    if-eqz v1, :cond_6a

    .line 254
    :cond_63
    iget-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Lorg/commonmark/renderer/text/TextContentWriter;->write(C)V

    :cond_6a
    return-void
.end method

.method private writeText(Ljava/lang/String;)V
    .registers 3

    .line 219
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->context:Lorg/commonmark/renderer/text/TextContentNodeRendererContext;

    invoke-interface {v0}, Lorg/commonmark/renderer/text/TextContentNodeRendererContext;->stripNewlines()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 220
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {v0, p1}, Lorg/commonmark/renderer/text/TextContentWriter;->writeStripped(Ljava/lang/String;)V

    goto :goto_13

    .line 222
    :cond_e
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {v0, p1}, Lorg/commonmark/renderer/text/TextContentWriter;->write(Ljava/lang/String;)V

    :goto_13
    return-void
.end method


# virtual methods
.method public getNodeTypes()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Node;",
            ">;>;"
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lorg/commonmark/node/Document;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/Heading;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/Paragraph;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/BlockQuote;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/BulletList;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/FencedCodeBlock;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/HtmlBlock;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/ThematicBreak;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/IndentedCodeBlock;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/Link;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/ListItem;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/OrderedList;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/Image;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/Emphasis;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/StrongEmphasis;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/Text;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/Code;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/HtmlInline;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/SoftLineBreak;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/HardLineBreak;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public render(Lorg/commonmark/node/Node;)V
    .registers 2

    .line 56
    invoke-virtual {p1, p0}, Lorg/commonmark/node/Node;->accept(Lorg/commonmark/node/Visitor;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/BlockQuote;)V
    .registers 4

    .line 67
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lorg/commonmark/renderer/text/TextContentWriter;->write(C)V

    .line 68
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 69
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    const/16 v1, 0xbb

    invoke-virtual {v0, v1}, Lorg/commonmark/renderer/text/TextContentWriter;->write(C)V

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeEndOfLineIfNeeded(Lorg/commonmark/node/Node;Ljava/lang/Character;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/BulletList;)V
    .registers 4

    .line 76
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->listHolder:Lorg/commonmark/internal/renderer/text/ListHolder;

    if-eqz v0, :cond_7

    .line 77
    invoke-direct {p0}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeEndOfLine()V

    .line 79
    :cond_7
    new-instance v0, Lorg/commonmark/internal/renderer/text/BulletListHolder;

    iget-object v1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->listHolder:Lorg/commonmark/internal/renderer/text/ListHolder;

    invoke-direct {v0, v1, p1}, Lorg/commonmark/internal/renderer/text/BulletListHolder;-><init>(Lorg/commonmark/internal/renderer/text/ListHolder;Lorg/commonmark/node/BulletList;)V

    iput-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->listHolder:Lorg/commonmark/internal/renderer/text/ListHolder;

    .line 80
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->visitChildren(Lorg/commonmark/node/Node;)V

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeEndOfLineIfNeeded(Lorg/commonmark/node/Node;Ljava/lang/Character;)V

    .line 82
    iget-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->listHolder:Lorg/commonmark/internal/renderer/text/ListHolder;

    invoke-virtual {p1}, Lorg/commonmark/internal/renderer/text/ListHolder;->getParent()Lorg/commonmark/internal/renderer/text/ListHolder;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 83
    iget-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->listHolder:Lorg/commonmark/internal/renderer/text/ListHolder;

    invoke-virtual {p1}, Lorg/commonmark/internal/renderer/text/ListHolder;->getParent()Lorg/commonmark/internal/renderer/text/ListHolder;

    move-result-object p1

    iput-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->listHolder:Lorg/commonmark/internal/renderer/text/ListHolder;

    goto :goto_2a

    .line 85
    :cond_28
    iput-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->listHolder:Lorg/commonmark/internal/renderer/text/ListHolder;

    :goto_2a
    return-void
.end method

.method public visit(Lorg/commonmark/node/Code;)V
    .registers 4

    .line 91
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lorg/commonmark/renderer/text/TextContentWriter;->write(C)V

    .line 92
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {p1}, Lorg/commonmark/node/Code;->getLiteral()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/commonmark/renderer/text/TextContentWriter;->write(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {p1, v1}, Lorg/commonmark/renderer/text/TextContentWriter;->write(C)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Document;)V
    .registers 2

    .line 62
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/FencedCodeBlock;)V
    .registers 4

    .line 98
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->context:Lorg/commonmark/renderer/text/TextContentNodeRendererContext;

    invoke-interface {v0}, Lorg/commonmark/renderer/text/TextContentNodeRendererContext;->stripNewlines()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 99
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {p1}, Lorg/commonmark/node/FencedCodeBlock;->getLiteral()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/commonmark/renderer/text/TextContentWriter;->writeStripped(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeEndOfLineIfNeeded(Lorg/commonmark/node/Node;Ljava/lang/Character;)V

    goto :goto_1f

    .line 102
    :cond_16
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {p1}, Lorg/commonmark/node/FencedCodeBlock;->getLiteral()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/commonmark/renderer/text/TextContentWriter;->write(Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method public visit(Lorg/commonmark/node/HardLineBreak;)V
    .registers 3

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1, v0}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeEndOfLineIfNeeded(Lorg/commonmark/node/Node;Ljava/lang/Character;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Heading;)V
    .registers 3

    .line 113
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->visitChildren(Lorg/commonmark/node/Node;)V

    const/16 v0, 0x3a

    .line 114
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeEndOfLineIfNeeded(Lorg/commonmark/node/Node;Ljava/lang/Character;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/HtmlBlock;)V
    .registers 2

    .line 132
    invoke-virtual {p1}, Lorg/commonmark/node/HtmlBlock;->getLiteral()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeText(Ljava/lang/String;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/HtmlInline;)V
    .registers 2

    .line 127
    invoke-virtual {p1}, Lorg/commonmark/node/HtmlInline;->getLiteral()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeText(Ljava/lang/String;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Image;)V
    .registers 4

    .line 137
    invoke-virtual {p1}, Lorg/commonmark/node/Image;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/commonmark/node/Image;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeLink(Lorg/commonmark/node/Node;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/IndentedCodeBlock;)V
    .registers 4

    .line 142
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->context:Lorg/commonmark/renderer/text/TextContentNodeRendererContext;

    invoke-interface {v0}, Lorg/commonmark/renderer/text/TextContentNodeRendererContext;->stripNewlines()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 143
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {p1}, Lorg/commonmark/node/IndentedCodeBlock;->getLiteral()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/commonmark/renderer/text/TextContentWriter;->writeStripped(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeEndOfLineIfNeeded(Lorg/commonmark/node/Node;Ljava/lang/Character;)V

    goto :goto_1f

    .line 146
    :cond_16
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    invoke-virtual {p1}, Lorg/commonmark/node/IndentedCodeBlock;->getLiteral()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/commonmark/renderer/text/TextContentWriter;->write(Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method public visit(Lorg/commonmark/node/Link;)V
    .registers 4

    .line 152
    invoke-virtual {p1}, Lorg/commonmark/node/Link;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/commonmark/node/Link;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeLink(Lorg/commonmark/node/Node;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/ListItem;)V
    .registers 8

    .line 157
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->listHolder:Lorg/commonmark/internal/renderer/text/ListHolder;

    const-string v1, " "

    const/4 v2, 0x0

    if-eqz v0, :cond_48

    instance-of v3, v0, Lorg/commonmark/internal/renderer/text/OrderedListHolder;

    if-eqz v3, :cond_48

    .line 158
    check-cast v0, Lorg/commonmark/internal/renderer/text/OrderedListHolder;

    .line 159
    iget-object v3, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->context:Lorg/commonmark/renderer/text/TextContentNodeRendererContext;

    invoke-interface {v3}, Lorg/commonmark/renderer/text/TextContentNodeRendererContext;->stripNewlines()Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, ""

    goto :goto_1c

    :cond_18
    invoke-virtual {v0}, Lorg/commonmark/internal/renderer/text/OrderedListHolder;->getIndent()Ljava/lang/String;

    move-result-object v3

    .line 160
    :goto_1c
    iget-object v4, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/commonmark/internal/renderer/text/OrderedListHolder;->getCounter()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/commonmark/internal/renderer/text/OrderedListHolder;->getDelimiter()C

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/commonmark/renderer/text/TextContentWriter;->write(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 162
    invoke-direct {p0, p1, v2}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeEndOfLineIfNeeded(Lorg/commonmark/node/Node;Ljava/lang/Character;)V

    .line 163
    invoke-virtual {v0}, Lorg/commonmark/internal/renderer/text/OrderedListHolder;->increaseCounter()V

    goto :goto_7f

    .line 164
    :cond_48
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->listHolder:Lorg/commonmark/internal/renderer/text/ListHolder;

    if-eqz v0, :cond_7f

    instance-of v3, v0, Lorg/commonmark/internal/renderer/text/BulletListHolder;

    if-eqz v3, :cond_7f

    .line 165
    check-cast v0, Lorg/commonmark/internal/renderer/text/BulletListHolder;

    .line 166
    iget-object v3, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->context:Lorg/commonmark/renderer/text/TextContentNodeRendererContext;

    invoke-interface {v3}, Lorg/commonmark/renderer/text/TextContentNodeRendererContext;->stripNewlines()Z

    move-result v3

    if-nez v3, :cond_79

    .line 167
    iget-object v3, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/commonmark/internal/renderer/text/BulletListHolder;->getIndent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/commonmark/internal/renderer/text/BulletListHolder;->getMarker()C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/commonmark/renderer/text/TextContentWriter;->write(Ljava/lang/String;)V

    .line 169
    :cond_79
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 170
    invoke-direct {p0, p1, v2}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeEndOfLineIfNeeded(Lorg/commonmark/node/Node;Ljava/lang/Character;)V

    :cond_7f
    :goto_7f
    return-void
.end method

.method public visit(Lorg/commonmark/node/OrderedList;)V
    .registers 4

    .line 176
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->listHolder:Lorg/commonmark/internal/renderer/text/ListHolder;

    if-eqz v0, :cond_7

    .line 177
    invoke-direct {p0}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeEndOfLine()V

    .line 179
    :cond_7
    new-instance v0, Lorg/commonmark/internal/renderer/text/OrderedListHolder;

    iget-object v1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->listHolder:Lorg/commonmark/internal/renderer/text/ListHolder;

    invoke-direct {v0, v1, p1}, Lorg/commonmark/internal/renderer/text/OrderedListHolder;-><init>(Lorg/commonmark/internal/renderer/text/ListHolder;Lorg/commonmark/node/OrderedList;)V

    iput-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->listHolder:Lorg/commonmark/internal/renderer/text/ListHolder;

    .line 180
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->visitChildren(Lorg/commonmark/node/Node;)V

    const/4 v0, 0x0

    .line 181
    invoke-direct {p0, p1, v0}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeEndOfLineIfNeeded(Lorg/commonmark/node/Node;Ljava/lang/Character;)V

    .line 182
    iget-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->listHolder:Lorg/commonmark/internal/renderer/text/ListHolder;

    invoke-virtual {p1}, Lorg/commonmark/internal/renderer/text/ListHolder;->getParent()Lorg/commonmark/internal/renderer/text/ListHolder;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 183
    iget-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->listHolder:Lorg/commonmark/internal/renderer/text/ListHolder;

    invoke-virtual {p1}, Lorg/commonmark/internal/renderer/text/ListHolder;->getParent()Lorg/commonmark/internal/renderer/text/ListHolder;

    move-result-object p1

    iput-object p1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->listHolder:Lorg/commonmark/internal/renderer/text/ListHolder;

    goto :goto_2a

    .line 185
    :cond_28
    iput-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->listHolder:Lorg/commonmark/internal/renderer/text/ListHolder;

    :goto_2a
    return-void
.end method

.method public visit(Lorg/commonmark/node/Paragraph;)V
    .registers 3

    .line 191
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 193
    invoke-virtual {p1}, Lorg/commonmark/node/Paragraph;->getParent()Lorg/commonmark/node/Block;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lorg/commonmark/node/Paragraph;->getParent()Lorg/commonmark/node/Block;

    move-result-object v0

    instance-of v0, v0, Lorg/commonmark/node/Document;

    if-eqz v0, :cond_15

    :cond_11
    const/4 v0, 0x0

    .line 194
    invoke-direct {p0, p1, v0}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeEndOfLineIfNeeded(Lorg/commonmark/node/Node;Ljava/lang/Character;)V

    :cond_15
    return-void
.end method

.method public visit(Lorg/commonmark/node/SoftLineBreak;)V
    .registers 3

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, p1, v0}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeEndOfLineIfNeeded(Lorg/commonmark/node/Node;Ljava/lang/Character;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Text;)V
    .registers 2

    .line 205
    invoke-virtual {p1}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeText(Ljava/lang/String;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/ThematicBreak;)V
    .registers 4

    .line 119
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->context:Lorg/commonmark/renderer/text/TextContentNodeRendererContext;

    invoke-interface {v0}, Lorg/commonmark/renderer/text/TextContentNodeRendererContext;->stripNewlines()Z

    move-result v0

    if-nez v0, :cond_f

    .line 120
    iget-object v0, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->textContent:Lorg/commonmark/renderer/text/TextContentWriter;

    const-string v1, "***"

    invoke-virtual {v0, v1}, Lorg/commonmark/renderer/text/TextContentWriter;->write(Ljava/lang/String;)V

    :cond_f
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0}, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->writeEndOfLineIfNeeded(Lorg/commonmark/node/Node;Ljava/lang/Character;)V

    return-void
.end method

.method protected visitChildren(Lorg/commonmark/node/Node;)V
    .registers 4

    .line 210
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_11

    .line 212
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lorg/commonmark/renderer/text/CoreTextContentNodeRenderer;->context:Lorg/commonmark/renderer/text/TextContentNodeRendererContext;

    invoke-interface {v1, p1}, Lorg/commonmark/renderer/text/TextContentNodeRendererContext;->render(Lorg/commonmark/node/Node;)V

    move-object p1, v0

    goto :goto_4

    :cond_11
    return-void
.end method
