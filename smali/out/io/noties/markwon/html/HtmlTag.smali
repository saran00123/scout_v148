.class public interface abstract Lio/noties/markwon/html/HtmlTag;
.super Ljava/lang/Object;
.source "HtmlTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/html/HtmlTag$Block;,
        Lio/noties/markwon/html/HtmlTag$Inline;
    }
.end annotation


# static fields
.field public static final NO_END:I = -0x1


# virtual methods
.method public abstract attributes()Ljava/util/Map;
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
.end method

.method public abstract end()I
.end method

.method public abstract getAsBlock()Lio/noties/markwon/html/HtmlTag$Block;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getAsInline()Lio/noties/markwon/html/HtmlTag$Inline;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract isBlock()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isInline()Z
.end method

.method public abstract name()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract start()I
.end method
