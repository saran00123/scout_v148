.class public Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;
.super Ljava/lang/Object;
.source "ContentHandlerCompressor.java"

# interfaces
.implements Lcom/nimbusds/jose/shaded/json/parser/ContentHandler;


# instance fields
.field compression:Lcom/nimbusds/jose/shaded/json/JSONStyle;

.field out:Ljava/lang/Appendable;

.field pos:I

.field stack:[I


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 27
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    .line 52
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    .line 53
    iput-object p2, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->compression:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    return-void
.end method

.method private isInArray()Z
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private isInObject()Z
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    aget v0, v0, v1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private push(I)V
    .registers 6

    .line 33
    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    .line 34
    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    array-length v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_19

    .line 35
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 36
    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    .line 39
    :cond_19
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 40
    aput v3, v0, v1

    return-void
.end method


# virtual methods
.method public endArray()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v1, 0x5d

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 116
    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    const/4 v0, 0x0

    return v0
.end method

.method public endJSON()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public endObject()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v1, 0x7d

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 77
    iget v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    const/4 v0, 0x0

    return v0
.end method

.method public endObjectEntry()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public primitive(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->isInObject()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    add-int/lit8 v1, v1, 0x1

    aget v2, v0, v1

    add-int/lit8 v3, v2, 0x1

    aput v3, v0, v1

    if-lez v2, :cond_1b

    .line 123
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 125
    :cond_1b
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 126
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->compression:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyle;->writeString(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_30

    .line 128
    :cond_29
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->compression:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p1, v0, v1}, Lcom/nimbusds/jose/shaded/json/JSONValue;->writeJSONString(Ljava/lang/Object;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    :goto_30
    const/4 p1, 0x0

    return p1
.end method

.method public startArray()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->isInArray()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    iget v2, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    add-int/2addr v2, v1

    aget v3, v0, v2

    add-int/lit8 v4, v3, 0x1

    aput v4, v0, v2

    if-lez v3, :cond_1b

    .line 107
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v2, 0x2c

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 108
    :cond_1b
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v2, 0x5b

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 109
    invoke-direct {p0, v1}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->push(I)V

    const/4 v0, 0x0

    return v0
.end method

.method public startJSON()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public startObject()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->isInArray()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    add-int/lit8 v1, v1, 0x1

    aget v2, v0, v1

    add-int/lit8 v3, v2, 0x1

    aput v3, v0, v1

    if-lez v2, :cond_1b

    .line 67
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 68
    :cond_1b
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v1, 0x7b

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, v0}, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->push(I)V

    return v0
.end method

.method public startObjectEntry(Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/shaded/json/parser/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->stack:[I

    iget v1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->pos:I

    add-int/lit8 v1, v1, 0x1

    aget v2, v0, v1

    add-int/lit8 v3, v2, 0x1

    aput v3, v0, v1

    if-lez v2, :cond_15

    .line 85
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_15
    if-nez p1, :cond_1f

    .line 87
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const-string v0, "null"

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_40

    .line 88
    :cond_1f
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->compression:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyle;->mustProtectKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 89
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_40

    .line 91
    :cond_2d
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 92
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    iget-object v2, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->compression:Lcom/nimbusds/jose/shaded/json/JSONStyle;

    invoke-static {p1, v0, v2}, Lcom/nimbusds/jose/shaded/json/JSONValue;->escape(Ljava/lang/String;Ljava/lang/Appendable;Lcom/nimbusds/jose/shaded/json/JSONStyle;)V

    .line 93
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 95
    :goto_40
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/json/parser/ContentHandlerCompressor;->out:Ljava/lang/Appendable;

    const/16 v0, 0x3a

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 p1, 0x0

    return p1
.end method
