.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$59;
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

    .line 1348
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 1350
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_62

    const/16 v0, 0xa

    if-eq p2, v0, :cond_62

    const/16 v0, 0xc

    if-eq p2, v0, :cond_62

    const/16 v0, 0xd

    if-eq p2, v0, :cond_62

    const/16 v0, 0x20

    if-eq p2, v0, :cond_62

    const/16 v0, 0x22

    if-eq p2, v0, :cond_59

    const/16 v0, 0x27

    if-eq p2, v0, :cond_50

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_47

    const v0, 0xffff

    const/4 v1, 0x1

    if-eq p2, v0, :cond_37

    .line 1380
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1381
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->doctypePending:Lio/noties/markwon/html/jsoup/parser/Token$Doctype;

    iput-boolean v1, p2, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 1382
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$59;->BogusDoctype:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_67

    .line 1374
    :cond_37
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->eofError(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1375
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->doctypePending:Lio/noties/markwon/html/jsoup/parser/Token$Doctype;

    iput-boolean v1, p2, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 1376
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitDoctypePending()V

    .line 1377
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$59;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_67

    .line 1360
    :cond_47
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitDoctypePending()V

    .line 1361
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$59;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_67

    .line 1369
    :cond_50
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1371
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$59;->DoctypeSystemIdentifier_singleQuoted:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_67

    .line 1364
    :cond_59
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1366
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$59;->DoctypeSystemIdentifier_doubleQuoted:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_67

    .line 1357
    :cond_62
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$59;->BetweenDoctypePublicAndSystemIdentifiers:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    :goto_67
    return-void
.end method
