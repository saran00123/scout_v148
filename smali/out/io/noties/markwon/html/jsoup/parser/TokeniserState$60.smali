.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$60;
.super Lio/noties/markwon/html/jsoup/parser/TokeniserState;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/html/jsoup/parser/TokeniserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1386
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 1388
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_61

    const/16 v0, 0xa

    if-eq p2, v0, :cond_61

    const/16 v0, 0xc

    if-eq p2, v0, :cond_61

    const/16 v0, 0xd

    if-eq p2, v0, :cond_61

    const/16 v0, 0x20

    if-eq p2, v0, :cond_61

    const/16 v0, 0x22

    if-eq p2, v0, :cond_59

    const/16 v0, 0x27

    if-eq p2, v0, :cond_50

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_47

    const v0, 0xffff

    const/4 v1, 0x1

    if-eq p2, v0, :cond_37

    .line 1417
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1418
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->doctypePending:Lio/noties/markwon/html/jsoup/parser/Token$Doctype;

    iput-boolean v1, p2, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 1419
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$60;->BogusDoctype:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_61

    .line 1411
    :cond_37
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->eofError(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1412
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->doctypePending:Lio/noties/markwon/html/jsoup/parser/Token$Doctype;

    iput-boolean v1, p2, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 1413
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitDoctypePending()V

    .line 1414
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$60;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_61

    .line 1397
    :cond_47
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitDoctypePending()V

    .line 1398
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$60;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_61

    .line 1406
    :cond_50
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1408
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$60;->DoctypeSystemIdentifier_singleQuoted:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_61

    .line 1401
    :cond_59
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1403
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$60;->DoctypeSystemIdentifier_doubleQuoted:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    :cond_61
    :goto_61
    return-void
.end method
