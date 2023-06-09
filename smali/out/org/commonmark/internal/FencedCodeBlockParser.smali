.class public Lorg/commonmark/internal/FencedCodeBlockParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "FencedCodeBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/FencedCodeBlockParser$Factory;
    }
.end annotation


# instance fields
.field private final block:Lorg/commonmark/node/FencedCodeBlock;

.field private firstLine:Ljava/lang/String;

.field private otherLines:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(CII)V
    .registers 5

    .line 17
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;-><init>()V

    .line 12
    new-instance v0, Lorg/commonmark/node/FencedCodeBlock;

    invoke-direct {v0}, Lorg/commonmark/node/FencedCodeBlock;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->otherLines:Ljava/lang/StringBuilder;

    .line 18
    iget-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    invoke-virtual {v0, p1}, Lorg/commonmark/node/FencedCodeBlock;->setFenceChar(C)V

    .line 19
    iget-object p1, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    invoke-virtual {p1, p2}, Lorg/commonmark/node/FencedCodeBlock;->setFenceLength(I)V

    .line 20
    iget-object p1, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    invoke-virtual {p1, p3}, Lorg/commonmark/node/FencedCodeBlock;->setFenceIndent(I)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/CharSequence;II)Lorg/commonmark/internal/FencedCodeBlockParser;
    .registers 3

    .line 10
    invoke-static {p0, p1, p2}, Lorg/commonmark/internal/FencedCodeBlockParser;->checkOpener(Ljava/lang/CharSequence;II)Lorg/commonmark/internal/FencedCodeBlockParser;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/commonmark/internal/FencedCodeBlockParser;)Lorg/commonmark/node/FencedCodeBlock;
    .registers 1

    .line 10
    iget-object p0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    return-object p0
.end method

.method private static checkOpener(Ljava/lang/CharSequence;II)Lorg/commonmark/internal/FencedCodeBlockParser;
    .registers 10

    .line 90
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v1, p1

    :goto_8
    const/16 v4, 0x7e

    const/16 v5, 0x60

    if-ge v1, v0, :cond_1f

    .line 93
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_1a

    if-eq v6, v4, :cond_17

    goto :goto_1f

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-lt v2, v1, :cond_34

    if-nez v3, :cond_34

    add-int/2addr p1, v2

    .line 106
    invoke-static {v5, p0, p1}, Lorg/commonmark/internal/util/Parsing;->find(CLjava/lang/CharSequence;I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_2e

    return-object v0

    .line 109
    :cond_2e
    new-instance p0, Lorg/commonmark/internal/FencedCodeBlockParser;

    invoke-direct {p0, v5, v2, p2}, Lorg/commonmark/internal/FencedCodeBlockParser;-><init>(CII)V

    return-object p0

    :cond_34
    if-lt v3, v1, :cond_3e

    if-nez v2, :cond_3e

    .line 112
    new-instance p0, Lorg/commonmark/internal/FencedCodeBlockParser;

    invoke-direct {p0, v4, v3, p2}, Lorg/commonmark/internal/FencedCodeBlockParser;-><init>(CII)V

    return-object p0

    :cond_3e
    return-object v0
.end method

.method private isClosing(Ljava/lang/CharSequence;I)Z
    .registers 6

    .line 122
    iget-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    invoke-virtual {v0}, Lorg/commonmark/node/FencedCodeBlock;->getFenceChar()C

    move-result v0

    .line 123
    iget-object v1, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    invoke-virtual {v1}, Lorg/commonmark/node/FencedCodeBlock;->getFenceLength()I

    move-result v1

    .line 124
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, p1, p2, v2}, Lorg/commonmark/internal/util/Parsing;->skip(CLjava/lang/CharSequence;II)I

    move-result v0

    sub-int/2addr v0, p2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_19

    return v2

    :cond_19
    add-int/2addr p2, v0

    .line 129
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/commonmark/internal/util/Parsing;->skipSpaceTab(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 130
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ne p2, p1, :cond_29

    const/4 v2, 0x1

    :cond_29
    return v2
.end method


# virtual methods
.method public addLine(Ljava/lang/CharSequence;)V
    .registers 3

    .line 51
    iget-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->firstLine:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 52
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->firstLine:Ljava/lang/String;

    goto :goto_17

    .line 54
    :cond_b
    iget-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->otherLines:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 55
    iget-object p1, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->otherLines:Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_17
    return-void
.end method

.method public closeBlock()V
    .registers 3

    .line 62
    iget-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    iget-object v1, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->firstLine:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/commonmark/internal/util/Escaping;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/commonmark/node/FencedCodeBlock;->setInfo(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    iget-object v1, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->otherLines:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/commonmark/node/FencedCodeBlock;->setLiteral(Ljava/lang/String;)V

    return-void
.end method

.method public getBlock()Lorg/commonmark/node/Block;
    .registers 2

    .line 25
    iget-object v0, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    return-object v0
.end method

.method public tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;
    .registers 7

    .line 30
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getNextNonSpaceIndex()I

    move-result v0

    .line 31
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndex()I

    move-result v1

    .line 32
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getLine()Ljava/lang/CharSequence;

    move-result-object v2

    .line 33
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndent()I

    move-result p1

    sget v3, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    if-ge p1, v3, :cond_1c

    invoke-direct {p0, v2, v0}, Lorg/commonmark/internal/FencedCodeBlockParser;->isClosing(Ljava/lang/CharSequence;I)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    if-eqz p1, :cond_24

    .line 36
    invoke-static {}, Lorg/commonmark/parser/block/BlockContinue;->finished()Lorg/commonmark/parser/block/BlockContinue;

    move-result-object p1

    return-object p1

    .line 39
    :cond_24
    iget-object p1, p0, Lorg/commonmark/internal/FencedCodeBlockParser;->block:Lorg/commonmark/node/FencedCodeBlock;

    invoke-virtual {p1}, Lorg/commonmark/node/FencedCodeBlock;->getFenceIndent()I

    move-result p1

    .line 40
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_2e
    if-lez p1, :cond_3f

    if-ge v1, v0, :cond_3f

    .line 41
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3f

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_2e

    .line 46
    :cond_3f
    invoke-static {v1}, Lorg/commonmark/parser/block/BlockContinue;->atIndex(I)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object p1

    return-object p1
.end method
