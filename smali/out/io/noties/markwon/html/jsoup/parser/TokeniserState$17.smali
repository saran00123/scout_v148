.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$17;
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

    .line 276
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 278
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consume()C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_23

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1a

    const-string v0, "<"

    .line 288
    invoke-virtual {p1, v0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->unconsume()V

    .line 290
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$17;->ScriptData:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_2d

    .line 280
    :cond_1a
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->createTempBuffer()V

    .line 281
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$17;->ScriptDataEndTagOpen:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_2d

    :cond_23
    const-string p2, "<!"

    .line 284
    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    .line 285
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$17;->ScriptDataEscapeStart:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    :goto_2d
    return-void
.end method
