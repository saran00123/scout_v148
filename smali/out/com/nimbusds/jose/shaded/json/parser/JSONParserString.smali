.class Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;
.super Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;
.source "JSONParserString.java"


# instance fields
.field private in:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserMemory;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected extractString(II)V
    .registers 4

    .line 60
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->in:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->xs:Ljava/lang/String;

    return-void
.end method

.method protected indexOf(CI)I
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->in:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    return p1
.end method

.method public parse(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;->FACTORY_SIMPLE:Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;

    sget-object v1, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;->HANDLER:Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;

    invoke-virtual {p0, p1, v0, v1}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->parse(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;->HANDLER:Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerDumy;

    invoke-virtual {p0, p1, p2, v0}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->parse(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->in:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->len:I

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->pos:I

    .line 56
    invoke-virtual {p0, p2, p3}, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->parse(Lcom/nimbusds/jose/shaded/json/parser/ContainerFactory;Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected read()V
    .registers 3

    .line 70
    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->pos:I

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->len:I

    if-lt v0, v1, :cond_f

    const/16 v0, 0x1a

    .line 71
    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->c:C

    goto :goto_19

    .line 73
    :cond_f
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->in:Ljava/lang/String;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->c:C

    :goto_19
    return-void
.end method

.method protected readNoEnd()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;
        }
    .end annotation

    .line 89
    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->pos:I

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->len:I

    if-ge v0, v1, :cond_15

    .line 93
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->in:Ljava/lang/String;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->c:C

    return-void

    :cond_15
    const/16 v0, 0x1a

    .line 90
    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->c:C

    .line 91
    new-instance v0, Lcom/nimbusds/jose/shaded/json/parser/ParseException;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->pos:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x3

    const-string v3, "EOF"

    invoke-direct {v0, v1, v2, v3}, Lcom/nimbusds/jose/shaded/json/parser/ParseException;-><init>(IILjava/lang/Object;)V

    throw v0
.end method

.method protected readS()V
    .registers 3

    .line 80
    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->pos:I

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->len:I

    if-lt v0, v1, :cond_f

    const/16 v0, 0x1a

    .line 81
    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->c:C

    goto :goto_19

    .line 83
    :cond_f
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->in:Ljava/lang/String;

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/parser/JSONParserString;->c:C

    :goto_19
    return-void
.end method
