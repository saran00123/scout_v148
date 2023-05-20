.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$64;
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

    .line 1528
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 1530
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    if-eqz p2, :cond_42

    const/16 v0, 0x27

    if-eq p2, v0, :cond_3c

    const/16 v0, 0x3e

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2c

    const v0, 0xffff

    if-eq p2, v0, :cond_1c

    .line 1552
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->doctypePending:Lio/noties/markwon/html/jsoup/parser/Token$Doctype;

    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->systemIdentifier:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4f

    .line 1546
    :cond_1c
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->eofError(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1547
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->doctypePending:Lio/noties/markwon/html/jsoup/parser/Token$Doctype;

    iput-boolean v1, p2, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 1548
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitDoctypePending()V

    .line 1549
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$64;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_4f

    .line 1540
    :cond_2c
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1541
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->doctypePending:Lio/noties/markwon/html/jsoup/parser/Token$Doctype;

    iput-boolean v1, p2, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 1542
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitDoctypePending()V

    .line 1543
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$64;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_4f

    .line 1533
    :cond_3c
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$64;->AfterDoctypeSystemIdentifier:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_4f

    .line 1536
    :cond_42
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1537
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->doctypePending:Lio/noties/markwon/html/jsoup/parser/Token$Doctype;

    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->systemIdentifier:Ljava/lang/StringBuilder;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4f
    return-void
.end method
