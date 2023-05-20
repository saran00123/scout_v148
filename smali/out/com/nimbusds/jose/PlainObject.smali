.class public Lcom/nimbusds/jose/PlainObject;
.super Lcom/nimbusds/jose/JOSEObject;
.source "PlainObject.java"


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final header:Lcom/nimbusds/jose/PlainHeader;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/Payload;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Lcom/nimbusds/jose/JOSEObject;-><init>()V

    if-eqz p1, :cond_10

    .line 59
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/PlainObject;->setPayload(Lcom/nimbusds/jose/Payload;)V

    .line 61
    new-instance p1, Lcom/nimbusds/jose/PlainHeader;

    invoke-direct {p1}, Lcom/nimbusds/jose/PlainHeader;-><init>()V

    iput-object p1, p0, Lcom/nimbusds/jose/PlainObject;->header:Lcom/nimbusds/jose/PlainHeader;

    return-void

    .line 56
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The payload must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/nimbusds/jose/PlainHeader;Lcom/nimbusds/jose/Payload;)V
    .registers 3

    .line 72
    invoke-direct {p0}, Lcom/nimbusds/jose/JOSEObject;-><init>()V

    if-eqz p1, :cond_15

    .line 79
    iput-object p1, p0, Lcom/nimbusds/jose/PlainObject;->header:Lcom/nimbusds/jose/PlainHeader;

    if-eqz p2, :cond_d

    .line 86
    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/PlainObject;->setPayload(Lcom/nimbusds/jose/Payload;)V

    return-void

    .line 83
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The payload must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The unsecured header must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/nimbusds/jose/JOSEObject;-><init>()V

    if-eqz p1, :cond_4a

    const/4 v0, 0x0

    .line 110
    :try_start_6
    invoke-static {p1}, Lcom/nimbusds/jose/PlainHeader;->parse(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/PlainHeader;

    move-result-object v1

    iput-object v1, p0, Lcom/nimbusds/jose/PlainObject;->header:Lcom/nimbusds/jose/PlainHeader;
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_c} :catch_2e

    if-eqz p2, :cond_26

    .line 122
    new-instance v1, Lcom/nimbusds/jose/Payload;

    invoke-direct {v1, p2}, Lcom/nimbusds/jose/Payload;-><init>(Lcom/nimbusds/jose/util/Base64URL;)V

    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/PlainObject;->setPayload(Lcom/nimbusds/jose/Payload;)V

    const/4 v1, 0x3

    .line 124
    new-array v1, v1, [Lcom/nimbusds/jose/util/Base64URL;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    const/4 p2, 0x0

    aput-object p2, v1, p1

    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/PlainObject;->setParsedParts([Lcom/nimbusds/jose/util/Base64URL;)V

    return-void

    .line 119
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The second part must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2e
    move-exception p1

    .line 114
    new-instance p2, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid unsecured header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 106
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The first part must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/PlainObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 167
    invoke-static {p0}, Lcom/nimbusds/jose/JOSEObject;->split(Ljava/lang/String;)[Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p0

    const/4 v0, 0x2

    .line 169
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 174
    new-instance v0, Lcom/nimbusds/jose/PlainObject;

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/PlainObject;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V

    return-object v0

    .line 171
    :cond_1d
    new-instance p0, Ljava/text/ParseException;

    const-string v0, "Unexpected third Base64URL part"

    invoke-direct {p0, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic getHeader()Lcom/nimbusds/jose/Header;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/nimbusds/jose/PlainObject;->getHeader()Lcom/nimbusds/jose/PlainHeader;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lcom/nimbusds/jose/PlainHeader;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/nimbusds/jose/PlainObject;->header:Lcom/nimbusds/jose/PlainHeader;

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .registers 4

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nimbusds/jose/PlainObject;->header:Lcom/nimbusds/jose/PlainHeader;

    invoke-virtual {v1}, Lcom/nimbusds/jose/PlainHeader;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nimbusds/jose/PlainObject;->getPayload()Lcom/nimbusds/jose/Payload;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nimbusds/jose/Payload;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
