.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$10;
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

    .line 141
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 146
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consumeTagName()Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {v1, v0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    if-eqz p2, :cond_54

    const/16 v0, 0x20

    if-eq p2, v0, :cond_4e

    const/16 v0, 0x2f

    if-eq p2, v0, :cond_48

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_3f

    const v0, 0xffff

    if-eq p2, v0, :cond_36

    const/16 v0, 0x9

    if-eq p2, v0, :cond_4e

    const/16 v0, 0xa

    if-eq p2, v0, :cond_4e

    const/16 v0, 0xc

    if-eq p2, v0, :cond_4e

    const/16 v0, 0xd

    if-eq p2, v0, :cond_4e

    .line 173
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendTagName(C)V

    goto :goto_5d

    .line 169
    :cond_36
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->eofError(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 170
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$10;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_5d

    .line 162
    :cond_3f
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 163
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$10;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_5d

    .line 159
    :cond_48
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$10;->SelfClosingStartTag:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_5d

    .line 156
    :cond_4e
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$10;->BeforeAttributeName:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_5d

    .line 166
    :cond_54
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-static {}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;->access$300()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    :goto_5d
    return-void
.end method
