.class public Lio/noties/markwon/core/factory/EmphasisSpanFactory;
.super Ljava/lang/Object;
.source "EmphasisSpanFactory.java"

# interfaces
.implements Lio/noties/markwon/SpanFactory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .registers 3
    .param p1    # Lio/noties/markwon/MarkwonConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/RenderProps;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 15
    new-instance p1, Lio/noties/markwon/core/spans/EmphasisSpan;

    invoke-direct {p1}, Lio/noties/markwon/core/spans/EmphasisSpan;-><init>()V

    return-object p1
.end method
