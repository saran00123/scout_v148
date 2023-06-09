.class public Lorg/commonmark/internal/ListItemParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "ListItemParser.java"


# instance fields
.field private final block:Lorg/commonmark/node/ListItem;

.field private contentIndent:I

.field private hadBlankLine:Z


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 23
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;-><init>()V

    .line 13
    new-instance v0, Lorg/commonmark/node/ListItem;

    invoke-direct {v0}, Lorg/commonmark/node/ListItem;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/ListItemParser;->block:Lorg/commonmark/node/ListItem;

    .line 24
    iput p1, p0, Lorg/commonmark/internal/ListItemParser;->contentIndent:I

    return-void
.end method


# virtual methods
.method public canContain(Lorg/commonmark/node/Block;)Z
    .registers 3

    .line 34
    iget-boolean p1, p0, Lorg/commonmark/internal/ListItemParser;->hadBlankLine:Z

    if-eqz p1, :cond_14

    .line 39
    iget-object p1, p0, Lorg/commonmark/internal/ListItemParser;->block:Lorg/commonmark/node/ListItem;

    invoke-virtual {p1}, Lorg/commonmark/node/ListItem;->getParent()Lorg/commonmark/node/Block;

    move-result-object p1

    .line 40
    instance-of v0, p1, Lorg/commonmark/node/ListBlock;

    if-eqz v0, :cond_14

    .line 41
    check-cast p1, Lorg/commonmark/node/ListBlock;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/commonmark/node/ListBlock;->setTight(Z)V

    :cond_14
    const/4 p1, 0x1

    return p1
.end method

.method public getBlock()Lorg/commonmark/node/Block;
    .registers 2

    .line 49
    iget-object v0, p0, Lorg/commonmark/internal/ListItemParser;->block:Lorg/commonmark/node/ListItem;

    return-object v0
.end method

.method public isContainer()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;
    .registers 4

    .line 54
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->isBlank()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 55
    iget-object v0, p0, Lorg/commonmark/internal/ListItemParser;->block:Lorg/commonmark/node/ListItem;

    invoke-virtual {v0}, Lorg/commonmark/node/ListItem;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object v0

    if-nez v0, :cond_13

    .line 57
    invoke-static {}, Lorg/commonmark/parser/block/BlockContinue;->none()Lorg/commonmark/parser/block/BlockContinue;

    move-result-object p1

    return-object p1

    .line 59
    :cond_13
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v0

    .line 61
    instance-of v1, v0, Lorg/commonmark/node/Paragraph;

    if-nez v1, :cond_26

    instance-of v0, v0, Lorg/commonmark/node/ListItem;

    if-eqz v0, :cond_24

    goto :goto_26

    :cond_24
    const/4 v0, 0x0

    goto :goto_27

    :cond_26
    :goto_26
    const/4 v0, 0x1

    :goto_27
    iput-boolean v0, p0, Lorg/commonmark/internal/ListItemParser;->hadBlankLine:Z

    .line 62
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getNextNonSpaceIndex()I

    move-result p1

    invoke-static {p1}, Lorg/commonmark/parser/block/BlockContinue;->atIndex(I)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object p1

    return-object p1

    .line 66
    :cond_32
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result v0

    iget v1, p0, Lorg/commonmark/internal/ListItemParser;->contentIndent:I

    if-lt v0, v1, :cond_46

    .line 67
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getColumn()I

    move-result p1

    iget v0, p0, Lorg/commonmark/internal/ListItemParser;->contentIndent:I

    add-int/2addr p1, v0

    invoke-static {p1}, Lorg/commonmark/parser/block/BlockContinue;->atColumn(I)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object p1

    return-object p1

    .line 69
    :cond_46
    invoke-static {}, Lorg/commonmark/parser/block/BlockContinue;->none()Lorg/commonmark/parser/block/BlockContinue;

    move-result-object p1

    return-object p1
.end method
