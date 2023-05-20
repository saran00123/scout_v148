.class abstract Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;
.super Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;
.source "JSONParserStream.java"


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected readNQString([Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {v0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->clear()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->skipNQString([Z)V

    .line 40
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->xs:Ljava/lang/String;

    return-void
.end method

.method protected readNumber([Z)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {v0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->clear()V

    .line 45
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    .line 46
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->read()V

    .line 47
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->skipDigits()V

    .line 50
    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    const/16 v1, 0x65

    const/16 v2, 0x2e

    const/16 v3, 0x1a

    const/16 v4, 0x7e

    const/16 v5, 0x45

    const/4 v6, 0x1

    if-eq v0, v2, :cond_71

    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    if-eq v0, v5, :cond_71

    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    if-eq v0, v1, :cond_71

    .line 51
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->skipSpace()V

    .line 52
    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    if-ltz v0, :cond_5e

    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    if-ge v0, v4, :cond_5e

    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    aget-boolean v0, p1, v0

    if-nez v0, :cond_5e

    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    if-eq v0, v3, :cond_5e

    .line 54
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->skipNQString([Z)V

    .line 55
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->xs:Ljava/lang/String;

    .line 56
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->acceptNonQuote:Z

    if-eqz p1, :cond_54

    .line 58
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->xs:Ljava/lang/String;

    return-object p1

    .line 57
    :cond_54
    new-instance p1, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->pos:I

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v6, v1}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 60
    :cond_5e
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->xs:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->xs:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->parseNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 64
    :cond_71
    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    if-ne v0, v2, :cond_82

    .line 65
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    iget-char v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    .line 66
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->read()V

    .line 67
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->skipDigits()V

    .line 69
    :cond_82
    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    if-eq v0, v5, :cond_d0

    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    if-eq v0, v1, :cond_d0

    .line 70
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->skipSpace()V

    .line 71
    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    if-ltz v0, :cond_bf

    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    if-ge v0, v4, :cond_bf

    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    aget-boolean v0, p1, v0

    if-nez v0, :cond_bf

    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    if-eq v0, v3, :cond_bf

    .line 73
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->skipNQString([Z)V

    .line 74
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->xs:Ljava/lang/String;

    .line 75
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->acceptNonQuote:Z

    if-eqz p1, :cond_b5

    .line 77
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->xs:Ljava/lang/String;

    return-object p1

    .line 76
    :cond_b5
    new-instance p1, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->pos:I

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v6, v1}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 79
    :cond_bf
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->xs:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->extractFloat()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 82
    :cond_d0
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {v0, v5}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    .line 83
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->read()V

    .line 84
    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_118

    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_118

    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    const/16 v1, 0x30

    if-lt v0, v1, :cond_f1

    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    const/16 v1, 0x39

    if-gt v0, v1, :cond_f1

    goto :goto_118

    .line 100
    :cond_f1
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->skipNQString([Z)V

    .line 101
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->xs:Ljava/lang/String;

    .line 102
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->acceptNonQuote:Z

    if-eqz p1, :cond_10e

    .line 104
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->acceptLeadinZero:Z

    if-nez p1, :cond_10b

    .line 105
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->checkLeadinZero()V

    .line 106
    :cond_10b
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->xs:Ljava/lang/String;

    return-object p1

    .line 103
    :cond_10e
    new-instance p1, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->pos:I

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v6, v1}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 85
    :cond_118
    :goto_118
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    .line 86
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->read()V

    .line 87
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->skipDigits()V

    .line 88
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->skipSpace()V

    .line 89
    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    if-ltz v0, :cond_15a

    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    if-ge v0, v4, :cond_15a

    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    aget-boolean v0, p1, v0

    if-nez v0, :cond_15a

    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    if-eq v0, v3, :cond_15a

    .line 91
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->skipNQString([Z)V

    .line 92
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->xs:Ljava/lang/String;

    .line 93
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->acceptNonQuote:Z

    if-eqz p1, :cond_150

    .line 95
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->xs:Ljava/lang/String;

    return-object p1

    .line 94
    :cond_150
    new-instance p1, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->pos:I

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v6, v1}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 97
    :cond_15a
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->xs:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->extractFloat()Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method protected readString()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->acceptSimpleQuote:Z

    if-nez v0, :cond_23

    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_23

    .line 113
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->acceptNonQuote:Z

    if-eqz v0, :cond_14

    .line 114
    sget-object v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->stopAll:[Z

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->readNQString([Z)V

    return-void

    .line 117
    :cond_14
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->pos:I

    const/4 v2, 0x0

    iget-char v3, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->c:C

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 119
    :cond_23
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {v0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->clear()V

    .line 131
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->readString2()V

    return-void
.end method
