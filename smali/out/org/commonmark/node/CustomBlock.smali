.class public abstract Lorg/commonmark/node/CustomBlock;
.super Lorg/commonmark/node/Block;
.source "CustomBlock.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lorg/commonmark/node/Block;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/commonmark/node/Visitor;)V
    .registers 2

    .line 7
    invoke-interface {p1, p0}, Lorg/commonmark/node/Visitor;->visit(Lorg/commonmark/node/CustomBlock;)V

    return-void
.end method
