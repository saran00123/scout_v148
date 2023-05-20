.class public Lio/noties/markwon/Prop;
.super Ljava/lang/Object;
.source "Prop.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/noties/markwon/Prop;->name:Ljava/lang/String;

    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;)Lio/noties/markwon/Prop;
    .registers 2
    .param p0    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lio/noties/markwon/Prop<",
            "TT;>;"
        }
    .end annotation

    .line 19
    new-instance p0, Lio/noties/markwon/Prop;

    invoke-direct {p0, p1}, Lio/noties/markwon/Prop;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static of(Ljava/lang/String;)Lio/noties/markwon/Prop;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lio/noties/markwon/Prop<",
            "TT;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lio/noties/markwon/Prop;

    invoke-direct {v0, p0}, Lio/noties/markwon/Prop;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public clear(Lio/noties/markwon/RenderProps;)V
    .registers 2
    .param p1    # Lio/noties/markwon/RenderProps;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    invoke-interface {p1, p0}, Lio/noties/markwon/RenderProps;->clear(Lio/noties/markwon/Prop;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    if-eqz p1, :cond_1c

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 70
    :cond_11
    check-cast p1, Lio/noties/markwon/Prop;

    .line 72
    iget-object v0, p0, Lio/noties/markwon/Prop;->name:Ljava/lang/String;

    iget-object p1, p1, Lio/noties/markwon/Prop;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public get(Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .registers 2
    .param p1    # Lio/noties/markwon/RenderProps;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/noties/markwon/RenderProps;",
            ")TT;"
        }
    .end annotation

    .line 40
    invoke-interface {p1, p0}, Lio/noties/markwon/RenderProps;->get(Lio/noties/markwon/Prop;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1    # Lio/noties/markwon/RenderProps;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/noties/markwon/RenderProps;",
            "TT;)TT;"
        }
    .end annotation

    .line 45
    invoke-interface {p1, p0, p2}, Lio/noties/markwon/RenderProps;->get(Lio/noties/markwon/Prop;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .registers 2

    .line 77
    iget-object v0, p0, Lio/noties/markwon/Prop;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 35
    iget-object v0, p0, Lio/noties/markwon/Prop;->name:Ljava/lang/String;

    return-object v0
.end method

.method public require(Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .registers 3
    .param p1    # Lio/noties/markwon/RenderProps;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/noties/markwon/RenderProps;",
            ")TT;"
        }
    .end annotation

    .line 50
    invoke-virtual {p0, p1}, Lio/noties/markwon/Prop;->get(Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 52
    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    iget-object v0, p0, Lio/noties/markwon/Prop;->name:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V
    .registers 3
    .param p1    # Lio/noties/markwon/RenderProps;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/noties/markwon/RenderProps;",
            "TT;)V"
        }
    .end annotation

    .line 58
    invoke-interface {p1, p0, p2}, Lio/noties/markwon/RenderProps;->set(Lio/noties/markwon/Prop;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prop{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/noties/markwon/Prop;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
