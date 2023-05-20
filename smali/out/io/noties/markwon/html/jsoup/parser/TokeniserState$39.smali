.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$39;
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

    .line 764
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 766
    sget-object v0, Lio/noties/markwon/html/jsoup/parser/TokeniserState$39;->attributeSingleValueCharsSorted:[C

    invoke-virtual {p2, v0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consumeToAny([C)Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_12

    .line 768
    iget-object v1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {v1, v0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeValue(Ljava/lang/String;)V

    goto :goto_17

    .line 770
    :cond_12
    iget-object v0, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->setEmptyAttributeValue()V

    .line 772
    :goto_17
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    if-eqz p2, :cond_56

    const v0, 0xffff

    if-eq p2, v0, :cond_4d

    const/16 v0, 0x27

    const/16 v1, 0x26

    if-eq p2, v1, :cond_36

    if-eq p2, v0, :cond_30

    .line 793
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    goto :goto_61

    .line 775
    :cond_30
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$39;->AfterAttributeValue_quoted:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_61

    .line 778
    :cond_36
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->consumeCharacterReference(Ljava/lang/Character;Z)[I

    move-result-object p2

    if-eqz p2, :cond_47

    .line 780
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeValue([I)V

    goto :goto_61

    .line 782
    :cond_47
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {p1, v1}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    goto :goto_61

    .line 789
    :cond_4d
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->eofError(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 790
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$39;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_61

    .line 785
    :cond_56
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 786
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    :goto_61
    return-void
.end method
