.class Lio/noties/markwon/MarkwonImpl;
.super Lio/noties/markwon/Markwon;
.source "MarkwonImpl.java"


# instance fields
.field private final bufferType:Landroid/widget/TextView$BufferType;

.field private final configuration:Lio/noties/markwon/MarkwonConfiguration;

.field private final parser:Lorg/commonmark/parser/Parser;

.field private final plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private final textSetter:Lio/noties/markwon/Markwon$TextSetter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final visitorFactory:Lio/noties/markwon/MarkwonVisitorFactory;


# direct methods
.method constructor <init>(Landroid/widget/TextView$BufferType;Lio/noties/markwon/Markwon$TextSetter;Lorg/commonmark/parser/Parser;Lio/noties/markwon/MarkwonVisitorFactory;Lio/noties/markwon/MarkwonConfiguration;Ljava/util/List;)V
    .registers 7
    .param p1    # Landroid/widget/TextView$BufferType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/Markwon$TextSetter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/commonmark/parser/Parser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/noties/markwon/MarkwonVisitorFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/noties/markwon/MarkwonConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView$BufferType;",
            "Lio/noties/markwon/Markwon$TextSetter;",
            "Lorg/commonmark/parser/Parser;",
            "Lio/noties/markwon/MarkwonVisitorFactory;",
            "Lio/noties/markwon/MarkwonConfiguration;",
            "Ljava/util/List<",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lio/noties/markwon/Markwon;-><init>()V

    .line 38
    iput-object p1, p0, Lio/noties/markwon/MarkwonImpl;->bufferType:Landroid/widget/TextView$BufferType;

    .line 39
    iput-object p2, p0, Lio/noties/markwon/MarkwonImpl;->textSetter:Lio/noties/markwon/Markwon$TextSetter;

    .line 40
    iput-object p3, p0, Lio/noties/markwon/MarkwonImpl;->parser:Lorg/commonmark/parser/Parser;

    .line 41
    iput-object p4, p0, Lio/noties/markwon/MarkwonImpl;->visitorFactory:Lio/noties/markwon/MarkwonVisitorFactory;

    .line 42
    iput-object p5, p0, Lio/noties/markwon/MarkwonImpl;->configuration:Lio/noties/markwon/MarkwonConfiguration;

    .line 43
    iput-object p6, p0, Lio/noties/markwon/MarkwonImpl;->plugins:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lio/noties/markwon/MarkwonImpl;)Ljava/util/List;
    .registers 1

    .line 19
    iget-object p0, p0, Lio/noties/markwon/MarkwonImpl;->plugins:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public configuration()Lio/noties/markwon/MarkwonConfiguration;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 164
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->configuration:Lio/noties/markwon/MarkwonConfiguration;

    return-object v0
.end method

.method public getPlugin(Ljava/lang/Class;)Lio/noties/markwon/MarkwonPlugin;
    .registers 6
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/noties/markwon/MarkwonPlugin;

    .line 136
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v1, v2

    goto :goto_7

    :cond_1f
    return-object v1
.end method

.method public getPlugins()Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->plugins:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasPlugin(Ljava/lang/Class;)Z
    .registers 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;)Z"
        }
    .end annotation

    .line 128
    invoke-virtual {p0, p1}, Lio/noties/markwon/MarkwonImpl;->getPlugin(Ljava/lang/Class;)Lio/noties/markwon/MarkwonPlugin;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public parse(Ljava/lang/String;)Lorg/commonmark/node/Node;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 51
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/noties/markwon/MarkwonPlugin;

    .line 52
    invoke-interface {v1, p1}, Lio/noties/markwon/MarkwonPlugin;->processMarkdown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    .line 55
    :cond_17
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->parser:Lorg/commonmark/parser/Parser;

    invoke-virtual {v0, p1}, Lorg/commonmark/parser/Parser;->parse(Ljava/lang/String;)Lorg/commonmark/node/Node;

    move-result-object p1

    return-object p1
.end method

.method public render(Lorg/commonmark/node/Node;)Landroid/text/Spanned;
    .registers 5
    .param p1    # Lorg/commonmark/node/Node;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 62
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/noties/markwon/MarkwonPlugin;

    .line 63
    invoke-interface {v1, p1}, Lio/noties/markwon/MarkwonPlugin;->beforeRender(Lorg/commonmark/node/Node;)V

    goto :goto_6

    .line 67
    :cond_16
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->visitorFactory:Lio/noties/markwon/MarkwonVisitorFactory;

    invoke-virtual {v0}, Lio/noties/markwon/MarkwonVisitorFactory;->create()Lio/noties/markwon/MarkwonVisitor;

    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Lorg/commonmark/node/Node;->accept(Lorg/commonmark/node/Visitor;)V

    .line 71
    iget-object v1, p0, Lio/noties/markwon/MarkwonImpl;->plugins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/noties/markwon/MarkwonPlugin;

    .line 72
    invoke-interface {v2, p1, v0}, Lio/noties/markwon/MarkwonPlugin;->afterRender(Lorg/commonmark/node/Node;Lio/noties/markwon/MarkwonVisitor;)V

    goto :goto_25

    .line 76
    :cond_35
    invoke-interface {v0}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lio/noties/markwon/SpannableBuilder;->spannableStringBuilder()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public requirePlugin(Ljava/lang/Class;)Lio/noties/markwon/MarkwonPlugin;
    .registers 6
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .line 147
    invoke-virtual {p0, p1}, Lio/noties/markwon/MarkwonImpl;->getPlugin(Ljava/lang/Class;)Lio/noties/markwon/MarkwonPlugin;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 149
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 150
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "Requested plugin `%s` is not registered with this Markwon instance"

    .line 149
    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMarkdown(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 94
    invoke-virtual {p0, p2}, Lio/noties/markwon/MarkwonImpl;->toMarkdown(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/MarkwonImpl;->setParsedMarkdown(Landroid/widget/TextView;Landroid/text/Spanned;)V

    return-void
.end method

.method public setParsedMarkdown(Landroid/widget/TextView;Landroid/text/Spanned;)V
    .registers 6
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 100
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/noties/markwon/MarkwonPlugin;

    .line 101
    invoke-interface {v1, p1, p2}, Lio/noties/markwon/MarkwonPlugin;->beforeSetText(Landroid/widget/TextView;Landroid/text/Spanned;)V

    goto :goto_6

    .line 105
    :cond_16
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->textSetter:Lio/noties/markwon/Markwon$TextSetter;

    if-eqz v0, :cond_25

    .line 106
    iget-object v1, p0, Lio/noties/markwon/MarkwonImpl;->bufferType:Landroid/widget/TextView$BufferType;

    new-instance v2, Lio/noties/markwon/MarkwonImpl$1;

    invoke-direct {v2, p0, p1}, Lio/noties/markwon/MarkwonImpl$1;-><init>(Lio/noties/markwon/MarkwonImpl;Landroid/widget/TextView;)V

    invoke-interface {v0, p1, p2, v1, v2}, Lio/noties/markwon/Markwon$TextSetter;->setText(Landroid/widget/TextView;Landroid/text/Spanned;Landroid/widget/TextView$BufferType;Ljava/lang/Runnable;)V

    goto :goto_40

    .line 118
    :cond_25
    iget-object v0, p0, Lio/noties/markwon/MarkwonImpl;->bufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 120
    iget-object p2, p0, Lio/noties/markwon/MarkwonImpl;->plugins:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_30
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/noties/markwon/MarkwonPlugin;

    .line 121
    invoke-interface {v0, p1}, Lio/noties/markwon/MarkwonPlugin;->afterSetText(Landroid/widget/TextView;)V

    goto :goto_30

    :cond_40
    :goto_40
    return-void
.end method

.method public toMarkdown(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Lio/noties/markwon/MarkwonImpl;->parse(Ljava/lang/String;)Lorg/commonmark/node/Node;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/noties/markwon/MarkwonImpl;->render(Lorg/commonmark/node/Node;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method
