.class abstract Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;
.super Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;
.source "JSONParserMemory.java"


# instance fields
.field protected len:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected abstract extractString(II)V
.end method

.method protected extractStringTrim(II)V
    .registers 3

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->extractString(II)V

    .line 141
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->xs:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->xs:Ljava/lang/String;

    return-void
.end method

.method protected abstract indexOf(CI)I
.end method

.method protected readNQString([Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->pos:I

    .line 40
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->skipNQString([Z)V

    .line 41
    iget p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->pos:I

    invoke-virtual {p0, v0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->extractStringTrim(II)V

    return-void
.end method

.method protected readNumber([Z)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->pos:I

    .line 47
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->read()V

    .line 48
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->skipDigits()V

    .line 51
    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    const/16 v2, 0x65

    const/16 v3, 0x2e

    const/16 v4, 0x1a

    const/16 v5, 0x7e

    const/16 v6, 0x45

    const/4 v7, 0x1

    if-eq v1, v3, :cond_59

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    if-eq v1, v6, :cond_59

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    if-eq v1, v2, :cond_59

    .line 52
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->skipSpace()V

    .line 53
    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    if-ltz v1, :cond_4d

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    if-ge v1, v5, :cond_4d

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    aget-boolean v1, p1, v1

    if-nez v1, :cond_4d

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    if-eq v1, v4, :cond_4d

    .line 55
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->skipNQString([Z)V

    .line 56
    iget p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->pos:I

    invoke-virtual {p0, v0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->extractStringTrim(II)V

    .line 57
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->acceptNonQuote:Z

    if-eqz p1, :cond_43

    .line 59
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->xs:Ljava/lang/String;

    return-object p1

    .line 58
    :cond_43
    new-instance p1, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->pos:I

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v7, v1}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 61
    :cond_4d
    iget p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->pos:I

    invoke-virtual {p0, v0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->extractStringTrim(II)V

    .line 62
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->xs:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->parseNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 65
    :cond_59
    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    if-ne v1, v3, :cond_63

    .line 67
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->read()V

    .line 68
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->skipDigits()V

    .line 70
    :cond_63
    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    if-eq v1, v6, :cond_a3

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    if-eq v1, v2, :cond_a3

    .line 71
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->skipSpace()V

    .line 72
    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    if-ltz v1, :cond_99

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    if-ge v1, v5, :cond_99

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    aget-boolean v1, p1, v1

    if-nez v1, :cond_99

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    if-eq v1, v4, :cond_99

    .line 74
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->skipNQString([Z)V

    .line 75
    iget p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->pos:I

    invoke-virtual {p0, v0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->extractStringTrim(II)V

    .line 76
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->acceptNonQuote:Z

    if-eqz p1, :cond_8f

    .line 78
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->xs:Ljava/lang/String;

    return-object p1

    .line 77
    :cond_8f
    new-instance p1, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->pos:I

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v7, v1}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 80
    :cond_99
    iget p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->pos:I

    invoke-virtual {p0, v0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->extractStringTrim(II)V

    .line 81
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->extractFloat()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 83
    :cond_a3
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {v1, v6}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    .line 84
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->read()V

    .line 85
    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_e4

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_e4

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    const/16 v2, 0x30

    if-lt v1, v2, :cond_c4

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    const/16 v2, 0x39

    if-gt v1, v2, :cond_c4

    goto :goto_e4

    .line 101
    :cond_c4
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->skipNQString([Z)V

    .line 102
    iget p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->pos:I

    invoke-virtual {p0, v0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->extractStringTrim(II)V

    .line 103
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->acceptNonQuote:Z

    if-eqz p1, :cond_da

    .line 105
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->acceptLeadinZero:Z

    if-nez p1, :cond_d7

    .line 106
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->checkLeadinZero()V

    .line 107
    :cond_d7
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->xs:Ljava/lang/String;

    return-object p1

    .line 104
    :cond_da
    new-instance p1, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->pos:I

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v7, v1}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 86
    :cond_e4
    :goto_e4
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    iget-char v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    invoke-virtual {v1, v2}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    .line 87
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->read()V

    .line 88
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->skipDigits()V

    .line 89
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->skipSpace()V

    .line 90
    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    if-ltz v1, :cond_11f

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    if-ge v1, v5, :cond_11f

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    aget-boolean v1, p1, v1

    if-nez v1, :cond_11f

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    if-eq v1, v4, :cond_11f

    .line 92
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->skipNQString([Z)V

    .line 93
    iget p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->pos:I

    invoke-virtual {p0, v0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->extractStringTrim(II)V

    .line 94
    iget-boolean p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->acceptNonQuote:Z

    if-eqz p1, :cond_115

    .line 96
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->xs:Ljava/lang/String;

    return-object p1

    .line 95
    :cond_115
    new-instance p1, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->pos:I

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->xs:Ljava/lang/String;

    invoke-direct {p1, v0, v7, v1}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw p1

    .line 98
    :cond_11f
    iget p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->pos:I

    invoke-virtual {p0, v0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->extractStringTrim(II)V

    .line 99
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->extractFloat()Ljava/lang/Number;

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

    .line 113
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->acceptSimpleQuote:Z

    if-nez v0, :cond_23

    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_23

    .line 114
    iget-boolean v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->acceptNonQuote:Z

    if-eqz v0, :cond_14

    .line 115
    sget-object v0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->stopAll:[Z

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->readNQString([Z)V

    return-void

    .line 118
    :cond_14
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->pos:I

    const/4 v2, 0x0

    iget-char v3, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0

    .line 120
    :cond_23
    iget-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->c:C

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->pos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->indexOf(CI)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_53

    .line 123
    iget v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->pos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->extractString(II)V

    .line 124
    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->xs:Ljava/lang/String;

    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v1, :cond_4a

    .line 125
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->checkControleChar()V

    .line 126
    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->pos:I

    .line 127
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->read()V

    return-void

    .line 131
    :cond_4a
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    invoke-virtual {v0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->clear()V

    .line 132
    invoke-virtual {p0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->readString2()V

    return-void

    .line 122
    :cond_53
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;->len:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0
.end method
