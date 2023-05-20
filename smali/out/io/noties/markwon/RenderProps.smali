.class public interface abstract Lio/noties/markwon/RenderProps;
.super Ljava/lang/Object;
.source "RenderProps.java"


# virtual methods
.method public abstract clear(Lio/noties/markwon/Prop;)V
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
.end method

.method public abstract clearAll()V
.end method

.method public abstract get(Lio/noties/markwon/Prop;)Ljava/lang/Object;
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
.end method

.method public abstract get(Lio/noties/markwon/Prop;Ljava/lang/Object;)Ljava/lang/Object;
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
.end method

.method public abstract set(Lio/noties/markwon/Prop;Ljava/lang/Object;)V
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
.end method
