.class public abstract Lorg/commonmark/parser/block/AbstractBlockParser;
.super Ljava/lang/Object;
.source "AbstractBlockParser.java"

# interfaces
.implements Lorg/commonmark/parser/block/BlockParser;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addLine(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public canContain(Lorg/commonmark/node/Block;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public canHaveLazyContinuationLines()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public closeBlock()V
    .registers 1

    return-void
.end method

.method public isContainer()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public parseInlines(Lorg/commonmark/parser/InlineParser;)V
    .registers 2

    return-void
.end method
