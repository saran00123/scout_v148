.class Lio/noties/markwon/html/CssInlineStyleParser$Impl$CssIterable;
.super Ljava/lang/Object;
.source "CssInlineStyleParser.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/html/CssInlineStyleParser$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CssIterable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/html/CssInlineStyleParser$Impl$CssIterable$CssIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lio/noties/markwon/html/CssProperty;",
        ">;"
    }
.end annotation


# instance fields
.field private final input:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lio/noties/markwon/html/CssInlineStyleParser$Impl$CssIterable;->input:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lio/noties/markwon/html/CssInlineStyleParser$Impl$CssIterable;)Ljava/lang/String;
    .registers 1

    .line 29
    iget-object p0, p0, Lio/noties/markwon/html/CssInlineStyleParser$Impl$CssIterable;->input:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/noties/markwon/html/CssProperty;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lio/noties/markwon/html/CssInlineStyleParser$Impl$CssIterable$CssIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/noties/markwon/html/CssInlineStyleParser$Impl$CssIterable$CssIterator;-><init>(Lio/noties/markwon/html/CssInlineStyleParser$Impl$CssIterable;Lio/noties/markwon/html/CssInlineStyleParser$1;)V

    return-object v0
.end method
