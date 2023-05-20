.class public Lcom/nimbusds/jose/JWSObject;
.super Lcom/nimbusds/jose/JOSEObject;
.source "JWSObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/JWSObject$State;
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final header:Lcom/nimbusds/jose/JWSHeader;

.field private signature:Lcom/nimbusds/jose/util/Base64URL;

.field private final signingInputString:Ljava/lang/String;

.field private state:Lcom/nimbusds/jose/JWSObject$State;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/Payload;)V
    .registers 3

    .line 99
    invoke-direct {p0}, Lcom/nimbusds/jose/JOSEObject;-><init>()V

    if-eqz p1, :cond_22

    .line 104
    iput-object p1, p0, Lcom/nimbusds/jose/JWSObject;->header:Lcom/nimbusds/jose/JWSHeader;

    if-eqz p2, :cond_1a

    .line 109
    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/JWSObject;->setPayload(Lcom/nimbusds/jose/Payload;)V

    .line 111
    invoke-direct {p0}, Lcom/nimbusds/jose/JWSObject;->composeSigningInput()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/JWSObject;->signingInputString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcom/nimbusds/jose/JWSObject;->signature:Lcom/nimbusds/jose/util/Base64URL;

    .line 113
    sget-object p1, Lcom/nimbusds/jose/JWSObject$State;->UNSIGNED:Lcom/nimbusds/jose/JWSObject$State;

    iput-object p1, p0, Lcom/nimbusds/jose/JWSObject;->state:Lcom/nimbusds/jose/JWSObject$State;

    return-void

    .line 107
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The payload must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The JWS header must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/Payload;Lcom/nimbusds/jose/util/Base64URL;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Lcom/nimbusds/jose/JOSEObject;-><init>()V

    if-eqz p1, :cond_7b

    const/4 v0, 0x0

    .line 157
    :try_start_6
    invoke-static {p1}, Lcom/nimbusds/jose/JWSHeader;->parse(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWSHeader;

    move-result-object v1

    iput-object v1, p0, Lcom/nimbusds/jose/JWSObject;->header:Lcom/nimbusds/jose/JWSHeader;
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_c} :catch_5f

    if-eqz p2, :cond_57

    .line 165
    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/JWSObject;->setPayload(Lcom/nimbusds/jose/Payload;)V

    .line 167
    invoke-direct {p0}, Lcom/nimbusds/jose/JWSObject;->composeSigningInput()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nimbusds/jose/JWSObject;->signingInputString:Ljava/lang/String;

    if-eqz p3, :cond_4f

    .line 172
    iput-object p3, p0, Lcom/nimbusds/jose/JWSObject;->signature:Lcom/nimbusds/jose/util/Base64URL;

    .line 173
    sget-object v1, Lcom/nimbusds/jose/JWSObject$State;->SIGNED:Lcom/nimbusds/jose/JWSObject$State;

    iput-object v1, p0, Lcom/nimbusds/jose/JWSObject;->state:Lcom/nimbusds/jose/JWSObject$State;

    .line 175
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/JWSHeader;->isBase64URLEncodePayload()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz v1, :cond_3c

    .line 176
    new-array v1, v4, [Lcom/nimbusds/jose/util/Base64URL;

    aput-object p1, v1, v0

    invoke-virtual {p2}, Lcom/nimbusds/jose/Payload;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    aput-object p1, v1, v3

    aput-object p3, v1, v2

    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/JWSObject;->setParsedParts([Lcom/nimbusds/jose/util/Base64URL;)V

    goto :goto_4e

    .line 178
    :cond_3c
    new-array p2, v4, [Lcom/nimbusds/jose/util/Base64URL;

    aput-object p1, p2, v0

    new-instance p1, Lcom/nimbusds/jose/util/Base64URL;

    const-string v0, ""

    invoke-direct {p1, v0}, Lcom/nimbusds/jose/util/Base64URL;-><init>(Ljava/lang/String;)V

    aput-object p1, p2, v3

    aput-object p3, p2, v2

    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/JWSObject;->setParsedParts([Lcom/nimbusds/jose/util/Base64URL;)V

    :goto_4e
    return-void

    .line 170
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The third part must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The payload (second part) must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_5f
    move-exception p1

    .line 159
    new-instance p2, Ljava/text/ParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid JWS header: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 154
    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The first part must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/nimbusds/jose/Payload;

    invoke-direct {v0, p2}, Lcom/nimbusds/jose/Payload;-><init>(Lcom/nimbusds/jose/util/Base64URL;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/nimbusds/jose/JWSObject;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/Payload;Lcom/nimbusds/jose/util/Base64URL;)V

    return-void
.end method

.method private composeSigningInput()Ljava/lang/String;
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/nimbusds/jose/JWSObject;->header:Lcom/nimbusds/jose/JWSHeader;

    invoke-virtual {v0}, Lcom/nimbusds/jose/JWSHeader;->isBase64URLEncodePayload()Z

    move-result v0

    const/16 v1, 0x2e

    if-eqz v0, :cond_35

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nimbusds/jose/JWSHeader;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getPayload()Lcom/nimbusds/jose/Payload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/Payload;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nimbusds/jose/JWSHeader;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getPayload()Lcom/nimbusds/jose/Payload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/Payload;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ensureJWSSignerSupport(Lcom/nimbusds/jose/JWSSigner;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 277
    invoke-interface {p1}, Lcom/nimbusds/jose/JWSSigner;->supportedJWSAlgorithms()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 279
    :cond_13
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\" algorithm is not allowed or supported by the JWS signer: Supported algorithms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-interface {p1}, Lcom/nimbusds/jose/JWSSigner;->supportedJWSAlgorithms()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureSignedOrVerifiedState()V
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/nimbusds/jose/JWSObject;->state:Lcom/nimbusds/jose/JWSObject$State;

    sget-object v1, Lcom/nimbusds/jose/JWSObject$State;->SIGNED:Lcom/nimbusds/jose/JWSObject$State;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/nimbusds/jose/JWSObject;->state:Lcom/nimbusds/jose/JWSObject$State;

    sget-object v1, Lcom/nimbusds/jose/JWSObject$State;->VERIFIED:Lcom/nimbusds/jose/JWSObject$State;

    if-ne v0, v1, :cond_d

    goto :goto_15

    .line 263
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The JWS object must be in a signed or verified state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_15
    return-void
.end method

.method private ensureUnsignedState()V
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/nimbusds/jose/JWSObject;->state:Lcom/nimbusds/jose/JWSObject$State;

    sget-object v1, Lcom/nimbusds/jose/JWSObject$State;->UNSIGNED:Lcom/nimbusds/jose/JWSObject$State;

    if-ne v0, v1, :cond_7

    return-void

    .line 247
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The JWS object must be in an unsigned state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWSObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 427
    invoke-static {p0}, Lcom/nimbusds/jose/JOSEObject;->split(Ljava/lang/String;)[Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p0

    .line 429
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_17

    .line 434
    new-instance v0, Lcom/nimbusds/jose/JWSObject;

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x2

    aget-object p0, p0, v3

    invoke-direct {v0, v1, v2, p0}, Lcom/nimbusds/jose/JWSObject;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V

    return-object v0

    .line 431
    :cond_17
    new-instance p0, Ljava/text/ParseException;

    const-string v0, "Unexpected number of Base64URL parts, must be three"

    invoke-direct {p0, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static parse(Ljava/lang/String;Lcom/nimbusds/jose/Payload;)Lcom/nimbusds/jose/JWSObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 456
    invoke-static {p0}, Lcom/nimbusds/jose/JOSEObject;->split(Ljava/lang/String;)[Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p0

    .line 458
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_29

    const/4 v0, 0x1

    .line 462
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 466
    new-instance v0, Lcom/nimbusds/jose/JWSObject;

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p1, p0}, Lcom/nimbusds/jose/JWSObject;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/Payload;Lcom/nimbusds/jose/util/Base64URL;)V

    return-object v0

    .line 463
    :cond_21
    new-instance p0, Ljava/text/ParseException;

    const-string p1, "The payload Base64URL part must be empty"

    invoke-direct {p0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 459
    :cond_29
    new-instance p0, Ljava/text/ParseException;

    const-string p1, "Unexpected number of Base64URL parts, must be three"

    invoke-direct {p0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic getHeader()Lcom/nimbusds/jose/Header;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lcom/nimbusds/jose/JWSHeader;
    .registers 2

    .line 185
    iget-object v0, p0, Lcom/nimbusds/jose/JWSObject;->header:Lcom/nimbusds/jose/JWSHeader;

    return-object v0
.end method

.method public getSignature()Lcom/nimbusds/jose/util/Base64URL;
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/nimbusds/jose/JWSObject;->signature:Lcom/nimbusds/jose/util/Base64URL;

    return-object v0
.end method

.method public getSigningInput()[B
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/nimbusds/jose/JWSObject;->signingInputString:Ljava/lang/String;

    sget-object v1, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/nimbusds/jose/JWSObject$State;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/nimbusds/jose/JWSObject;->state:Lcom/nimbusds/jose/JWSObject$State;

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 383
    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSObject;->serialize(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Z)Ljava/lang/String;
    .registers 4

    .line 404
    invoke-direct {p0}, Lcom/nimbusds/jose/JWSObject;->ensureSignedOrVerifiedState()V

    const/16 v0, 0x2e

    if-eqz p1, :cond_2d

    .line 407
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nimbusds/jose/JWSObject;->header:Lcom/nimbusds/jose/JWSHeader;

    invoke-virtual {v1}, Lcom/nimbusds/jose/JWSHeader;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nimbusds/jose/JWSObject;->signature:Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 410
    :cond_2d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nimbusds/jose/JWSObject;->signingInputString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nimbusds/jose/JWSObject;->signature:Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized sign(Lcom/nimbusds/jose/JWSSigner;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    monitor-enter p0

    .line 298
    :try_start_1
    invoke-direct {p0}, Lcom/nimbusds/jose/JWSObject;->ensureUnsignedState()V

    .line 300
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JWSObject;->ensureJWSSignerSupport(Lcom/nimbusds/jose/JWSSigner;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_28

    .line 303
    :try_start_7
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getSigningInput()[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/nimbusds/jose/JWSSigner;->sign(Lcom/nimbusds/jose/JWSHeader;[B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/JWSObject;->signature:Lcom/nimbusds/jose/util/Base64URL;
    :try_end_15
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_7 .. :try_end_15} :catch_26
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_1b
    .catchall {:try_start_7 .. :try_end_15} :catchall_28

    .line 316
    :try_start_15
    sget-object p1, Lcom/nimbusds/jose/JWSObject$State;->SIGNED:Lcom/nimbusds/jose/JWSObject$State;

    iput-object p1, p0, Lcom/nimbusds/jose/JWSObject;->state:Lcom/nimbusds/jose/JWSObject$State;
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_28

    .line 317
    monitor-exit p0

    return-void

    :catch_1b
    move-exception p1

    .line 313
    :try_start_1c
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_26
    move-exception p1

    .line 307
    throw p1
    :try_end_28
    .catchall {:try_start_1c .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized verify(Lcom/nimbusds/jose/JWSVerifier;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    monitor-enter p0

    .line 338
    :try_start_1
    invoke-direct {p0}, Lcom/nimbusds/jose/JWSObject;->ensureSignedOrVerifiedState()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_29

    .line 343
    :try_start_4
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getSigningInput()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSObject;->getSignature()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/nimbusds/jose/JWSVerifier;->verify(Lcom/nimbusds/jose/JWSHeader;[BLcom/nimbusds/jose/util/Base64URL;)Z

    move-result p1
    :try_end_14
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_4 .. :try_end_14} :catch_27
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_14} :catch_1c
    .catchall {:try_start_4 .. :try_end_14} :catchall_29

    if-eqz p1, :cond_1a

    .line 358
    :try_start_16
    sget-object v0, Lcom/nimbusds/jose/JWSObject$State;->VERIFIED:Lcom/nimbusds/jose/JWSObject$State;

    iput-object v0, p0, Lcom/nimbusds/jose/JWSObject;->state:Lcom/nimbusds/jose/JWSObject$State;
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_29

    .line 361
    :cond_1a
    monitor-exit p0

    return p1

    :catch_1c
    move-exception p1

    .line 353
    :try_start_1d
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_27
    move-exception p1

    .line 347
    throw p1
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method
