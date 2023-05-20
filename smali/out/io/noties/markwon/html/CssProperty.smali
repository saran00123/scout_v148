.class public Lio/noties/markwon/html/CssProperty;
.super Ljava/lang/Object;
.source "CssProperty.java"


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 20
    iget-object v0, p0, Lio/noties/markwon/html/CssProperty;->key:Ljava/lang/String;

    return-object v0
.end method

.method public mutate()Lio/noties/markwon/html/CssProperty;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 30
    new-instance v0, Lio/noties/markwon/html/CssProperty;

    invoke-direct {v0}, Lio/noties/markwon/html/CssProperty;-><init>()V

    .line 31
    iget-object v1, p0, Lio/noties/markwon/html/CssProperty;->key:Ljava/lang/String;

    iget-object v2, p0, Lio/noties/markwon/html/CssProperty;->value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/noties/markwon/html/CssProperty;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    iput-object p1, p0, Lio/noties/markwon/html/CssProperty;->key:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lio/noties/markwon/html/CssProperty;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CssProperty{key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/noties/markwon/html/CssProperty;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", value=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/noties/markwon/html/CssProperty;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lio/noties/markwon/html/CssProperty;->value:Ljava/lang/String;

    return-object v0
.end method
