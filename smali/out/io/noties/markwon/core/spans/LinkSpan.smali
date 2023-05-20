.class public Lio/noties/markwon/core/spans/LinkSpan;
.super Landroid/text/style/URLSpan;
.source "LinkSpan.java"


# instance fields
.field private final link:Ljava/lang/String;

.field private final resolver:Lio/noties/markwon/LinkResolver;

.field private final theme:Lio/noties/markwon/core/MarkwonTheme;


# direct methods
.method public constructor <init>(Lio/noties/markwon/core/MarkwonTheme;Ljava/lang/String;Lio/noties/markwon/LinkResolver;)V
    .registers 4
    .param p1    # Lio/noties/markwon/core/MarkwonTheme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/noties/markwon/LinkResolver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 22
    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lio/noties/markwon/core/spans/LinkSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 24
    iput-object p2, p0, Lio/noties/markwon/core/spans/LinkSpan;->link:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lio/noties/markwon/core/spans/LinkSpan;->resolver:Lio/noties/markwon/LinkResolver;

    return-void
.end method


# virtual methods
.method public getLink()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 43
    iget-object v0, p0, Lio/noties/markwon/core/spans/LinkSpan;->link:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 30
    iget-object v0, p0, Lio/noties/markwon/core/spans/LinkSpan;->resolver:Lio/noties/markwon/LinkResolver;

    iget-object v1, p0, Lio/noties/markwon/core/spans/LinkSpan;->link:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lio/noties/markwon/LinkResolver;->resolve(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    iget-object v0, p0, Lio/noties/markwon/core/spans/LinkSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {v0, p1}, Lio/noties/markwon/core/MarkwonTheme;->applyLinkStyle(Landroid/text/TextPaint;)V

    return-void
.end method
