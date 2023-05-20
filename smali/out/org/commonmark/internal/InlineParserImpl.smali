.class public Lorg/commonmark/internal/InlineParserImpl;
.super Ljava/lang/Object;
.source "InlineParserImpl.java"

# interfaces
.implements Lorg/commonmark/parser/InlineParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/InlineParserImpl$DelimiterData;
    }
.end annotation


# static fields
.field private static final ASCII_PUNCTUATION:Ljava/lang/String; = "!\"#\\$%&\'\\(\\)\\*\\+,\\-\\./:;<=>\\?@\\[\\\\\\]\\^_`\\{\\|\\}~"

.field private static final AUTOLINK:Ljava/util/regex/Pattern;

.field private static final CDATA:Ljava/lang/String; = "<!\\[CDATA\\[[\\s\\S]*?\\]\\]>"

.field private static final DECLARATION:Ljava/lang/String; = "<![A-Z]+\\s+[^>]*>"

.field private static final EMAIL_AUTOLINK:Ljava/util/regex/Pattern;

.field private static final ENTITY_HERE:Ljava/util/regex/Pattern;

.field private static final ESCAPABLE:Ljava/util/regex/Pattern;

.field private static final FINAL_SPACE:Ljava/util/regex/Pattern;

.field private static final HTMLCOMMENT:Ljava/lang/String; = "<!---->|<!--(?:-?[^>-])(?:-?[^-])*-->"

.field private static final HTMLTAG:Ljava/lang/String; = "(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>]|<!---->|<!--(?:-?[^>-])(?:-?[^-])*-->|[<][?].*?[?][>]|<![A-Z]+\\s+[^>]*>|<!\\[CDATA\\[[\\s\\S]*?\\]\\]>)"

.field private static final HTML_TAG:Ljava/util/regex/Pattern;

.field private static final PROCESSINGINSTRUCTION:Ljava/lang/String; = "[<][?].*?[?][>]"

.field private static final PUNCTUATION:Ljava/util/regex/Pattern;

.field private static final SPNL:Ljava/util/regex/Pattern;

.field private static final TICKS:Ljava/util/regex/Pattern;

.field private static final TICKS_HERE:Ljava/util/regex/Pattern;

.field private static final UNICODE_WHITESPACE_CHAR:Ljava/util/regex/Pattern;

.field private static final WHITESPACE:Ljava/util/regex/Pattern;


# instance fields
.field private final context:Lorg/commonmark/parser/InlineParserContext;

.field private final delimiterCharacters:Ljava/util/BitSet;

.field private final delimiterProcessors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private input:Ljava/lang/String;

.field private lastBracket:Lorg/commonmark/internal/Bracket;

.field private lastDelimiter:Lorg/commonmark/internal/Delimiter;

.field private final specialCharacters:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "^[!\"#\\$%&\'\\(\\)\\*\\+,\\-\\./:;<=>\\?@\\[\\\\\\]\\^_`\\{\\|\\}~\\p{Pc}\\p{Pd}\\p{Pe}\\p{Pf}\\p{Pi}\\p{Po}\\p{Ps}]"

    .line 29
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->PUNCTUATION:Ljava/util/regex/Pattern;

    const/4 v0, 0x2

    const-string v1, "^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>]|<!---->|<!--(?:-?[^>-])(?:-?[^-])*-->|[<][?].*?[?][>]|<![A-Z]+\\s+[^>]*>|<!\\[CDATA\\[[\\s\\S]*?\\]\\]>)"

    .line 31
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/commonmark/internal/InlineParserImpl;->HTML_TAG:Ljava/util/regex/Pattern;

    const-string v1, "^[!\"#$%&\'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]"

    .line 33
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lorg/commonmark/internal/InlineParserImpl;->ESCAPABLE:Ljava/util/regex/Pattern;

    const-string v1, "^&(?:#x[a-f0-9]{1,6}|#[0-9]{1,7}|[a-z][a-z0-9]{1,31});"

    .line 35
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->ENTITY_HERE:Ljava/util/regex/Pattern;

    const-string v0, "`+"

    .line 37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->TICKS:Ljava/util/regex/Pattern;

    const-string v0, "^`+"

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->TICKS_HERE:Ljava/util/regex/Pattern;

    const-string v0, "^<([a-zA-Z0-9.!#$%&\'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*)>"

    .line 42
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->EMAIL_AUTOLINK:Ljava/util/regex/Pattern;

    const-string v0, "^<[a-zA-Z][a-zA-Z0-9.+-]{1,31}:[^<>\u0000- ]*>"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->AUTOLINK:Ljava/util/regex/Pattern;

    const-string v0, "^ *(?:\n *)?"

    .line 47
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->SPNL:Ljava/util/regex/Pattern;

    const-string v0, "^[\\p{Zs}\t\r\n\u000c]"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->UNICODE_WHITESPACE_CHAR:Ljava/util/regex/Pattern;

    const-string v0, "\\s+"

    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->WHITESPACE:Ljava/util/regex/Pattern;

    const-string v0, " *$"

    .line 53
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->FINAL_SPACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/commonmark/parser/InlineParserContext;)V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-interface {p1}, Lorg/commonmark/parser/InlineParserContext;->getCustomDelimiterProcessors()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/commonmark/internal/InlineParserImpl;->calculateDelimiterProcessors(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->delimiterProcessors:Ljava/util/Map;

    .line 76
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->delimiterProcessors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/commonmark/internal/InlineParserImpl;->calculateDelimiterCharacters(Ljava/util/Set;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->delimiterCharacters:Ljava/util/BitSet;

    .line 77
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->delimiterCharacters:Ljava/util/BitSet;

    invoke-static {v0}, Lorg/commonmark/internal/InlineParserImpl;->calculateSpecialCharacters(Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->specialCharacters:Ljava/util/BitSet;

    .line 79
    iput-object p1, p0, Lorg/commonmark/internal/InlineParserImpl;->context:Lorg/commonmark/parser/InlineParserContext;

    return-void
.end method

.method private addBracket(Lorg/commonmark/internal/Bracket;)V
    .registers 4

    .line 535
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    .line 536
    iput-boolean v1, v0, Lorg/commonmark/internal/Bracket;->bracketAfter:Z

    .line 538
    :cond_7
    iput-object p1, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    return-void
.end method

.method private static addDelimiterProcessorForChar(CLorg/commonmark/parser/delimiter/DelimiterProcessor;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    if-nez p1, :cond_d

    return-void

    .line 140
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Delimiter processor conflict with delimiter char \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static addDelimiterProcessors(Ljava/lang/Iterable;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;)V"
        }
    .end annotation

    .line 112
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 113
    invoke-interface {v0}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getOpeningCharacter()C

    move-result v1

    .line 114
    invoke-interface {v0}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getClosingCharacter()C

    move-result v2

    if-ne v1, v2, :cond_4f

    .line 116
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    if-eqz v2, :cond_4b

    .line 117
    invoke-interface {v2}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getOpeningCharacter()C

    move-result v3

    invoke-interface {v2}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getClosingCharacter()C

    move-result v4

    if-ne v3, v4, :cond_4b

    .line 119
    instance-of v3, v2, Lorg/commonmark/internal/StaggeredDelimiterProcessor;

    if-eqz v3, :cond_37

    .line 120
    check-cast v2, Lorg/commonmark/internal/StaggeredDelimiterProcessor;

    goto :goto_40

    .line 122
    :cond_37
    new-instance v3, Lorg/commonmark/internal/StaggeredDelimiterProcessor;

    invoke-direct {v3, v1}, Lorg/commonmark/internal/StaggeredDelimiterProcessor;-><init>(C)V

    .line 123
    invoke-virtual {v3, v2}, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->add(Lorg/commonmark/parser/delimiter/DelimiterProcessor;)V

    move-object v2, v3

    .line 125
    :goto_40
    invoke-virtual {v2, v0}, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->add(Lorg/commonmark/parser/delimiter/DelimiterProcessor;)V

    .line 126
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 128
    :cond_4b
    invoke-static {v1, v0, p1}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessorForChar(CLorg/commonmark/parser/delimiter/DelimiterProcessor;Ljava/util/Map;)V

    goto :goto_4

    .line 131
    :cond_4f
    invoke-static {v1, v0, p1}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessorForChar(CLorg/commonmark/parser/delimiter/DelimiterProcessor;Ljava/util/Map;)V

    .line 132
    invoke-static {v2, v0, p1}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessorForChar(CLorg/commonmark/parser/delimiter/DelimiterProcessor;Ljava/util/Map;)V

    goto :goto_4

    :cond_56
    return-void
.end method

.method public static calculateDelimiterCharacters(Ljava/util/Set;)Ljava/util/BitSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/util/BitSet;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 84
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_9

    :cond_1d
    return-object v0
.end method

.method public static calculateDelimiterProcessors(Ljava/util/List;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x2

    .line 106
    new-array v1, v1, [Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    new-instance v2, Lorg/commonmark/internal/inline/AsteriskDelimiterProcessor;

    invoke-direct {v2}, Lorg/commonmark/internal/inline/AsteriskDelimiterProcessor;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/commonmark/internal/inline/UnderscoreDelimiterProcessor;

    invoke-direct {v2}, Lorg/commonmark/internal/inline/UnderscoreDelimiterProcessor;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessors(Ljava/lang/Iterable;Ljava/util/Map;)V

    .line 107
    invoke-static {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessors(Ljava/lang/Iterable;Ljava/util/Map;)V

    return-object v0
.end method

.method public static calculateSpecialCharacters(Ljava/util/BitSet;)Ljava/util/BitSet;
    .registers 2

    .line 91
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 92
    invoke-virtual {v0, p0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    const/16 p0, 0xa

    .line 93
    invoke-virtual {v0, p0}, Ljava/util/BitSet;->set(I)V

    const/16 p0, 0x60

    .line 94
    invoke-virtual {v0, p0}, Ljava/util/BitSet;->set(I)V

    const/16 p0, 0x5b

    .line 95
    invoke-virtual {v0, p0}, Ljava/util/BitSet;->set(I)V

    const/16 p0, 0x5d

    .line 96
    invoke-virtual {v0, p0}, Ljava/util/BitSet;->set(I)V

    const/16 p0, 0x5c

    .line 97
    invoke-virtual {v0, p0}, Ljava/util/BitSet;->set(I)V

    const/16 p0, 0x21

    .line 98
    invoke-virtual {v0, p0}, Ljava/util/BitSet;->set(I)V

    const/16 p0, 0x3c

    .line 99
    invoke-virtual {v0, p0}, Ljava/util/BitSet;->set(I)V

    const/16 p0, 0x26

    .line 100
    invoke-virtual {v0, p0}, Ljava/util/BitSet;->set(I)V

    return-object v0
.end method

.method private match(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 5

    .line 247
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_c

    return-object v2

    .line 250
    :cond_c
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 251
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 252
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 254
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 255
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2e
    return-object v2
.end method

.method private mergeChildTextNodes(Lorg/commonmark/node/Node;)V
    .registers 4

    .line 862
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getLastChild()Lorg/commonmark/node/Node;

    move-result-object v1

    if-ne v0, v1, :cond_b

    return-void

    .line 866
    :cond_b
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getLastChild()Lorg/commonmark/node/Node;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/commonmark/internal/InlineParserImpl;->mergeTextNodesInclusive(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V

    return-void
.end method

.method private mergeIfNeeded(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V
    .registers 6

    if-eqz p1, :cond_36

    if-eqz p2, :cond_36

    if-eq p1, p2, :cond_36

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 901
    invoke-virtual {p1}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {p1}, Lorg/commonmark/node/Text;->getNext()Lorg/commonmark/node/Node;

    move-result-object p3

    .line 903
    invoke-virtual {p2}, Lorg/commonmark/node/Text;->getNext()Lorg/commonmark/node/Node;

    move-result-object p2

    :goto_1a
    if-eq p3, p2, :cond_2f

    .line 905
    move-object v1, p3

    check-cast v1, Lorg/commonmark/node/Text;

    invoke-virtual {v1}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    invoke-virtual {p3}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 908
    invoke-virtual {p3}, Lorg/commonmark/node/Node;->unlink()V

    move-object p3, v1

    goto :goto_1a

    .line 910
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 911
    invoke-virtual {p1, p2}, Lorg/commonmark/node/Text;->setLiteral(Ljava/lang/String;)V

    :cond_36
    return-void
.end method

.method private mergeTextNodesBetweenExclusive(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V
    .registers 4

    if-eq p1, p2, :cond_14

    .line 853
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v0

    if-ne v0, p2, :cond_9

    goto :goto_14

    .line 857
    :cond_9
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object p1

    invoke-virtual {p2}, Lorg/commonmark/node/Node;->getPrevious()Lorg/commonmark/node/Node;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/commonmark/internal/InlineParserImpl;->mergeTextNodesInclusive(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V

    :cond_14
    :goto_14
    return-void
.end method

.method private mergeTextNodesInclusive(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v4, v0

    move-object v2, v1

    move-object v3, v2

    :goto_5
    if-eqz p1, :cond_29

    .line 876
    instance-of v5, p1, Lorg/commonmark/node/Text;

    if-eqz v5, :cond_1b

    .line 877
    move-object v3, p1

    check-cast v3, Lorg/commonmark/node/Text;

    if-nez v2, :cond_11

    move-object v2, v3

    .line 881
    :cond_11
    invoke-virtual {v3}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_21

    .line 884
    :cond_1b
    invoke-direct {p0, v2, v3, v4}, Lorg/commonmark/internal/InlineParserImpl;->mergeIfNeeded(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V

    move v4, v0

    move-object v2, v1

    move-object v3, v2

    :goto_21
    if-ne p1, p2, :cond_24

    goto :goto_29

    .line 892
    :cond_24
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object p1

    goto :goto_5

    .line 895
    :cond_29
    :goto_29
    invoke-direct {p0, v2, v3, v4}, Lorg/commonmark/internal/InlineParserImpl;->mergeIfNeeded(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V

    return-void
.end method

.method private parseAutolink()Lorg/commonmark/node/Node;
    .registers 6

    .line 608
    sget-object v0, Lorg/commonmark/internal/InlineParserImpl;->EMAIL_AUTOLINK:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_32

    .line 609
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 610
    new-instance v2, Lorg/commonmark/node/Link;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/commonmark/node/Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    new-instance v1, Lorg/commonmark/node/Text;

    invoke-direct {v1, v0}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/commonmark/node/Link;->appendChild(Lorg/commonmark/node/Node;)V

    return-object v2

    .line 613
    :cond_32
    sget-object v0, Lorg/commonmark/internal/InlineParserImpl;->AUTOLINK:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 614
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 615
    new-instance v2, Lorg/commonmark/node/Link;

    invoke-direct {v2, v0, v1}, Lorg/commonmark/node/Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    new-instance v1, Lorg/commonmark/node/Text;

    invoke-direct {v1, v0}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/commonmark/node/Link;->appendChild(Lorg/commonmark/node/Node;)V

    return-object v2

    :cond_51
    return-object v1
.end method

.method private parseBackslash()Lorg/commonmark/node/Node;
    .registers 5

    .line 310
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 312
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1a

    .line 313
    new-instance v0, Lorg/commonmark/node/HardLineBreak;

    invoke-direct {v0}, Lorg/commonmark/node/HardLineBreak;-><init>()V

    .line 314
    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    goto :goto_51

    .line 315
    :cond_1a
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4b

    sget-object v0, Lorg/commonmark/internal/InlineParserImpl;->ESCAPABLE:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 316
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;II)Lorg/commonmark/node/Text;

    move-result-object v0

    .line 317
    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    goto :goto_51

    :cond_4b
    const-string v0, "\\"

    .line 319
    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v0

    :goto_51
    return-object v0
.end method

.method private parseBackticks()Lorg/commonmark/node/Node;
    .registers 6

    .line 328
    sget-object v0, Lorg/commonmark/internal/InlineParserImpl;->TICKS_HERE:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 332
    :cond_a
    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 334
    :cond_c
    sget-object v2, Lorg/commonmark/internal/InlineParserImpl;->TICKS:Ljava/util/regex/Pattern;

    invoke-direct {p0, v2}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_61

    .line 335
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 336
    new-instance v2, Lorg/commonmark/node/Code;

    invoke-direct {v2}, Lorg/commonmark/node/Code;-><init>()V

    .line 337
    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v4, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v4, v0

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v3, 0x20

    .line 338
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x3

    if-lt v1, v4, :cond_5d

    const/4 v1, 0x0

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_5d

    .line 344
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_5d

    .line 345
    invoke-static {v0}, Lorg/commonmark/internal/util/Parsing;->hasNonSpace(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 346
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 349
    :cond_5d
    invoke-virtual {v2, v0}, Lorg/commonmark/node/Code;->setLiteral(Ljava/lang/String;)V

    return-object v2

    .line 354
    :cond_61
    iput v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 355
    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v0

    return-object v0
.end method

.method private parseBang()Lorg/commonmark/node/Node;
    .registers 5

    .line 403
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v1, v0, 0x1

    .line 404
    iput v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 405
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_28

    .line 406
    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    const-string v1, "!["

    .line 408
    invoke-direct {p0, v1}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 411
    iget-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    invoke-static {v1, v0, v2, v3}, Lorg/commonmark/internal/Bracket;->image(Lorg/commonmark/node/Text;ILorg/commonmark/internal/Bracket;Lorg/commonmark/internal/Delimiter;)Lorg/commonmark/internal/Bracket;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->addBracket(Lorg/commonmark/internal/Bracket;)V

    return-object v1

    :cond_28
    const-string v0, "!"

    .line 415
    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v0

    return-object v0
.end method

.method private parseCloseBracket()Lorg/commonmark/node/Node;
    .registers 13

    .line 424
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 425
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 428
    iget-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    const-string v3, "]"

    if-nez v2, :cond_13

    .line 431
    invoke-direct {p0, v3}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v0

    return-object v0

    .line 434
    :cond_13
    iget-boolean v4, v2, Lorg/commonmark/internal/Bracket;->allowed:Z

    if-nez v4, :cond_1f

    .line 436
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->removeLastBracket()V

    .line 437
    invoke-direct {p0, v3}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v0

    return-object v0

    .line 447
    :cond_1f
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    move-result v4

    const/16 v5, 0x28

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ne v4, v5, :cond_74

    .line 448
    iget v4, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 449
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->spnl()V

    .line 450
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseLinkDestination()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_70

    .line 451
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->spnl()V

    .line 453
    sget-object v5, Lorg/commonmark/internal/InlineParserImpl;->WHITESPACE:Ljava/util/regex/Pattern;

    iget-object v8, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v9, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_58

    .line 454
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseLinkTitle()Ljava/lang/String;

    move-result-object v5

    .line 455
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->spnl()V

    goto :goto_59

    :cond_58
    move-object v5, v7

    .line 457
    :goto_59
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    move-result v8

    const/16 v9, 0x29

    if-ne v8, v9, :cond_6a

    .line 458
    iget v8, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/2addr v8, v1

    iput v8, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    move-object v8, v5

    move-object v5, v4

    move v4, v1

    goto :goto_77

    .line 461
    :cond_6a
    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    move-object v8, v5

    move-object v5, v4

    move v4, v6

    goto :goto_77

    :cond_70
    move-object v5, v4

    move v4, v6

    move-object v8, v7

    goto :goto_77

    :cond_74
    move v4, v6

    move-object v5, v7

    move-object v8, v5

    :goto_77
    if-nez v4, :cond_af

    .line 470
    iget v9, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 471
    invoke-virtual {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseLinkLabel()I

    .line 472
    iget v10, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    sub-int/2addr v10, v9

    const/4 v11, 0x2

    if-le v10, v11, :cond_8c

    .line 475
    iget-object v7, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    add-int/2addr v10, v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_98

    .line 476
    :cond_8c
    iget-boolean v9, v2, Lorg/commonmark/internal/Bracket;->bracketAfter:Z

    if-nez v9, :cond_98

    .line 480
    iget-object v7, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v9, v2, Lorg/commonmark/internal/Bracket;->index:I

    invoke-virtual {v7, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_98
    :goto_98
    if-eqz v7, :cond_af

    .line 484
    invoke-static {v7}, Lorg/commonmark/internal/util/Escaping;->normalizeReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 485
    iget-object v9, p0, Lorg/commonmark/internal/InlineParserImpl;->context:Lorg/commonmark/parser/InlineParserContext;

    invoke-interface {v9, v7}, Lorg/commonmark/parser/InlineParserContext;->getLinkReferenceDefinition(Ljava/lang/String;)Lorg/commonmark/node/LinkReferenceDefinition;

    move-result-object v7

    if-eqz v7, :cond_af

    .line 487
    invoke-virtual {v7}, Lorg/commonmark/node/LinkReferenceDefinition;->getDestination()Ljava/lang/String;

    move-result-object v5

    .line 488
    invoke-virtual {v7}, Lorg/commonmark/node/LinkReferenceDefinition;->getTitle()Ljava/lang/String;

    move-result-object v8

    goto :goto_b0

    :cond_af
    move v1, v4

    :goto_b0
    if-eqz v1, :cond_f4

    .line 496
    iget-boolean v0, v2, Lorg/commonmark/internal/Bracket;->image:Z

    if-eqz v0, :cond_bc

    new-instance v0, Lorg/commonmark/node/Image;

    invoke-direct {v0, v5, v8}, Lorg/commonmark/node/Image;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c1

    :cond_bc
    new-instance v0, Lorg/commonmark/node/Link;

    invoke-direct {v0, v5, v8}, Lorg/commonmark/node/Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :goto_c1
    iget-object v1, v2, Lorg/commonmark/internal/Bracket;->node:Lorg/commonmark/node/Text;

    invoke-virtual {v1}, Lorg/commonmark/node/Text;->getNext()Lorg/commonmark/node/Node;

    move-result-object v1

    :goto_c7
    if-eqz v1, :cond_d2

    .line 500
    invoke-virtual {v1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v3

    .line 501
    invoke-virtual {v0, v1}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    move-object v1, v3

    goto :goto_c7

    .line 506
    :cond_d2
    iget-object v1, v2, Lorg/commonmark/internal/Bracket;->previousDelimiter:Lorg/commonmark/internal/Delimiter;

    invoke-direct {p0, v1}, Lorg/commonmark/internal/InlineParserImpl;->processDelimiters(Lorg/commonmark/internal/Delimiter;)V

    .line 507
    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->mergeChildTextNodes(Lorg/commonmark/node/Node;)V

    .line 509
    iget-object v1, v2, Lorg/commonmark/internal/Bracket;->node:Lorg/commonmark/node/Text;

    invoke-virtual {v1}, Lorg/commonmark/node/Text;->unlink()V

    .line 510
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->removeLastBracket()V

    .line 513
    iget-boolean v1, v2, Lorg/commonmark/internal/Bracket;->image:Z

    if-nez v1, :cond_f3

    .line 514
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    :goto_e8
    if-eqz v1, :cond_f3

    .line 516
    iget-boolean v2, v1, Lorg/commonmark/internal/Bracket;->image:Z

    if-nez v2, :cond_f0

    .line 518
    iput-boolean v6, v1, Lorg/commonmark/internal/Bracket;->allowed:Z

    .line 520
    :cond_f0
    iget-object v1, v1, Lorg/commonmark/internal/Bracket;->previous:Lorg/commonmark/internal/Bracket;

    goto :goto_e8

    :cond_f3
    return-object v0

    .line 527
    :cond_f4
    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 528
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->removeLastBracket()V

    .line 530
    invoke-direct {p0, v3}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v0

    return-object v0
.end method

.method private parseDelimiters(Lorg/commonmark/parser/delimiter/DelimiterProcessor;C)Lorg/commonmark/node/Node;
    .registers 13

    .line 362
    invoke-direct {p0, p1, p2}, Lorg/commonmark/internal/InlineParserImpl;->scanDelimiters(Lorg/commonmark/parser/delimiter/DelimiterProcessor;C)Lorg/commonmark/internal/InlineParserImpl$DelimiterData;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 366
    :cond_8
    iget v0, p1, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;->count:I

    .line 367
    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int v2, v1, v0

    .line 369
    iput v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 370
    iget-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v3, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    invoke-direct {p0, v2, v1, v3}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;II)Lorg/commonmark/node/Text;

    move-result-object v1

    .line 373
    new-instance v2, Lorg/commonmark/internal/Delimiter;

    iget-boolean v7, p1, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;->canOpen:Z

    iget-boolean v8, p1, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;->canClose:Z

    iget-object v9, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    move-object v4, v2

    move-object v5, v1

    move v6, p2

    invoke-direct/range {v4 .. v9}, Lorg/commonmark/internal/Delimiter;-><init>(Lorg/commonmark/node/Text;CZZLorg/commonmark/internal/Delimiter;)V

    iput-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 374
    iget-object p1, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    iput v0, p1, Lorg/commonmark/internal/Delimiter;->length:I

    .line 375
    iput v0, p1, Lorg/commonmark/internal/Delimiter;->originalLength:I

    .line 376
    iget-object p1, p1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    if-eqz p1, :cond_3a

    .line 377
    iget-object p1, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    iget-object p1, p1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    iget-object p2, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    iput-object p2, p1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    :cond_3a
    return-object v1
.end method

.method private parseEntity()Lorg/commonmark/node/Node;
    .registers 2

    .line 642
    sget-object v0, Lorg/commonmark/internal/InlineParserImpl;->ENTITY_HERE:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 643
    invoke-static {v0}, Lorg/commonmark/internal/util/Html5Entities;->entityToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v0

    return-object v0

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseHtmlInline()Lorg/commonmark/node/Node;
    .registers 3

    .line 627
    sget-object v0, Lorg/commonmark/internal/InlineParserImpl;->HTML_TAG:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 629
    new-instance v1, Lorg/commonmark/node/HtmlInline;

    invoke-direct {v1}, Lorg/commonmark/node/HtmlInline;-><init>()V

    .line 630
    invoke-virtual {v1, v0}, Lorg/commonmark/node/HtmlInline;->setLiteral(Ljava/lang/String;)V

    return-object v1

    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseInline(Lorg/commonmark/node/Node;)Lorg/commonmark/node/Node;
    .registers 4

    .line 188
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    const/16 v1, 0xa

    if-eq v0, v1, :cond_66

    const/16 p1, 0x21

    if-eq v0, p1, :cond_61

    const/16 p1, 0x26

    if-eq v0, p1, :cond_5c

    const/16 p1, 0x3c

    if-eq v0, p1, :cond_51

    const/16 p1, 0x60

    if-eq v0, p1, :cond_4c

    packed-switch v0, :pswitch_data_7c

    .line 223
    iget-object p1, p0, Lorg/commonmark/internal/InlineParserImpl;->delimiterCharacters:Ljava/util/BitSet;

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 225
    iget-object p1, p0, Lorg/commonmark/internal/InlineParserImpl;->delimiterProcessors:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 226
    invoke-direct {p0, p1, v0}, Lorg/commonmark/internal/InlineParserImpl;->parseDelimiters(Lorg/commonmark/parser/delimiter/DelimiterProcessor;C)Lorg/commonmark/node/Node;

    move-result-object p1

    goto :goto_6a

    .line 228
    :cond_38
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseString()Lorg/commonmark/node/Node;

    move-result-object p1

    goto :goto_6a

    .line 211
    :pswitch_3d
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseCloseBracket()Lorg/commonmark/node/Node;

    move-result-object p1

    goto :goto_6a

    .line 199
    :pswitch_42
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseBackslash()Lorg/commonmark/node/Node;

    move-result-object p1

    goto :goto_6a

    .line 205
    :pswitch_47
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseOpenBracket()Lorg/commonmark/node/Node;

    move-result-object p1

    goto :goto_6a

    .line 202
    :cond_4c
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseBackticks()Lorg/commonmark/node/Node;

    move-result-object p1

    goto :goto_6a

    .line 214
    :cond_51
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseAutolink()Lorg/commonmark/node/Node;

    move-result-object p1

    if-nez p1, :cond_6a

    .line 216
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseHtmlInline()Lorg/commonmark/node/Node;

    move-result-object p1

    goto :goto_6a

    .line 220
    :cond_5c
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseEntity()Lorg/commonmark/node/Node;

    move-result-object p1

    goto :goto_6a

    .line 208
    :cond_61
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseBang()Lorg/commonmark/node/Node;

    move-result-object p1

    goto :goto_6a

    .line 196
    :cond_66
    invoke-direct {p0, p1}, Lorg/commonmark/internal/InlineParserImpl;->parseNewline(Lorg/commonmark/node/Node;)Lorg/commonmark/node/Node;

    move-result-object p1

    :cond_6a
    :goto_6a
    if-eqz p1, :cond_6d

    return-object p1

    .line 235
    :cond_6d
    iget p1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 238
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-direct {p0, p1}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object p1

    return-object p1

    :pswitch_data_7c
    .packed-switch 0x5b
        :pswitch_47
        :pswitch_42
        :pswitch_3d
    .end packed-switch
.end method

.method private parseLinkDestination()Ljava/lang/String;
    .registers 5

    .line 549
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    invoke-static {v0, v1}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkDestination(Ljava/lang/CharSequence;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    return-object v0

    .line 555
    :cond_d
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_22

    .line 557
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    .line 559
    :cond_22
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 562
    :goto_2a
    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 563
    invoke-static {v1}, Lorg/commonmark/internal/util/Escaping;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseLinkTitle()Ljava/lang/String;
    .registers 5

    .line 570
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    invoke-static {v0, v1}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkTitle(Ljava/lang/CharSequence;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    return-object v0

    .line 576
    :cond_d
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 577
    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 578
    invoke-static {v1}, Lorg/commonmark/internal/util/Escaping;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseNewline(Lorg/commonmark/node/Node;)Lorg/commonmark/node/Node;
    .registers 6

    .line 283
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 287
    instance-of v0, p1, Lorg/commonmark/node/Text;

    if-eqz v0, :cond_52

    check-cast p1, Lorg/commonmark/node/Text;

    invoke-virtual {p1}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 289
    invoke-virtual {p1}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v0

    .line 290
    sget-object v1, Lorg/commonmark/internal/InlineParserImpl;->FINAL_SPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_34

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    sub-int v1, v2, v1

    goto :goto_35

    :cond_34
    move v1, v3

    :goto_35
    if-lez v1, :cond_43

    .line 293
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/commonmark/node/Text;->setLiteral(Ljava/lang/String;)V

    :cond_43
    const/4 p1, 0x2

    if-lt v1, p1, :cond_4c

    .line 296
    new-instance p1, Lorg/commonmark/node/HardLineBreak;

    invoke-direct {p1}, Lorg/commonmark/node/HardLineBreak;-><init>()V

    return-object p1

    .line 298
    :cond_4c
    new-instance p1, Lorg/commonmark/node/SoftLineBreak;

    invoke-direct {p1}, Lorg/commonmark/node/SoftLineBreak;-><init>()V

    return-object p1

    .line 301
    :cond_52
    new-instance p1, Lorg/commonmark/node/SoftLineBreak;

    invoke-direct {p1}, Lorg/commonmark/node/SoftLineBreak;-><init>()V

    return-object p1
.end method

.method private parseOpenBracket()Lorg/commonmark/node/Node;
    .registers 5

    .line 387
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v1, v0, 0x1

    .line 388
    iput v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    const-string v1, "["

    .line 390
    invoke-direct {p0, v1}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v1

    .line 393
    iget-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    invoke-static {v1, v0, v2, v3}, Lorg/commonmark/internal/Bracket;->link(Lorg/commonmark/node/Text;ILorg/commonmark/internal/Bracket;Lorg/commonmark/internal/Delimiter;)Lorg/commonmark/internal/Bracket;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->addBracket(Lorg/commonmark/internal/Bracket;)V

    return-object v1
.end method

.method private parseString()Lorg/commonmark/node/Node;
    .registers 6

    .line 653
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 654
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 655
    :goto_8
    iget v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    if-eq v2, v1, :cond_22

    .line 656
    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->specialCharacters:Ljava/util/BitSet;

    iget-object v4, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_22

    .line 659
    :cond_1b
    iget v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    goto :goto_8

    .line 661
    :cond_22
    :goto_22
    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    if-eq v0, v1, :cond_2d

    .line 662
    iget-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;II)Lorg/commonmark/node/Text;

    move-result-object v0

    return-object v0

    :cond_2d
    const/4 v0, 0x0

    return-object v0
.end method

.method private peek()C
    .registers 3

    .line 265
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 266
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private processDelimiters(Lorg/commonmark/internal/Delimiter;)V
    .registers 13

    .line 721
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 724
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    :goto_7
    if-eqz v1, :cond_10

    .line 725
    iget-object v2, v1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    if-eq v2, p1, :cond_10

    .line 726
    iget-object v1, v1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    goto :goto_7

    :cond_10
    :goto_10
    if-eqz v1, :cond_c2

    .line 730
    iget-char v2, v1, Lorg/commonmark/internal/Delimiter;->delimiterChar:C

    .line 732
    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->delimiterProcessors:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 733
    iget-boolean v4, v1, Lorg/commonmark/internal/Delimiter;->canClose:Z

    if-eqz v4, :cond_be

    if-nez v3, :cond_28

    goto/16 :goto_be

    .line 738
    :cond_28
    invoke-interface {v3}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getOpeningCharacter()C

    move-result v4

    .line 744
    iget-object v5, v1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_31
    const/4 v9, 0x1

    if-eqz v5, :cond_54

    if-eq v5, p1, :cond_54

    .line 745
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eq v5, v10, :cond_54

    .line 746
    iget-boolean v10, v5, Lorg/commonmark/internal/Delimiter;->canOpen:Z

    if-eqz v10, :cond_51

    iget-char v10, v5, Lorg/commonmark/internal/Delimiter;->delimiterChar:C

    if-ne v10, v4, :cond_51

    .line 748
    invoke-interface {v3, v5, v1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getDelimiterUse(Lorg/commonmark/parser/delimiter/DelimiterRun;Lorg/commonmark/parser/delimiter/DelimiterRun;)I

    move-result v7

    if-lez v7, :cond_50

    move v8, v9

    goto :goto_55

    :cond_50
    move v8, v9

    .line 754
    :cond_51
    iget-object v5, v5, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    goto :goto_31

    :cond_54
    move v9, v6

    :goto_55
    if-nez v9, :cond_6c

    if-nez v8, :cond_69

    .line 766
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    iget-object v3, v1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    iget-boolean v2, v1, Lorg/commonmark/internal/Delimiter;->canOpen:Z

    if-nez v2, :cond_69

    .line 770
    invoke-direct {p0, v1}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiterKeepNode(Lorg/commonmark/internal/Delimiter;)V

    .line 773
    :cond_69
    iget-object v1, v1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    goto :goto_10

    .line 777
    :cond_6c
    iget-object v2, v5, Lorg/commonmark/internal/Delimiter;->node:Lorg/commonmark/node/Text;

    .line 778
    iget-object v4, v1, Lorg/commonmark/internal/Delimiter;->node:Lorg/commonmark/node/Text;

    .line 781
    iget v8, v5, Lorg/commonmark/internal/Delimiter;->length:I

    sub-int/2addr v8, v7

    iput v8, v5, Lorg/commonmark/internal/Delimiter;->length:I

    .line 782
    iget v8, v1, Lorg/commonmark/internal/Delimiter;->length:I

    sub-int/2addr v8, v7

    iput v8, v1, Lorg/commonmark/internal/Delimiter;->length:I

    .line 784
    invoke-virtual {v2}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v8

    .line 785
    invoke-virtual {v2}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v7

    .line 784
    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 783
    invoke-virtual {v2, v8}, Lorg/commonmark/node/Text;->setLiteral(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v4}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v8

    .line 788
    invoke-virtual {v4}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v7

    .line 787
    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 786
    invoke-virtual {v4, v6}, Lorg/commonmark/node/Text;->setLiteral(Ljava/lang/String;)V

    .line 790
    invoke-direct {p0, v5, v1}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimitersBetween(Lorg/commonmark/internal/Delimiter;Lorg/commonmark/internal/Delimiter;)V

    .line 793
    invoke-direct {p0, v2, v4}, Lorg/commonmark/internal/InlineParserImpl;->mergeTextNodesBetweenExclusive(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V

    .line 794
    invoke-interface {v3, v2, v4, v7}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->process(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V

    .line 797
    iget v2, v5, Lorg/commonmark/internal/Delimiter;->length:I

    if-nez v2, :cond_b2

    .line 798
    invoke-direct {p0, v5}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiterAndNode(Lorg/commonmark/internal/Delimiter;)V

    .line 801
    :cond_b2
    iget v2, v1, Lorg/commonmark/internal/Delimiter;->length:I

    if-nez v2, :cond_10

    .line 802
    iget-object v2, v1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 803
    invoke-direct {p0, v1}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiterAndNode(Lorg/commonmark/internal/Delimiter;)V

    move-object v1, v2

    goto/16 :goto_10

    .line 734
    :cond_be
    :goto_be
    iget-object v1, v1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    goto/16 :goto_10

    .line 809
    :cond_c2
    :goto_c2
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    if-eqz v0, :cond_cc

    if-eq v0, p1, :cond_cc

    .line 810
    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiterKeepNode(Lorg/commonmark/internal/Delimiter;)V

    goto :goto_c2

    :cond_cc
    return-void
.end method

.method private removeDelimiter(Lorg/commonmark/internal/Delimiter;)V
    .registers 4

    .line 840
    iget-object v0, p1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    if-eqz v0, :cond_a

    .line 841
    iget-object v0, p1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    iget-object v1, p1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    iput-object v1, v0, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 843
    :cond_a
    iget-object v0, p1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    if-nez v0, :cond_13

    .line 845
    iget-object p1, p1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    iput-object p1, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    goto :goto_19

    .line 847
    :cond_13
    iget-object v0, p1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    iget-object p1, p1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    iput-object p1, v0, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    :goto_19
    return-void
.end method

.method private removeDelimiterAndNode(Lorg/commonmark/internal/Delimiter;)V
    .registers 3

    .line 827
    iget-object v0, p1, Lorg/commonmark/internal/Delimiter;->node:Lorg/commonmark/node/Text;

    .line 828
    invoke-virtual {v0}, Lorg/commonmark/node/Text;->unlink()V

    .line 829
    invoke-direct {p0, p1}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiter(Lorg/commonmark/internal/Delimiter;)V

    return-void
.end method

.method private removeDelimiterKeepNode(Lorg/commonmark/internal/Delimiter;)V
    .registers 2

    .line 836
    invoke-direct {p0, p1}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiter(Lorg/commonmark/internal/Delimiter;)V

    return-void
.end method

.method private removeDelimitersBetween(Lorg/commonmark/internal/Delimiter;Lorg/commonmark/internal/Delimiter;)V
    .registers 4

    .line 815
    iget-object p2, p2, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    :goto_2
    if-eqz p2, :cond_d

    if-eq p2, p1, :cond_d

    .line 817
    iget-object v0, p2, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    .line 818
    invoke-direct {p0, p2}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiterKeepNode(Lorg/commonmark/internal/Delimiter;)V

    move-object p2, v0

    goto :goto_2

    :cond_d
    return-void
.end method

.method private removeLastBracket()V
    .registers 2

    .line 542
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    iget-object v0, v0, Lorg/commonmark/internal/Bracket;->previous:Lorg/commonmark/internal/Bracket;

    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    return-void
.end method

.method private scanDelimiters(Lorg/commonmark/parser/delimiter/DelimiterProcessor;C)Lorg/commonmark/internal/InlineParserImpl$DelimiterData;
    .registers 12

    .line 675
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    const/4 v1, 0x0

    move v2, v1

    .line 678
    :goto_4
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    move-result v3

    const/4 v4, 0x1

    if-ne v3, p2, :cond_13

    add-int/lit8 v2, v2, 0x1

    .line 680
    iget v3, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    goto :goto_4

    .line 683
    :cond_13
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getMinLength()I

    move-result v3

    if-ge v2, v3, :cond_1d

    .line 684
    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    const/4 p1, 0x0

    return-object p1

    :cond_1d
    const-string v3, "\n"

    if-nez v0, :cond_23

    move-object v5, v3

    goto :goto_2b

    .line 688
    :cond_23
    iget-object v5, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    add-int/lit8 v6, v0, -0x1

    .line 689
    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 691
    :goto_2b
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    move-result v6

    if-nez v6, :cond_32

    goto :goto_36

    .line 693
    :cond_32
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 696
    :goto_36
    sget-object v6, Lorg/commonmark/internal/InlineParserImpl;->PUNCTUATION:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    .line 697
    sget-object v7, Lorg/commonmark/internal/InlineParserImpl;->UNICODE_WHITESPACE_CHAR:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    .line 698
    sget-object v7, Lorg/commonmark/internal/InlineParserImpl;->PUNCTUATION:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    .line 699
    sget-object v8, Lorg/commonmark/internal/InlineParserImpl;->UNICODE_WHITESPACE_CHAR:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_68

    if-eqz v7, :cond_66

    if-nez v5, :cond_66

    if-eqz v6, :cond_68

    :cond_66
    move v8, v4

    goto :goto_69

    :cond_68
    move v8, v1

    :goto_69
    if-nez v5, :cond_73

    if-eqz v6, :cond_71

    if-nez v3, :cond_71

    if-eqz v7, :cond_73

    :cond_71
    move v3, v4

    goto :goto_74

    :cond_73
    move v3, v1

    :goto_74
    const/16 v5, 0x5f

    if-ne p2, v5, :cond_89

    if-eqz v8, :cond_80

    if-eqz v3, :cond_7e

    if-eqz v6, :cond_80

    :cond_7e
    move p1, v4

    goto :goto_81

    :cond_80
    move p1, v1

    :goto_81
    if-eqz v3, :cond_9e

    if-eqz v8, :cond_87

    if-eqz v7, :cond_9e

    :cond_87
    move v1, v4

    goto :goto_9e

    :cond_89
    if-eqz v8, :cond_93

    .line 711
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getOpeningCharacter()C

    move-result v5

    if-ne p2, v5, :cond_93

    move v5, v4

    goto :goto_94

    :cond_93
    move v5, v1

    :goto_94
    if-eqz v3, :cond_9d

    .line 712
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getClosingCharacter()C

    move-result p1

    if-ne p2, p1, :cond_9d

    move v1, v4

    :cond_9d
    move p1, v5

    .line 715
    :cond_9e
    :goto_9e
    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 716
    new-instance p2, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;

    invoke-direct {p2, v2, p1, v1}, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;-><init>(IZZ)V

    return-object p2
.end method

.method private spnl()V
    .registers 2

    .line 276
    sget-object v0, Lorg/commonmark/internal/InlineParserImpl;->SPNL:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    return-void
.end method

.method private text(Ljava/lang/String;)Lorg/commonmark/node/Text;
    .registers 3

    .line 179
    new-instance v0, Lorg/commonmark/node/Text;

    invoke-direct {v0, p1}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private text(Ljava/lang/String;II)Lorg/commonmark/node/Text;
    .registers 5

    .line 175
    new-instance v0, Lorg/commonmark/node/Text;

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;Lorg/commonmark/node/Node;)V
    .registers 4

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/commonmark/internal/InlineParserImpl;->reset(Ljava/lang/String;)V

    const/4 p1, 0x0

    move-object v0, p1

    .line 153
    :goto_9
    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->parseInline(Lorg/commonmark/node/Node;)Lorg/commonmark/node/Node;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 156
    invoke-virtual {p2, v0}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    goto :goto_9

    .line 162
    :cond_13
    invoke-direct {p0, p1}, Lorg/commonmark/internal/InlineParserImpl;->processDelimiters(Lorg/commonmark/internal/Delimiter;)V

    .line 163
    invoke-direct {p0, p2}, Lorg/commonmark/internal/InlineParserImpl;->mergeChildTextNodes(Lorg/commonmark/node/Node;)V

    return-void
.end method

.method parseLinkLabel()I
    .registers 6

    .line 585
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_46

    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_18

    goto :goto_46

    .line 589
    :cond_18
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    .line 590
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkLabelContent(Ljava/lang/CharSequence;I)I

    move-result v1

    sub-int v0, v1, v0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_46

    const/16 v3, 0x3e7

    if-le v0, v3, :cond_2c

    goto :goto_46

    .line 596
    :cond_2c
    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_46

    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-eq v3, v4, :cond_3f

    goto :goto_46

    :cond_3f
    add-int/lit8 v1, v1, 0x1

    .line 599
    iput v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v0, v0, 0x2

    return v0

    :cond_46
    :goto_46
    return v2
.end method

.method reset(Ljava/lang/String;)V
    .registers 2

    .line 167
    iput-object p1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    const/4 p1, 0x0

    .line 168
    iput p1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 170
    iput-object p1, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    return-void
.end method
