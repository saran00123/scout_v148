.class public Lio/noties/markwon/html/tag/ListHandler;
.super Lio/noties/markwon/html/TagHandler;
.source "ListHandler.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Lio/noties/markwon/html/TagHandler;-><init>()V

    return-void
.end method

.method private static currentBulletListLevel(Lio/noties/markwon/html/HtmlTag$Block;)I
    .registers 4
    .param p0    # Lio/noties/markwon/html/HtmlTag$Block;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 79
    :cond_1
    :goto_1
    invoke-interface {p0}, Lio/noties/markwon/html/HtmlTag$Block;->parent()Lio/noties/markwon/html/HtmlTag$Block;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 80
    invoke-interface {p0}, Lio/noties/markwon/html/HtmlTag$Block;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ul"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 81
    invoke-interface {p0}, Lio/noties/markwon/html/HtmlTag$Block;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ol"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_22
    return v0
.end method


# virtual methods
.method public handle(Lio/noties/markwon/MarkwonVisitor;Lio/noties/markwon/html/MarkwonHtmlRenderer;Lio/noties/markwon/html/HtmlTag;)V
    .registers 14
    .param p1    # Lio/noties/markwon/MarkwonVisitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/html/MarkwonHtmlRenderer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/noties/markwon/html/HtmlTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag;->isBlock()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 32
    :cond_7
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag;->getAsBlock()Lio/noties/markwon/html/HtmlTag$Block;

    move-result-object p3

    .line 33
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag$Block;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 34
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag$Block;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ul"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_24

    if-nez v1, :cond_24

    return-void

    .line 40
    :cond_24
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->configuration()Lio/noties/markwon/MarkwonConfiguration;

    move-result-object v1

    .line 41
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->renderProps()Lio/noties/markwon/RenderProps;

    move-result-object v2

    .line 42
    invoke-virtual {v1}, Lio/noties/markwon/MarkwonConfiguration;->spansFactory()Lio/noties/markwon/MarkwonSpansFactory;

    move-result-object v3

    const-class v4, Lorg/commonmark/node/ListItem;

    invoke-interface {v3, v4}, Lio/noties/markwon/MarkwonSpansFactory;->get(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;

    move-result-object v3

    .line 45
    invoke-static {p3}, Lio/noties/markwon/html/tag/ListHandler;->currentBulletListLevel(Lio/noties/markwon/html/HtmlTag$Block;)I

    move-result v4

    .line 47
    invoke-interface {p3}, Lio/noties/markwon/html/HtmlTag$Block;->children()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v5, 0x1

    :cond_43
    :goto_43
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/noties/markwon/html/HtmlTag$Block;

    .line 49
    invoke-static {p1, p2, v6}, Lio/noties/markwon/html/tag/ListHandler;->visitChildren(Lio/noties/markwon/MarkwonVisitor;Lio/noties/markwon/html/MarkwonHtmlRenderer;Lio/noties/markwon/html/HtmlTag$Block;)V

    if-eqz v3, :cond_43

    .line 51
    invoke-interface {v6}, Lio/noties/markwon/html/HtmlTag$Block;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "li"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    if-eqz v0, :cond_76

    .line 55
    sget-object v7, Lio/noties/markwon/core/CoreProps;->LIST_ITEM_TYPE:Lio/noties/markwon/Prop;

    sget-object v8, Lio/noties/markwon/core/CoreProps$ListItemType;->ORDERED:Lio/noties/markwon/core/CoreProps$ListItemType;

    invoke-virtual {v7, v2, v8}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 56
    sget-object v7, Lio/noties/markwon/core/CoreProps;->ORDERED_LIST_ITEM_NUMBER:Lio/noties/markwon/Prop;

    add-int/lit8 v8, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v2, v5}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    move v5, v8

    goto :goto_86

    .line 58
    :cond_76
    sget-object v7, Lio/noties/markwon/core/CoreProps;->LIST_ITEM_TYPE:Lio/noties/markwon/Prop;

    sget-object v8, Lio/noties/markwon/core/CoreProps$ListItemType;->BULLET:Lio/noties/markwon/core/CoreProps$ListItemType;

    invoke-virtual {v7, v2, v8}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 59
    sget-object v7, Lio/noties/markwon/core/CoreProps;->BULLET_LIST_ITEM_LEVEL:Lio/noties/markwon/Prop;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 63
    :goto_86
    invoke-interface {p1}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object v7

    .line 64
    invoke-interface {v3, v1, v2}, Lio/noties/markwon/SpanFactory;->getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object v8

    .line 65
    invoke-interface {v6}, Lio/noties/markwon/html/HtmlTag$Block;->start()I

    move-result v9

    .line 66
    invoke-interface {v6}, Lio/noties/markwon/html/HtmlTag$Block;->end()I

    move-result v6

    .line 62
    invoke-static {v7, v8, v9, v6}, Lio/noties/markwon/SpannableBuilder;->setSpans(Lio/noties/markwon/SpannableBuilder;Ljava/lang/Object;II)V

    goto :goto_43

    :cond_9a
    return-void
.end method

.method public supportedTags()Ljava/util/Collection;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ol"

    const-string v1, "ul"

    .line 74
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
