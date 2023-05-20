.class public abstract Lio/noties/markwon/html/MarkwonHtmlParser;
.super Ljava/lang/Object;
.source "MarkwonHtmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/html/MarkwonHtmlParser$FlushAction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract flushBlockTags(ILio/noties/markwon/html/MarkwonHtmlParser$FlushAction;)V
    .param p2    # Lio/noties/markwon/html/MarkwonHtmlParser$FlushAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/noties/markwon/html/MarkwonHtmlParser$FlushAction<",
            "Lio/noties/markwon/html/HtmlTag$Block;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract flushInlineTags(ILio/noties/markwon/html/MarkwonHtmlParser$FlushAction;)V
    .param p2    # Lio/noties/markwon/html/MarkwonHtmlParser$FlushAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/noties/markwon/html/MarkwonHtmlParser$FlushAction<",
            "Lio/noties/markwon/html/HtmlTag$Inline;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract processFragment(Ljava/lang/Appendable;Ljava/lang/String;)V
    .param p1    # Ljava/lang/Appendable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ":",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
