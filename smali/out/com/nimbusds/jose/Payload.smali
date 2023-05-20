.class public final Lcom/nimbusds/jose/Payload;
.super Ljava/lang/Object;
.source "Payload.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/Payload$Origin;
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final base64URL:Lcom/nimbusds/jose/util/Base64URL;

.field private final bytes:[B

.field private final jsonObject:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final jwsObject:Lcom/nimbusds/jose/JWSObject;

.field private final origin:Lcom/nimbusds/jose/Payload$Origin;

.field private final signedJWT:Lcom/nimbusds/jwt/SignedJWT;

.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWSObject;)V
    .registers 4

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_27

    .line 280
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSObject;->getState()Lcom/nimbusds/jose/JWSObject$State;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/JWSObject$State;->UNSIGNED:Lcom/nimbusds/jose/JWSObject$State;

    if-eq v0, v1, :cond_1f

    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    .line 285
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    .line 286
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    .line 287
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 288
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    .line 289
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    .line 291
    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->JWS_OBJECT:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    .line 281
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JWS object must be signed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 277
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JWS object must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;)V
    .registers 3

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_17

    const/4 v0, 0x0

    .line 256
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    .line 257
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    .line 258
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    .line 259
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 260
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    .line 261
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    .line 263
    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->BASE64URL:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    .line 253
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The Base64URL-encoded object must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/nimbusds/jwt/SignedJWT;)V
    .registers 4

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_27

    .line 308
    invoke-virtual {p1}, Lcom/nimbusds/jwt/SignedJWT;->getState()Lcom/nimbusds/jose/JWSObject$State;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/JWSObject$State;->UNSIGNED:Lcom/nimbusds/jose/JWSObject$State;

    if-eq v0, v1, :cond_1f

    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    .line 313
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    .line 314
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    .line 315
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 316
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    .line 317
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    .line 319
    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->SIGNED_JWT:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    .line 309
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JWT must be signed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 305
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The signed JWT must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_17

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    .line 211
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    .line 212
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    .line 213
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 214
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    .line 215
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    .line 217
    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->STRING:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    .line 207
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The string must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_20

    .line 186
    invoke-static {}, Lcom/nimbusds/jose/util/JSONObjectUtils;->newJSONObject()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    .line 187
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 p1, 0x0

    .line 188
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    .line 189
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    .line 190
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 191
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    .line 192
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    .line 194
    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->JSON:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    .line 183
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JSON object must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([B)V
    .registers 3

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_17

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    .line 234
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    .line 235
    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    .line 236
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    .line 237
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    .line 238
    iput-object v0, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    .line 240
    sget-object p1, Lcom/nimbusds/jose/Payload$Origin;->BYTE_ARRAY:Lcom/nimbusds/jose/Payload$Origin;

    iput-object p1, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-void

    .line 230
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The byte array must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static byteArrayToString([B)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_a

    .line 157
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0
.end method

.method private static stringToByteArray(Ljava/lang/String;)[B
    .registers 2

    if-eqz p0, :cond_9

    .line 170
    sget-object v0, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method


# virtual methods
.method public getOrigin()Lcom/nimbusds/jose/Payload$Origin;
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->origin:Lcom/nimbusds/jose/Payload$Origin;

    return-object v0
.end method

.method public toBase64URL()Lcom/nimbusds/jose/util/Base64URL;
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v0, :cond_5

    return-object v0

    .line 437
    :cond_5
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    return-object v0
.end method

.method public toBytes()[B
    .registers 2

    .line 410
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    if-eqz v0, :cond_5

    return-object v0

    .line 415
    :cond_5
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v0, :cond_e

    .line 416
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64URL;->decode()[B

    move-result-object v0

    return-object v0

    .line 420
    :cond_e
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/Payload;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public toJSONObject()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    if-eqz v0, :cond_5

    return-object v0

    .line 348
    :cond_5
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    return-object v1

    .line 356
    :cond_d
    :try_start_d
    invoke-static {v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->parse(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_11
    .catch Ljava/text/ParseException; {:try_start_d .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    return-object v1
.end method

.method public toJWSObject()Lcom/nimbusds/jose/JWSObject;
    .registers 2

    .line 450
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    if-eqz v0, :cond_5

    return-object v0

    .line 455
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/JWSObject;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWSObject;

    move-result-object v0
    :try_end_d
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public toSignedJWT()Lcom/nimbusds/jwt/SignedJWT;
    .registers 2

    .line 473
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->signedJWT:Lcom/nimbusds/jwt/SignedJWT;

    if-eqz v0, :cond_5

    return-object v0

    .line 478
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jwt/SignedJWT;->parse(Ljava/lang/String;)Lcom/nimbusds/jwt/SignedJWT;

    move-result-object v0
    :try_end_d
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 372
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->string:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 378
    :cond_5
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    if-eqz v0, :cond_1d

    .line 380
    invoke-virtual {v0}, Lcom/nimbusds/jose/JWSObject;->getParsedString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 381
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    invoke-virtual {v0}, Lcom/nimbusds/jose/JWSObject;->getParsedString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 383
    :cond_16
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->jwsObject:Lcom/nimbusds/jose/JWSObject;

    invoke-virtual {v0}, Lcom/nimbusds/jose/JWSObject;->serialize()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 386
    :cond_1d
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->jsonObject:Ljava/util/Map;

    if-eqz v0, :cond_26

    .line 388
    invoke-static {v0}, Lcom/nimbusds/jose/util/JSONObjectUtils;->toJSONString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 390
    :cond_26
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->bytes:[B

    if-eqz v0, :cond_2f

    .line 392
    invoke-static {v0}, Lcom/nimbusds/jose/Payload;->byteArrayToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 394
    :cond_2f
    iget-object v0, p0, Lcom/nimbusds/jose/Payload;->base64URL:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v0, :cond_38

    .line 396
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64URL;->decodeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    const/4 v0, 0x0

    return-object v0
.end method

.method public toType(Lcom/nimbusds/jose/PayloadTransformer;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/nimbusds/jose/PayloadTransformer<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 498
    invoke-interface {p1, p0}, Lcom/nimbusds/jose/PayloadTransformer;->transform(Lcom/nimbusds/jose/Payload;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
