.class public Lorg/commonmark/internal/DocumentParser;
.super Ljava/lang/Object;
.source "DocumentParser.java"

# interfaces
.implements Lorg/commonmark/parser/block/ParserState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/DocumentParser$MatchedBlockParserImpl;
    }
.end annotation


# static fields
.field private static final CORE_FACTORY_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Block;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final NODES_TO_CORE_FACTORIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Block;",
            ">;",
            "Lorg/commonmark/parser/block/BlockParserFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activeBlockParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParser;",
            ">;"
        }
    .end annotation
.end field

.field private allBlockParsers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/commonmark/parser/block/BlockParser;",
            ">;"
        }
    .end annotation
.end field

.field private blank:Z

.field private final blockParserFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParserFactory;",
            ">;"
        }
    .end annotation
.end field

.field private column:I

.field private columnIsInTab:Z

.field private final definitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/commonmark/node/LinkReferenceDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private final delimiterProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final documentBlockParser:Lorg/commonmark/internal/DocumentBlockParser;

.field private indent:I

.field private index:I

.field private final inlineParserFactory:Lorg/commonmark/parser/InlineParserFactory;

.field private line:Ljava/lang/CharSequence;

.field private nextNonSpace:I

.field private nextNonSpaceColumn:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 17
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lorg/commonmark/node/BlockQuote;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/Heading;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/FencedCodeBlock;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/HtmlBlock;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/ThematicBreak;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/ListBlock;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-class v2, Lorg/commonmark/node/IndentedCodeBlock;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/commonmark/internal/DocumentParser;->CORE_FACTORY_TYPES:Ljava/util/Set;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    const-class v1, Lorg/commonmark/node/BlockQuote;

    new-instance v2, Lorg/commonmark/internal/BlockQuoteParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/BlockQuoteParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-class v1, Lorg/commonmark/node/Heading;

    new-instance v2, Lorg/commonmark/internal/HeadingParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/HeadingParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-class v1, Lorg/commonmark/node/FencedCodeBlock;

    new-instance v2, Lorg/commonmark/internal/FencedCodeBlockParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/FencedCodeBlockParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-class v1, Lorg/commonmark/node/HtmlBlock;

    new-instance v2, Lorg/commonmark/internal/HtmlBlockParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/HtmlBlockParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-class v1, Lorg/commonmark/node/ThematicBreak;

    new-instance v2, Lorg/commonmark/internal/ThematicBreakParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/ThematicBreakParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-class v1, Lorg/commonmark/node/ListBlock;

    new-instance v2, Lorg/commonmark/internal/ListBlockParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/ListBlockParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-class v1, Lorg/commonmark/node/IndentedCodeBlock;

    new-instance v2, Lorg/commonmark/internal/IndentedCodeBlockParser$Factory;

    invoke-direct {v2}, Lorg/commonmark/internal/IndentedCodeBlockParser$Factory;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/DocumentParser;->NODES_TO_CORE_FACTORIES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/commonmark/parser/InlineParserFactory;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParserFactory;",
            ">;",
            "Lorg/commonmark/parser/InlineParserFactory;",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 51
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 58
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 59
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpaceColumn:I

    .line 60
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->indent:I

    .line 67
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/DocumentParser;->definitions:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/DocumentParser;->allBlockParsers:Ljava/util/Set;

    .line 75
    iput-object p1, p0, Lorg/commonmark/internal/DocumentParser;->blockParserFactories:Ljava/util/List;

    .line 76
    iput-object p2, p0, Lorg/commonmark/internal/DocumentParser;->inlineParserFactory:Lorg/commonmark/parser/InlineParserFactory;

    .line 77
    iput-object p3, p0, Lorg/commonmark/internal/DocumentParser;->delimiterProcessors:Ljava/util/List;

    .line 79
    new-instance p1, Lorg/commonmark/internal/DocumentBlockParser;

    invoke-direct {p1}, Lorg/commonmark/internal/DocumentBlockParser;-><init>()V

    iput-object p1, p0, Lorg/commonmark/internal/DocumentParser;->documentBlockParser:Lorg/commonmark/internal/DocumentBlockParser;

    .line 80
    iget-object p1, p0, Lorg/commonmark/internal/DocumentParser;->documentBlockParser:Lorg/commonmark/internal/DocumentBlockParser;

    invoke-direct {p0, p1}, Lorg/commonmark/internal/DocumentParser;->activateBlockParser(Lorg/commonmark/parser/block/BlockParser;)V

    return-void
.end method

.method private activateBlockParser(Lorg/commonmark/parser/block/BlockParser;)V
    .registers 3

    .line 442
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->allBlockParsers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addChild(Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockParser;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/commonmark/parser/block/BlockParser;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 431
    :goto_0
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    invoke-interface {p1}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/commonmark/parser/block/BlockParser;->canContain(Lorg/commonmark/node/Block;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 432
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/commonmark/internal/DocumentParser;->finalize(Lorg/commonmark/parser/block/BlockParser;)V

    goto :goto_0

    .line 435
    :cond_16
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v0

    invoke-interface {p1}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/commonmark/node/Block;->appendChild(Lorg/commonmark/node/Node;)V

    .line 436
    invoke-direct {p0, p1}, Lorg/commonmark/internal/DocumentParser;->activateBlockParser(Lorg/commonmark/parser/block/BlockParser;)V

    return-object p1
.end method

.method private addDefinitionsFrom(Lorg/commonmark/internal/ParagraphParser;)V
    .registers 6

    .line 402
    invoke-virtual {p1}, Lorg/commonmark/internal/ParagraphParser;->getDefinitions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/node/LinkReferenceDefinition;

    .line 404
    invoke-virtual {p1}, Lorg/commonmark/internal/ParagraphParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/commonmark/node/Block;->insertBefore(Lorg/commonmark/node/Node;)V

    .line 406
    invoke-virtual {v1}, Lorg/commonmark/node/LinkReferenceDefinition;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 408
    iget-object v3, p0, Lorg/commonmark/internal/DocumentParser;->definitions:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 409
    iget-object v3, p0, Lorg/commonmark/internal/DocumentParser;->definitions:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_2d
    return-void
.end method

.method private addLine()V
    .registers 6

    .line 356
    iget-boolean v0, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    if-eqz v0, :cond_35

    .line 358
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    add-int/lit8 v0, v0, 0x1

    .line 359
    iget-object v1, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 360
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    invoke-static {v1}, Lorg/commonmark/internal/util/Parsing;->columnsToNextTabStop(I)I

    move-result v1

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v1, :cond_2d

    const/16 v4, 0x20

    .line 363
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 365
    :cond_2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    .line 368
    :cond_35
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 370
    :goto_41
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/commonmark/parser/block/BlockParser;->addLine(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private advance()V
    .registers 3

    .line 340
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1c

    .line 342
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 343
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    invoke-static {v0}, Lorg/commonmark/internal/util/Parsing;->columnsToNextTabStop(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    goto :goto_28

    .line 345
    :cond_1c
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 346
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    :goto_28
    return-void
.end method

.method public static calculateBlockParserFactories(Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParserFactory;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Block;",
            ">;>;)",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParserFactory;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 91
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 92
    sget-object v1, Lorg/commonmark/internal/DocumentParser;->NODES_TO_CORE_FACTORIES:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_22
    return-object v0
.end method

.method private deactivateBlockParser()V
    .registers 3

    .line 447
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private finalize(Lorg/commonmark/parser/block/BlockParser;)V
    .registers 3

    .line 390
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    if-ne v0, p1, :cond_9

    .line 391
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->deactivateBlockParser()V

    .line 394
    :cond_9
    instance-of v0, p1, Lorg/commonmark/internal/ParagraphParser;

    if-eqz v0, :cond_13

    .line 395
    move-object v0, p1

    check-cast v0, Lorg/commonmark/internal/ParagraphParser;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/DocumentParser;->addDefinitionsFrom(Lorg/commonmark/internal/ParagraphParser;)V

    .line 398
    :cond_13
    invoke-interface {p1}, Lorg/commonmark/parser/block/BlockParser;->closeBlock()V

    return-void
.end method

.method private finalizeAndProcess()Lorg/commonmark/node/Document;
    .registers 2

    .line 479
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/DocumentParser;->finalizeBlocks(Ljava/util/List;)V

    .line 480
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->processInlines()V

    .line 481
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->documentBlockParser:Lorg/commonmark/internal/DocumentBlockParser;

    invoke-virtual {v0}, Lorg/commonmark/internal/DocumentBlockParser;->getBlock()Lorg/commonmark/node/Document;

    move-result-object v0

    return-object v0
.end method

.method private finalizeBlocks(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParser;",
            ">;)V"
        }
    .end annotation

    .line 472
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    .line 473
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/parser/block/BlockParser;

    .line 474
    invoke-direct {p0, v1}, Lorg/commonmark/internal/DocumentParser;->finalize(Lorg/commonmark/parser/block/BlockParser;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method private findBlockStart(Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/internal/BlockStartImpl;
    .registers 5

    .line 374
    new-instance v0, Lorg/commonmark/internal/DocumentParser$MatchedBlockParserImpl;

    invoke-direct {v0, p1}, Lorg/commonmark/internal/DocumentParser$MatchedBlockParserImpl;-><init>(Lorg/commonmark/parser/block/BlockParser;)V

    .line 375
    iget-object p1, p0, Lorg/commonmark/internal/DocumentParser;->blockParserFactories:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/parser/block/BlockParserFactory;

    .line 376
    invoke-interface {v1, p0, v0}, Lorg/commonmark/parser/block/BlockParserFactory;->tryStart(Lorg/commonmark/parser/block/ParserState;Lorg/commonmark/parser/block/MatchedBlockParser;)Lorg/commonmark/parser/block/BlockStart;

    move-result-object v1

    .line 377
    instance-of v2, v1, Lorg/commonmark/internal/BlockStartImpl;

    if-eqz v2, :cond_b

    .line 378
    check-cast v1, Lorg/commonmark/internal/BlockStartImpl;

    return-object v1

    :cond_22
    const/4 p1, 0x0

    return-object p1
.end method

.method private findNextNonSpace()V
    .registers 6

    .line 279
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 280
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    const/4 v2, 0x1

    .line 282
    iput-boolean v2, p0, Lorg/commonmark/internal/DocumentParser;->blank:Z

    .line 283
    iget-object v2, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    :goto_d
    if-ge v0, v2, :cond_2e

    .line 285
    iget-object v3, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_26

    const/16 v4, 0x20

    if-eq v3, v4, :cond_21

    const/4 v2, 0x0

    .line 296
    iput-boolean v2, p0, Lorg/commonmark/internal/DocumentParser;->blank:Z

    goto :goto_2e

    :cond_21
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_26
    add-int/lit8 v0, v0, 0x1

    .line 293
    rem-int/lit8 v3, v1, 0x4

    rsub-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    goto :goto_d

    .line 300
    :cond_2e
    :goto_2e
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    .line 301
    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpaceColumn:I

    .line 302
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpaceColumn:I

    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->indent:I

    return-void
.end method

.method public static getDefaultBlockParserTypes()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Block;",
            ">;>;"
        }
    .end annotation

    .line 84
    sget-object v0, Lorg/commonmark/internal/DocumentParser;->CORE_FACTORY_TYPES:Ljava/util/Set;

    return-object v0
.end method

.method private incorporateLine(Ljava/lang/CharSequence;)V
    .registers 11

    .line 176
    invoke-static {p1}, Lorg/commonmark/internal/util/Parsing;->prepareLine(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 177
    iput p1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 178
    iput p1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 179
    iput-boolean p1, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    .line 186
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/commonmark/parser/block/BlockParser;

    .line 187
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->findNextNonSpace()V

    .line 189
    invoke-interface {v3, p0}, Lorg/commonmark/parser/block/BlockParser;->tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object v5

    .line 190
    instance-of v6, v5, Lorg/commonmark/internal/BlockContinueImpl;

    if-eqz v6, :cond_5f

    .line 191
    check-cast v5, Lorg/commonmark/internal/BlockContinueImpl;

    .line 192
    invoke-virtual {v5}, Lorg/commonmark/internal/BlockContinueImpl;->isFinalize()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 193
    invoke-direct {p0, v3}, Lorg/commonmark/internal/DocumentParser;->finalize(Lorg/commonmark/parser/block/BlockParser;)V

    return-void

    .line 196
    :cond_41
    invoke-virtual {v5}, Lorg/commonmark/internal/BlockContinueImpl;->getNewIndex()I

    move-result v3

    if-eq v3, v4, :cond_4f

    .line 197
    invoke-virtual {v5}, Lorg/commonmark/internal/BlockContinueImpl;->getNewIndex()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/commonmark/internal/DocumentParser;->setNewIndex(I)V

    goto :goto_5c

    .line 198
    :cond_4f
    invoke-virtual {v5}, Lorg/commonmark/internal/BlockContinueImpl;->getNewColumn()I

    move-result v3

    if-eq v3, v4, :cond_5c

    .line 199
    invoke-virtual {v5}, Lorg/commonmark/internal/BlockContinueImpl;->getNewColumn()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/commonmark/internal/DocumentParser;->setNewColumn(I)V

    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 208
    :cond_5f
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3, v1, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 209
    iget-object v3, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/List;

    sub-int/2addr v1, v2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/parser/block/BlockParser;

    .line 211
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    .line 215
    invoke-interface {v1}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v5

    instance-of v5, v5, Lorg/commonmark/node/Paragraph;

    if-nez v5, :cond_8c

    invoke-interface {v1}, Lorg/commonmark/parser/block/BlockParser;->isContainer()Z

    move-result v5

    if-eqz v5, :cond_8a

    goto :goto_8c

    :cond_8a
    move v5, p1

    goto :goto_8d

    :cond_8c
    :goto_8c
    move v5, v2

    :goto_8d
    if-eqz v5, :cond_fc

    .line 217
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->findNextNonSpace()V

    .line 220
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->isBlank()Z

    move-result v6

    if-nez v6, :cond_f7

    iget v6, p0, Lorg/commonmark/internal/DocumentParser;->indent:I

    sget v7, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    if-ge v6, v7, :cond_a9

    iget-object v6, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    iget v7, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    invoke-static {v6, v7}, Lorg/commonmark/internal/util/Parsing;->isLetter(Ljava/lang/CharSequence;I)Z

    move-result v6

    if-eqz v6, :cond_a9

    goto :goto_f7

    .line 225
    :cond_a9
    invoke-direct {p0, v1}, Lorg/commonmark/internal/DocumentParser;->findBlockStart(Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/internal/BlockStartImpl;

    move-result-object v6

    if-nez v6, :cond_b5

    .line 227
    iget p1, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    invoke-direct {p0, p1}, Lorg/commonmark/internal/DocumentParser;->setNewIndex(I)V

    goto :goto_fc

    :cond_b5
    if-nez v3, :cond_bb

    .line 232
    invoke-direct {p0, v0}, Lorg/commonmark/internal/DocumentParser;->finalizeBlocks(Ljava/util/List;)V

    move v3, v2

    .line 236
    :cond_bb
    invoke-virtual {v6}, Lorg/commonmark/internal/BlockStartImpl;->getNewIndex()I

    move-result v7

    if-eq v7, v4, :cond_c9

    .line 237
    invoke-virtual {v6}, Lorg/commonmark/internal/BlockStartImpl;->getNewIndex()I

    move-result v7

    invoke-direct {p0, v7}, Lorg/commonmark/internal/DocumentParser;->setNewIndex(I)V

    goto :goto_d6

    .line 238
    :cond_c9
    invoke-virtual {v6}, Lorg/commonmark/internal/BlockStartImpl;->getNewColumn()I

    move-result v7

    if-eq v7, v4, :cond_d6

    .line 239
    invoke-virtual {v6}, Lorg/commonmark/internal/BlockStartImpl;->getNewColumn()I

    move-result v7

    invoke-direct {p0, v7}, Lorg/commonmark/internal/DocumentParser;->setNewColumn(I)V

    .line 242
    :cond_d6
    :goto_d6
    invoke-virtual {v6}, Lorg/commonmark/internal/BlockStartImpl;->isReplaceActiveBlockParser()Z

    move-result v7

    if-eqz v7, :cond_df

    .line 243
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->prepareActiveBlockParserForReplacement()V

    .line 246
    :cond_df
    invoke-virtual {v6}, Lorg/commonmark/internal/BlockStartImpl;->getBlockParsers()[Lorg/commonmark/parser/block/BlockParser;

    move-result-object v6

    array-length v7, v6

    move-object v8, v1

    move v1, p1

    :goto_e6
    if-ge v1, v7, :cond_f5

    aget-object v5, v6, v1

    .line 247
    invoke-direct {p0, v5}, Lorg/commonmark/internal/DocumentParser;->addChild(Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockParser;

    move-result-object v8

    .line 248
    invoke-interface {v5}, Lorg/commonmark/parser/block/BlockParser;->isContainer()Z

    move-result v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_e6

    :cond_f5
    move-object v1, v8

    goto :goto_8d

    .line 221
    :cond_f7
    :goto_f7
    iget p1, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    invoke-direct {p0, p1}, Lorg/commonmark/internal/DocumentParser;->setNewIndex(I)V

    :cond_fc
    :goto_fc
    if-nez v3, :cond_112

    .line 256
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->isBlank()Z

    move-result p1

    if-nez p1, :cond_112

    .line 257
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object p1

    invoke-interface {p1}, Lorg/commonmark/parser/block/BlockParser;->canHaveLazyContinuationLines()Z

    move-result p1

    if-eqz p1, :cond_112

    .line 259
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->addLine()V

    goto :goto_132

    :cond_112
    if-nez v3, :cond_117

    .line 265
    invoke-direct {p0, v0}, Lorg/commonmark/internal/DocumentParser;->finalizeBlocks(Ljava/util/List;)V

    .line 268
    :cond_117
    invoke-interface {v1}, Lorg/commonmark/parser/block/BlockParser;->isContainer()Z

    move-result p1

    if-nez p1, :cond_121

    .line 269
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->addLine()V

    goto :goto_132

    .line 270
    :cond_121
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->isBlank()Z

    move-result p1

    if-nez p1, :cond_132

    .line 272
    new-instance p1, Lorg/commonmark/internal/ParagraphParser;

    invoke-direct {p1}, Lorg/commonmark/internal/ParagraphParser;-><init>()V

    invoke-direct {p0, p1}, Lorg/commonmark/internal/DocumentParser;->addChild(Lorg/commonmark/parser/block/BlockParser;)Lorg/commonmark/parser/block/BlockParser;

    .line 273
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->addLine()V

    :cond_132
    :goto_132
    return-void
.end method

.method private prepareActiveBlockParserForReplacement()V
    .registers 3

    .line 451
    invoke-virtual {p0}, Lorg/commonmark/internal/DocumentParser;->getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;

    move-result-object v0

    .line 452
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->deactivateBlockParser()V

    .line 453
    iget-object v1, p0, Lorg/commonmark/internal/DocumentParser;->allBlockParsers:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 455
    instance-of v1, v0, Lorg/commonmark/internal/ParagraphParser;

    if-eqz v1, :cond_16

    .line 456
    move-object v1, v0

    check-cast v1, Lorg/commonmark/internal/ParagraphParser;

    .line 462
    invoke-direct {p0, v1}, Lorg/commonmark/internal/DocumentParser;->addDefinitionsFrom(Lorg/commonmark/internal/ParagraphParser;)V

    .line 465
    :cond_16
    invoke-interface {v0}, Lorg/commonmark/parser/block/BlockParser;->getBlock()Lorg/commonmark/node/Block;

    move-result-object v0

    invoke-virtual {v0}, Lorg/commonmark/node/Block;->unlink()V

    return-void
.end method

.method private processInlines()V
    .registers 4

    .line 418
    new-instance v0, Lorg/commonmark/internal/InlineParserContextImpl;

    iget-object v1, p0, Lorg/commonmark/internal/DocumentParser;->delimiterProcessors:Ljava/util/List;

    iget-object v2, p0, Lorg/commonmark/internal/DocumentParser;->definitions:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lorg/commonmark/internal/InlineParserContextImpl;-><init>(Ljava/util/List;Ljava/util/Map;)V

    .line 419
    iget-object v1, p0, Lorg/commonmark/internal/DocumentParser;->inlineParserFactory:Lorg/commonmark/parser/InlineParserFactory;

    invoke-interface {v1, v0}, Lorg/commonmark/parser/InlineParserFactory;->create(Lorg/commonmark/parser/InlineParserContext;)Lorg/commonmark/parser/InlineParser;

    move-result-object v0

    .line 421
    iget-object v1, p0, Lorg/commonmark/internal/DocumentParser;->allBlockParsers:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/commonmark/parser/block/BlockParser;

    .line 422
    invoke-interface {v2, v0}, Lorg/commonmark/parser/block/BlockParser;->parseInlines(Lorg/commonmark/parser/InlineParser;)V

    goto :goto_15

    :cond_25
    return-void
.end method

.method private setNewColumn(I)V
    .registers 4

    .line 320
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpaceColumn:I

    if-lt p1, v0, :cond_a

    .line 322
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    iput v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 323
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 325
    :cond_a
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 326
    :goto_10
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    if-ge v1, p1, :cond_1c

    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    if-eq v1, v0, :cond_1c

    .line 327
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->advance()V

    goto :goto_10

    .line 329
    :cond_1c
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    if-le v0, p1, :cond_2b

    .line 331
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 332
    iput p1, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 333
    iput-boolean v1, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    goto :goto_2e

    :cond_2b
    const/4 p1, 0x0

    .line 335
    iput-boolean p1, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    :goto_2e
    return-void
.end method

.method private setNewIndex(I)V
    .registers 4

    .line 306
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    if-lt p1, v0, :cond_a

    .line 308
    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    .line 309
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpaceColumn:I

    iput v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    .line 311
    :cond_a
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 312
    :goto_10
    iget v1, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    if-ge v1, p1, :cond_1a

    if-eq v1, v0, :cond_1a

    .line 313
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->advance()V

    goto :goto_10

    :cond_1a
    const/4 p1, 0x0

    .line 316
    iput-boolean p1, p0, Lorg/commonmark/internal/DocumentParser;->columnIsInTab:Z

    return-void
.end method


# virtual methods
.method public getActiveBlockParser()Lorg/commonmark/parser/block/BlockParser;
    .registers 3

    .line 168
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->activeBlockParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/commonmark/parser/block/BlockParser;

    return-object v0
.end method

.method public getColumn()I
    .registers 2

    .line 153
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->column:I

    return v0
.end method

.method public getIndent()I
    .registers 2

    .line 158
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->indent:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .line 143
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->index:I

    return v0
.end method

.method public getLine()Ljava/lang/CharSequence;
    .registers 2

    .line 138
    iget-object v0, p0, Lorg/commonmark/internal/DocumentParser;->line:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNextNonSpaceIndex()I
    .registers 2

    .line 148
    iget v0, p0, Lorg/commonmark/internal/DocumentParser;->nextNonSpace:I

    return v0
.end method

.method public isBlank()Z
    .registers 2

    .line 163
    iget-boolean v0, p0, Lorg/commonmark/internal/DocumentParser;->blank:Z

    return v0
.end method

.method public parse(Ljava/io/Reader;)Lorg/commonmark/node/Document;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    instance-of v0, p1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_7

    .line 123
    check-cast p1, Ljava/io/BufferedReader;

    goto :goto_d

    .line 125
    :cond_7
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v0

    .line 129
    :goto_d
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 130
    invoke-direct {p0, v0}, Lorg/commonmark/internal/DocumentParser;->incorporateLine(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 133
    :cond_17
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->finalizeAndProcess()Lorg/commonmark/node/Document;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;)Lorg/commonmark/node/Document;
    .registers 6

    const/4 v0, 0x0

    .line 103
    :cond_1
    :goto_1
    invoke-static {p1, v0}, Lorg/commonmark/internal/util/Parsing;->findLineBreak(Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2b

    .line 104
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Lorg/commonmark/internal/DocumentParser;->incorporateLine(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v1, 0x1

    .line 106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x2

    move v0, v1

    goto :goto_1

    .line 112
    :cond_2b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_40

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 113
    :cond_39
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Lorg/commonmark/internal/DocumentParser;->incorporateLine(Ljava/lang/CharSequence;)V

    .line 117
    :cond_40
    invoke-direct {p0}, Lorg/commonmark/internal/DocumentParser;->finalizeAndProcess()Lorg/commonmark/node/Document;

    move-result-object p1

    return-object p1
.end method
