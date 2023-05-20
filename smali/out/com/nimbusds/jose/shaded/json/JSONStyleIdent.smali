.class public Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;
.super Lcom/nimbusds/jose/shaded/json/JSONStyle;
.source "JSONStyleIdent.java"


# instance fields
.field deep:I

.field identChar:C

.field newline:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/nimbusds/jose/shaded/json/JSONStyle;-><init>()V

    const/16 v0, 0x20

    .line 26
    iput-char v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->identChar:C

    const-string v0, "\n"

    .line 27
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->newline:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 31
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyle;-><init>(I)V

    const/16 p1, 0x20

    .line 26
    iput-char p1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->identChar:C

    const-string p1, "\n"

    .line 27
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->newline:Ljava/lang/String;

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    return-void
.end method

.method private ident(Ljava/lang/Appendable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->newline:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v0, 0x0

    .line 40
    :goto_6
    iget v1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    if-ge v0, v1, :cond_12

    .line 41
    iget-char v1, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->identChar:C

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_12
    return-void
.end method


# virtual methods
.method public arrayNextElm(Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2c

    .line 117
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 118
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->ident(Ljava/lang/Appendable;)V

    return-void
.end method

.method public arrayObjectEnd(Ljava/lang/Appendable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public arrayStart(Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5b

    .line 93
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 94
    iget v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    .line 95
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->ident(Ljava/lang/Appendable;)V

    return-void
.end method

.method public arrayStop(Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    .line 103
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->ident(Ljava/lang/Appendable;)V

    const/16 v0, 0x5d

    .line 104
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public arrayfirstObject(Ljava/lang/Appendable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public objectElmStop(Ljava/lang/Appendable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public objectEndOfKey(Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3a

    .line 86
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public objectFirstStart(Ljava/lang/Appendable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public objectNext(Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2c

    .line 72
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 73
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->ident(Ljava/lang/Appendable;)V

    return-void
.end method

.method public objectStart(Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x7b

    .line 48
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 49
    iget v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    .line 50
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->ident(Ljava/lang/Appendable;)V

    return-void
.end method

.method public objectStop(Ljava/lang/Appendable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->deep:I

    .line 58
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/shaded/json/JSONStyleIdent;->ident(Ljava/lang/Appendable;)V

    const/16 v0, 0x7d

    .line 59
    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method
