.class public Lcom/nimbusds/jose/JWEHeader$Builder;
.super Ljava/lang/Object;
.source "JWEHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/JWEHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final alg:Lcom/nimbusds/jose/JWEAlgorithm;

.field private apu:Lcom/nimbusds/jose/util/Base64URL;

.field private apv:Lcom/nimbusds/jose/util/Base64URL;

.field private crit:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cty:Ljava/lang/String;

.field private customParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final enc:Lcom/nimbusds/jose/EncryptionMethod;

.field private epk:Lcom/nimbusds/jose/jwk/JWK;

.field private iv:Lcom/nimbusds/jose/util/Base64URL;

.field private jku:Ljava/net/URI;

.field private jwk:Lcom/nimbusds/jose/jwk/JWK;

.field private kid:Ljava/lang/String;

.field private p2c:I

.field private p2s:Lcom/nimbusds/jose/util/Base64URL;

.field private parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

.field private tag:Lcom/nimbusds/jose/util/Base64URL;

.field private typ:Lcom/nimbusds/jose/JOSEObjectType;

.field private x5c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;"
        }
    .end annotation
.end field

.field private x5t:Lcom/nimbusds/jose/util/Base64URL;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private x5t256:Lcom/nimbusds/jose/util/Base64URL;

.field private x5u:Ljava/net/URI;

.field private zip:Lcom/nimbusds/jose/CompressionAlgorithm;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWEAlgorithm;Lcom/nimbusds/jose/EncryptionMethod;)V
    .registers 5

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/Algorithm;->NONE:Lcom/nimbusds/jose/Algorithm;

    invoke-virtual {v1}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 284
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->alg:Lcom/nimbusds/jose/JWEAlgorithm;

    if-eqz p2, :cond_1a

    .line 290
    iput-object p2, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->enc:Lcom/nimbusds/jose/EncryptionMethod;

    return-void

    .line 287
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The encryption method \"enc\" parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 281
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The JWE algorithm \"alg\" cannot be \"none\""

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/nimbusds/jose/JWEHeader;)V
    .registers 4

    .line 303
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nimbusds/jose/JWEHeader$Builder;-><init>(Lcom/nimbusds/jose/JWEAlgorithm;Lcom/nimbusds/jose/EncryptionMethod;)V

    .line 305
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getType()Lcom/nimbusds/jose/JOSEObjectType;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->typ:Lcom/nimbusds/jose/JOSEObjectType;

    .line 306
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->cty:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getCriticalParams()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->crit:Ljava/util/Set;

    .line 308
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getCustomParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->customParams:Ljava/util/Map;

    .line 310
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getJWKURL()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->jku:Ljava/net/URI;

    .line 311
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getJWK()Lcom/nimbusds/jose/jwk/JWK;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    .line 312
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertURL()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5u:Ljava/net/URI;

    .line 313
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertThumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    .line 314
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertSHA256Thumbprint()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    .line 315
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getX509CertChain()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5c:Ljava/util/List;

    .line 316
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getKeyID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->kid:Ljava/lang/String;

    .line 318
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEphemeralPublicKey()Lcom/nimbusds/jose/jwk/JWK;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->epk:Lcom/nimbusds/jose/jwk/JWK;

    .line 319
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getCompressionAlgorithm()Lcom/nimbusds/jose/CompressionAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->zip:Lcom/nimbusds/jose/CompressionAlgorithm;

    .line 320
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAgreementPartyUInfo()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->apu:Lcom/nimbusds/jose/util/Base64URL;

    .line 321
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAgreementPartyVInfo()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->apv:Lcom/nimbusds/jose/util/Base64URL;

    .line 322
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getPBES2Salt()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->p2s:Lcom/nimbusds/jose/util/Base64URL;

    .line 323
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getPBES2Count()I

    move-result v0

    iput v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->p2c:I

    .line 324
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getIV()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->iv:Lcom/nimbusds/jose/util/Base64URL;

    .line 325
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAuthTag()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->tag:Lcom/nimbusds/jose/util/Base64URL;

    .line 327
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getCustomParams()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->customParams:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public agreementPartyUInfo(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2

    .line 526
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->apu:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public agreementPartyVInfo(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2

    .line 541
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->apv:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public authTag(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2

    .line 604
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->tag:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public build()Lcom/nimbusds/jose/JWEHeader;
    .registers 27

    move-object/from16 v0, p0

    .line 679
    new-instance v24, Lcom/nimbusds/jose/JWEHeader;

    move-object/from16 v1, v24

    iget-object v2, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->alg:Lcom/nimbusds/jose/JWEAlgorithm;

    iget-object v3, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->enc:Lcom/nimbusds/jose/EncryptionMethod;

    iget-object v4, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->typ:Lcom/nimbusds/jose/JOSEObjectType;

    iget-object v5, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->cty:Ljava/lang/String;

    iget-object v6, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->crit:Ljava/util/Set;

    iget-object v7, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->jku:Ljava/net/URI;

    iget-object v8, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    iget-object v9, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5u:Ljava/net/URI;

    iget-object v10, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v11, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    iget-object v12, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5c:Ljava/util/List;

    iget-object v13, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->kid:Ljava/lang/String;

    iget-object v14, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->epk:Lcom/nimbusds/jose/jwk/JWK;

    iget-object v15, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->zip:Lcom/nimbusds/jose/CompressionAlgorithm;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->apu:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->apv:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->p2s:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v18, v1

    iget v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->p2c:I

    move/from16 v19, v1

    iget-object v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->iv:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->tag:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->customParams:Ljava/util/Map;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/nimbusds/jose/JWEHeader$Builder;->parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

    move-object/from16 v23, v1

    move-object/from16 v1, v25

    invoke-direct/range {v1 .. v23}, Lcom/nimbusds/jose/JWEHeader;-><init>(Lcom/nimbusds/jose/Algorithm;Lcom/nimbusds/jose/EncryptionMethod;Lcom/nimbusds/jose/JOSEObjectType;Ljava/lang/String;Ljava/util/Set;Ljava/net/URI;Lcom/nimbusds/jose/jwk/JWK;Ljava/net/URI;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/List;Ljava/lang/String;Lcom/nimbusds/jose/jwk/JWK;Lcom/nimbusds/jose/CompressionAlgorithm;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;ILcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Ljava/util/Map;Lcom/nimbusds/jose/util/Base64URL;)V

    return-object v24
.end method

.method public compressionAlgorithm(Lcom/nimbusds/jose/CompressionAlgorithm;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2

    .line 511
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->zip:Lcom/nimbusds/jose/CompressionAlgorithm;

    return-object p0
.end method

.method public contentType(Ljava/lang/String;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2

    .line 356
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->cty:Ljava/lang/String;

    return-object p0
.end method

.method public criticalParams(Ljava/util/Set;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nimbusds/jose/JWEHeader$Builder;"
        }
    .end annotation

    .line 372
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->crit:Ljava/util/Set;

    return-object p0
.end method

.method public customParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 5

    .line 627
    invoke-static {}, Lcom/nimbusds/jose/JWEHeader;->getRegisteredParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 631
    iget-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->customParams:Ljava/util/Map;

    if-nez v0, :cond_15

    .line 632
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->customParams:Ljava/util/Map;

    .line 635
    :cond_15
    iget-object v0, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->customParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 628
    :cond_1b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The parameter name \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" matches a registered name"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public customParams(Ljava/util/Map;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nimbusds/jose/JWEHeader$Builder;"
        }
    .end annotation

    .line 652
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->customParams:Ljava/util/Map;

    return-object p0
.end method

.method public ephemeralPublicKey(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2

    .line 496
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->epk:Lcom/nimbusds/jose/jwk/JWK;

    return-object p0
.end method

.method public iv(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2

    .line 589
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->iv:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public jwk(Lcom/nimbusds/jose/jwk/JWK;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2

    .line 402
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->jwk:Lcom/nimbusds/jose/jwk/JWK;

    return-object p0
.end method

.method public jwkURL(Ljava/net/URI;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2

    .line 387
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->jku:Ljava/net/URI;

    return-object p0
.end method

.method public keyID(Ljava/lang/String;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2

    .line 481
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->kid:Ljava/lang/String;

    return-object p0
.end method

.method public parsedBase64URL(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2

    .line 667
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->parsedBase64URL:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public pbes2Count(I)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 3

    if-ltz p1, :cond_5

    .line 574
    iput p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->p2c:I

    return-object p0

    .line 572
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The PBES2 count parameter must not be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pbes2Salt(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2

    .line 556
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->p2s:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public type(Lcom/nimbusds/jose/JOSEObjectType;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->typ:Lcom/nimbusds/jose/JOSEObjectType;

    return-object p0
.end method

.method public x509CertChain(Ljava/util/List;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/Base64;",
            ">;)",
            "Lcom/nimbusds/jose/JWEHeader$Builder;"
        }
    .end annotation

    .line 466
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5c:Ljava/util/List;

    return-object p0
.end method

.method public x509CertSHA256Thumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2

    .line 450
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5t256:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public x509CertThumbprint(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 434
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5t:Lcom/nimbusds/jose/util/Base64URL;

    return-object p0
.end method

.method public x509CertURL(Ljava/net/URI;)Lcom/nimbusds/jose/JWEHeader$Builder;
    .registers 2

    .line 417
    iput-object p1, p0, Lcom/nimbusds/jose/JWEHeader$Builder;->x5u:Ljava/net/URI;

    return-object p0
.end method
