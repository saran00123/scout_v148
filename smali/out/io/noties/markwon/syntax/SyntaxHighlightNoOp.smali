.class public Lio/noties/markwon/syntax/SyntaxHighlightNoOp;
.super Ljava/lang/Object;
.source "SyntaxHighlightNoOp.java"

# interfaces
.implements Lio/noties/markwon/syntax/SyntaxHighlight;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public highlight(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p2
.end method
