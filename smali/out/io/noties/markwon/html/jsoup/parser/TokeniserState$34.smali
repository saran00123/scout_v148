.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$34;
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

    .line 549
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 552
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consume()C

    move-result v0

    if-eqz v0, :cond_67

    const/16 v1, 0x20

    if-eq v0, v1, :cond_77

    const/16 v1, 0x22

    if-eq v0, v1, :cond_54

    const/16 v1, 0x27

    if-eq v0, v1, :cond_54

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_4e

    const v1, 0xffff

    if-eq v0, v1, :cond_45

    const/16 v1, 0x9

    if-eq v0, v1, :cond_77

    const/16 v1, 0xa

    if-eq v0, v1, :cond_77

    const/16 v1, 0xc

    if-eq v0, v1, :cond_77

    const/16 v1, 0xd

    if-eq v0, v1, :cond_77

    packed-switch v0, :pswitch_data_78

    .line 587
    iget-object v0, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->newAttribute()V

    .line 588
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->unconsume()V

    .line 589
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$34;->AttributeName:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_77

    .line 564
    :pswitch_3c
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 565
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$34;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_77

    .line 574
    :cond_45
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->eofError(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 575
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$34;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_77

    .line 561
    :cond_4e
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$34;->SelfClosingStartTag:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_77

    .line 581
    :cond_54
    :pswitch_54
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 582
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->newAttribute()V

    .line 583
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {p2, v0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeName(C)V

    .line 584
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$34;->AttributeName:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_77

    .line 568
    :cond_67
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 569
    iget-object v0, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->newAttribute()V

    .line 570
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->unconsume()V

    .line 571
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$34;->AttributeName:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    :cond_77
    :goto_77
    return-void

    :pswitch_data_78
    .packed-switch 0x3c
        :pswitch_54
        :pswitch_54
        :pswitch_3c
    .end packed-switch
.end method
