.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$13;
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

    .line 209
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method

.method private anythingElse(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->unconsume()V

    .line 252
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$13;->Rcdata:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 211
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 212
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consumeLetterSequence()Ljava/lang/String;

    move-result-object p2

    .line 213
    iget-object v0, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {v0, p2}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    .line 214
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->dataBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 218
    :cond_15
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consume()C

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5c

    const/16 v1, 0xc

    if-eq v0, v1, :cond_5c

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x20

    if-eq v0, v1, :cond_5c

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_4c

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_39

    .line 245
    invoke-direct {p0, p1, p2}, Lio/noties/markwon/html/jsoup/parser/TokeniserState$13;->anythingElse(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V

    goto :goto_6b

    .line 237
    :cond_39
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->isAppropriateEndTagToken()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 238
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 239
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$13;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_6b

    .line 242
    :cond_48
    invoke-direct {p0, p1, p2}, Lio/noties/markwon/html/jsoup/parser/TokeniserState$13;->anythingElse(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V

    goto :goto_6b

    .line 231
    :cond_4c
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->isAppropriateEndTagToken()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 232
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$13;->SelfClosingStartTag:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_6b

    .line 234
    :cond_58
    invoke-direct {p0, p1, p2}, Lio/noties/markwon/html/jsoup/parser/TokeniserState$13;->anythingElse(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V

    goto :goto_6b

    .line 225
    :cond_5c
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->isAppropriateEndTagToken()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 226
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$13;->BeforeAttributeName:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_6b

    .line 228
    :cond_68
    invoke-direct {p0, p1, p2}, Lio/noties/markwon/html/jsoup/parser/TokeniserState$13;->anythingElse(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V

    :goto_6b
    return-void
.end method
