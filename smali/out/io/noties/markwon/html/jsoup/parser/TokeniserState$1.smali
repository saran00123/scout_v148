.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$1;
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

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 12
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->current()C

    move-result v0

    if-eqz v0, :cond_30

    const/16 v1, 0x26

    if-eq v0, v1, :cond_2a

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_24

    const v1, 0xffff

    if-eq v0, v1, :cond_1b

    .line 27
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consumeData()Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    goto :goto_3a

    .line 24
    :cond_1b
    new-instance p2, Lio/noties/markwon/html/jsoup/parser/Token$EOF;

    invoke-direct {p2}, Lio/noties/markwon/html/jsoup/parser/Token$EOF;-><init>()V

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(Lio/noties/markwon/html/jsoup/parser/Token;)V

    goto :goto_3a

    .line 17
    :cond_24
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$1;->TagOpen:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->advanceTransition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_3a

    .line 14
    :cond_2a
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$1;->CharacterReferenceInData:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->advanceTransition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_3a

    .line 20
    :cond_30
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 21
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(C)V

    :goto_3a
    return-void
.end method
