.class public Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;
.super Ljava/lang/Object;
.source "DefaultJWTProcessor.java"

# interfaces
.implements Lcom/nimbusds/jwt/proc/ConfigurableJWTProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jwt/proc/ConfigurableJWTProcessor<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private claimsSetAwareJWSKeySelector:Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector<",
            "TC;>;"
        }
    .end annotation
.end field

.field private claimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier<",
            "TC;>;"
        }
    .end annotation
.end field

.field private deprecatedClaimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;

.field private jweDecrypterFactory:Lcom/nimbusds/jose/proc/JWEDecrypterFactory;

.field private jweKeySelector:Lcom/nimbusds/jose/proc/JWEKeySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/proc/JWEKeySelector<",
            "TC;>;"
        }
    .end annotation
.end field

.field private jweTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier<",
            "TC;>;"
        }
    .end annotation
.end field

.field private jwsKeySelector:Lcom/nimbusds/jose/proc/JWSKeySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/proc/JWSKeySelector<",
            "TC;>;"
        }
    .end annotation
.end field

.field private jwsTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier<",
            "TC;>;"
        }
    .end annotation
.end field

.field private jwsVerifierFactory:Lcom/nimbusds/jose/proc/JWSVerifierFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    sget-object v0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->JWT:Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;

    iput-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;

    .line 103
    sget-object v0, Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;->JWT:Lcom/nimbusds/jose/proc/DefaultJOSEObjectTypeVerifier;

    iput-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;

    .line 128
    new-instance v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;

    invoke-direct {v0}, Lcom/nimbusds/jose/crypto/factories/DefaultJWSVerifierFactory;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsVerifierFactory:Lcom/nimbusds/jose/proc/JWSVerifierFactory;

    .line 134
    new-instance v0, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;

    invoke-direct {v0}, Lcom/nimbusds/jose/crypto/factories/DefaultJWEDecrypterFactory;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweDecrypterFactory:Lcom/nimbusds/jose/proc/JWEDecrypterFactory;

    .line 140
    new-instance v0, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;

    invoke-direct {v0}, Lcom/nimbusds/jwt/proc/DefaultJWTClaimsVerifier;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->claimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->deprecatedClaimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;

    return-void
.end method

.method private extractJWTClaimsSet(Lcom/nimbusds/jwt/JWT;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jwt/proc/BadJWTException;
        }
    .end annotation

    .line 283
    :try_start_0
    invoke-interface {p1}, Lcom/nimbusds/jwt/JWT;->getJWTClaimsSet()Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p1
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    .line 286
    new-instance v0, Lcom/nimbusds/jwt/proc/BadJWTException;

    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private selectKeys(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSHeader;",
            "Lcom/nimbusds/jwt/JWTClaimsSet;",
            "TC;)",
            "Ljava/util/List<",
            "+",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;,
            Lcom/nimbusds/jose/proc/BadJOSEException;
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWTClaimsSetAwareJWSKeySelector()Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 308
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWTClaimsSetAwareJWSKeySelector()Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;->selectKeys(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 309
    :cond_f
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWSKeySelector()Lcom/nimbusds/jose/proc/JWSKeySelector;

    move-result-object p2

    if-eqz p2, :cond_1e

    .line 310
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWSKeySelector()Lcom/nimbusds/jose/proc/JWSKeySelector;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Lcom/nimbusds/jose/proc/JWSKeySelector;->selectJWSKeys(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 312
    :cond_1e
    new-instance p1, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string p2, "Signed JWT rejected: No JWS key selector is configured"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifyClaims(Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/JWTClaimsSet;",
            "TC;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jwt/proc/BadJWTException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWTClaimsSetVerifier()Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 295
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWTClaimsSetVerifier()Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;->verify(Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)V

    goto :goto_1b

    .line 296
    :cond_e
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWTClaimsVerifier()Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;

    move-result-object p2

    if-eqz p2, :cond_1b

    .line 298
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWTClaimsVerifier()Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;->verify(Lcom/nimbusds/jwt/JWTClaimsSet;)V

    :cond_1b
    :goto_1b
    return-object p1
.end method


# virtual methods
.method public getJWEDecrypterFactory()Lcom/nimbusds/jose/proc/JWEDecrypterFactory;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweDecrypterFactory:Lcom/nimbusds/jose/proc/JWEDecrypterFactory;

    return-object v0
.end method

.method public getJWEKeySelector()Lcom/nimbusds/jose/proc/JWEKeySelector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/proc/JWEKeySelector<",
            "TC;>;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweKeySelector:Lcom/nimbusds/jose/proc/JWEKeySelector;

    return-object v0
.end method

.method public getJWETypeVerifier()Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier<",
            "TC;>;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;

    return-object v0
.end method

.method public getJWSKeySelector()Lcom/nimbusds/jose/proc/JWSKeySelector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/proc/JWSKeySelector<",
            "TC;>;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsKeySelector:Lcom/nimbusds/jose/proc/JWSKeySelector;

    return-object v0
.end method

.method public getJWSTypeVerifier()Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier<",
            "TC;>;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;

    return-object v0
.end method

.method public getJWSVerifierFactory()Lcom/nimbusds/jose/proc/JWSVerifierFactory;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsVerifierFactory:Lcom/nimbusds/jose/proc/JWSVerifierFactory;

    return-object v0
.end method

.method public getJWTClaimsSetAwareJWSKeySelector()Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector<",
            "TC;>;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->claimsSetAwareJWSKeySelector:Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;

    return-object v0
.end method

.method public getJWTClaimsSetVerifier()Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier<",
            "TC;>;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->claimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;

    return-object v0
.end method

.method public getJWTClaimsVerifier()Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->deprecatedClaimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;

    return-object v0
.end method

.method public process(Lcom/nimbusds/jwt/EncryptedJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/EncryptedJWT;",
            "TC;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/proc/BadJOSEException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;

    if-eqz v0, :cond_c4

    .line 421
    invoke-virtual {p1}, Lcom/nimbusds/jwt/EncryptedJWT;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/JWEHeader;->getType()Lcom/nimbusds/jose/JOSEObjectType;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;->verify(Lcom/nimbusds/jose/JOSEObjectType;Lcom/nimbusds/jose/proc/SecurityContext;)V

    .line 423
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWEKeySelector()Lcom/nimbusds/jose/proc/JWEKeySelector;

    move-result-object v0

    if-eqz v0, :cond_bc

    .line 428
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWEDecrypterFactory()Lcom/nimbusds/jose/proc/JWEDecrypterFactory;

    move-result-object v0

    if-eqz v0, :cond_b4

    .line 432
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWEKeySelector()Lcom/nimbusds/jose/proc/JWEKeySelector;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nimbusds/jwt/EncryptedJWT;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/nimbusds/jose/proc/JWEKeySelector;->selectJWEKeys(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_ac

    .line 434
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ac

    .line 438
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 440
    :goto_33
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 442
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWEDecrypterFactory()Lcom/nimbusds/jose/proc/JWEDecrypterFactory;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nimbusds/jwt/EncryptedJWT;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Key;

    invoke-interface {v1, v2, v3}, Lcom/nimbusds/jose/proc/JWEDecrypterFactory;->createJWEDecrypter(Lcom/nimbusds/jose/JWEHeader;Ljava/security/Key;)Lcom/nimbusds/jose/JWEDecrypter;

    move-result-object v1

    if-nez v1, :cond_4e

    goto :goto_33

    .line 449
    :cond_4e
    :try_start_4e
    invoke-virtual {p1, v1}, Lcom/nimbusds/jwt/EncryptedJWT;->decrypt(Lcom/nimbusds/jose/JWEDecrypter;)V
    :try_end_51
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_4e .. :try_end_51} :catch_81

    .line 462
    invoke-virtual {p1}, Lcom/nimbusds/jwt/EncryptedJWT;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nimbusds/jose/JWEHeader;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JWT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 465
    invoke-virtual {p1}, Lcom/nimbusds/jwt/EncryptedJWT;->getPayload()Lcom/nimbusds/jose/Payload;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nimbusds/jose/Payload;->toSignedJWT()Lcom/nimbusds/jwt/SignedJWT;

    move-result-object p1

    if-eqz p1, :cond_70

    .line 472
    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->process(Lcom/nimbusds/jwt/SignedJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p1

    return-object p1

    .line 469
    :cond_70
    new-instance p1, Lcom/nimbusds/jwt/proc/BadJWTException;

    const-string p2, "The payload is not a nested signed JWT"

    invoke-direct {p1, p2}, Lcom/nimbusds/jwt/proc/BadJWTException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 475
    :cond_78
    invoke-direct {p0, p1}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->extractJWTClaimsSet(Lcom/nimbusds/jwt/JWT;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p1

    .line 476
    invoke-direct {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->verifyClaims(Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p1

    return-object p1

    :catch_81
    move-exception v1

    .line 453
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    goto :goto_33

    .line 459
    :cond_89
    new-instance p1, Lcom/nimbusds/jose/proc/BadJWEException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Encrypted JWT rejected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/nimbusds/jose/JOSEException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v1}, Lcom/nimbusds/jose/proc/BadJWEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 479
    :cond_a4
    new-instance p1, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string p2, "Encrypted JWT rejected: No matching decrypter(s) found"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 435
    :cond_ac
    new-instance p1, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string p2, "Encrypted JWT rejected: Another algorithm expected, or no matching key(s) found"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 429
    :cond_b4
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "No JWE decrypter is configured"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 425
    :cond_bc
    new-instance p1, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string p2, "Encrypted JWT rejected: No JWE key selector is configured"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 418
    :cond_c4
    new-instance p1, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string p2, "Encrypted JWT rejected: No JWE header \"typ\" (type) verifier is configured"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public process(Lcom/nimbusds/jwt/JWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/JWT;",
            "TC;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/proc/BadJOSEException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 329
    instance-of v0, p1, Lcom/nimbusds/jwt/SignedJWT;

    if-eqz v0, :cond_b

    .line 330
    check-cast p1, Lcom/nimbusds/jwt/SignedJWT;

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->process(Lcom/nimbusds/jwt/SignedJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p1

    return-object p1

    .line 333
    :cond_b
    instance-of v0, p1, Lcom/nimbusds/jwt/EncryptedJWT;

    if-eqz v0, :cond_16

    .line 334
    check-cast p1, Lcom/nimbusds/jwt/EncryptedJWT;

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->process(Lcom/nimbusds/jwt/EncryptedJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p1

    return-object p1

    .line 337
    :cond_16
    instance-of v0, p1, Lcom/nimbusds/jwt/PlainJWT;

    if-eqz v0, :cond_21

    .line 338
    check-cast p1, Lcom/nimbusds/jwt/PlainJWT;

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->process(Lcom/nimbusds/jwt/PlainJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p1

    return-object p1

    .line 342
    :cond_21
    new-instance p2, Lcom/nimbusds/jose/JOSEException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected JWT object type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public process(Lcom/nimbusds/jwt/PlainJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/PlainJWT;",
            "TC;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/proc/BadJOSEException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;

    if-nez v0, :cond_c

    .line 352
    new-instance p1, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string p2, "Plain JWT rejected: No JWS header \"typ\" (type) verifier is configured"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 354
    :cond_c
    invoke-virtual {p1}, Lcom/nimbusds/jwt/PlainJWT;->getHeader()Lcom/nimbusds/jose/PlainHeader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nimbusds/jose/PlainHeader;->getType()Lcom/nimbusds/jose/JOSEObjectType;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;->verify(Lcom/nimbusds/jose/JOSEObjectType;Lcom/nimbusds/jose/proc/SecurityContext;)V

    .line 356
    new-instance p1, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string p2, "Unsecured (plain) JWTs are rejected, extend class to handle"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public process(Lcom/nimbusds/jwt/SignedJWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/SignedJWT;",
            "TC;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/proc/BadJOSEException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;

    if-eqz v0, :cond_8f

    .line 368
    invoke-virtual {p1}, Lcom/nimbusds/jwt/SignedJWT;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/JWSHeader;->getType()Lcom/nimbusds/jose/JOSEObjectType;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;->verify(Lcom/nimbusds/jose/JOSEObjectType;Lcom/nimbusds/jose/proc/SecurityContext;)V

    .line 370
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWSKeySelector()Lcom/nimbusds/jose/proc/JWSKeySelector;

    move-result-object v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWTClaimsSetAwareJWSKeySelector()Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;

    move-result-object v0

    if-eqz v0, :cond_1c

    goto :goto_24

    .line 372
    :cond_1c
    new-instance p1, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string p2, "Signed JWT rejected: No JWS key selector is configured"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 375
    :cond_24
    :goto_24
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWSVerifierFactory()Lcom/nimbusds/jose/proc/JWSVerifierFactory;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 379
    invoke-direct {p0, p1}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->extractJWTClaimsSet(Lcom/nimbusds/jwt/JWT;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object v0

    .line 381
    invoke-virtual {p1}, Lcom/nimbusds/jwt/SignedJWT;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object v1

    invoke-direct {p0, v1, v0, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->selectKeys(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7f

    .line 383
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7f

    .line 387
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 389
    :goto_42
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    .line 391
    invoke-virtual {p0}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->getJWSVerifierFactory()Lcom/nimbusds/jose/proc/JWSVerifierFactory;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nimbusds/jwt/SignedJWT;->getHeader()Lcom/nimbusds/jose/JWSHeader;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Key;

    invoke-interface {v2, v3, v4}, Lcom/nimbusds/jose/proc/JWSVerifierFactory;->createJWSVerifier(Lcom/nimbusds/jose/JWSHeader;Ljava/security/Key;)Lcom/nimbusds/jose/JWSVerifier;

    move-result-object v2

    if-nez v2, :cond_5d

    goto :goto_42

    .line 397
    :cond_5d
    invoke-virtual {p1, v2}, Lcom/nimbusds/jwt/SignedJWT;->verify(Lcom/nimbusds/jose/JWSVerifier;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 400
    invoke-direct {p0, v0, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->verifyClaims(Lcom/nimbusds/jwt/JWTClaimsSet;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p1

    return-object p1

    .line 403
    :cond_68
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    goto :goto_42

    .line 405
    :cond_6f
    new-instance p1, Lcom/nimbusds/jose/proc/BadJWSException;

    const-string p2, "Signed JWT rejected: Invalid signature"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/proc/BadJWSException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 409
    :cond_77
    new-instance p1, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string p2, "JWS object rejected: No matching verifier(s) found"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 384
    :cond_7f
    new-instance p1, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string p2, "Signed JWT rejected: Another algorithm expected, or no matching key(s) found"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 376
    :cond_87
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    const-string p2, "No JWS verifier is configured"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 365
    :cond_8f
    new-instance p1, Lcom/nimbusds/jose/proc/BadJOSEException;

    const-string p2, "Signed JWT rejected: No JWS header \"typ\" (type) verifier is configured"

    invoke-direct {p1, p2}, Lcom/nimbusds/jose/proc/BadJOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public process(Ljava/lang/String;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TC;)",
            "Lcom/nimbusds/jwt/JWTClaimsSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Lcom/nimbusds/jose/proc/BadJOSEException;,
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 321
    invoke-static {p1}, Lcom/nimbusds/jwt/JWTParser;->parse(Ljava/lang/String;)Lcom/nimbusds/jwt/JWT;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->process(Lcom/nimbusds/jwt/JWT;Lcom/nimbusds/jose/proc/SecurityContext;)Lcom/nimbusds/jwt/JWTClaimsSet;

    move-result-object p1

    return-object p1
.end method

.method public setJWEDecrypterFactory(Lcom/nimbusds/jose/proc/JWEDecrypterFactory;)V
    .registers 2

    .line 243
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweDecrypterFactory:Lcom/nimbusds/jose/proc/JWEDecrypterFactory;

    return-void
.end method

.method public setJWEKeySelector(Lcom/nimbusds/jose/proc/JWEKeySelector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/proc/JWEKeySelector<",
            "TC;>;)V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweKeySelector:Lcom/nimbusds/jose/proc/JWEKeySelector;

    return-void
.end method

.method public setJWETypeVerifier(Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier<",
            "TC;>;)V"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jweTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;

    return-void
.end method

.method public setJWSKeySelector(Lcom/nimbusds/jose/proc/JWSKeySelector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/proc/JWSKeySelector<",
            "TC;>;)V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsKeySelector:Lcom/nimbusds/jose/proc/JWSKeySelector;

    return-void
.end method

.method public setJWSTypeVerifier(Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier<",
            "TC;>;)V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsTypeVerifier:Lcom/nimbusds/jose/proc/JOSEObjectTypeVerifier;

    return-void
.end method

.method public setJWSVerifierFactory(Lcom/nimbusds/jose/proc/JWSVerifierFactory;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->jwsVerifierFactory:Lcom/nimbusds/jose/proc/JWSVerifierFactory;

    return-void
.end method

.method public setJWTClaimsSetAwareJWSKeySelector(Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector<",
            "TC;>;)V"
        }
    .end annotation

    .line 187
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->claimsSetAwareJWSKeySelector:Lcom/nimbusds/jwt/proc/JWTClaimsSetAwareJWSKeySelector;

    return-void
.end method

.method public setJWTClaimsSetVerifier(Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier<",
            "TC;>;)V"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->claimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;

    const/4 p1, 0x0

    .line 258
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->deprecatedClaimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;

    return-void
.end method

.method public setJWTClaimsVerifier(Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 274
    iput-object v0, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->claimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsSetVerifier;

    .line 275
    iput-object p1, p0, Lcom/nimbusds/jwt/proc/DefaultJWTProcessor;->deprecatedClaimsVerifier:Lcom/nimbusds/jwt/proc/JWTClaimsVerifier;

    return-void
.end method
