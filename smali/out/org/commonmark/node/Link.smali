.class public Lorg/commonmark/node/Link;
.super Lorg/commonmark/node/Node;
.source "Link.java"


# instance fields
.field private destination:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lorg/commonmark/node/Node;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Lorg/commonmark/node/Node;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/commonmark/node/Link;->destination:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lorg/commonmark/node/Link;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Lorg/commonmark/node/Visitor;)V
    .registers 2

    .line 38
    invoke-interface {p1, p0}, Lorg/commonmark/node/Visitor;->visit(Lorg/commonmark/node/Link;)V

    return-void
.end method

.method public getDestination()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lorg/commonmark/node/Link;->destination:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Lorg/commonmark/node/Link;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDestination(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lorg/commonmark/node/Link;->destination:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .line 54
    iput-object p1, p0, Lorg/commonmark/node/Link;->title:Ljava/lang/String;

    return-void
.end method

.method protected toStringAttributes()Ljava/lang/String;
    .registers 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/commonmark/node/Link;->destination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/commonmark/node/Link;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
