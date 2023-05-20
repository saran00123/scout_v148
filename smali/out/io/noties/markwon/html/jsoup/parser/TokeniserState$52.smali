.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$52;
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

    .line 1117
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 4

    .line 1119
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->matchesLetter()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1120
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->createDoctypePending()V

    .line 1121
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$52;->DoctypeName:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    return-void

    .line 1124
    :cond_f
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    if-eqz p2, :cond_52

    const/16 v0, 0x20

    if-eq p2, v0, :cond_67

    const v0, 0xffff

    if-eq p2, v0, :cond_3e

    const/16 v0, 0x9

    if-eq p2, v0, :cond_67

    const/16 v0, 0xa

    if-eq p2, v0, :cond_67

    const/16 v0, 0xc

    if-eq p2, v0, :cond_67

    const/16 v0, 0xd

    if-eq p2, v0, :cond_67

    .line 1146
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->createDoctypePending()V

    .line 1147
    iget-object v0, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->doctypePending:Lio/noties/markwon/html/jsoup/parser/Token$Doctype;

    iget-object v0, v0, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1148
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$52;->DoctypeName:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_67

    .line 1139
    :cond_3e
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->eofError(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1140
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->createDoctypePending()V

    .line 1141
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->doctypePending:Lio/noties/markwon/html/jsoup/parser/Token$Doctype;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->forceQuirks:Z

    .line 1142
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitDoctypePending()V

    .line 1143
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$52;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_67

    .line 1133
    :cond_52
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1134
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->createDoctypePending()V

    .line 1135
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->doctypePending:Lio/noties/markwon/html/jsoup/parser/Token$Doctype;

    iget-object p2, p2, Lio/noties/markwon/html/jsoup/parser/Token$Doctype;->name:Ljava/lang/StringBuilder;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1136
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$52;->DoctypeName:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    :cond_67
    :goto_67
    return-void
.end method
