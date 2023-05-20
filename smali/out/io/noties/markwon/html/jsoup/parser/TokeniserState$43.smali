.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$43;
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

    .line 896
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 6

    .line 900
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->unconsume()V

    .line 901
    new-instance v0, Lio/noties/markwon/html/jsoup/parser/Token$Comment;

    invoke-direct {v0}, Lio/noties/markwon/html/jsoup/parser/Token$Comment;-><init>()V

    const/4 v1, 0x1

    .line 902
    iput-boolean v1, v0, Lio/noties/markwon/html/jsoup/parser/Token$Comment;->bogus:Z

    .line 903
    iget-object v1, v0, Lio/noties/markwon/html/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    const/16 v2, 0x3e

    invoke-virtual {p2, v2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consumeTo(C)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    invoke-virtual {p1, v0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emit(Lio/noties/markwon/html/jsoup/parser/Token;)V

    .line 906
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$43;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->advanceTransition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    return-void
.end method
