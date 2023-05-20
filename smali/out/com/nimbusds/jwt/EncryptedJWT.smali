.class public Lcom/nimbusds/jwt/EncryptedJWT;
.super Lcom/nimbusds/jose/JWEObject;
.source "EncryptedJWT.java"

# interfaces
.implements Lcom/nimbusds/jwt/JWT;


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private claimsSet:Lcom/nimbusds/jwt/JWTClaimsSet;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jwt/JWTClaimsSet;)V
    .registers 5

    .line 61
    new-instance v0, Lcom/nimbusds/jose/Payload;

    invoke-virtual {p2}, Lcom/nimbusds/jwt/JWTClaimsSet;->toJSONObject()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/Payload;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/JWEObject;-><init>(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/Payload;)V

    .line 62
    iput-object p2, p0, Lcom/nimbusds/jwt/EncryptedJWT;->claimsSet:Lcom/nimbusds/jwt/JWTClaimsSet;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 91
    invoke-direct/range {p0 .. p5}, Lcom/nimbusds/jose/JWEObject;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jwt/EncryptedJWT;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 142
    invoke-static {p0}, Lcom/nimbusds/jose/JOSEObject;->split(Ljava/lang/String;)[Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p0

    .line 144
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1e

    .line 148
    new-instance v0, Lcom/nimbusds/jwt/EncryptedJWT;

    aget-object v4, p0, v1

    const/4 v1, 0x1

    aget-object v5, p0, v1

    const/4 v1, 0x2

    aget-object v6, p0, v1

    const/4 v1, 0x3

    aget-object v7, p0, v1

    const/4 v1, 0x4

    aget-object v8, p0, v1

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/nimbusds/jwt/EncryptedJWT;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V

    return-object v0

    .line 145
    :cond_1e
    new-instance p0, Ljava/text/ParseException;

    const-string v0, "Unexpected number of Base64URL parts, must be five"

    invoke-direct {p0, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method


# virtual methods
.method public getJWTClaimsSet()Lcom/nimbusds/jwt/JWTClaimsSet;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/nimbusds/jwt/EncryptedJWT;->claimsSet:Lcom/nimbusds/jwt/JWTClaimsSet;

    if-eqz v0, :cond_5

    return-object v0

    .line 103
    :cond_5
    invoke-virtual {p0}, Lcom/nimbusds/jwt/EncryptedJWT;->getPayload()Lcom/nimbusds/jose/Payload;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_d
    invoke-virtual {v0}, Lcom/nimbusds/jose/Payload;->toJSONObject()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 115
    invoke-static {v0}, Lcom/nimbusds/jwt/JWTClaimsSet;->parse(Ljava/util/Map;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jwt/EncryptedJWT;->claimsSet:Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 116
    iget-object v0, p0, Lcom/nimbusds/jwt/EncryptedJWT;->claimsSet:Lcom/nimbusds/jwt/JWTClaimsSet;

    return-object v0

    .line 112
    :cond_1c
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    const-string v2, "Payload of JWE object is not a valid JSON object"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method protected setPayload(Lcom/nimbusds/jose/Payload;)V
    .registers 3

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/nimbusds/jwt/EncryptedJWT;->claimsSet:Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 125
    invoke-super {p0, p1}, Lcom/nimbusds/jose/JWEObject;->setPayload(Lcom/nimbusds/jose/Payload;)V

    return-void
.end method
