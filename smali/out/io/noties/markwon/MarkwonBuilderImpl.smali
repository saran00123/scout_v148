.class Lio/noties/markwon/MarkwonBuilderImpl;
.super Ljava/lang/Object;
.source "MarkwonBuilderImpl.java"

# interfaces
.implements Lio/noties/markwon/Markwon$Builder;


# instance fields
.field private bufferType:Landroid/widget/TextView$BufferType;

.field private final context:Landroid/content/Context;

.field private final plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private textSetter:Lio/noties/markwon/Markwon$TextSetter;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/noties/markwon/MarkwonBuilderImpl;->plugins:Ljava/util/List;

    .line 26
    sget-object v0, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    iput-object v0, p0, Lio/noties/markwon/MarkwonBuilderImpl;->bufferType:Landroid/widget/TextView$BufferType;

    .line 31
    iput-object p1, p0, Lio/noties/markwon/MarkwonBuilderImpl;->context:Landroid/content/Context;

    return-void
.end method

.method private static preparePlugins(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;)",
            "Ljava/util/List<",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Lio/noties/markwon/RegistryImpl;

    invoke-direct {v0, p0}, Lio/noties/markwon/RegistryImpl;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lio/noties/markwon/RegistryImpl;->process()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bufferType(Landroid/widget/TextView$BufferType;)Lio/noties/markwon/Markwon$Builder;
    .registers 2
    .param p1    # Landroid/widget/TextView$BufferType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 37
    iput-object p1, p0, Lio/noties/markwon/MarkwonBuilderImpl;->bufferType:Landroid/widget/TextView$BufferType;

    return-object p0
.end method

.method public build()Lio/noties/markwon/Markwon;
    .registers 14
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 78
    iget-object v0, p0, Lio/noties/markwon/MarkwonBuilderImpl;->plugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 85
    iget-object v0, p0, Lio/noties/markwon/MarkwonBuilderImpl;->plugins:Ljava/util/List;

    invoke-static {v0}, Lio/noties/markwon/MarkwonBuilderImpl;->preparePlugins(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 87
    new-instance v1, Lorg/commonmark/parser/Parser$Builder;

    invoke-direct {v1}, Lorg/commonmark/parser/Parser$Builder;-><init>()V

    .line 88
    iget-object v2, p0, Lio/noties/markwon/MarkwonBuilderImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lio/noties/markwon/core/MarkwonTheme;->builderWithDefaults(Landroid/content/Context;)Lio/noties/markwon/core/MarkwonTheme$Builder;

    move-result-object v2

    .line 89
    new-instance v3, Lio/noties/markwon/MarkwonConfiguration$Builder;

    invoke-direct {v3}, Lio/noties/markwon/MarkwonConfiguration$Builder;-><init>()V

    .line 90
    new-instance v4, Lio/noties/markwon/MarkwonVisitorImpl$BuilderImpl;

    invoke-direct {v4}, Lio/noties/markwon/MarkwonVisitorImpl$BuilderImpl;-><init>()V

    .line 91
    new-instance v5, Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;

    invoke-direct {v5}, Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;-><init>()V

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/noties/markwon/MarkwonPlugin;

    .line 94
    invoke-interface {v7, v1}, Lio/noties/markwon/MarkwonPlugin;->configureParser(Lorg/commonmark/parser/Parser$Builder;)V

    .line 95
    invoke-interface {v7, v2}, Lio/noties/markwon/MarkwonPlugin;->configureTheme(Lio/noties/markwon/core/MarkwonTheme$Builder;)V

    .line 96
    invoke-interface {v7, v3}, Lio/noties/markwon/MarkwonPlugin;->configureConfiguration(Lio/noties/markwon/MarkwonConfiguration$Builder;)V

    .line 97
    invoke-interface {v7, v4}, Lio/noties/markwon/MarkwonPlugin;->configureVisitor(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 98
    invoke-interface {v7, v5}, Lio/noties/markwon/MarkwonPlugin;->configureSpansFactory(Lio/noties/markwon/MarkwonSpansFactory$Builder;)V

    goto :goto_2c

    .line 102
    :cond_48
    invoke-virtual {v2}, Lio/noties/markwon/core/MarkwonTheme$Builder;->build()Lio/noties/markwon/core/MarkwonTheme;

    move-result-object v2

    .line 103
    invoke-interface {v5}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->build()Lio/noties/markwon/MarkwonSpansFactory;

    move-result-object v5

    .line 101
    invoke-virtual {v3, v2, v5}, Lio/noties/markwon/MarkwonConfiguration$Builder;->build(Lio/noties/markwon/core/MarkwonTheme;Lio/noties/markwon/MarkwonSpansFactory;)Lio/noties/markwon/MarkwonConfiguration;

    move-result-object v11

    .line 107
    invoke-static {v4, v11}, Lio/noties/markwon/MarkwonVisitorFactory;->create(Lio/noties/markwon/MarkwonVisitor$Builder;Lio/noties/markwon/MarkwonConfiguration;)Lio/noties/markwon/MarkwonVisitorFactory;

    move-result-object v10

    .line 111
    new-instance v2, Lio/noties/markwon/MarkwonImpl;

    iget-object v7, p0, Lio/noties/markwon/MarkwonBuilderImpl;->bufferType:Landroid/widget/TextView$BufferType;

    iget-object v8, p0, Lio/noties/markwon/MarkwonBuilderImpl;->textSetter:Lio/noties/markwon/Markwon$TextSetter;

    .line 114
    invoke-virtual {v1}, Lorg/commonmark/parser/Parser$Builder;->build()Lorg/commonmark/parser/Parser;

    move-result-object v9

    .line 117
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v12

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lio/noties/markwon/MarkwonImpl;-><init>(Landroid/widget/TextView$BufferType;Lio/noties/markwon/Markwon$TextSetter;Lorg/commonmark/parser/Parser;Lio/noties/markwon/MarkwonVisitorFactory;Lio/noties/markwon/MarkwonConfiguration;Ljava/util/List;)V

    return-object v2

    .line 79
    :cond_6b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No plugins were added to this builder. Use #usePlugin method to add them"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public textSetter(Lio/noties/markwon/Markwon$TextSetter;)Lio/noties/markwon/Markwon$Builder;
    .registers 2
    .param p1    # Lio/noties/markwon/Markwon$TextSetter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 44
    iput-object p1, p0, Lio/noties/markwon/MarkwonBuilderImpl;->textSetter:Lio/noties/markwon/Markwon$TextSetter;

    return-object p0
.end method

.method public usePlugin(Lio/noties/markwon/MarkwonPlugin;)Lio/noties/markwon/Markwon$Builder;
    .registers 3
    .param p1    # Lio/noties/markwon/MarkwonPlugin;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 51
    iget-object v0, p0, Lio/noties/markwon/MarkwonBuilderImpl;->plugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public usePlugins(Ljava/lang/Iterable;)Lio/noties/markwon/Markwon$Builder;
    .registers 4
    .param p1    # Ljava/lang/Iterable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;)",
            "Lio/noties/markwon/Markwon$Builder;"
        }
    .end annotation

    .line 59
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 63
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 64
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/noties/markwon/MarkwonPlugin;

    if-eqz v0, :cond_18

    .line 68
    iget-object v1, p0, Lio/noties/markwon/MarkwonBuilderImpl;->plugins:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 66
    :cond_18
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_1e
    return-object p0
.end method
