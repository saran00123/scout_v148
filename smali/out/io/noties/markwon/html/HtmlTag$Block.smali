.class public interface abstract Lio/noties/markwon/html/HtmlTag$Block;
.super Ljava/lang/Object;
.source "HtmlTag.java"

# interfaces
.implements Lio/noties/markwon/html/HtmlTag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/html/HtmlTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Block"
.end annotation


# virtual methods
.method public abstract children()Ljava/util/List;
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
.end method

.method public abstract isRoot()Z
.end method

.method public abstract parent()Lio/noties/markwon/html/HtmlTag$Block;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
