.class public Lio/noties/markwon/html/MarkwonHtmlParserImpl;
.super Lio/noties/markwon/html/MarkwonHtmlParser;
.source "MarkwonHtmlParserImpl.java"


# static fields
.field private static final BLOCK_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final INLINE_TAGS:Ljava/util/Set;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG_LIST_ITEM:Ljava/lang/String; = "li"

.field private static final TAG_PARAGRAPH:Ljava/lang/String; = "p"

.field private static final VOID_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentBlock:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

.field private final emptyTagReplacement:Lio/noties/markwon/html/HtmlEmptyTagReplacement;

.field private final inlineTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/noties/markwon/html/HtmlTagImpl$InlineImpl;",
            ">;"
        }
    .end annotation
.end field

.field private isInsidePreTag:Z

.field private previousIsBlock:Z

.field private final trimmingAppender:Lio/noties/markwon/html/TrimmingAppender;


# direct methods
.method static constructor <clinit>()V
    .registers 37

    .line 58
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "a"

    const-string v2, "abbr"

    const-string v3, "acronym"

    const-string v4, "b"

    const-string v5, "bdo"

    const-string v6, "big"

    const-string v7, "br"

    const-string v8, "button"

    const-string v9, "cite"

    const-string v10, "code"

    const-string v11, "dfn"

    const-string v12, "em"

    const-string v13, "i"

    const-string v14, "img"

    const-string v15, "input"

    const-string v16, "kbd"

    const-string v17, "label"

    const-string v18, "map"

    const-string v19, "object"

    const-string v20, "q"

    const-string v21, "samp"

    const-string v22, "script"

    const-string v23, "select"

    const-string v24, "small"

    const-string v25, "span"

    const-string v26, "strong"

    const-string v27, "sub"

    const-string v28, "sup"

    const-string v29, "textarea"

    const-string v30, "time"

    const-string v31, "tt"

    const-string v32, "var"

    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->INLINE_TAGS:Ljava/util/Set;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "area"

    const-string v2, "base"

    const-string v3, "br"

    const-string v4, "col"

    const-string v5, "embed"

    const-string v6, "hr"

    const-string v7, "img"

    const-string v8, "input"

    const-string v9, "keygen"

    const-string v10, "link"

    const-string v11, "meta"

    const-string v12, "param"

    const-string v13, "source"

    const-string v14, "track"

    const-string v15, "wbr"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->VOID_TAGS:Ljava/util/Set;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "address"

    const-string v2, "article"

    const-string v3, "aside"

    const-string v4, "blockquote"

    const-string v5, "canvas"

    const-string v6, "dd"

    const-string v7, "div"

    const-string v8, "dl"

    const-string v9, "dt"

    const-string v10, "fieldset"

    const-string v11, "figcaption"

    const-string v12, "figure"

    const-string v13, "footer"

    const-string v14, "form"

    const-string v15, "h1"

    const-string v16, "h2"

    const-string v17, "h3"

    const-string v18, "h4"

    const-string v19, "h5"

    const-string v20, "h6"

    const-string v21, "header"

    const-string v22, "hgroup"

    const-string v23, "hr"

    const-string v24, "li"

    const-string v25, "main"

    const-string v26, "nav"

    const-string v27, "noscript"

    const-string v28, "ol"

    const-string v29, "output"

    const-string v30, "p"

    const-string v31, "pre"

    const-string v32, "section"

    const-string v33, "table"

    const-string v34, "tfoot"

    const-string v35, "ul"

    const-string v36, "video"

    filled-new-array/range {v1 .. v36}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->BLOCK_TAGS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Lio/noties/markwon/html/HtmlEmptyTagReplacement;Lio/noties/markwon/html/TrimmingAppender;)V
    .registers 5
    .param p1    # Lio/noties/markwon/html/HtmlEmptyTagReplacement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/html/TrimmingAppender;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 125
    invoke-direct {p0}, Lio/noties/markwon/html/MarkwonHtmlParser;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->inlineTags:Ljava/util/List;

    .line 114
    invoke-static {}, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->root()Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->currentBlock:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    .line 126
    iput-object p1, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->emptyTagReplacement:Lio/noties/markwon/html/HtmlEmptyTagReplacement;

    .line 127
    iput-object p2, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->trimmingAppender:Lio/noties/markwon/html/TrimmingAppender;

    return-void
.end method

.method public static create()Lio/noties/markwon/html/MarkwonHtmlParserImpl;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 33
    invoke-static {}, Lio/noties/markwon/html/HtmlEmptyTagReplacement;->create()Lio/noties/markwon/html/HtmlEmptyTagReplacement;

    move-result-object v0

    invoke-static {v0}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->create(Lio/noties/markwon/html/HtmlEmptyTagReplacement;)Lio/noties/markwon/html/MarkwonHtmlParserImpl;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lio/noties/markwon/html/HtmlEmptyTagReplacement;)Lio/noties/markwon/html/MarkwonHtmlParserImpl;
    .registers 3
    .param p0    # Lio/noties/markwon/html/HtmlEmptyTagReplacement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 38
    new-instance v0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;

    invoke-static {}, Lio/noties/markwon/html/TrimmingAppender;->create()Lio/noties/markwon/html/TrimmingAppender;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;-><init>(Lio/noties/markwon/html/HtmlEmptyTagReplacement;Lio/noties/markwon/html/TrimmingAppender;)V

    return-object v0
.end method

.method protected static ensureNewLine(Ljava/lang/Appendable;)V
    .registers 3
    .param p0    # Ljava/lang/Appendable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/lang/CharSequence;",
            ">(TT;)V"
        }
    .end annotation

    .line 439
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_16

    add-int/lit8 v1, v1, -0x1

    .line 441
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v1, v0, :cond_16

    .line 442
    invoke-static {p0, v1}, Lio/noties/markwon/html/AppendableUtils;->appendQuietly(Ljava/lang/Appendable;C)V

    :cond_16
    return-void
.end method

.method protected static extractAttributes(Lio/noties/markwon/html/jsoup/parser/Token$StartTag;)Ljava/util/Map;
    .registers 5
    .param p0    # Lio/noties/markwon/html/jsoup/parser/Token$StartTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/noties/markwon/html/jsoup/parser/Token$StartTag;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 451
    iget-object p0, p0, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->attributes:Lio/noties/markwon/html/jsoup/nodes/Attributes;

    .line 452
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->size()I

    move-result v0

    if-lez v0, :cond_34

    .line 455
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 456
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/noties/markwon/html/jsoup/nodes/Attribute;

    .line 457
    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 459
    :cond_2f
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    goto :goto_38

    .line 461
    :cond_34
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :goto_38
    return-object p0
.end method

.method protected static isBlockTag(Ljava/lang/String;)Z
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 435
    sget-object v0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->BLOCK_TAGS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected static isEmpty(Ljava/lang/Appendable;Lio/noties/markwon/html/HtmlTagImpl;)Z
    .registers 2
    .param p0    # Ljava/lang/Appendable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/noties/markwon/html/HtmlTagImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Lio/noties/markwon/html/HtmlTagImpl;",
            ")Z"
        }
    .end annotation

    .line 470
    iget p1, p1, Lio/noties/markwon/html/HtmlTagImpl;->start:I

    check-cast p0, Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method protected static isInlineTag(Ljava/lang/String;)Z
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 427
    sget-object v0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->INLINE_TAGS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected static isVoidTag(Ljava/lang/String;)Z
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 431
    sget-object v0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->VOID_TAGS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected appendBlockChild(Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;)V
    .registers 5
    .param p1    # Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 381
    iget-object v0, p1, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->children:Ljava/util/List;

    if-nez v0, :cond_c

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 384
    iput-object v0, p1, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->children:Ljava/util/List;

    .line 386
    :cond_c
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected appendEmptyTagReplacement(Ljava/lang/Appendable;Lio/noties/markwon/html/HtmlTagImpl;)V
    .registers 4
    .param p1    # Ljava/lang/Appendable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/html/HtmlTagImpl;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Lio/noties/markwon/html/HtmlTagImpl;",
            ")V"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->emptyTagReplacement:Lio/noties/markwon/html/HtmlEmptyTagReplacement;

    invoke-virtual {v0, p2}, Lio/noties/markwon/html/HtmlEmptyTagReplacement;->replace(Lio/noties/markwon/html/HtmlTag;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 478
    invoke-static {p1, p2}, Lio/noties/markwon/html/AppendableUtils;->appendQuietly(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method protected ensureNewLineIfPreviousWasBlock(Ljava/lang/Appendable;)V
    .registers 3
    .param p1    # Ljava/lang/Appendable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/lang/CharSequence;",
            ">(TT;)V"
        }
    .end annotation

    .line 419
    iget-boolean v0, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->previousIsBlock:Z

    if-eqz v0, :cond_a

    .line 420
    invoke-static {p1}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->ensureNewLine(Ljava/lang/Appendable;)V

    const/4 p1, 0x0

    .line 421
    iput-boolean p1, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->previousIsBlock:Z

    :cond_a
    return-void
.end method

.method protected findOpenBlockTag(Ljava/lang/String;)Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 408
    iget-object v0, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->currentBlock:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    :goto_2
    if-eqz v0, :cond_15

    .line 410
    iget-object v1, v0, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->name:Ljava/lang/String;

    .line 411
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->isClosed()Z

    move-result v1

    if-nez v1, :cond_15

    .line 412
    iget-object v0, v0, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->parent:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    goto :goto_2

    :cond_15
    return-object v0
.end method

.method protected findOpenInlineTag(Ljava/lang/String;)Lio/noties/markwon/html/HtmlTagImpl$InlineImpl;
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 394
    iget-object v0, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->inlineTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    const/4 v1, -0x1

    if-le v0, v1, :cond_23

    .line 395
    iget-object v1, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->inlineTags:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/noties/markwon/html/HtmlTagImpl$InlineImpl;

    .line 396
    iget-object v2, v1, Lio/noties/markwon/html/HtmlTagImpl$InlineImpl;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget v2, v1, Lio/noties/markwon/html/HtmlTagImpl$InlineImpl;->end:I

    if-gez v2, :cond_20

    return-object v1

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method public flushBlockTags(ILio/noties/markwon/html/MarkwonHtmlParser$FlushAction;)V
    .registers 5
    .param p2    # Lio/noties/markwon/html/MarkwonHtmlParser$FlushAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/noties/markwon/html/MarkwonHtmlParser$FlushAction<",
            "Lio/noties/markwon/html/HtmlTag$Block;",
            ">;)V"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->currentBlock:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    .line 207
    :goto_2
    iget-object v1, v0, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->parent:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    if-eqz v1, :cond_9

    .line 208
    iget-object v0, v0, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->parent:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    goto :goto_2

    :cond_9
    const/4 v1, -0x1

    if-le p1, v1, :cond_f

    .line 212
    invoke-virtual {v0, p1}, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->closeAt(I)V

    .line 215
    :cond_f
    invoke-virtual {v0}, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->children()Ljava/util/List;

    move-result-object p1

    .line 216
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    .line 217
    invoke-interface {p2, p1}, Lio/noties/markwon/html/MarkwonHtmlParser$FlushAction;->apply(Ljava/util/List;)V

    goto :goto_24

    .line 219
    :cond_1d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/noties/markwon/html/MarkwonHtmlParser$FlushAction;->apply(Ljava/util/List;)V

    .line 222
    :goto_24
    invoke-static {}, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->root()Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    move-result-object p1

    iput-object p1, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->currentBlock:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    return-void
.end method

.method public flushInlineTags(ILio/noties/markwon/html/MarkwonHtmlParser$FlushAction;)V
    .registers 5
    .param p2    # Lio/noties/markwon/html/MarkwonHtmlParser$FlushAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/noties/markwon/html/MarkwonHtmlParser$FlushAction<",
            "Lio/noties/markwon/html/HtmlTag$Inline;",
            ">;)V"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->inlineTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_30

    const/4 v0, -0x1

    if-le p1, v0, :cond_21

    .line 191
    iget-object v0, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->inlineTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/noties/markwon/html/HtmlTagImpl$InlineImpl;

    .line 192
    invoke-virtual {v1, p1}, Lio/noties/markwon/html/HtmlTagImpl$InlineImpl;->closeAt(I)V

    goto :goto_11

    .line 196
    :cond_21
    iget-object p1, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->inlineTags:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/noties/markwon/html/MarkwonHtmlParser$FlushAction;->apply(Ljava/util/List;)V

    .line 197
    iget-object p1, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->inlineTags:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_37

    .line 199
    :cond_30
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/noties/markwon/html/MarkwonHtmlParser$FlushAction;->apply(Ljava/util/List;)V

    :goto_37
    return-void
.end method

.method protected processBlockTagEnd(Ljava/lang/Appendable;Lio/noties/markwon/html/jsoup/parser/Token$EndTag;)V
    .registers 5
    .param p1    # Ljava/lang/Appendable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/html/jsoup/parser/Token$EndTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Lio/noties/markwon/html/jsoup/parser/Token$EndTag;",
            ")V"
        }
    .end annotation

    .line 336
    iget-object v0, p2, Lio/noties/markwon/html/jsoup/parser/Token$EndTag;->normalName:Ljava/lang/String;

    .line 338
    iget-object p2, p2, Lio/noties/markwon/html/jsoup/parser/Token$EndTag;->normalName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->findOpenBlockTag(Ljava/lang/String;)Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    move-result-object p2

    if-eqz p2, :cond_47

    const-string v1, "pre"

    .line 341
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    .line 342
    iput-boolean v1, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->isInsidePreTag:Z

    .line 346
    :cond_15
    invoke-static {p1, p2}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->isEmpty(Ljava/lang/Appendable;Lio/noties/markwon/html/HtmlTagImpl;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 347
    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->appendEmptyTagReplacement(Ljava/lang/Appendable;Lio/noties/markwon/html/HtmlTagImpl;)V

    .line 350
    :cond_1e
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p2, v1}, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->closeAt(I)V

    .line 353
    invoke-virtual {p2}, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 354
    iget-object v1, p2, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->name:Ljava/lang/String;

    invoke-static {v1}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->isBlockTag(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->previousIsBlock:Z

    :cond_36
    const-string v1, "p"

    .line 357
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const/16 v0, 0xa

    .line 358
    invoke-static {p1, v0}, Lio/noties/markwon/html/AppendableUtils;->appendQuietly(Ljava/lang/Appendable;C)V

    .line 361
    :cond_43
    iget-object p1, p2, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->parent:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    iput-object p1, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->currentBlock:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    :cond_47
    return-void
.end method

.method protected processBlockTagStart(Ljava/lang/Appendable;Lio/noties/markwon/html/jsoup/parser/Token$StartTag;)V
    .registers 8
    .param p1    # Ljava/lang/Appendable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/html/jsoup/parser/Token$StartTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Lio/noties/markwon/html/jsoup/parser/Token$StartTag;",
            ")V"
        }
    .end annotation

    .line 283
    iget-object v0, p2, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->normalName:Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->currentBlock:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    iget-object v1, v1, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->name:Ljava/lang/String;

    const-string v2, "p"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 292
    iget-object v1, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->currentBlock:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->closeAt(I)V

    const/16 v1, 0xa

    .line 293
    invoke-static {p1, v1}, Lio/noties/markwon/html/AppendableUtils;->appendQuietly(Ljava/lang/Appendable;C)V

    .line 294
    iget-object v1, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->currentBlock:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    iget-object v1, v1, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->parent:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    iput-object v1, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->currentBlock:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    goto :goto_4a

    :cond_26
    const-string v1, "li"

    .line 295
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->currentBlock:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    iget-object v2, v2, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->name:Ljava/lang/String;

    .line 296
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 298
    iget-object v1, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->currentBlock:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->closeAt(I)V

    .line 299
    iget-object v1, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->currentBlock:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    iget-object v1, v1, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->parent:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    iput-object v1, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->currentBlock:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    .line 302
    :cond_4a
    :goto_4a
    invoke-static {v0}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->isBlockTag(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string v1, "pre"

    .line 303
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->isInsidePreTag:Z

    .line 304
    invoke-static {p1}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->ensureNewLine(Ljava/lang/Appendable;)V

    goto :goto_5f

    .line 306
    :cond_5c
    invoke-virtual {p0, p1}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->ensureNewLineIfPreviousWasBlock(Ljava/lang/Appendable;)V

    .line 309
    :goto_5f
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 311
    invoke-static {p2}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->extractAttributes(Lio/noties/markwon/html/jsoup/parser/Token$StartTag;)Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->currentBlock:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    invoke-static {v0, v2, v3, v4}, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->create(Ljava/lang/String;ILjava/util/Map;Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;)Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    move-result-object v2

    .line 313
    invoke-static {v0}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->isVoidTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7d

    iget-boolean p2, p2, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->selfClosing:Z

    if-eqz p2, :cond_7b

    goto :goto_7d

    :cond_7b
    const/4 p2, 0x0

    goto :goto_7e

    :cond_7d
    :goto_7d
    const/4 p2, 0x1

    :goto_7e
    if-eqz p2, :cond_98

    .line 315
    iget-object v0, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->emptyTagReplacement:Lio/noties/markwon/html/HtmlEmptyTagReplacement;

    invoke-virtual {v0, v2}, Lio/noties/markwon/html/HtmlEmptyTagReplacement;->replace(Lio/noties/markwon/html/HtmlTag;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_91

    .line 317
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_91

    .line 318
    invoke-static {p1, v0}, Lio/noties/markwon/html/AppendableUtils;->appendQuietly(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    .line 320
    :cond_91
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v2, p1}, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->closeAt(I)V

    .line 324
    :cond_98
    iget-object p1, v2, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->parent:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    invoke-virtual {p0, p1, v2}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->appendBlockChild(Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;)V

    if-nez p2, :cond_a1

    .line 328
    iput-object v2, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->currentBlock:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    :cond_a1
    return-void
.end method

.method protected processCharacter(Ljava/lang/Appendable;Lio/noties/markwon/html/jsoup/parser/Token$Character;)V
    .registers 4
    .param p1    # Ljava/lang/Appendable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/html/jsoup/parser/Token$Character;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Lio/noties/markwon/html/jsoup/parser/Token$Character;",
            ")V"
        }
    .end annotation

    .line 372
    iget-boolean v0, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->isInsidePreTag:Z

    if-eqz v0, :cond_c

    .line 373
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/noties/markwon/html/AppendableUtils;->appendQuietly(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    goto :goto_18

    .line 375
    :cond_c
    invoke-virtual {p0, p1}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->ensureNewLineIfPreviousWasBlock(Ljava/lang/Appendable;)V

    .line 376
    iget-object v0, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->trimmingAppender:Lio/noties/markwon/html/TrimmingAppender;

    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lio/noties/markwon/html/TrimmingAppender;->append(Ljava/lang/Appendable;Ljava/lang/String;)V

    :goto_18
    return-void
.end method

.method public processFragment(Ljava/lang/Appendable;Ljava/lang/String;)V
    .registers 6
    .param p1    # Ljava/lang/Appendable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 138
    new-instance v0, Lio/noties/markwon/html/jsoup/parser/Tokeniser;

    new-instance v1, Lio/noties/markwon/html/jsoup/parser/CharacterReader;

    invoke-direct {v1, p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lio/noties/markwon/html/jsoup/parser/ParseErrorList;->noTracking()Lio/noties/markwon/html/jsoup/parser/ParseErrorList;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;-><init>(Lio/noties/markwon/html/jsoup/parser/CharacterReader;Lio/noties/markwon/html/jsoup/parser/ParseErrorList;)V

    .line 142
    :goto_e
    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->read()Lio/noties/markwon/html/jsoup/parser/Token;

    move-result-object p2

    .line 143
    iget-object v1, p2, Lio/noties/markwon/html/jsoup/parser/Token;->type:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    .line 145
    sget-object v2, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->EOF:Lio/noties/markwon/html/jsoup/parser/Token$TokenType;

    if-ne v2, v1, :cond_19

    return-void

    .line 149
    :cond_19
    sget-object v2, Lio/noties/markwon/html/MarkwonHtmlParserImpl$1;->$SwitchMap$io$noties$markwon$html$jsoup$parser$Token$TokenType:[I

    invoke-virtual {v1}, Lio/noties/markwon/html/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_45

    const/4 v2, 0x2

    if-eq v1, v2, :cond_32

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2b

    goto :goto_57

    .line 176
    :cond_2b
    move-object v1, p2

    check-cast v1, Lio/noties/markwon/html/jsoup/parser/Token$Character;

    invoke-virtual {p0, p1, v1}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->processCharacter(Ljava/lang/Appendable;Lio/noties/markwon/html/jsoup/parser/Token$Character;)V

    goto :goto_57

    .line 165
    :cond_32
    move-object v1, p2

    check-cast v1, Lio/noties/markwon/html/jsoup/parser/Token$EndTag;

    .line 167
    iget-object v2, v1, Lio/noties/markwon/html/jsoup/parser/Token$EndTag;->normalName:Ljava/lang/String;

    invoke-static {v2}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->isInlineTag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 168
    invoke-virtual {p0, p1, v1}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->processInlineTagEnd(Ljava/lang/Appendable;Lio/noties/markwon/html/jsoup/parser/Token$EndTag;)V

    goto :goto_57

    .line 170
    :cond_41
    invoke-virtual {p0, p1, v1}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->processBlockTagEnd(Ljava/lang/Appendable;Lio/noties/markwon/html/jsoup/parser/Token$EndTag;)V

    goto :goto_57

    .line 153
    :cond_45
    move-object v1, p2

    check-cast v1, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;

    .line 155
    iget-object v2, v1, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->normalName:Ljava/lang/String;

    invoke-static {v2}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->isInlineTag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 156
    invoke-virtual {p0, p1, v1}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->processInlineTagStart(Ljava/lang/Appendable;Lio/noties/markwon/html/jsoup/parser/Token$StartTag;)V

    goto :goto_57

    .line 158
    :cond_54
    invoke-virtual {p0, p1, v1}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->processBlockTagStart(Ljava/lang/Appendable;Lio/noties/markwon/html/jsoup/parser/Token$StartTag;)V

    .line 182
    :goto_57
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/Token;->reset()Lio/noties/markwon/html/jsoup/parser/Token;

    goto :goto_e
.end method

.method protected processInlineTagEnd(Ljava/lang/Appendable;Lio/noties/markwon/html/jsoup/parser/Token$EndTag;)V
    .registers 4
    .param p1    # Ljava/lang/Appendable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/html/jsoup/parser/Token$EndTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Lio/noties/markwon/html/jsoup/parser/Token$EndTag;",
            ")V"
        }
    .end annotation

    .line 265
    iget-object p2, p2, Lio/noties/markwon/html/jsoup/parser/Token$EndTag;->normalName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->findOpenInlineTag(Ljava/lang/String;)Lio/noties/markwon/html/HtmlTagImpl$InlineImpl;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 269
    invoke-static {p1, p2}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->isEmpty(Ljava/lang/Appendable;Lio/noties/markwon/html/HtmlTagImpl;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 270
    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->appendEmptyTagReplacement(Ljava/lang/Appendable;Lio/noties/markwon/html/HtmlTagImpl;)V

    .line 274
    :cond_11
    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Lio/noties/markwon/html/HtmlTagImpl$InlineImpl;->closeAt(I)V

    :cond_1a
    return-void
.end method

.method protected processInlineTagStart(Ljava/lang/Appendable;Lio/noties/markwon/html/jsoup/parser/Token$StartTag;)V
    .registers 8
    .param p1    # Ljava/lang/Appendable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/html/jsoup/parser/Token$StartTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Lio/noties/markwon/html/jsoup/parser/Token$StartTag;",
            ")V"
        }
    .end annotation

    .line 236
    iget-object v0, p2, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->normalName:Ljava/lang/String;

    .line 238
    new-instance v1, Lio/noties/markwon/html/HtmlTagImpl$InlineImpl;

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {p2}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->extractAttributes(Lio/noties/markwon/html/jsoup/parser/Token$StartTag;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4}, Lio/noties/markwon/html/HtmlTagImpl$InlineImpl;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    .line 240
    invoke-virtual {p0, p1}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->ensureNewLineIfPreviousWasBlock(Ljava/lang/Appendable;)V

    .line 242
    invoke-static {v0}, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->isVoidTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-boolean p2, p2, Lio/noties/markwon/html/jsoup/parser/Token$StartTag;->selfClosing:Z

    if-eqz p2, :cond_37

    .line 245
    :cond_1f
    iget-object p2, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->emptyTagReplacement:Lio/noties/markwon/html/HtmlEmptyTagReplacement;

    invoke-virtual {p2, v1}, Lio/noties/markwon/html/HtmlEmptyTagReplacement;->replace(Lio/noties/markwon/html/HtmlTag;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_30

    .line 247
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_30

    .line 248
    invoke-static {p1, p2}, Lio/noties/markwon/html/AppendableUtils;->appendQuietly(Ljava/lang/Appendable;Ljava/lang/CharSequence;)V

    .line 254
    :cond_30
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Lio/noties/markwon/html/HtmlTagImpl$InlineImpl;->closeAt(I)V

    .line 257
    :cond_37
    iget-object p1, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->inlineTags:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .registers 2

    .line 227
    iget-object v0, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->inlineTags:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 228
    invoke-static {}, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->root()Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/html/MarkwonHtmlParserImpl;->currentBlock:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    return-void
.end method
