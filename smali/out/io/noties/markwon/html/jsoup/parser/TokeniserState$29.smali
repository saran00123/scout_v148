.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$29;
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

    .line 449
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 451
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->current()C

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_33

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_2a

    const v1, 0xffff

    if-eq v0, v1, :cond_21

    const/4 v0, 0x3

    .line 471
    new-array v0, v0, [C

    fill-array-data v0, :array_4a

    invoke-virtual {p2, v0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consumeToAny([C)Ljava/lang/String;

    move-result-object p2

    .line 472
    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    goto :goto_48

    .line 467
    :cond_21
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->eofError(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 468
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$29;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_48

    .line 458
    :cond_2a
    invoke-virtual {p1, v0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(C)V

    .line 459
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$29;->ScriptDataDoubleEscapedLessthanSign:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->advanceTransition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_48

    .line 454
    :cond_33
    invoke-virtual {p1, v0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(C)V

    .line 455
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$29;->ScriptDataDoubleEscapedDash:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->advanceTransition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_48

    .line 462
    :cond_3c
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 463
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->advance()V

    const p2, 0xfffd

    .line 464
    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(C)V

    :goto_48
    return-void

    nop

    :array_4a
    .array-data 2
        0x2ds
        0x3cs
        0x0s
    .end array-data
.end method
