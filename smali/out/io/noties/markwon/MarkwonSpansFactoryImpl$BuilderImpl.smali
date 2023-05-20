.class Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;
.super Ljava/lang/Object;
.source "MarkwonSpansFactoryImpl.java"

# interfaces
.implements Lio/noties/markwon/MarkwonSpansFactory$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/MarkwonSpansFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderImpl"
.end annotation


# instance fields
.field private final factories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Node;",
            ">;",
            "Lio/noties/markwon/SpanFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;->factories:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;
    .registers 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/SpanFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;",
            "Lio/noties/markwon/SpanFactory;",
            ")",
            "Lio/noties/markwon/MarkwonSpansFactory$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;->prependFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object p1

    return-object p1
.end method

.method public appendFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/SpanFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;",
            "Lio/noties/markwon/SpanFactory;",
            ")",
            "Lio/noties/markwon/MarkwonSpansFactory$Builder;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;->factories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/noties/markwon/SpanFactory;

    if-nez v0, :cond_10

    .line 69
    iget-object v0, p0, Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;->factories:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 71
    :cond_10
    instance-of v1, v0, Lio/noties/markwon/MarkwonSpansFactoryImpl$CompositeSpanFactory;

    if-eqz v1, :cond_1d

    .line 72
    check-cast v0, Lio/noties/markwon/MarkwonSpansFactoryImpl$CompositeSpanFactory;

    iget-object p1, v0, Lio/noties/markwon/MarkwonSpansFactoryImpl$CompositeSpanFactory;->factories:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_27

    .line 74
    :cond_1d
    new-instance v1, Lio/noties/markwon/MarkwonSpansFactoryImpl$CompositeSpanFactory;

    invoke-direct {v1, p2, v0}, Lio/noties/markwon/MarkwonSpansFactoryImpl$CompositeSpanFactory;-><init>(Lio/noties/markwon/SpanFactory;Lio/noties/markwon/SpanFactory;)V

    .line 76
    iget-object p2, p0, Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;->factories:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_27
    return-object p0
.end method

.method public build()Lio/noties/markwon/MarkwonSpansFactory;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 122
    new-instance v0, Lio/noties/markwon/MarkwonSpansFactoryImpl;

    iget-object v1, p0, Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;->factories:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/noties/markwon/MarkwonSpansFactoryImpl;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getFactory(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;
    .registers 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;)",
            "Lio/noties/markwon/SpanFactory;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;->factories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/noties/markwon/SpanFactory;

    return-object p1
.end method

.method public prependFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;
    .registers 5
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/SpanFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;",
            "Lio/noties/markwon/SpanFactory;",
            ")",
            "Lio/noties/markwon/MarkwonSpansFactory$Builder;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;->factories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/noties/markwon/SpanFactory;

    if-nez v0, :cond_10

    .line 88
    iget-object v0, p0, Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;->factories:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 91
    :cond_10
    instance-of v1, v0, Lio/noties/markwon/MarkwonSpansFactoryImpl$CompositeSpanFactory;

    if-eqz v1, :cond_1c

    .line 92
    check-cast v0, Lio/noties/markwon/MarkwonSpansFactoryImpl$CompositeSpanFactory;

    iget-object p1, v0, Lio/noties/markwon/MarkwonSpansFactoryImpl$CompositeSpanFactory;->factories:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 95
    :cond_1c
    new-instance v1, Lio/noties/markwon/MarkwonSpansFactoryImpl$CompositeSpanFactory;

    invoke-direct {v1, v0, p2}, Lio/noties/markwon/MarkwonSpansFactoryImpl$CompositeSpanFactory;-><init>(Lio/noties/markwon/SpanFactory;Lio/noties/markwon/SpanFactory;)V

    .line 97
    iget-object p2, p0, Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;->factories:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_26
    return-object p0
.end method

.method public requireFactory(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;
    .registers 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;)",
            "Lio/noties/markwon/SpanFactory;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0, p1}, Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;->getFactory(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 114
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;
    .registers 4
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/SpanFactory;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;",
            "Lio/noties/markwon/SpanFactory;",
            ")",
            "Lio/noties/markwon/MarkwonSpansFactory$Builder;"
        }
    .end annotation

    if-nez p2, :cond_8

    .line 50
    iget-object p2, p0, Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;->factories:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 52
    :cond_8
    iget-object v0, p0, Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;->factories:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    return-object p0
.end method
