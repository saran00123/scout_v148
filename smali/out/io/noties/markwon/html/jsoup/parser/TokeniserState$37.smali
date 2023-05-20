.class final enum Lio/noties/markwon/html/jsoup/parser/TokeniserState$37;
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

    .line 682
    invoke-direct {p0, p1, p2, v0}, Lio/noties/markwon/html/jsoup/parser/TokeniserState;-><init>(Ljava/lang/String;ILio/noties/markwon/html/jsoup/parser/TokeniserState$1;)V

    return-void
.end method


# virtual methods
.method read(Lio/noties/markwon/html/jsoup/parser/Tokeniser;Lio/noties/markwon/html/jsoup/parser/CharacterReader;)V
    .registers 5

    .line 684
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consume()C

    move-result v0

    if-eqz v0, :cond_76

    const/16 v1, 0x20

    if-eq v0, v1, :cond_86

    const/16 v1, 0x22

    if-eq v0, v1, :cond_70

    const/16 v1, 0x60

    if-eq v0, v1, :cond_62

    const v1, 0xffff

    if-eq v0, v1, :cond_56

    const/16 v1, 0x9

    if-eq v0, v1, :cond_86

    const/16 v1, 0xa

    if-eq v0, v1, :cond_86

    const/16 v1, 0xc

    if-eq v0, v1, :cond_86

    const/16 v1, 0xd

    if-eq v0, v1, :cond_86

    const/16 v1, 0x26

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x27

    if-eq v0, v1, :cond_47

    packed-switch v0, :pswitch_data_88

    .line 726
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->unconsume()V

    .line 727
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$37;->AttributeValue_unquoted:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_86

    .line 714
    :pswitch_3b
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 715
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 716
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$37;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_86

    .line 701
    :cond_47
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$37;->AttributeValue_singleQuoted:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_86

    .line 697
    :cond_4d
    invoke-virtual {p2}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->unconsume()V

    .line 698
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$37;->AttributeValue_unquoted:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_86

    .line 709
    :cond_56
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->eofError(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 710
    invoke-virtual {p1}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->emitTagPending()V

    .line 711
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$37;->Data:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_86

    .line 721
    :cond_62
    :pswitch_62
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 722
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    invoke-virtual {p2, v0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    .line 723
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$37;->AttributeValue_unquoted:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_86

    .line 694
    :cond_70
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$37;->AttributeValue_doubleQuoted:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    goto :goto_86

    .line 704
    :cond_76
    invoke-virtual {p1, p0}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->error(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    .line 705
    iget-object p2, p1, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->tagPending:Lio/noties/markwon/html/jsoup/parser/Token$Tag;

    const v0, 0xfffd

    invoke-virtual {p2, v0}, Lio/noties/markwon/html/jsoup/parser/Token$Tag;->appendAttributeValue(C)V

    .line 706
    sget-object p2, Lio/noties/markwon/html/jsoup/parser/TokeniserState$37;->AttributeValue_unquoted:Lio/noties/markwon/html/jsoup/parser/TokeniserState;

    invoke-virtual {p1, p2}, Lio/noties/markwon/html/jsoup/parser/Tokeniser;->transition(Lio/noties/markwon/html/jsoup/parser/TokeniserState;)V

    :cond_86
    :goto_86
    return-void

    nop

    :pswitch_data_88
    .packed-switch 0x3c
        :pswitch_62
        :pswitch_62
        :pswitch_3b
    .end packed-switch
.end method
