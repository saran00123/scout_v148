.class public Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;
.super Lorg/commonmark/node/AbstractVisitor;
.source "CoreHtmlNodeRenderer.java"

# interfaces
.implements Lorg/commonmark/renderer/NodeRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer$AltTextVisitor;
    }
.end annotation


# instance fields
.field protected final context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

.field private final html:Lorg/commonmark/renderer/html/HtmlWriter;


# direct methods
.method public constructor <init>(Lorg/commonmark/renderer/html/HtmlNodeRendererContext;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Lorg/commonmark/node/AbstractVisitor;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

    .line 18
    invoke-interface {p1}, Lorg/commonmark/renderer/html/HtmlNodeRendererContext;->getWriter()Lorg/commonmark/renderer/html/HtmlWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    return-void
.end method

.method private getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/commonmark/node/Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 279
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/commonmark/node/Node;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

    invoke-interface {v0, p1, p2, p3}, Lorg/commonmark/renderer/html/HtmlNodeRendererContext;->extendAttributes(Lorg/commonmark/node/Node;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private isInTightList(Lorg/commonmark/node/Paragraph;)Z
    .registers 3

    .line 267
    invoke-virtual {p1}, Lorg/commonmark/node/Paragraph;->getParent()Lorg/commonmark/node/Block;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 269
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getParent()Lorg/commonmark/node/Node;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 270
    instance-of v0, p1, Lorg/commonmark/node/ListBlock;

    if-eqz v0, :cond_17

    .line 271
    check-cast p1, Lorg/commonmark/node/ListBlock;

    .line 272
    invoke-virtual {p1}, Lorg/commonmark/node/ListBlock;->isTight()Z

    move-result p1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method private renderCodeBlock(Ljava/lang/String;Lorg/commonmark/node/Node;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/commonmark/node/Node;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v0}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 248
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "pre"

    invoke-direct {p0, p2, v1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    .line 249
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "code"

    invoke-direct {p0, p2, v1, p3}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    .line 250
    iget-object p2, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p2, p1}, Lorg/commonmark/renderer/html/HtmlWriter;->text(Ljava/lang/String;)V

    .line 251
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string p2, "/code"

    invoke-virtual {p1, p2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string p2, "/pre"

    invoke-virtual {p1, p2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;)V

    .line 253
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p1}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    return-void
.end method

.method private renderListBlock(Lorg/commonmark/node/ListBlock;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/commonmark/node/ListBlock;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v0}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 258
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v0, p2, p3}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    .line 259
    iget-object p3, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p3}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 260
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 261
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p1}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 262
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p1}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

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

    .line 23
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

    .line 49
    invoke-virtual {p1, p0}, Lorg/commonmark/node/Node;->accept(Lorg/commonmark/node/Visitor;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/BlockQuote;)V
    .registers 5

    .line 84
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v0}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 85
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "blockquote"

    invoke-direct {p0, p1, v1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v0}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 87
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 88
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p1}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 89
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v0, "/blockquote"

    invoke-virtual {p1, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p1}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    return-void
.end method

.method public visit(Lorg/commonmark/node/BulletList;)V
    .registers 4

    const-string v0, "ul"

    .line 95
    invoke-direct {p0, p1, v0}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->renderListBlock(Lorg/commonmark/node/ListBlock;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Code;)V
    .registers 5

    .line 211
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "code"

    invoke-direct {p0, p1, v1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    .line 212
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p1}, Lorg/commonmark/node/Code;->getLiteral()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/commonmark/renderer/html/HtmlWriter;->text(Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v0, "/code"

    invoke-virtual {p1, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Document;)V
    .registers 2

    .line 55
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->visitChildren(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Emphasis;)V
    .registers 5

    .line 192
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "em"

    invoke-direct {p0, p1, v1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    .line 193
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 194
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v0, "/em"

    invoke-virtual {p1, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/FencedCodeBlock;)V
    .registers 7

    .line 100
    invoke-virtual {p1}, Lorg/commonmark/node/FencedCodeBlock;->getLiteral()Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 102
    invoke-virtual {p1}, Lorg/commonmark/node/FencedCodeBlock;->getInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 103
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3a

    const-string v3, " "

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1f

    goto :goto_24

    :cond_1f
    const/4 v4, 0x0

    .line 109
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 111
    :goto_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "language-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "class"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_3a
    invoke-direct {p0, v0, p1, v1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->renderCodeBlock(Ljava/lang/String;Lorg/commonmark/node/Node;Ljava/util/Map;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/HardLineBreak;)V
    .registers 5

    .line 232
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "br"

    invoke-direct {p0, p1, v1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 233
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p1}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Heading;)V
    .registers 5

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/commonmark/node/Heading;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v1}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 62
    iget-object v1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-direct {p0, p1, v0}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 64
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;)V

    .line 65
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p1}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    return-void
.end method

.method public visit(Lorg/commonmark/node/HtmlBlock;)V
    .registers 5

    .line 118
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v0}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 119
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

    invoke-interface {v0}, Lorg/commonmark/renderer/html/HtmlNodeRendererContext;->shouldEscapeHtml()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 120
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "p"

    invoke-direct {p0, p1, v1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    .line 121
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p1}, Lorg/commonmark/node/HtmlBlock;->getLiteral()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/commonmark/renderer/html/HtmlWriter;->text(Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v0, "/p"

    invoke-virtual {p1, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;)V

    goto :goto_32

    .line 124
    :cond_29
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p1}, Lorg/commonmark/node/HtmlBlock;->getLiteral()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/commonmark/renderer/html/HtmlWriter;->raw(Ljava/lang/String;)V

    .line 126
    :goto_32
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p1}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    return-void
.end method

.method public visit(Lorg/commonmark/node/HtmlInline;)V
    .registers 3

    .line 218
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

    invoke-interface {v0}, Lorg/commonmark/renderer/html/HtmlNodeRendererContext;->shouldEscapeHtml()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 219
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p1}, Lorg/commonmark/node/HtmlInline;->getLiteral()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/commonmark/renderer/html/HtmlWriter;->text(Ljava/lang/String;)V

    goto :goto_1b

    .line 221
    :cond_12
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p1}, Lorg/commonmark/node/HtmlInline;->getLiteral()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/commonmark/renderer/html/HtmlWriter;->raw(Ljava/lang/String;)V

    :goto_1b
    return-void
.end method

.method public visit(Lorg/commonmark/node/Image;)V
    .registers 6

    .line 174
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

    invoke-virtual {p1}, Lorg/commonmark/node/Image;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/commonmark/renderer/html/HtmlNodeRendererContext;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    new-instance v1, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer$AltTextVisitor;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer$AltTextVisitor;-><init>(Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer$1;)V

    .line 177
    invoke-virtual {p1, v1}, Lorg/commonmark/node/Image;->accept(Lorg/commonmark/node/Visitor;)V

    .line 178
    invoke-virtual {v1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer$AltTextVisitor;->getAltText()Ljava/lang/String;

    move-result-object v1

    .line 180
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v3, "src"

    .line 181
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "alt"

    .line 182
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {p1}, Lorg/commonmark/node/Image;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 184
    invoke-virtual {p1}, Lorg/commonmark/node/Image;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_35
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "img"

    invoke-direct {p0, p1, v1, v2}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/IndentedCodeBlock;)V
    .registers 4

    .line 138
    invoke-virtual {p1}, Lorg/commonmark/node/IndentedCodeBlock;->getLiteral()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->renderCodeBlock(Ljava/lang/String;Lorg/commonmark/node/Node;Ljava/util/Map;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Link;)V
    .registers 5

    .line 143
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 144
    iget-object v1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

    invoke-virtual {p1}, Lorg/commonmark/node/Link;->getDestination()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/commonmark/renderer/html/HtmlNodeRendererContext;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "href"

    .line 145
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p1}, Lorg/commonmark/node/Link;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 147
    invoke-virtual {p1}, Lorg/commonmark/node/Link;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_23
    iget-object v1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v2, "a"

    invoke-direct {p0, p1, v2, v0}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    .line 150
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 151
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v0, "/a"

    invoke-virtual {p1, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/ListItem;)V
    .registers 5

    .line 156
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "li"

    invoke-direct {p0, p1, v1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    .line 157
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 158
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v0, "/li"

    invoke-virtual {p1, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p1}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    return-void
.end method

.method public visit(Lorg/commonmark/node/OrderedList;)V
    .registers 5

    .line 164
    invoke-virtual {p1}, Lorg/commonmark/node/OrderedList;->getStartNumber()I

    move-result v0

    .line 165
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x1

    if-eq v0, v2, :cond_15

    .line 167
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "start"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    const-string v0, "ol"

    .line 169
    invoke-direct {p0, p1, v0, v1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->renderListBlock(Lorg/commonmark/node/ListBlock;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Paragraph;)V
    .registers 6

    .line 70
    invoke-direct {p0, p1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->isInTightList(Lorg/commonmark/node/Paragraph;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 72
    iget-object v1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v1}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 73
    iget-object v1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v2, "p"

    invoke-direct {p0, p1, v2}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    :cond_16
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->visitChildren(Lorg/commonmark/node/Node;)V

    if-nez v0, :cond_27

    .line 77
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v0, "/p"

    invoke-virtual {p1, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p1}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    :cond_27
    return-void
.end method

.method public visit(Lorg/commonmark/node/SoftLineBreak;)V
    .registers 3

    .line 227
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

    invoke-interface {v0}, Lorg/commonmark/renderer/html/HtmlNodeRendererContext;->getSoftbreak()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->raw(Ljava/lang/String;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/StrongEmphasis;)V
    .registers 5

    .line 199
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "strong"

    invoke-direct {p0, p1, v1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;)V

    .line 200
    invoke-virtual {p0, p1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->visitChildren(Lorg/commonmark/node/Node;)V

    .line 201
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v0, "/strong"

    invoke-virtual {p1, v0}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Text;)V
    .registers 3

    .line 206
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p1}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/commonmark/renderer/html/HtmlWriter;->text(Ljava/lang/String;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/ThematicBreak;)V
    .registers 5

    .line 131
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {v0}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    .line 132
    iget-object v0, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    const-string v1, "hr"

    invoke-direct {p0, p1, v1}, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->getAttrs(Lorg/commonmark/node/Node;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lorg/commonmark/renderer/html/HtmlWriter;->tag(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 133
    iget-object p1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->html:Lorg/commonmark/renderer/html/HtmlWriter;

    invoke-virtual {p1}, Lorg/commonmark/renderer/html/HtmlWriter;->line()V

    return-void
.end method

.method protected visitChildren(Lorg/commonmark/node/Node;)V
    .registers 4

    .line 238
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_11

    .line 240
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lorg/commonmark/renderer/html/CoreHtmlNodeRenderer;->context:Lorg/commonmark/renderer/html/HtmlNodeRendererContext;

    invoke-interface {v1, p1}, Lorg/commonmark/renderer/html/HtmlNodeRendererContext;->render(Lorg/commonmark/node/Node;)V

    move-object p1, v0

    goto :goto_4

    :cond_11
    return-void
.end method
