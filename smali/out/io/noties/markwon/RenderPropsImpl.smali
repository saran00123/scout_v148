.class Lio/noties/markwon/RenderPropsImpl;
.super Ljava/lang/Object;
.source "RenderPropsImpl.java"

# interfaces
.implements Lio/noties/markwon/RenderProps;


# instance fields
.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/noties/markwon/Prop;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/noties/markwon/RenderPropsImpl;->values:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear(Lio/noties/markwon/Prop;)V
    .registers 3
    .param p1    # Lio/noties/markwon/Prop;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/noties/markwon/Prop<",
            "TT;>;)V"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lio/noties/markwon/RenderPropsImpl;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearAll()V
    .registers 2

    .line 50
    iget-object v0, p0, Lio/noties/markwon/RenderPropsImpl;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public get(Lio/noties/markwon/Prop;)Ljava/lang/Object;
    .registers 3
    .param p1    # Lio/noties/markwon/Prop;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/noties/markwon/Prop<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lio/noties/markwon/RenderPropsImpl;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lio/noties/markwon/Prop;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1    # Lio/noties/markwon/Prop;
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
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/noties/markwon/Prop<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lio/noties/markwon/RenderPropsImpl;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    return-object p1

    :cond_9
    return-object p2
.end method

.method public set(Lio/noties/markwon/Prop;Ljava/lang/Object;)V
    .registers 4
    .param p1    # Lio/noties/markwon/Prop;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/noties/markwon/Prop<",
            "TT;>;TT;)V"
        }
    .end annotation

    if-nez p2, :cond_8

    .line 37
    iget-object p2, p0, Lio/noties/markwon/RenderPropsImpl;->values:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 39
    :cond_8
    iget-object v0, p0, Lio/noties/markwon/RenderPropsImpl;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    return-void
.end method
