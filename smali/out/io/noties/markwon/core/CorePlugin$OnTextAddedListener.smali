.class public interface abstract Lio/noties/markwon/core/CorePlugin$OnTextAddedListener;
.super Ljava/lang/Object;
.source "CorePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/core/CorePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTextAddedListener"
.end annotation


# virtual methods
.method public abstract onTextAdded(Lio/noties/markwon/MarkwonVisitor;Ljava/lang/String;I)V
    .param p1    # Lio/noties/markwon/MarkwonVisitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
