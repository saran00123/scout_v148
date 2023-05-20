.class public Lorg/commonmark/internal/ListBlockParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "ListBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/ListBlockParser$ListMarkerData;,
        Lorg/commonmark/internal/ListBlockParser$ListData;,
        Lorg/commonmark/internal/ListBlockParser$Factory;
    }
.end annotation


# instance fields
.field private final block:Lorg/commonmark/node/ListBlock;

.field private hadBlankLine:Z

.field private linesAfterBlank:I


# direct methods
.method public constructor <init>(Lorg/commonmark/node/ListBlock;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/commonmark/internal/ListBlockParser;->block:Lorg/commonmark/node/ListBlock;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/CharSequence;IIZ)Lorg/commonmark/internal/ListBlockParser$ListData;
    .registers 4

    .line 7
    invoke-static {p0, p1, p2, p3}, Lorg/commonmark/internal/ListBlockParser;->parseList(Ljava/lang/CharSequence;IIZ)Lorg/commonmark/internal/ListBlockParser$ListData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/commonmark/node/ListBlock;Lorg/commonmark/node/ListBlock;)Z
    .registers 2

    .line 7
    invoke-static {p0, p1}, Lorg/commonmark/internal/ListBlockParser;->listsMatch(Lorg/commonmark/node/ListBlock;Lorg/commonmark/node/ListBlock;)Z

    move-result p0

    return p0
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    goto :goto_c

    :cond_6
    const/4 p0, 0x0

    goto :goto_c

    .line 199
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_c
    return p0
.end method

.method private static isSpaceTabOrEnd(Ljava/lang/CharSequence;I)Z
    .registers 4

    .line 171
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_15

    .line 172
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x9

    if-eq p0, p1, :cond_15

    const/16 p1, 0x20

    if-eq p0, p1, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    return v1
.end method

.method private static listsMatch(Lorg/commonmark/node/ListBlock;Lorg/commonmark/node/ListBlock;)Z
    .registers 3

    .line 190
    instance-of v0, p0, Lorg/commonmark/node/BulletList;

    if-eqz v0, :cond_21

    instance-of v0, p1, Lorg/commonmark/node/BulletList;

    if-eqz v0, :cond_21

    .line 191
    check-cast p0, Lorg/commonmark/node/BulletList;

    invoke-virtual {p0}, Lorg/commonmark/node/BulletList;->getBulletMarker()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    check-cast p1, Lorg/commonmark/node/BulletList;

    invoke-virtual {p1}, Lorg/commonmark/node/BulletList;->getBulletMarker()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/commonmark/internal/ListBlockParser;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 192
    :cond_21
    instance-of v0, p0, Lorg/commonmark/node/OrderedList;

    if-eqz v0, :cond_42

    instance-of v0, p1, Lorg/commonmark/node/OrderedList;

    if-eqz v0, :cond_42

    .line 193
    check-cast p0, Lorg/commonmark/node/OrderedList;

    invoke-virtual {p0}, Lorg/commonmark/node/OrderedList;->getDelimiter()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    check-cast p1, Lorg/commonmark/node/OrderedList;

    invoke-virtual {p1}, Lorg/commonmark/node/OrderedList;->getDelimiter()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/commonmark/internal/ListBlockParser;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_42
    const/4 p0, 0x0

    return p0
.end method

.method private static parseList(Ljava/lang/CharSequence;IIZ)Lorg/commonmark/internal/ListBlockParser$ListData;
    .registers 12

    .line 63
    invoke-static {p0, p1}, Lorg/commonmark/internal/ListBlockParser;->parseListMarker(Ljava/lang/CharSequence;I)Lorg/commonmark/internal/ListBlockParser$ListMarkerData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 67
    :cond_8
    iget-object v2, v0, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;->listBlock:Lorg/commonmark/node/ListBlock;

    .line 69
    iget v0, v0, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;->indexAfterMarker:I

    sub-int p1, v0, p1

    add-int/2addr p2, p1

    const/4 p1, 0x0

    .line 78
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v4, p2

    :goto_15
    const/4 v5, 0x1

    if-ge v0, v3, :cond_30

    .line 80
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_26

    .line 82
    invoke-static {v4}, Lorg/commonmark/internal/util/Parsing;->columnsToNextTabStop(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_2c

    :cond_26
    const/16 v7, 0x20

    if-ne v6, v7, :cond_2f

    add-int/lit8 v4, v4, 0x1

    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2f
    move p1, v5

    :cond_30
    if-eqz p3, :cond_43

    .line 93
    instance-of p0, v2, Lorg/commonmark/node/OrderedList;

    if-eqz p0, :cond_40

    move-object p0, v2

    check-cast p0, Lorg/commonmark/node/OrderedList;

    invoke-virtual {p0}, Lorg/commonmark/node/OrderedList;->getStartNumber()I

    move-result p0

    if-eq p0, v5, :cond_40

    return-object v1

    :cond_40
    if-nez p1, :cond_43

    return-object v1

    :cond_43
    if-eqz p1, :cond_4b

    sub-int p0, v4, p2

    .line 102
    sget p1, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    if-le p0, p1, :cond_4d

    :cond_4b
    add-int/lit8 v4, p2, 0x1

    .line 107
    :cond_4d
    new-instance p0, Lorg/commonmark/internal/ListBlockParser$ListData;

    invoke-direct {p0, v2, v4}, Lorg/commonmark/internal/ListBlockParser$ListData;-><init>(Lorg/commonmark/node/ListBlock;I)V

    return-object p0
.end method

.method private static parseListMarker(Ljava/lang/CharSequence;I)Lorg/commonmark/internal/ListBlockParser$ListMarkerData;
    .registers 4

    .line 111
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_15

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_15

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_15

    .line 125
    invoke-static {p0, p1}, Lorg/commonmark/internal/ListBlockParser;->parseOrderedList(Ljava/lang/CharSequence;I)Lorg/commonmark/internal/ListBlockParser$ListMarkerData;

    move-result-object p0

    return-object p0

    :cond_15
    add-int/lit8 p1, p1, 0x1

    .line 117
    invoke-static {p0, p1}, Lorg/commonmark/internal/ListBlockParser;->isSpaceTabOrEnd(Ljava/lang/CharSequence;I)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 118
    new-instance p0, Lorg/commonmark/node/BulletList;

    invoke-direct {p0}, Lorg/commonmark/node/BulletList;-><init>()V

    .line 119
    invoke-virtual {p0, v0}, Lorg/commonmark/node/BulletList;->setBulletMarker(C)V

    .line 120
    new-instance v0, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;

    invoke-direct {v0, p0, p1}, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;-><init>(Lorg/commonmark/node/ListBlock;I)V

    return-object v0

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseOrderedList(Ljava/lang/CharSequence;I)Lorg/commonmark/internal/ListBlockParser$ListMarkerData;
    .registers 8

    .line 133
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v1, p1

    :goto_7
    const/4 v3, 0x0

    if-ge v1, v0, :cond_4c

    .line 135
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x29

    if-eq v4, v5, :cond_24

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_24

    packed-switch v4, :pswitch_data_4e

    return-object v3

    :pswitch_1a
    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x9

    if-le v2, v4, :cond_21

    return-object v3

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_24
    const/4 v0, 0x1

    if-lt v2, v0, :cond_4c

    add-int/lit8 v0, v1, 0x1

    .line 154
    invoke-static {p0, v0}, Lorg/commonmark/internal/ListBlockParser;->isSpaceTabOrEnd(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 155
    invoke-interface {p0, p1, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 156
    new-instance p1, Lorg/commonmark/node/OrderedList;

    invoke-direct {p1}, Lorg/commonmark/node/OrderedList;-><init>()V

    .line 157
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/commonmark/node/OrderedList;->setStartNumber(I)V

    .line 158
    invoke-virtual {p1, v4}, Lorg/commonmark/node/OrderedList;->setDelimiter(C)V

    .line 159
    new-instance p0, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;

    invoke-direct {p0, p1, v0}, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;-><init>(Lorg/commonmark/node/ListBlock;I)V

    return-object p0

    :cond_4c
    return-object v3

    nop

    :pswitch_data_4e
    .packed-switch 0x30
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method


# virtual methods
.method public canContain(Lorg/commonmark/node/Block;)Z
    .registers 4

    .line 25
    instance-of p1, p1, Lorg/commonmark/node/ListItem;

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 30
    iget-boolean p1, p0, Lorg/commonmark/internal/ListBlockParser;->hadBlankLine:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_15

    iget p1, p0, Lorg/commonmark/internal/ListBlockParser;->linesAfterBlank:I

    if-ne p1, v1, :cond_15

    .line 31
    iget-object p1, p0, Lorg/commonmark/internal/ListBlockParser;->block:Lorg/commonmark/node/ListBlock;

    invoke-virtual {p1, v0}, Lorg/commonmark/node/ListBlock;->setTight(Z)V

    .line 32
    iput-boolean v0, p0, Lorg/commonmark/internal/ListBlockParser;->hadBlankLine:Z

    :cond_15
    return v1

    :cond_16
    return v0
.end method

.method public getBlock()Lorg/commonmark/node/Block;
    .registers 2

    .line 42
    iget-object v0, p0, Lorg/commonmark/internal/ListBlockParser;->block:Lorg/commonmark/node/ListBlock;

    return-object v0
.end method

.method public isContainer()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;
    .registers 4

    .line 47
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->isBlank()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 48
    iput-boolean v1, p0, Lorg/commonmark/internal/ListBlockParser;->hadBlankLine:Z

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lorg/commonmark/internal/ListBlockParser;->linesAfterBlank:I

    goto :goto_16

    .line 50
    :cond_d
    iget-boolean v0, p0, Lorg/commonmark/internal/ListBlockParser;->hadBlankLine:Z

    if-eqz v0, :cond_16

    .line 51
    iget v0, p0, Lorg/commonmark/internal/ListBlockParser;->linesAfterBlank:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/commonmark/internal/ListBlockParser;->linesAfterBlank:I

    .line 55
    :cond_16
    :goto_16
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndex()I

    move-result p1

    invoke-static {p1}, Lorg/commonmark/parser/block/BlockContinue;->atIndex(I)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object p1

    return-object p1
.end method
