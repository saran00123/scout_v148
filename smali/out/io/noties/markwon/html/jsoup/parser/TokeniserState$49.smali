.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$49;
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

    .line 1029
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 1031
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    const-string v0, "--"

    if-eqz p2, :cond_55

    const/16 v1, 0x21

    if-eq p2, v1, :cond_4c

    const/16 v1, 0x2d

    if-eq p2, v1, :cond_41

    const/16 v1, 0x3e

    if-eq p2, v1, :cond_38

    const v1, 0xffff

    if-eq p2, v1, :cond_2c

    .line 1056
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1057
    iget-object v1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->commentPending:Lio/noties/markwon/html/jsoup/parser/Token$Comment;

    iget-object v1, v1, Lio/noties/markwon/html/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1058
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$49;->Comment:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_6a

    .line 1051
    :cond_2c
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->eofError(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1052
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitCommentPending()V

    .line 1053
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$49;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_6a

    .line 1034
    :cond_38
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitCommentPending()V

    .line 1035
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$49;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_6a

    .line 1047
    :cond_41
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1048
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->commentPending:Lio/noties/markwon/html/jsoup/parser/Token$Comment;

    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6a

    .line 1043
    :cond_4c
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1044
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$49;->CommentEndBang:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_6a

    .line 1038
    :cond_55
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 1039
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->commentPending:Lio/noties/markwon/html/jsoup/parser/Token$Comment;

    iget-object p2, p2, Lio/noties/markwon/html/jsoup/parser/Token$Comment;->data:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1040
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$49;->Comment:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    :goto_6a
    return-void
.end method
