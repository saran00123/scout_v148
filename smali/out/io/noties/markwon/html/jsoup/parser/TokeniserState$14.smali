.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$14;
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

    .line 255
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 4

    const/16 v0, 0x2f

    .line 257
    invoke-virtual {p2, v0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->matches(C)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 258
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->createTempBuffer()V

    .line 259
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$14;->RawtextEndTagOpen:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->advanceTransition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_1b

    :cond_11
    const/16 p2, 0x3c

    .line 261
    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(C)V

    .line 262
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$14;->Rawtext:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    :goto_1b
    return-void
.end method
