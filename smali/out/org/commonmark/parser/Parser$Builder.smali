.class public Lorg/commonmark/parser/Parser$Builder;
.super Ljava/lang/Object;
.source "Parser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/parser/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blockParserFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/parser/block/BlockParserFactory;",
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

.field private enabledBlockTypes:Ljava/util/Set;
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

.field private inlineParserFactory:Lorg/commonmark/parser/InlineParserFactory;

.field private final postProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/parser/PostProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/parser/Parser$Builder;->blockParserFactories:Ljava/util/List;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/parser/Parser$Builder;->delimiterProcessors:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/parser/Parser$Builder;->postProcessors:Ljava/util/List;

    .line 119
    invoke-static {}, Lorg/commonmark/internal/DocumentParser;->getDefaultBlockParserTypes()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/parser/Parser$Builder;->enabledBlockTypes:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lorg/commonmark/parser/Parser$Builder;)Ljava/util/List;
    .registers 1

    .line 115
    iget-object p0, p0, Lorg/commonmark/parser/Parser$Builder;->blockParserFactories:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lorg/commonmark/parser/Parser$Builder;)Ljava/util/Set;
    .registers 1

    .line 115
    iget-object p0, p0, Lorg/commonmark/parser/Parser$Builder;->enabledBlockTypes:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$200(Lorg/commonmark/parser/Parser$Builder;)Lorg/commonmark/parser/InlineParserFactory;
    .registers 1

    .line 115
    invoke-direct {p0}, Lorg/commonmark/parser/Parser$Builder;->getInlineParserFactory()Lorg/commonmark/parser/InlineParserFactory;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lorg/commonmark/parser/Parser$Builder;)Ljava/util/List;
    .registers 1

    .line 115
    iget-object p0, p0, Lorg/commonmark/parser/Parser$Builder;->postProcessors:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lorg/commonmark/parser/Parser$Builder;)Ljava/util/List;
    .registers 1

    .line 115
    iget-object p0, p0, Lorg/commonmark/parser/Parser$Builder;->delimiterProcessors:Ljava/util/List;

    return-object p0
.end method

.method private getInlineParserFactory()Lorg/commonmark/parser/InlineParserFactory;
    .registers 2

    .line 250
    iget-object v0, p0, Lorg/commonmark/parser/Parser$Builder;->inlineParserFactory:Lorg/commonmark/parser/InlineParserFactory;

    if-eqz v0, :cond_5

    return-object v0

    .line 253
    :cond_5
    new-instance v0, Lorg/commonmark/parser/Parser$Builder$1;

    invoke-direct {v0, p0}, Lorg/commonmark/parser/Parser$Builder$1;-><init>(Lorg/commonmark/parser/Parser$Builder;)V

    return-object v0
.end method


# virtual methods
.method public build()Lorg/commonmark/parser/Parser;
    .registers 3

    .line 126
    new-instance v0, Lorg/commonmark/parser/Parser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/commonmark/parser/Parser;-><init>(Lorg/commonmark/parser/Parser$Builder;Lorg/commonmark/parser/Parser$1;)V

    return-object v0
.end method

.method public customBlockParserFactory(Lorg/commonmark/parser/block/BlockParserFactory;)Lorg/commonmark/parser/Parser$Builder;
    .registers 3

    if-eqz p1, :cond_8

    .line 195
    iget-object v0, p0, Lorg/commonmark/parser/Parser$Builder;->blockParserFactories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 193
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "blockParserFactory must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public customDelimiterProcessor(Lorg/commonmark/parser/delimiter/DelimiterProcessor;)Lorg/commonmark/parser/Parser$Builder;
    .registers 3

    if-eqz p1, :cond_8

    .line 213
    iget-object v0, p0, Lorg/commonmark/parser/Parser$Builder;->delimiterProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 211
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "delimiterProcessor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enabledBlockTypes(Ljava/util/Set;)Lorg/commonmark/parser/Parser$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Block;",
            ">;>;)",
            "Lorg/commonmark/parser/Parser$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 177
    iput-object p1, p0, Lorg/commonmark/parser/Parser$Builder;->enabledBlockTypes:Ljava/util/Set;

    return-object p0

    .line 175
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "enabledBlockTypes must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public extensions(Ljava/lang/Iterable;)Lorg/commonmark/parser/Parser$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/commonmark/Extension;",
            ">;)",
            "Lorg/commonmark/parser/Parser$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1d

    .line 137
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/commonmark/Extension;

    .line 138
    instance-of v1, v0, Lorg/commonmark/parser/Parser$ParserExtension;

    if-eqz v1, :cond_6

    .line 139
    check-cast v0, Lorg/commonmark/parser/Parser$ParserExtension;

    .line 140
    invoke-interface {v0, p0}, Lorg/commonmark/parser/Parser$ParserExtension;->extend(Lorg/commonmark/parser/Parser$Builder;)V

    goto :goto_6

    :cond_1c
    return-object p0

    .line 135
    :cond_1d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "extensions must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inlineParserFactory(Lorg/commonmark/parser/InlineParserFactory;)Lorg/commonmark/parser/Parser$Builder;
    .registers 2

    .line 245
    iput-object p1, p0, Lorg/commonmark/parser/Parser$Builder;->inlineParserFactory:Lorg/commonmark/parser/InlineParserFactory;

    return-object p0
.end method

.method public postProcessor(Lorg/commonmark/parser/PostProcessor;)Lorg/commonmark/parser/Parser$Builder;
    .registers 3

    if-eqz p1, :cond_8

    .line 221
    iget-object v0, p0, Lorg/commonmark/parser/Parser$Builder;->postProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 219
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "postProcessor must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
