.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$3;
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

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 42
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->current()C

    move-result v0

    if-eqz v0, :cond_36

    const/16 v1, 0x26

    if-eq v0, v1, :cond_30

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_2a

    const v1, 0xffff

    if-eq v0, v1, :cond_21

    const/4 v0, 0x3

    .line 58
    new-array v0, v0, [C

    fill-array-data v0, :array_44

    invoke-virtual {p2, v0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consumeToAny([C)Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    goto :goto_42

    .line 55
    :cond_21
    new-instance p2, Lio/noties/markwon/html/jsoup/parser/Token$EOF;

    invoke-direct {p2}, Lio/noties/markwon/html/jsoup/parser/Token$EOF;-><init>()V

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(Lio/noties/markwon/html/jsoup/parser/Token;)V

    goto :goto_42

    .line 47
    :cond_2a
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$3;->RcdataLessthanSign:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->advanceTransition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_42

    .line 44
    :cond_30
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$3;->CharacterReferenceInRcdata:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->advanceTransition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_42

    .line 50
    :cond_36
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 51
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->advance()V

    const p2, 0xfffd

    .line 52
    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(C)V

    :goto_42
    return-void

    nop

    :array_44
    .array-data 2
        0x26s
        0x3cs
        0x0s
    .end array-data
.end method
