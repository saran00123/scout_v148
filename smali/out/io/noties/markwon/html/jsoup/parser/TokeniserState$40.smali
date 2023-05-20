.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$40;
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

    .line 797
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 799
    sget-object v0, Lio/noties/markwon/html/jsoup/parser/TokeniserState$40;->attributeValueUnquoted:[C

    invoke-virtual {p2, v0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consumeToAnySorted([C)Ljava/lang/String;

    move-result-object v0

    .line 800
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    .line 801
    iget-object v1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {v1, v0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeValue(Ljava/lang/String;)V

    .line 803
    :cond_11
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    if-eqz p2, :cond_83

    const/16 v0, 0x20

    if-eq p2, v0, :cond_7d

    const/16 v0, 0x22

    if-eq p2, v0, :cond_74

    const/16 v0, 0x60

    if-eq p2, v0, :cond_74

    const v0, 0xffff

    if-eq p2, v0, :cond_6b

    const/16 v0, 0x9

    if-eq p2, v0, :cond_7d

    const/16 v0, 0xa

    if-eq p2, v0, :cond_7d

    const/16 v0, 0xc

    if-eq p2, v0, :cond_7d

    const/16 v0, 0xd

    if-eq p2, v0, :cond_7d

    const/16 v0, 0x26

    if-eq p2, v0, :cond_52

    const/16 v0, 0x27

    if-eq p2, v0, :cond_74

    packed-switch p2, :pswitch_data_90

    .line 840
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    goto :goto_8e

    .line 820
    :pswitch_49
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 821
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$40;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_8e

    :cond_52
    const/16 p2, 0x3e

    .line 813
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->consumeCharacterReference(Ljava/lang/Character;Z)[I

    move-result-object p2

    if-eqz p2, :cond_65

    .line 815
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeValue([I)V

    goto :goto_8e

    .line 817
    :cond_65
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {p1, v0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    goto :goto_8e

    .line 828
    :cond_6b
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->eofError(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 829
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$40;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_8e

    .line 836
    :cond_74
    :pswitch_74
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 837
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    goto :goto_8e

    .line 810
    :cond_7d
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$40;->BeforeAttributeName:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_8e

    .line 824
    :cond_83
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 825
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    :goto_8e
    return-void

    nop

    :pswitch_data_90
    .packed-switch 0x3c
        :pswitch_74
        :pswitch_74
        :pswitch_49
    .end packed-switch
.end method
