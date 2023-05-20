.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$26;
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

    .line 426
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 428
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    .line 429
    invoke-virtual {p1, v0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->createTagPending(Z)Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    .line 430
    iget-object v0, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->current()C

    move-result v1

    invoke-virtual {v0, v1}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendTagName(C)V

    .line 431
    iget-object v0, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->current()C

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 432
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$26;->ScriptDataEscapedEndTagName:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->advanceTransition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_2c

    :cond_22
    const-string p2, "</"

    .line 434
    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 435
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$26;->ScriptDataEscaped:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    :goto_2c
    return-void
.end method
