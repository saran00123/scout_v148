.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$22;
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

    .line 324
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 326
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 327
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->eofError(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 328
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$22;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    return-void

    .line 332
    :cond_f
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->current()C

    move-result v0

    if-eqz v0, :cond_3a

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_31

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_2b

    const/4 v0, 0x3

    .line 346
    new-array v0, v0, [C

    fill-array-data v0, :array_48

    invoke-virtual {p2, v0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consumeToAny([C)Ljava/lang/String;

    move-result-object p2

    .line 347
    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(Ljava/lang/String;)V

    goto :goto_46

    .line 338
    :cond_2b
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$22;->ScriptDataEscapedLessthanSign:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->advanceTransition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_46

    .line 334
    :cond_31
    invoke-virtual {p1, v1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(C)V

    .line 335
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$22;->ScriptDataEscapedDash:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->advanceTransition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_46

    .line 341
    :cond_3a
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 342
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->advance()V

    const p2, 0xfffd

    .line 343
    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(C)V

    :goto_46
    return-void

    nop

    :array_48
    .array-data 2
        0x2ds
        0x3cs
        0x0s
    .end array-data
.end method
