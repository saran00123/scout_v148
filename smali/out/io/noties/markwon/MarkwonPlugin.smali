.class public interface abstract Lio/noties/markwon/MarkwonPlugin;
.super Ljava/lang/Object;
.source "MarkwonPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/MarkwonPlugin$Registry;,
        Lio/noties/markwon/MarkwonPlugin$Action;
    }
.end annotation


# virtual methods
.method public abstract afterRender(Lorg/commonmark/node/Node;Lio/noties/markwon/MarkwonVisitor;)V
    .param p1    # Lorg/commonmark/node/Node;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/MarkwonVisitor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract afterSetText(Landroid/widget/TextView;)V
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract beforeRender(Lorg/commonmark/node/Node;)V
    .param p1    # Lorg/commonmark/node/Node;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract beforeSetText(Landroid/widget/TextView;Landroid/text/Spanned;)V
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/text/Spanned;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract configure(Lio/noties/markwon/MarkwonPlugin$Registry;)V
    .param p1    # Lio/noties/markwon/MarkwonPlugin$Registry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract configureConfiguration(Lio/noties/markwon/MarkwonConfiguration$Builder;)V
    .param p1    # Lio/noties/markwon/MarkwonConfiguration$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract configureParser(Lorg/commonmark/parser/Parser$Builder;)V
    .param p1    # Lorg/commonmark/parser/Parser$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract configureSpansFactory(Lio/noties/markwon/MarkwonSpansFactory$Builder;)V
    .param p1    # Lio/noties/markwon/MarkwonSpansFactory$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract configureTheme(Lio/noties/markwon/core/MarkwonTheme$Builder;)V
    .param p1    # Lio/noties/markwon/core/MarkwonTheme$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract configureVisitor(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .param p1    # Lio/noties/markwon/MarkwonVisitor$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract processMarkdown(Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
