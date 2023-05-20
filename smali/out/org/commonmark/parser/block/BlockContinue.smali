.class public Lorg/commonmark/parser/block/BlockContinue;
.super Ljava/lang/Object;
.source "BlockContinue.java"


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static atColumn(I)Lorg/commonmark/parser/block/BlockContinue;
    .registers 4

    .line 22
    new-instance v0, Lorg/commonmark/internal/BlockContinueImpl;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/commonmark/internal/BlockContinueImpl;-><init>(IIZ)V

    return-object v0
.end method

.method public static atIndex(I)Lorg/commonmark/parser/block/BlockContinue;
    .registers 4

    .line 18
    new-instance v0, Lorg/commonmark/internal/BlockContinueImpl;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/commonmark/internal/BlockContinueImpl;-><init>(IIZ)V

    return-object v0
.end method

.method public static finished()Lorg/commonmark/parser/block/BlockContinue;
    .registers 3

    .line 26
    new-instance v0, Lorg/commonmark/internal/BlockContinueImpl;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2}, Lorg/commonmark/internal/BlockContinueImpl;-><init>(IIZ)V

    return-object v0
.end method

.method public static none()Lorg/commonmark/parser/block/BlockContinue;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method
