.class Lio/noties/markwon/MarkwonVisitorImpl;
.super Ljava/lang/Object;
.source "MarkwonVisitorImpl.java"

# interfaces
.implements Lio/noties/markwon/MarkwonVisitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/MarkwonVisitorImpl$BuilderImpl;
    }
.end annotation


# instance fields
.field private final builder:Lio/noties/markwon/SpannableBuilder;

.field private final configuration:Lio/noties/markwon/MarkwonConfiguration;

.field private final nodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Node;",
            ">;",
            "Lio/noties/markwon/MarkwonVisitor$NodeVisitor<",
            "+",
            "Lorg/commonmark/node/Node;",
            ">;>;"
        }
    .end annotation
.end field

.field private final renderProps:Lio/noties/markwon/RenderProps;


# direct methods
.method constructor <init>(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;Lio/noties/markwon/SpannableBuilder;Ljava/util/Map;)V
    .registers 5
    .param p1    # Lio/noties/markwon/MarkwonConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/RenderProps;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/noties/markwon/SpannableBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/noties/markwon/MarkwonConfiguration;",
            "Lio/noties/markwon/RenderProps;",
            "Lio/noties/markwon/SpannableBuilder;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Node;",
            ">;",
            "Lio/noties/markwon/MarkwonVisitor$NodeVisitor<",
            "+",
            "Lorg/commonmark/node/Node;",
            ">;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lio/noties/markwon/MarkwonVisitorImpl;->configuration:Lio/noties/markwon/MarkwonConfiguration;

    .line 54
    iput-object p2, p0, Lio/noties/markwon/MarkwonVisitorImpl;->renderProps:Lio/noties/markwon/RenderProps;

    .line 55
    iput-object p3, p0, Lio/noties/markwon/MarkwonVisitorImpl;->builder:Lio/noties/markwon/SpannableBuilder;

    .line 56
    iput-object p4, p0, Lio/noties/markwon/MarkwonVisitorImpl;->nodes:Ljava/util/Map;

    return-void
.end method

.method private visit(Lorg/commonmark/node/Node;)V
    .registers 4
    .param p1    # Lorg/commonmark/node/Node;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 176
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->nodes:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/noties/markwon/MarkwonVisitor$NodeVisitor;

    if-eqz v0, :cond_12

    .line 178
    invoke-interface {v0, p0, p1}, Lio/noties/markwon/MarkwonVisitor$NodeVisitor;->visit(Lio/noties/markwon/MarkwonVisitor;Lorg/commonmark/node/Node;)V

    goto :goto_15

    .line 180
    :cond_12
    invoke-virtual {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visitChildren(Lorg/commonmark/node/Node;)V

    :goto_15
    return-void
.end method


# virtual methods
.method public builder()Lio/noties/markwon/SpannableBuilder;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 199
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->builder:Lio/noties/markwon/SpannableBuilder;

    return-object v0
.end method

.method public clear()V
    .registers 2

    .line 244
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->renderProps:Lio/noties/markwon/RenderProps;

    invoke-interface {v0}, Lio/noties/markwon/RenderProps;->clearAll()V

    .line 245
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->builder:Lio/noties/markwon/SpannableBuilder;

    invoke-virtual {v0}, Lio/noties/markwon/SpannableBuilder;->clear()V

    return-void
.end method

.method public configuration()Lio/noties/markwon/MarkwonConfiguration;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 187
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->configuration:Lio/noties/markwon/MarkwonConfiguration;

    return-object v0
.end method

.method public ensureNewLine()V
    .registers 3

    .line 221
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->builder:Lio/noties/markwon/SpannableBuilder;

    invoke-virtual {v0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v0

    if-lez v0, :cond_17

    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->builder:Lio/noties/markwon/SpannableBuilder;

    .line 222
    invoke-virtual {v0}, Lio/noties/markwon/SpannableBuilder;->lastChar()C

    move-result v0

    const/16 v1, 0xa

    if-eq v1, v0, :cond_17

    .line 223
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->builder:Lio/noties/markwon/SpannableBuilder;

    invoke-virtual {v0, v1}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    :cond_17
    return-void
.end method

.method public forceNewLine()V
    .registers 3

    .line 229
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->builder:Lio/noties/markwon/SpannableBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    return-void
.end method

.method public hasNext(Lorg/commonmark/node/Node;)Z
    .registers 2
    .param p1    # Lorg/commonmark/node/Node;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 216
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public length()I
    .registers 2

    .line 234
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->builder:Lio/noties/markwon/SpannableBuilder;

    invoke-virtual {v0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v0

    return v0
.end method

.method public renderProps()Lio/noties/markwon/RenderProps;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 193
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->renderProps:Lio/noties/markwon/RenderProps;

    return-object v0
.end method

.method public setSpans(ILjava/lang/Object;)V
    .registers 5
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 239
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->builder:Lio/noties/markwon/SpannableBuilder;

    invoke-virtual {v0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v1

    invoke-static {v0, p2, p1, v1}, Lio/noties/markwon/SpannableBuilder;->setSpans(Lio/noties/markwon/SpannableBuilder;Ljava/lang/Object;II)V

    return-void
.end method

.method public setSpansForNode(Ljava/lang/Class;I)V
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;I)V"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->configuration:Lio/noties/markwon/MarkwonConfiguration;

    invoke-virtual {v0}, Lio/noties/markwon/MarkwonConfiguration;->spansFactory()Lio/noties/markwon/MarkwonSpansFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/noties/markwon/MarkwonSpansFactory;->require(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;

    move-result-object p1

    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->configuration:Lio/noties/markwon/MarkwonConfiguration;

    iget-object v1, p0, Lio/noties/markwon/MarkwonVisitorImpl;->renderProps:Lio/noties/markwon/RenderProps;

    invoke-interface {p1, v0, v1}, Lio/noties/markwon/SpanFactory;->getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->setSpans(ILjava/lang/Object;)V

    return-void
.end method

.method public setSpansForNode(Lorg/commonmark/node/Node;I)V
    .registers 3
    .param p1    # Lorg/commonmark/node/Node;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(TN;I)V"
        }
    .end annotation

    .line 250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/MarkwonVisitorImpl;->setSpansForNode(Ljava/lang/Class;I)V

    return-void
.end method

.method public setSpansForNodeOptional(Ljava/lang/Class;I)V
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;I)V"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->configuration:Lio/noties/markwon/MarkwonConfiguration;

    invoke-virtual {v0}, Lio/noties/markwon/MarkwonConfiguration;->spansFactory()Lio/noties/markwon/MarkwonSpansFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/noties/markwon/MarkwonSpansFactory;->get(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 267
    iget-object v0, p0, Lio/noties/markwon/MarkwonVisitorImpl;->configuration:Lio/noties/markwon/MarkwonConfiguration;

    iget-object v1, p0, Lio/noties/markwon/MarkwonVisitorImpl;->renderProps:Lio/noties/markwon/RenderProps;

    invoke-interface {p1, v0, v1}, Lio/noties/markwon/SpanFactory;->getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->setSpans(ILjava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V
    .registers 3
    .param p1    # Lorg/commonmark/node/Node;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(TN;I)V"
        }
    .end annotation

    .line 260
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/MarkwonVisitorImpl;->setSpansForNodeOptional(Ljava/lang/Class;I)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/BlockQuote;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/BulletList;)V
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Code;)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/CustomBlock;)V
    .registers 2

    .line 166
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/CustomNode;)V
    .registers 2

    .line 171
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Document;)V
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Emphasis;)V
    .registers 2

    .line 81
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/FencedCodeBlock;)V
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/HardLineBreak;)V
    .registers 2

    .line 91
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Heading;)V
    .registers 2

    .line 96
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/HtmlBlock;)V
    .registers 2

    .line 111
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/HtmlInline;)V
    .registers 2

    .line 106
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Image;)V
    .registers 2

    .line 116
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/IndentedCodeBlock;)V
    .registers 2

    .line 121
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Link;)V
    .registers 2

    .line 126
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/LinkReferenceDefinition;)V
    .registers 2

    .line 161
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/ListItem;)V
    .registers 2

    .line 131
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/OrderedList;)V
    .registers 2

    .line 136
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Paragraph;)V
    .registers 2

    .line 141
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/SoftLineBreak;)V
    .registers 2

    .line 146
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/StrongEmphasis;)V
    .registers 2

    .line 151
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/Text;)V
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visit(Lorg/commonmark/node/ThematicBreak;)V
    .registers 2

    .line 101
    invoke-direct {p0, p1}, Lio/noties/markwon/MarkwonVisitorImpl;->visit(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public visitChildren(Lorg/commonmark/node/Node;)V
    .registers 3
    .param p1    # Lorg/commonmark/node/Node;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 204
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_f

    .line 208
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v0

    .line 209
    invoke-virtual {p1, p0}, Lorg/commonmark/node/Node;->accept(Lorg/commonmark/node/Visitor;)V

    move-object p1, v0

    goto :goto_4

    :cond_f
    return-void
.end method
