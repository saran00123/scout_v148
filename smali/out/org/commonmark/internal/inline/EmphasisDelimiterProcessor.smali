.class public abstract Lorg/commonmark/internal/inline/EmphasisDelimiterProcessor;
.super Ljava/lang/Object;
.source "EmphasisDelimiterProcessor.java"

# interfaces
.implements Lorg/commonmark/parser/delimiter/DelimiterProcessor;


# instance fields
.field private final delimiterChar:C


# direct methods
.method protected constructor <init>(C)V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-char p1, p0, Lorg/commonmark/internal/inline/EmphasisDelimiterProcessor;->delimiterChar:C

    return-void
.end method


# virtual methods
.method public getClosingCharacter()C
    .registers 2

    .line 25
    iget-char v0, p0, Lorg/commonmark/internal/inline/EmphasisDelimiterProcessor;->delimiterChar:C

    return v0
.end method

.method public getDelimiterUse(Lorg/commonmark/parser/delimiter/DelimiterRun;Lorg/commonmark/parser/delimiter/DelimiterRun;)I
    .registers 5

    .line 36
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterRun;->canClose()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-interface {p2}, Lorg/commonmark/parser/delimiter/DelimiterRun;->canOpen()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 37
    :cond_c
    invoke-interface {p2}, Lorg/commonmark/parser/delimiter/DelimiterRun;->originalLength()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_23

    .line 38
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterRun;->originalLength()I

    move-result v0

    invoke-interface {p2}, Lorg/commonmark/parser/delimiter/DelimiterRun;->originalLength()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_23

    const/4 p1, 0x0

    return p1

    .line 42
    :cond_23
    invoke-interface {p1}, Lorg/commonmark/parser/delimiter/DelimiterRun;->length()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_31

    invoke-interface {p2}, Lorg/commonmark/parser/delimiter/DelimiterRun;->length()I

    move-result p1

    if-lt p1, v0, :cond_31

    return v0

    :cond_31
    const/4 p1, 0x1

    return p1
.end method

.method public getMinLength()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getOpeningCharacter()C
    .registers 2

    .line 20
    iget-char v0, p0, Lorg/commonmark/internal/inline/EmphasisDelimiterProcessor;->delimiterChar:C

    return v0
.end method

.method public process(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V
    .registers 6

    .line 51
    invoke-virtual {p0}, Lorg/commonmark/internal/inline/EmphasisDelimiterProcessor;->getOpeningCharacter()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_11

    .line 52
    new-instance p3, Lorg/commonmark/node/Emphasis;

    invoke-direct {p3, v0}, Lorg/commonmark/node/Emphasis;-><init>(Ljava/lang/String;)V

    goto :goto_25

    :cond_11
    new-instance p3, Lorg/commonmark/node/StrongEmphasis;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0}, Lorg/commonmark/node/StrongEmphasis;-><init>(Ljava/lang/String;)V

    .line 56
    :goto_25
    invoke-virtual {p1}, Lorg/commonmark/node/Text;->getNext()Lorg/commonmark/node/Node;

    move-result-object v0

    :goto_29
    if-eqz v0, :cond_36

    if-eq v0, p2, :cond_36

    .line 58
    invoke-virtual {v0}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 59
    invoke-virtual {p3, v0}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    move-object v0, v1

    goto :goto_29

    .line 63
    :cond_36
    invoke-virtual {p1, p3}, Lorg/commonmark/node/Text;->insertAfter(Lorg/commonmark/node/Node;)V

    return-void
.end method
