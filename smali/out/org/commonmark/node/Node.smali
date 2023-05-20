.class public abstract Lorg/commonmark/node/Node;
.super Ljava/lang/Object;
.source "Node.java"


# instance fields
.field private firstChild:Lorg/commonmark/node/Node;

.field private lastChild:Lorg/commonmark/node/Node;

.field private next:Lorg/commonmark/node/Node;

.field private parent:Lorg/commonmark/node/Node;

.field private prev:Lorg/commonmark/node/Node;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/commonmark/node/Node;->parent:Lorg/commonmark/node/Node;

    .line 6
    iput-object v0, p0, Lorg/commonmark/node/Node;->firstChild:Lorg/commonmark/node/Node;

    .line 7
    iput-object v0, p0, Lorg/commonmark/node/Node;->lastChild:Lorg/commonmark/node/Node;

    .line 8
    iput-object v0, p0, Lorg/commonmark/node/Node;->prev:Lorg/commonmark/node/Node;

    .line 9
    iput-object v0, p0, Lorg/commonmark/node/Node;->next:Lorg/commonmark/node/Node;

    return-void
.end method


# virtual methods
.method public abstract accept(Lorg/commonmark/node/Visitor;)V
.end method

.method public appendChild(Lorg/commonmark/node/Node;)V
    .registers 3

    .line 38
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->unlink()V

    .line 39
    invoke-virtual {p1, p0}, Lorg/commonmark/node/Node;->setParent(Lorg/commonmark/node/Node;)V

    .line 40
    iget-object v0, p0, Lorg/commonmark/node/Node;->lastChild:Lorg/commonmark/node/Node;

    if-eqz v0, :cond_11

    .line 41
    iput-object p1, v0, Lorg/commonmark/node/Node;->next:Lorg/commonmark/node/Node;

    .line 42
    iput-object v0, p1, Lorg/commonmark/node/Node;->prev:Lorg/commonmark/node/Node;

    .line 43
    iput-object p1, p0, Lorg/commonmark/node/Node;->lastChild:Lorg/commonmark/node/Node;

    goto :goto_15

    .line 45
    :cond_11
    iput-object p1, p0, Lorg/commonmark/node/Node;->firstChild:Lorg/commonmark/node/Node;

    .line 46
    iput-object p1, p0, Lorg/commonmark/node/Node;->lastChild:Lorg/commonmark/node/Node;

    :goto_15
    return-void
.end method

.method public getFirstChild()Lorg/commonmark/node/Node;
    .registers 2

    .line 22
    iget-object v0, p0, Lorg/commonmark/node/Node;->firstChild:Lorg/commonmark/node/Node;

    return-object v0
.end method

.method public getLastChild()Lorg/commonmark/node/Node;
    .registers 2

    .line 26
    iget-object v0, p0, Lorg/commonmark/node/Node;->lastChild:Lorg/commonmark/node/Node;

    return-object v0
.end method

.method public getNext()Lorg/commonmark/node/Node;
    .registers 2

    .line 14
    iget-object v0, p0, Lorg/commonmark/node/Node;->next:Lorg/commonmark/node/Node;

    return-object v0
.end method

.method public getParent()Lorg/commonmark/node/Node;
    .registers 2

    .line 30
    iget-object v0, p0, Lorg/commonmark/node/Node;->parent:Lorg/commonmark/node/Node;

    return-object v0
.end method

.method public getPrevious()Lorg/commonmark/node/Node;
    .registers 2

    .line 18
    iget-object v0, p0, Lorg/commonmark/node/Node;->prev:Lorg/commonmark/node/Node;

    return-object v0
.end method

.method public insertAfter(Lorg/commonmark/node/Node;)V
    .registers 3

    .line 80
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->unlink()V

    .line 81
    iget-object v0, p0, Lorg/commonmark/node/Node;->next:Lorg/commonmark/node/Node;

    iput-object v0, p1, Lorg/commonmark/node/Node;->next:Lorg/commonmark/node/Node;

    .line 82
    iget-object v0, p1, Lorg/commonmark/node/Node;->next:Lorg/commonmark/node/Node;

    if-eqz v0, :cond_d

    .line 83
    iput-object p1, v0, Lorg/commonmark/node/Node;->prev:Lorg/commonmark/node/Node;

    .line 85
    :cond_d
    iput-object p0, p1, Lorg/commonmark/node/Node;->prev:Lorg/commonmark/node/Node;

    .line 86
    iput-object p1, p0, Lorg/commonmark/node/Node;->next:Lorg/commonmark/node/Node;

    .line 87
    iget-object v0, p0, Lorg/commonmark/node/Node;->parent:Lorg/commonmark/node/Node;

    iput-object v0, p1, Lorg/commonmark/node/Node;->parent:Lorg/commonmark/node/Node;

    .line 88
    iget-object v0, p1, Lorg/commonmark/node/Node;->next:Lorg/commonmark/node/Node;

    if-nez v0, :cond_1d

    .line 89
    iget-object v0, p1, Lorg/commonmark/node/Node;->parent:Lorg/commonmark/node/Node;

    iput-object p1, v0, Lorg/commonmark/node/Node;->lastChild:Lorg/commonmark/node/Node;

    :cond_1d
    return-void
.end method

.method public insertBefore(Lorg/commonmark/node/Node;)V
    .registers 3

    .line 94
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->unlink()V

    .line 95
    iget-object v0, p0, Lorg/commonmark/node/Node;->prev:Lorg/commonmark/node/Node;

    iput-object v0, p1, Lorg/commonmark/node/Node;->prev:Lorg/commonmark/node/Node;

    .line 96
    iget-object v0, p1, Lorg/commonmark/node/Node;->prev:Lorg/commonmark/node/Node;

    if-eqz v0, :cond_d

    .line 97
    iput-object p1, v0, Lorg/commonmark/node/Node;->next:Lorg/commonmark/node/Node;

    .line 99
    :cond_d
    iput-object p0, p1, Lorg/commonmark/node/Node;->next:Lorg/commonmark/node/Node;

    .line 100
    iput-object p1, p0, Lorg/commonmark/node/Node;->prev:Lorg/commonmark/node/Node;

    .line 101
    iget-object v0, p0, Lorg/commonmark/node/Node;->parent:Lorg/commonmark/node/Node;

    iput-object v0, p1, Lorg/commonmark/node/Node;->parent:Lorg/commonmark/node/Node;

    .line 102
    iget-object v0, p1, Lorg/commonmark/node/Node;->prev:Lorg/commonmark/node/Node;

    if-nez v0, :cond_1d

    .line 103
    iget-object v0, p1, Lorg/commonmark/node/Node;->parent:Lorg/commonmark/node/Node;

    iput-object p1, v0, Lorg/commonmark/node/Node;->firstChild:Lorg/commonmark/node/Node;

    :cond_1d
    return-void
.end method

.method public prependChild(Lorg/commonmark/node/Node;)V
    .registers 3

    .line 51
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->unlink()V

    .line 52
    invoke-virtual {p1, p0}, Lorg/commonmark/node/Node;->setParent(Lorg/commonmark/node/Node;)V

    .line 53
    iget-object v0, p0, Lorg/commonmark/node/Node;->firstChild:Lorg/commonmark/node/Node;

    if-eqz v0, :cond_11

    .line 54
    iput-object p1, v0, Lorg/commonmark/node/Node;->prev:Lorg/commonmark/node/Node;

    .line 55
    iput-object v0, p1, Lorg/commonmark/node/Node;->next:Lorg/commonmark/node/Node;

    .line 56
    iput-object p1, p0, Lorg/commonmark/node/Node;->firstChild:Lorg/commonmark/node/Node;

    goto :goto_15

    .line 58
    :cond_11
    iput-object p1, p0, Lorg/commonmark/node/Node;->firstChild:Lorg/commonmark/node/Node;

    .line 59
    iput-object p1, p0, Lorg/commonmark/node/Node;->lastChild:Lorg/commonmark/node/Node;

    :goto_15
    return-void
.end method

.method protected setParent(Lorg/commonmark/node/Node;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lorg/commonmark/node/Node;->parent:Lorg/commonmark/node/Node;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/commonmark/node/Node;->toStringAttributes()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringAttributes()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public unlink()V
    .registers 3

    .line 64
    iget-object v0, p0, Lorg/commonmark/node/Node;->prev:Lorg/commonmark/node/Node;

    if-eqz v0, :cond_9

    .line 65
    iget-object v1, p0, Lorg/commonmark/node/Node;->next:Lorg/commonmark/node/Node;

    iput-object v1, v0, Lorg/commonmark/node/Node;->next:Lorg/commonmark/node/Node;

    goto :goto_11

    .line 66
    :cond_9
    iget-object v0, p0, Lorg/commonmark/node/Node;->parent:Lorg/commonmark/node/Node;

    if-eqz v0, :cond_11

    .line 67
    iget-object v1, p0, Lorg/commonmark/node/Node;->next:Lorg/commonmark/node/Node;

    iput-object v1, v0, Lorg/commonmark/node/Node;->firstChild:Lorg/commonmark/node/Node;

    .line 69
    :cond_11
    :goto_11
    iget-object v0, p0, Lorg/commonmark/node/Node;->next:Lorg/commonmark/node/Node;

    if-eqz v0, :cond_1a

    .line 70
    iget-object v1, p0, Lorg/commonmark/node/Node;->prev:Lorg/commonmark/node/Node;

    iput-object v1, v0, Lorg/commonmark/node/Node;->prev:Lorg/commonmark/node/Node;

    goto :goto_22

    .line 71
    :cond_1a
    iget-object v0, p0, Lorg/commonmark/node/Node;->parent:Lorg/commonmark/node/Node;

    if-eqz v0, :cond_22

    .line 72
    iget-object v1, p0, Lorg/commonmark/node/Node;->prev:Lorg/commonmark/node/Node;

    iput-object v1, v0, Lorg/commonmark/node/Node;->lastChild:Lorg/commonmark/node/Node;

    :cond_22
    :goto_22
    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lorg/commonmark/node/Node;->parent:Lorg/commonmark/node/Node;

    .line 75
    iput-object v0, p0, Lorg/commonmark/node/Node;->next:Lorg/commonmark/node/Node;

    .line 76
    iput-object v0, p0, Lorg/commonmark/node/Node;->prev:Lorg/commonmark/node/Node;

    return-void
.end method
