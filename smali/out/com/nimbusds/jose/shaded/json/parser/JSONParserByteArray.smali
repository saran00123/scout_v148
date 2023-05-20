.class Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;
.super Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;
.source "JSONParserByteArray.java"


# instance fields
.field private in:[B


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected extractString(II)V
    .registers 5

    .line 75
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->in:[B

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([BII)V

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->xs:Ljava/lang/String;

    return-void
.end method

.method protected indexOf(CI)I
    .registers 6

    move v0, p2

    .line 79
    :goto_1
    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->len:I

    if-ge p2, v1, :cond_10

    .line 80
    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->in:[B

    aget-byte v1, v1, v0

    int-to-byte v2, p1

    if-ne v1, v2, :cond_d

    return v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_10
    const/4 p1, -0x1

    return p1
.end method

.method public parse([B)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;->HANDLER:Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;

    invoke-virtual {p0, p1, v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->parse([BLcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse([BIILcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->in:[B

    .line 69
    iput p3, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->len:I

    add-int/lit8 p2, p2, -0x1

    .line 70
    iput p2, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->pos:I

    .line 71
    invoke-virtual {p0, p4, p5}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->parse(Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse([BLcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;->HANDLER:Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;

    invoke-virtual {p0, p1, p2, v0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->parse([BLcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse([BLcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->in:[B

    .line 54
    array-length p1, p1

    iput p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->len:I

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->pos:I

    .line 56
    invoke-virtual {p0, p2, p3}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->parse(Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected read()V
    .registers 3

    .line 86
    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->pos:I

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->len:I

    if-lt v0, v1, :cond_f

    const/16 v0, 0x1a

    .line 87
    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->c:C

    goto :goto_18

    .line 89
    :cond_f
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->in:[B

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->pos:I

    aget-byte v0, v0, v1

    int-to-char v0, v0

    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->c:C

    :goto_18
    return-void
.end method

.method protected readNoEnd()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 103
    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->pos:I

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->len:I

    if-ge v0, v1, :cond_14

    .line 107
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->in:[B

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->pos:I

    aget-byte v0, v0, v1

    int-to-char v0, v0

    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->c:C

    return-void

    :cond_14
    const/16 v0, 0x1a

    .line 104
    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->c:C

    .line 105
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->pos:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    const-string v3, "EOF"

    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0
.end method

.method protected readS()V
    .registers 3

    .line 96
    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->pos:I

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->len:I

    if-lt v0, v1, :cond_f

    const/16 v0, 0x1a

    .line 97
    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->c:C

    goto :goto_18

    .line 99
    :cond_f
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->in:[B

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->pos:I

    aget-byte v0, v0, v1

    int-to-char v0, v0

    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserByteArray;->c:C

    :goto_18
    return-void
.end method
