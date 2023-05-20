.class Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;
.super Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;
.source "JSONParserInputStream.java"


# instance fields
.field private in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 41
    sget-object v0, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;->HANDLER:Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;

    invoke-virtual {p0, p1, v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->parse(Ljava/io/InputStream;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;->HANDLER:Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;

    invoke-virtual {p0, p1, p2, v0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->parse(Ljava/io/InputStream;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/io/InputStream;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->in:Ljava/io/InputStream;

    const/4 p1, -0x1

    .line 60
    iput p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->pos:I

    .line 61
    invoke-super {p0, p2, p3}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserStream;->parse(Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected read()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    const/16 v0, 0x1a

    goto :goto_d

    :cond_c
    int-to-char v0, v0

    .line 66
    :goto_d
    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->c:C

    .line 67
    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->pos:I

    return-void
.end method

.method protected readNoEnd()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    int-to-char v0, v0

    .line 86
    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->c:C

    return-void

    .line 85
    :cond_d
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->pos:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    const-string v3, "EOF"

    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0
.end method

.method protected readS()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->sb:Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;

    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->c:C

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserBase$MSB;->append(C)V

    .line 73
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    const/16 v0, 0x1a

    .line 75
    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->c:C

    goto :goto_1e

    :cond_15
    int-to-char v0, v0

    .line 77
    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->c:C

    .line 78
    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserInputStream;->pos:I

    :goto_1e
    return-void
.end method
