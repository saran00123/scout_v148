.class public Lorg/commonmark/node/FencedCodeBlock;
.super Lorg/commonmark/node/Block;
.source "FencedCodeBlock.java"


# instance fields
.field private fenceChar:C

.field private fenceIndent:I

.field private fenceLength:I

.field private info:Ljava/lang/String;

.field private literal:Ljava/lang/String;


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

    .line 14
    invoke-interface {p1, p0}, Lorg/commonmark/node/Visitor;->visit(Lorg/commonmark/node/FencedCodeBlock;)V

    return-void
.end method

.method public getFenceChar()C
    .registers 2

    .line 18
    iget-char v0, p0, Lorg/commonmark/node/FencedCodeBlock;->fenceChar:C

    return v0
.end method

.method public getFenceIndent()I
    .registers 2

    .line 34
    iget v0, p0, Lorg/commonmark/node/FencedCodeBlock;->fenceIndent:I

    return v0
.end method

.method public getFenceLength()I
    .registers 2

    .line 26
    iget v0, p0, Lorg/commonmark/node/FencedCodeBlock;->fenceLength:I

    return v0
.end method

.method public getInfo()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lorg/commonmark/node/FencedCodeBlock;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getLiteral()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lorg/commonmark/node/FencedCodeBlock;->literal:Ljava/lang/String;

    return-object v0
.end method

.method public setFenceChar(C)V
    .registers 2

    .line 22
    iput-char p1, p0, Lorg/commonmark/node/FencedCodeBlock;->fenceChar:C

    return-void
.end method

.method public setFenceIndent(I)V
    .registers 2

    .line 38
    iput p1, p0, Lorg/commonmark/node/FencedCodeBlock;->fenceIndent:I

    return-void
.end method

.method public setFenceLength(I)V
    .registers 2

    .line 30
    iput p1, p0, Lorg/commonmark/node/FencedCodeBlock;->fenceLength:I

    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lorg/commonmark/node/FencedCodeBlock;->info:Ljava/lang/String;

    return-void
.end method

.method public setLiteral(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lorg/commonmark/node/FencedCodeBlock;->literal:Ljava/lang/String;

    return-void
.end method
