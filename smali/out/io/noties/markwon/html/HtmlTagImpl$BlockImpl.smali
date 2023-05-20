.class Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;
.super Lio/noties/markwon/html/HtmlTagImpl;
.source "HtmlTagImpl.java"

# interfaces
.implements Lio/noties/markwon/html/HtmlTag$Block;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/html/HtmlTagImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BlockImpl"
.end annotation


# instance fields
.field children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;",
            ">;"
        }
    .end annotation
.end field

.field final parent:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/util/Map;Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;",
            ")V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lio/noties/markwon/html/HtmlTagImpl;-><init>(Ljava/lang/String;ILjava/util/Map;)V

    .line 130
    iput-object p4, p0, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->parent:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    return-void
.end method

.method static create(Ljava/lang/String;ILjava/util/Map;Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;)Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;
    .registers 5
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;",
            ")",
            "Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;"
        }
    .end annotation

    .line 117
    new-instance v0, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;-><init>(Ljava/lang/String;ILjava/util/Map;Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;)V

    return-object v0
.end method

.method static root()Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 108
    new-instance v0, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;-><init>(Ljava/lang/String;ILjava/util/Map;Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;)V

    return-object v0
.end method


# virtual methods
.method public attributes()Ljava/util/Map;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->attributes:Ljava/util/Map;

    return-object v0
.end method

.method public children()Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/noties/markwon/html/HtmlTag$Block;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->children:Ljava/util/List;

    if-nez v0, :cond_9

    .line 161
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_d

    .line 163
    :cond_9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method closeAt(I)V
    .registers 4

    .line 135
    invoke-virtual {p0}, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_20

    .line 136
    iput p1, p0, Lio/noties/markwon/html/HtmlTagImpl;->end:I

    .line 137
    iget-object v0, p0, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->children:Ljava/util/List;

    if-eqz v0, :cond_20

    .line 138
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    .line 139
    invoke-virtual {v1, p1}, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->closeAt(I)V

    goto :goto_10

    :cond_20
    return-void
.end method

.method public getAsBlock()Lio/noties/markwon/html/HtmlTag$Block;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public getAsInline()Lio/noties/markwon/html/HtmlTag$Inline;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 187
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Cannot cast Block instance to Inline"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isBlock()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isInline()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isRoot()Z
    .registers 2

    .line 147
    iget-object v0, p0, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->parent:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public parent()Lio/noties/markwon/html/HtmlTag$Block;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 153
    iget-object v0, p0, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->parent:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlockImpl{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->attributes:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v1, p0, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->parent:Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;

    if-eqz v1, :cond_3e

    iget-object v1, v1, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->name:Ljava/lang/String;

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/noties/markwon/html/HtmlTagImpl$BlockImpl;->children:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
