.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$51;
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

    .line 1090
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 4

    .line 1092
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_41

    const/16 v0, 0xa

    if-eq p2, v0, :cond_41

    const/16 v0, 0xc

    if-eq p2, v0, :cond_41

    const/16 v0, 0xd

    if-eq p2, v0, :cond_41

    const/16 v0, 0x20

    if-eq p2, v0, :cond_41

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_2d

    const v0, 0xffff

    if-eq p2, v0, :cond_2a

    .line 1112
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1113
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$51;->BeforeDoctypeName:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_46

    .line 1102
    :cond_2a
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->eofError(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1105
    :cond_2d
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1106
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->createDoctypePending()V

    .line 1107
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->doctypePending:Lio/noties/markwon/html/jsoup/parser/Token$Doctype;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 1108
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitDoctypePending()V

    .line 1109
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$51;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_46

    .line 1099
    :cond_41
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$51;->BeforeDoctypeName:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    :goto_46
    return-void
.end method
