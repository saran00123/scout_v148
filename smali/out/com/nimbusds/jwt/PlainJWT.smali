.class public Lcom/nimbusds/jwt/PlainJWT;
.super Lcom/nimbusds/jose/PlainObject;
.source "PlainJWT.java"

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
.method public constructor <init>(Lcom/nimbusds/jose/PlainHeader;Lcom/nimbusds/jwt/JWTClaimsSet;)V
    .registers 5

    .line 74
    new-instance v0, Lcom/nimbusds/jose/Payload;

    invoke-virtual {p2}, Lcom/nimbusds/jwt/JWTClaimsSet;->toJSONObject()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/Payload;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/PlainObject;-><init>(Lcom/nimbusds/jose/PlainHeader;Lcom/nimbusds/jose/Payload;)V

    .line 75
    iput-object p2, p0, Lcom/nimbusds/jwt/PlainJWT;->claimsSet:Lcom/nimbusds/jwt/JWTClaimsSet;

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jose/PlainObject;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V

    return-void
.end method

.method public constructor <init>(Lcom/nimbusds/jwt/JWTClaimsSet;)V
    .registers 4

    .line 60
    new-instance v0, Lcom/nimbusds/jose/Payload;

    invoke-virtual {p1}, Lcom/nimbusds/jwt/JWTClaimsSet;->toJSONObject()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nimbusds/jose/Payload;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/PlainObject;-><init>(Lcom/nimbusds/jose/Payload;)V

    .line 61
    iput-object p1, p0, Lcom/nimbusds/jwt/PlainJWT;->claimsSet:Lcom/nimbusds/jwt/JWTClaimsSet;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jwt/PlainJWT;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 141
    invoke-static {p0}, Lcom/nimbusds/jose/JOSEObject;->split(Ljava/lang/String;)[Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p0

    const/4 v0, 0x2

    .line 143
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 148
    new-instance v0, Lcom/nimbusds/jwt/PlainJWT;

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jwt/PlainJWT;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V

    return-object v0

    .line 145
    :cond_1d
    new-instance p0, Ljava/text/ParseException;

    const-string v0, "Unexpected third Base64URL part in the unsecured JWT object"

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

    .line 101
    iget-object v0, p0, Lcom/nimbusds/jwt/PlainJWT;->claimsSet:Lcom/nimbusds/jwt/JWTClaimsSet;

    if-eqz v0, :cond_5

    return-object v0

    .line 106
    :cond_5
    invoke-virtual {p0}, Lcom/nimbusds/jwt/PlainJWT;->getPayload()Lcom/nimbusds/jose/Payload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/Payload;->toJSONObject()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 113
    invoke-static {v0}, Lcom/nimbusds/jwt/JWTClaimsSet;->parse(Ljava/util/Map;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jwt/PlainJWT;->claimsSet:Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 114
    iget-object v0, p0, Lcom/nimbusds/jwt/PlainJWT;->claimsSet:Lcom/nimbusds/jwt/JWTClaimsSet;

    return-object v0

    .line 110
    :cond_18
    new-instance v0, Ljava/text/ParseException;

    const/4 v1, 0x0

    const-string v2, "Payload of unsecured JOSE object is not a valid JSON object"

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method protected setPayload(Lcom/nimbusds/jose/Payload;)V
    .registers 3

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/nimbusds/jwt/PlainJWT;->claimsSet:Lcom/nimbusds/jwt/JWTClaimsSet;

    .line 124
    invoke-super {p0, p1}, Lcom/nimbusds/jose/PlainObject;->setPayload(Lcom/nimbusds/jose/Payload;)V

    return-void
.end method
