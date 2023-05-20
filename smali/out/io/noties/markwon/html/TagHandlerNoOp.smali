.class public Lio/noties/markwon/html/TagHandlerNoOp;
.super Lio/noties/markwon/html/TagHandler;
.source "TagHandlerNoOp.java"


# instance fields
.field private final tags:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lio/noties/markwon/html/TagHandler;-><init>()V

    .line 30
    iput-object p1, p0, Lio/noties/markwon/html/TagHandlerNoOp;->tags:Ljava/util/Collection;

    return-void
.end method

.method public static create(Ljava/lang/String;)Lio/noties/markwon/html/TagHandlerNoOp;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 18
    new-instance v0, Lio/noties/markwon/html/TagHandlerNoOp;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/noties/markwon/html/TagHandlerNoOp;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static varargs create([Ljava/lang/String;)Lio/noties/markwon/html/TagHandlerNoOp;
    .registers 2
    .param p0    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 23
    new-instance v0, Lio/noties/markwon/html/TagHandlerNoOp;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/noties/markwon/html/TagHandlerNoOp;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public handle(Lio/noties/markwon/MarkwonVisitor;Lio/noties/markwon/html/MarkwonHtmlRenderer;Lio/noties/markwon/html/HtmlTag;)V
    .registers 4
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

    return-void
.end method

.method public supportedTags()Ljava/util/Collection;
    .registers 2
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

    .line 41
    iget-object v0, p0, Lio/noties/markwon/html/TagHandlerNoOp;->tags:Ljava/util/Collection;

    return-object v0
.end method
