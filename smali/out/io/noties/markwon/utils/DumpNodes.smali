.class public abstract Lio/noties/markwon/utils/DumpNodes;
.super Ljava/lang/Object;
.source "DumpNodes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/utils/DumpNodes$NodeProcessorToString;,
        Lio/noties/markwon/utils/DumpNodes$Indent;,
        Lio/noties/markwon/utils/DumpNodes$NodeProcessor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lorg/commonmark/node/Visitor;Lorg/commonmark/node/Node;)V
    .registers 2

    .line 15
    invoke-static {p0, p1}, Lio/noties/markwon/utils/DumpNodes;->visitChildren(Lorg/commonmark/node/Visitor;Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public static dump(Lorg/commonmark/node/Node;)Ljava/lang/String;
    .registers 2
    .param p0    # Lorg/commonmark/node/Node;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 24
    invoke-static {p0, v0}, Lio/noties/markwon/utils/DumpNodes;->dump(Lorg/commonmark/node/Node;Lio/noties/markwon/utils/DumpNodes$NodeProcessor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dump(Lorg/commonmark/node/Node;Lio/noties/markwon/utils/DumpNodes$NodeProcessor;)Ljava/lang/String;
    .registers 8
    .param p0    # Lorg/commonmark/node/Node;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/noties/markwon/utils/DumpNodes$NodeProcessor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    goto :goto_9

    .line 32
    :cond_4
    new-instance p1, Lio/noties/markwon/utils/DumpNodes$NodeProcessorToString;

    invoke-direct {p1, v0}, Lio/noties/markwon/utils/DumpNodes$NodeProcessorToString;-><init>(Lio/noties/markwon/utils/DumpNodes$1;)V

    .line 34
    :goto_9
    new-instance v1, Lio/noties/markwon/utils/DumpNodes$Indent;

    invoke-direct {v1, v0}, Lio/noties/markwon/utils/DumpNodes$Indent;-><init>(Lio/noties/markwon/utils/DumpNodes$1;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-class v2, Lorg/commonmark/node/Visitor;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/commonmark/node/Visitor;

    aput-object v5, v3, v4

    new-instance v4, Lio/noties/markwon/utils/DumpNodes$1;

    invoke-direct {v4, v1, v0, p1}, Lio/noties/markwon/utils/DumpNodes$1;-><init>(Lio/noties/markwon/utils/DumpNodes$Indent;Ljava/lang/StringBuilder;Lio/noties/markwon/utils/DumpNodes$NodeProcessor;)V

    .line 36
    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/commonmark/node/Visitor;

    .line 64
    invoke-virtual {p0, p1}, Lorg/commonmark/node/Node;->accept(Lorg/commonmark/node/Visitor;)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static visitChildren(Lorg/commonmark/node/Visitor;Lorg/commonmark/node/Node;)V
    .registers 3
    .param p0    # Lorg/commonmark/node/Visitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lorg/commonmark/node/Node;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_f

    .line 97
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v0

    .line 98
    invoke-virtual {p1, p0}, Lorg/commonmark/node/Node;->accept(Lorg/commonmark/node/Visitor;)V

    move-object p1, v0

    goto :goto_4

    :cond_f
    return-void
.end method
