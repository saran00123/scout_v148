.class public Lio/noties/markwon/core/CorePlugin;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "CorePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/core/CorePlugin$OnTextAddedListener;
    }
.end annotation


# instance fields
.field private final onTextAddedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/noties/markwon/core/CorePlugin$OnTextAddedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 94
    invoke-direct {p0}, Lio/noties/markwon/AbstractMarkwonPlugin;-><init>()V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/noties/markwon/core/CorePlugin;->onTextAddedListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lio/noties/markwon/core/CorePlugin;)Ljava/util/List;
    .registers 1

    .line 57
    iget-object p0, p0, Lio/noties/markwon/core/CorePlugin;->onTextAddedListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lorg/commonmark/node/Node;)I
    .registers 1

    .line 57
    invoke-static {p0}, Lio/noties/markwon/core/CorePlugin;->listLevel(Lorg/commonmark/node/Node;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/commonmark/node/Paragraph;)Z
    .registers 1

    .line 57
    invoke-static {p0}, Lio/noties/markwon/core/CorePlugin;->isInTightList(Lorg/commonmark/node/Paragraph;)Z

    move-result p0

    return p0
.end method

.method private static blockQuote(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 3
    .param p0    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 209
    const-class v0, Lorg/commonmark/node/BlockQuote;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$4;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$4;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static bulletList(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 3
    .param p0    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 343
    const-class v0, Lorg/commonmark/node/BulletList;

    new-instance v1, Lio/noties/markwon/core/SimpleBlockNodeVisitor;

    invoke-direct {v1}, Lio/noties/markwon/core/SimpleBlockNodeVisitor;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static code(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 3
    .param p0    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 229
    const-class v0, Lorg/commonmark/node/Code;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$5;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$5;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method public static create()Lio/noties/markwon/core/CorePlugin;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 88
    new-instance v0, Lio/noties/markwon/core/CorePlugin;

    invoke-direct {v0}, Lio/noties/markwon/core/CorePlugin;-><init>()V

    return-object v0
.end method

.method private static emphasis(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 3
    .param p0    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 198
    const-class v0, Lorg/commonmark/node/Emphasis;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$3;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$3;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static fencedCodeBlock(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 3
    .param p0    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 248
    const-class v0, Lorg/commonmark/node/FencedCodeBlock;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$6;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$6;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static hardLineBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 3
    .param p0    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 454
    const-class v0, Lorg/commonmark/node/HardLineBreak;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$13;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$13;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static heading(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 3
    .param p0    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 423
    const-class v0, Lorg/commonmark/node/Heading;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$11;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$11;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static image(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 3

    .line 269
    const-class v0, Lorg/commonmark/node/Image;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$8;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$8;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static indentedCodeBlock(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 3
    .param p0    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 257
    const-class v0, Lorg/commonmark/node/IndentedCodeBlock;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$7;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$7;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static isInTightList(Lorg/commonmark/node/Paragraph;)Z
    .registers 2
    .param p0    # Lorg/commonmark/node/Paragraph;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 490
    invoke-virtual {p0}, Lorg/commonmark/node/Paragraph;->getParent()Lorg/commonmark/node/Block;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 492
    invoke-virtual {p0}, Lorg/commonmark/node/Node;->getParent()Lorg/commonmark/node/Node;

    move-result-object p0

    .line 493
    instance-of v0, p0, Lorg/commonmark/node/ListBlock;

    if-eqz v0, :cond_15

    .line 494
    check-cast p0, Lorg/commonmark/node/ListBlock;

    .line 495
    invoke-virtual {p0}, Lorg/commonmark/node/ListBlock;->isTight()Z

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method private static link(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 3
    .param p0    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 502
    const-class v0, Lorg/commonmark/node/Link;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$15;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$15;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static listItem(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 3
    .param p0    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 351
    const-class v0, Lorg/commonmark/node/ListItem;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$9;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$9;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static listLevel(Lorg/commonmark/node/Node;)I
    .registers 3
    .param p0    # Lorg/commonmark/node/Node;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 390
    invoke-virtual {p0}, Lorg/commonmark/node/Node;->getParent()Lorg/commonmark/node/Node;

    move-result-object p0

    const/4 v0, 0x0

    :goto_5
    if-eqz p0, :cond_12

    .line 392
    instance-of v1, p0, Lorg/commonmark/node/ListItem;

    if-eqz v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    .line 395
    :cond_d
    invoke-virtual {p0}, Lorg/commonmark/node/Node;->getParent()Lorg/commonmark/node/Node;

    move-result-object p0

    goto :goto_5

    :cond_12
    return v0
.end method

.method private static orderedList(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 3
    .param p0    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 347
    const-class v0, Lorg/commonmark/node/OrderedList;

    new-instance v1, Lio/noties/markwon/core/SimpleBlockNodeVisitor;

    invoke-direct {v1}, Lio/noties/markwon/core/SimpleBlockNodeVisitor;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static paragraph(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 3
    .param p0    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 463
    const-class v0, Lorg/commonmark/node/Paragraph;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$14;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$14;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static softLineBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 3
    .param p0    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 445
    const-class v0, Lorg/commonmark/node/SoftLineBreak;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$12;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$12;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static strongEmphasis(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 3
    .param p0    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 187
    const-class v0, Lorg/commonmark/node/StrongEmphasis;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$2;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$2;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private text(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 4
    .param p1    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 166
    const-class v0, Lorg/commonmark/node/Text;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$1;

    invoke-direct {v1, p0}, Lio/noties/markwon/core/CorePlugin$1;-><init>(Lio/noties/markwon/core/CorePlugin;)V

    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method private static thematicBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 3
    .param p0    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 401
    const-class v0, Lorg/commonmark/node/ThematicBreak;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$10;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$10;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    return-void
.end method

.method static visitCodeBlock(Lio/noties/markwon/MarkwonVisitor;Ljava/lang/String;Ljava/lang/String;Lorg/commonmark/node/Node;)V
    .registers 8
    .param p0    # Lio/noties/markwon/MarkwonVisitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/commonmark/node/Node;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 319
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->ensureNewLine()V

    .line 321
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->length()I

    move-result v0

    .line 323
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object v1

    const/16 v2, 0xa0

    .line 324
    invoke-virtual {v1, v2}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    move-result-object v1

    .line 325
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->configuration()Lio/noties/markwon/MarkwonConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lio/noties/markwon/MarkwonConfiguration;->syntaxHighlight()Lio/noties/markwon/syntax/SyntaxHighlight;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lio/noties/markwon/syntax/SyntaxHighlight;->highlight(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, Lio/noties/markwon/SpannableBuilder;->append(Ljava/lang/CharSequence;)Lio/noties/markwon/SpannableBuilder;

    .line 327
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->ensureNewLine()V

    .line 329
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    .line 332
    sget-object p2, Lio/noties/markwon/core/CoreProps;->CODE_BLOCK_INFO:Lio/noties/markwon/Prop;

    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->renderProps()Lio/noties/markwon/RenderProps;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 334
    invoke-interface {p0, p3, v0}, Lio/noties/markwon/MarkwonVisitor;->setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V

    .line 336
    invoke-interface {p0, p3}, Lio/noties/markwon/MarkwonVisitor;->hasNext(Lorg/commonmark/node/Node;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 337
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->ensureNewLine()V

    .line 338
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->forceNewLine()V

    :cond_48
    return-void
.end method


# virtual methods
.method public addOnTextAddedListener(Lio/noties/markwon/core/CorePlugin$OnTextAddedListener;)Lio/noties/markwon/core/CorePlugin;
    .registers 3
    .param p1    # Lio/noties/markwon/core/CorePlugin$OnTextAddedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 106
    iget-object v0, p0, Lio/noties/markwon/core/CorePlugin;->onTextAddedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public afterSetText(Landroid/widget/TextView;)V
    .registers 3
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 160
    invoke-virtual {p1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-nez v0, :cond_d

    .line 161
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_d
    return-void
.end method

.method public beforeSetText(Landroid/widget/TextView;Landroid/text/Spanned;)V
    .registers 3
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 152
    invoke-static {p1, p2}, Lio/noties/markwon/core/spans/OrderedListItemSpan;->measure(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public configureSpansFactory(Lio/noties/markwon/MarkwonSpansFactory$Builder;)V
    .registers 5
    .param p1    # Lio/noties/markwon/MarkwonSpansFactory$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 135
    new-instance v0, Lio/noties/markwon/core/factory/CodeBlockSpanFactory;

    invoke-direct {v0}, Lio/noties/markwon/core/factory/CodeBlockSpanFactory;-><init>()V

    .line 137
    const-class v1, Lorg/commonmark/node/StrongEmphasis;

    new-instance v2, Lio/noties/markwon/core/factory/StrongEmphasisSpanFactory;

    invoke-direct {v2}, Lio/noties/markwon/core/factory/StrongEmphasisSpanFactory;-><init>()V

    .line 138
    invoke-interface {p1, v1, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object p1

    const-class v1, Lorg/commonmark/node/Emphasis;

    new-instance v2, Lio/noties/markwon/core/factory/EmphasisSpanFactory;

    invoke-direct {v2}, Lio/noties/markwon/core/factory/EmphasisSpanFactory;-><init>()V

    .line 139
    invoke-interface {p1, v1, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object p1

    const-class v1, Lorg/commonmark/node/BlockQuote;

    new-instance v2, Lio/noties/markwon/core/factory/BlockQuoteSpanFactory;

    invoke-direct {v2}, Lio/noties/markwon/core/factory/BlockQuoteSpanFactory;-><init>()V

    .line 140
    invoke-interface {p1, v1, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object p1

    const-class v1, Lorg/commonmark/node/Code;

    new-instance v2, Lio/noties/markwon/core/factory/CodeSpanFactory;

    invoke-direct {v2}, Lio/noties/markwon/core/factory/CodeSpanFactory;-><init>()V

    .line 141
    invoke-interface {p1, v1, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object p1

    const-class v1, Lorg/commonmark/node/FencedCodeBlock;

    .line 142
    invoke-interface {p1, v1, v0}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object p1

    const-class v1, Lorg/commonmark/node/IndentedCodeBlock;

    .line 143
    invoke-interface {p1, v1, v0}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object p1

    const-class v0, Lorg/commonmark/node/ListItem;

    new-instance v1, Lio/noties/markwon/core/factory/ListItemSpanFactory;

    invoke-direct {v1}, Lio/noties/markwon/core/factory/ListItemSpanFactory;-><init>()V

    .line 144
    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object p1

    const-class v0, Lorg/commonmark/node/Heading;

    new-instance v1, Lio/noties/markwon/core/factory/HeadingSpanFactory;

    invoke-direct {v1}, Lio/noties/markwon/core/factory/HeadingSpanFactory;-><init>()V

    .line 145
    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object p1

    const-class v0, Lorg/commonmark/node/Link;

    new-instance v1, Lio/noties/markwon/core/factory/LinkSpanFactory;

    invoke-direct {v1}, Lio/noties/markwon/core/factory/LinkSpanFactory;-><init>()V

    .line 146
    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object p1

    const-class v0, Lorg/commonmark/node/ThematicBreak;

    new-instance v1, Lio/noties/markwon/core/factory/ThematicBreakSpanFactory;

    invoke-direct {v1}, Lio/noties/markwon/core/factory/ThematicBreakSpanFactory;-><init>()V

    .line 147
    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    return-void
.end method

.method public configureVisitor(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .registers 2
    .param p1    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 112
    invoke-direct {p0, p1}, Lio/noties/markwon/core/CorePlugin;->text(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 113
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->strongEmphasis(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 114
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->emphasis(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 115
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->blockQuote(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 116
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->code(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 117
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->fencedCodeBlock(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 118
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->indentedCodeBlock(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 119
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->image(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 120
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->bulletList(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 121
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->orderedList(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 122
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->listItem(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 123
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->thematicBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 124
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->heading(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 125
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->softLineBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 126
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->hardLineBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 127
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->paragraph(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 128
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->link(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    return-void
.end method
