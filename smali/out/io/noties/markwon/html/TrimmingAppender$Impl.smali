.class Lio/noties/markwon/html/TrimmingAppender$Impl;
.super Lio/noties/markwon/html/TrimmingAppender;
.source "TrimmingAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/html/TrimmingAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lio/noties/markwon/html/TrimmingAppender;-><init>()V

    return-void
.end method


# virtual methods
.method append(Ljava/lang/Appendable;Ljava/lang/String;)V
    .registers 12
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

    .line 33
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 39
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_e
    const/16 v6, 0x20

    if-ge v4, v2, :cond_3c

    .line 41
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 43
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_1e

    const/4 v5, 0x1

    goto :goto_39

    :cond_1e
    if-eqz v5, :cond_35

    .line 50
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_35

    add-int/lit8 v5, v5, -0x1

    .line 52
    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_35

    .line 53
    invoke-static {p1, v6}, Lio/noties/markwon/html/AppendableUtils;->appendQuietly(Ljava/lang/Appendable;C)V

    .line 58
    :cond_35
    invoke-static {p1, v7}, Lio/noties/markwon/html/AppendableUtils;->appendQuietly(Ljava/lang/Appendable;C)V

    move v5, v3

    :goto_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_3c
    if-eqz v5, :cond_47

    .line 63
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-ge v1, p2, :cond_47

    .line 64
    invoke-static {p1, v6}, Lio/noties/markwon/html/AppendableUtils;->appendQuietly(Ljava/lang/Appendable;C)V

    :cond_47
    return-void
.end method
