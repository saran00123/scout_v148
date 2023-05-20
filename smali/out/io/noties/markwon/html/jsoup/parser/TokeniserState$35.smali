.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$35;
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

    .line 593
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 596
    sget-object v0, Lio/noties/markwon/html/jsoup/parser/TokeniserState$35;->attributeNameCharsSorted:[C

    invoke-virtual {p2, v0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consumeToAnySorted([C)Ljava/lang/String;

    move-result-object v0

    .line 597
    iget-object v1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {v1, v0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeName(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consume()C

    move-result p2

    if-eqz p2, :cond_6c

    const/16 v0, 0x20

    if-eq p2, v0, :cond_66

    const/16 v0, 0x22

    if-eq p2, v0, :cond_5d

    const/16 v0, 0x27

    if-eq p2, v0, :cond_5d

    const/16 v0, 0x2f

    if-eq p2, v0, :cond_57

    const v0, 0xffff

    if-eq p2, v0, :cond_4e

    const/16 v0, 0x9

    if-eq p2, v0, :cond_66

    const/16 v0, 0xa

    if-eq p2, v0, :cond_66

    const/16 v0, 0xc

    if-eq p2, v0, :cond_66

    const/16 v0, 0xd

    if-eq p2, v0, :cond_66

    packed-switch p2, :pswitch_data_78

    .line 633
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeName(C)V

    goto :goto_77

    .line 615
    :pswitch_3f
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 616
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$35;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_77

    .line 612
    :pswitch_48
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$35;->BeforeAttributeValue:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_77

    .line 623
    :cond_4e
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->eofError(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 624
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$35;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_77

    .line 609
    :cond_57
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$35;->SelfClosingStartTag:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_77

    .line 629
    :cond_5d
    :pswitch_5d
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 630
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeName(C)V

    goto :goto_77

    .line 606
    :cond_66
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$35;->AfterAttributeName:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_77

    .line 619
    :cond_6c
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 620
    iget-object p1, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    const p2, 0xfffd

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeName(C)V

    :goto_77
    return-void

    :pswitch_data_78
    .packed-switch 0x3c
        :pswitch_5d
        :pswitch_48
        :pswitch_3f
    .end packed-switch
.end method
