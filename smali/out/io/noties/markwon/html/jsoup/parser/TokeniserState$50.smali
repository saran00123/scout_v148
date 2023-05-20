.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$50;
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

    .line 1062
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 1064
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    const-string v0, "--!"

    if-eqz p2, :cond_47

    const/16 v1, 0x2d

    if-eq p2, v1, :cond_3a

    const/16 v1, 0x3e

    if-eq p2, v1, :cond_31

    const v1, 0xffff

    if-eq p2, v1, :cond_25

    .line 1085
    iget-object v1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->commentPending:Lio/noties/markwon/html/jsoup/parser/Token$Comment;

    iget-object v1, v1, Lio/noties/markwon/html/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1086
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$50;->Comment:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_5c

    .line 1080
    :cond_25
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->eofError(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1081
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitCommentPending()V

    .line 1082
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$50;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_5c

    .line 1071
    :cond_31
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitCommentPending()V

    .line 1072
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$50;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_5c

    .line 1067
    :cond_3a
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->commentPending:Lio/noties/markwon/html/jsoup/parser/Token$Comment;

    iget-object p2, p2, Lio/noties/markwon/html/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$50;->CommentEndDash:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_5c

    .line 1075
    :cond_47
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1076
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->commentPending:Lio/noties/markwon/html/jsoup/parser/Token$Comment;

    iget-object p2, p2, Lio/noties/markwon/html/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1077
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$50;->Comment:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    :goto_5c
    return-void
.end method
