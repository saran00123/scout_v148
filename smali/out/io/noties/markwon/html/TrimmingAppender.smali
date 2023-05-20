.class abstract Lio/noties/markwon/html/TrimmingAppender;
.super Ljava/lang/Object;
.source "TrimmingAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/html/TrimmingAppender$Impl;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create()Lio/noties/markwon/html/TrimmingAppender;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 16
    new-instance v0, Lio/noties/markwon/html/TrimmingAppender$Impl;

    invoke-direct {v0}, Lio/noties/markwon/html/TrimmingAppender$Impl;-><init>()V

    return-object v0
.end method


# virtual methods
.method abstract append(Ljava/lang/Appendable;Ljava/lang/String;)V
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
