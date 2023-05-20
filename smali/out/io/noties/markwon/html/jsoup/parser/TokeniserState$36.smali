.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$36;
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

    .line 637
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 639
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consume()C

    move-result v0

    if-eqz v0, :cond_6d

    const/16 v1, 0x20

    if-eq v0, v1, :cond_7d

    const/16 v1, 0x22

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x27

    if-eq v0, v1, :cond_5a

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_54

    const v1, 0xffff

    if-eq v0, v1, :cond_4b

    const/16 v1, 0x9

    if-eq v0, v1, :cond_7d

    const/16 v1, 0xa

    if-eq v0, v1, :cond_7d

    const/16 v1, 0xc

    if-eq v0, v1, :cond_7d

    const/16 v1, 0xd

    if-eq v0, v1, :cond_7d

    packed-switch v0, :pswitch_data_7e

    .line 676
    iget-object v0, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {v0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->newAttribute()V

    .line 677
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->unconsume()V

    .line 678
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$36;->AttributeName:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_7d

    .line 655
    :pswitch_3c
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 656
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$36;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_7d

    .line 652
    :pswitch_45
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$36;->BeforeAttributeValue:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_7d

    .line 664
    :cond_4b
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->eofError(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 665
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$36;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_7d

    .line 649
    :cond_54
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$36;->SelfClosingStartTag:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_7d

    .line 670
    :cond_5a
    :pswitch_5a
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 671
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->newAttribute()V

    .line 672
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {p2, v0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeName(C)V

    .line 673
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$36;->AttributeName:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_7d

    .line 659
    :cond_6d
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 660
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeName(C)V

    .line 661
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$36;->AttributeName:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    :cond_7d
    :goto_7d
    return-void

    :pswitch_data_7e
    .packed-switch 0x3c
        :pswitch_5a
        :pswitch_45
        :pswitch_3c
    .end packed-switch
.end method
