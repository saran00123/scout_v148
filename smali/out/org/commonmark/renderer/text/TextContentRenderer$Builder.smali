.class public Lorg/commonmark/renderer/text/TextContentRenderer$Builder;
.super Ljava/lang/Object;
.source "TextContentRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/renderer/text/TextContentRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private nodeRendererFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/commonmark/renderer/text/TextContentNodeRendererFactory;",
            ">;"
        }
    .end annotation
.end field

.field private stripNewlines:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;->stripNewlines:Z

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;->nodeRendererFactories:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/commonmark/renderer/text/TextContentRenderer$Builder;)Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;->stripNewlines:Z

    return p0
.end method

.method static synthetic access$100(Lorg/commonmark/renderer/text/TextContentRenderer$Builder;)Ljava/util/List;
    .registers 1

    .line 57
    iget-object p0, p0, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;->nodeRendererFactories:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public build()Lorg/commonmark/renderer/text/TextContentRenderer;
    .registers 3

    .line 66
    new-instance v0, Lorg/commonmark/renderer/text/TextContentRenderer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/commonmark/renderer/text/TextContentRenderer;-><init>(Lorg/commonmark/renderer/text/TextContentRenderer$Builder;Lorg/commonmark/renderer/text/TextContentRenderer$1;)V

    return-object v0
.end method

.method public extensions(Ljava/lang/Iterable;)Lorg/commonmark/renderer/text/TextContentRenderer$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/commonmark/Extension;",
            ">;)",
            "Lorg/commonmark/renderer/text/TextContentRenderer$Builder;"
        }
    .end annotation

    .line 101
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/commonmark/Extension;

    .line 102
    instance-of v1, v0, Lorg/commonmark/renderer/text/TextContentRenderer$TextContentRendererExtension;

    if-eqz v1, :cond_4

    .line 103
    check-cast v0, Lorg/commonmark/renderer/text/TextContentRenderer$TextContentRendererExtension;

    .line 105
    invoke-interface {v0, p0}, Lorg/commonmark/renderer/text/TextContentRenderer$TextContentRendererExtension;->extend(Lorg/commonmark/renderer/text/TextContentRenderer$Builder;)V

    goto :goto_4

    :cond_1a
    return-object p0
.end method

.method public nodeRendererFactory(Lorg/commonmark/renderer/text/TextContentNodeRendererFactory;)Lorg/commonmark/renderer/text/TextContentRenderer$Builder;
    .registers 3

    .line 92
    iget-object v0, p0, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;->nodeRendererFactories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public stripNewlines(Z)Lorg/commonmark/renderer/text/TextContentRenderer$Builder;
    .registers 2

    .line 77
    iput-boolean p1, p0, Lorg/commonmark/renderer/text/TextContentRenderer$Builder;->stripNewlines:Z

    return-object p0
.end method
