.class public Lcom/nimbusds/jose/JWEObject;
.super Lcom/nimbusds/jose/JOSEObject;
.source "JWEObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/JWEObject$State;
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private authTag:Lcom/nimbusds/jose/util/Base64URL;

.field private cipherText:Lcom/nimbusds/jose/util/Base64URL;

.field private encryptedKey:Lcom/nimbusds/jose/util/Base64URL;

.field private header:Lcom/nimbusds/jose/JWEHeader;

.field private iv:Lcom/nimbusds/jose/util/Base64URL;

.field private state:Lcom/nimbusds/jose/JWEObject$State;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/Payload;)V
    .registers 3

    .line 111
    invoke-direct {p0}, Lcom/nimbusds/jose/JOSEObject;-><init>()V

    if-eqz p1, :cond_1e

    .line 118
    iput-object p1, p0, Lcom/nimbusds/jose/JWEObject;->header:Lcom/nimbusds/jose/JWEHeader;

    if-eqz p2, :cond_16

    .line 125
    invoke-virtual {p0, p2}, Lcom/nimbusds/jose/JWEObject;->setPayload(Lcom/nimbusds/jose/Payload;)V

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/nimbusds/jose/JWEObject;->encryptedKey:Lcom/nimbusds/jose/util/Base64URL;

    .line 129
    iput-object p1, p0, Lcom/nimbusds/jose/JWEObject;->cipherText:Lcom/nimbusds/jose/util/Base64URL;

    .line 131
    sget-object p1, Lcom/nimbusds/jose/JWEObject$State;->UNENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    iput-object p1, p0, Lcom/nimbusds/jose/JWEObject;->state:Lcom/nimbusds/jose/JWEObject$State;

    return-void

    .line 122
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The payload must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The JWE header must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lcom/nimbusds/jose/JOSEObject;-><init>()V

    if-eqz p1, :cond_84

    const/4 v0, 0x0

    .line 167
    :try_start_6
    invoke-static {p1}, Lcom/nimbusds/jose/JWEHeader;->parse(Lcom/nimbusds/jose/util/Base64URL;)Lcom/nimbusds/jose/JWEHeader;

    move-result-object v1

    iput-object v1, p0, Lcom/nimbusds/jose/JWEObject;->header:Lcom/nimbusds/jose/JWEHeader;
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_c} :catch_68

    const/4 v1, 0x0

    if-eqz p2, :cond_1d

    .line 174
    invoke-virtual {p2}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_1d

    .line 180
    :cond_1a
    iput-object p2, p0, Lcom/nimbusds/jose/JWEObject;->encryptedKey:Lcom/nimbusds/jose/util/Base64URL;

    goto :goto_1f

    .line 176
    :cond_1d
    :goto_1d
    iput-object v1, p0, Lcom/nimbusds/jose/JWEObject;->encryptedKey:Lcom/nimbusds/jose/util/Base64URL;

    :goto_1f
    if-eqz p3, :cond_2f

    .line 183
    invoke-virtual {p3}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_2f

    .line 189
    :cond_2c
    iput-object p3, p0, Lcom/nimbusds/jose/JWEObject;->iv:Lcom/nimbusds/jose/util/Base64URL;

    goto :goto_31

    .line 185
    :cond_2f
    :goto_2f
    iput-object v1, p0, Lcom/nimbusds/jose/JWEObject;->iv:Lcom/nimbusds/jose/util/Base64URL;

    :goto_31
    if-eqz p4, :cond_60

    .line 197
    iput-object p4, p0, Lcom/nimbusds/jose/JWEObject;->cipherText:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz p5, :cond_45

    .line 199
    invoke-virtual {p5}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_42

    goto :goto_45

    .line 205
    :cond_42
    iput-object p5, p0, Lcom/nimbusds/jose/JWEObject;->authTag:Lcom/nimbusds/jose/util/Base64URL;

    goto :goto_47

    .line 201
    :cond_45
    :goto_45
    iput-object v1, p0, Lcom/nimbusds/jose/JWEObject;->authTag:Lcom/nimbusds/jose/util/Base64URL;

    .line 208
    :goto_47
    sget-object v1, Lcom/nimbusds/jose/JWEObject$State;->ENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    iput-object v1, p0, Lcom/nimbusds/jose/JWEObject;->state:Lcom/nimbusds/jose/JWEObject$State;

    const/4 v1, 0x5

    .line 210
    new-array v1, v1, [Lcom/nimbusds/jose/util/Base64URL;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    const/4 p1, 0x4

    aput-object p5, v1, p1

    invoke-virtual {p0, v1}, Lcom/nimbusds/jose/JWEObject;->setParsedParts([Lcom/nimbusds/jose/util/Base64URL;)V

    return-void

    .line 194
    :cond_60
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The fourth part must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_68
    move-exception p1

    .line 171
    new-instance p2, Ljava/text/ParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid JWE header: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 163
    :cond_84
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The first part must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureEncryptedOrDecryptedState()V
    .registers 3

    .line 318
    iget-object v0, p0, Lcom/nimbusds/jose/JWEObject;->state:Lcom/nimbusds/jose/JWEObject$State;

    sget-object v1, Lcom/nimbusds/jose/JWEObject$State;->ENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/nimbusds/jose/JWEObject;->state:Lcom/nimbusds/jose/JWEObject$State;

    sget-object v1, Lcom/nimbusds/jose/JWEObject$State;->DECRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    if-ne v0, v1, :cond_d

    goto :goto_15

    .line 320
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The JWE object must be in an encrypted or decrypted state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_15
    return-void
.end method

.method private ensureEncryptedState()V
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/nimbusds/jose/JWEObject;->state:Lcom/nimbusds/jose/JWEObject$State;

    sget-object v1, Lcom/nimbusds/jose/JWEObject$State;->ENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    if-ne v0, v1, :cond_7

    return-void

    .line 304
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The JWE object must be in an encrypted state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureJWEEncrypterSupport(Lcom/nimbusds/jose/JWEEncrypter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 334
    invoke-interface {p1}, Lcom/nimbusds/jose/JWEEncrypter;->supportedJWEAlgorithms()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "The \""

    if-eqz v0, :cond_50

    .line 340
    invoke-interface {p1}, Lcom/nimbusds/jose/JWEEncrypter;->supportedEncryptionMethods()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    return-void

    .line 342
    :cond_27
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" encryption method or key size is not supported by the JWE encrypter: Supported methods: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-interface {p1}, Lcom/nimbusds/jose/JWEEncrypter;->supportedEncryptionMethods()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_50
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\" algorithm is not supported by the JWE encrypter: Supported algorithms: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-interface {p1}, Lcom/nimbusds/jose/JWEEncrypter;->supportedJWEAlgorithms()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureUnencryptedState()V
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/nimbusds/jose/JWEObject;->state:Lcom/nimbusds/jose/JWEObject$State;

    sget-object v1, Lcom/nimbusds/jose/JWEObject$State;->UNENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    if-ne v0, v1, :cond_7

    return-void

    .line 290
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The JWE object must be in an unencrypted state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/nimbusds/jose/JWEObject;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 502
    invoke-static {p0}, Lcom/nimbusds/jose/JOSEObject;->split(Ljava/lang/String;)[Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p0

    .line 504
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1e

    .line 509
    new-instance v0, Lcom/nimbusds/jose/JWEObject;

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

    invoke-direct/range {v3 .. v8}, Lcom/nimbusds/jose/JWEObject;-><init>(Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)V

    return-object v0

    .line 506
    :cond_1e
    new-instance p0, Ljava/text/ParseException;

    const-string v0, "Unexpected number of Base64URL parts, must be five"

    invoke-direct {p0, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized decrypt(Lcom/nimbusds/jose/JWEDecrypter;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    monitor-enter p0

    .line 412
    :try_start_1
    invoke-direct {p0}, Lcom/nimbusds/jose/JWEObject;->ensureEncryptedState()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_38

    .line 415
    :try_start_4
    new-instance v0, Lcom/nimbusds/jose/Payload;

    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v2

    .line 416
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v3

    .line 417
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getIV()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v4

    .line 418
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getCipherText()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v5

    .line 419
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getAuthTag()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v6

    move-object v1, p1

    .line 415
    invoke-interface/range {v1 .. v6}, Lcom/nimbusds/jose/JWEDecrypter;->decrypt(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;Lcom/nimbusds/jose/util/Base64URL;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/Payload;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWEObject;->setPayload(Lcom/nimbusds/jose/Payload;)V
    :try_end_25
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_4 .. :try_end_25} :catch_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_2b
    .catchall {:try_start_4 .. :try_end_25} :catchall_38

    .line 432
    :try_start_25
    sget-object p1, Lcom/nimbusds/jose/JWEObject$State;->DECRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    iput-object p1, p0, Lcom/nimbusds/jose/JWEObject;->state:Lcom/nimbusds/jose/JWEObject$State;
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_38

    .line 433
    monitor-exit p0

    return-void

    :catch_2b
    move-exception p1

    .line 429
    :try_start_2c
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_36
    move-exception p1

    .line 423
    throw p1
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_38

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized encrypt(Lcom/nimbusds/jose/JWEEncrypter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    monitor-enter p0

    .line 363
    :try_start_1
    invoke-direct {p0}, Lcom/nimbusds/jose/JWEObject;->ensureUnencryptedState()V

    .line 365
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/JWEObject;->ensureJWEEncrypterSupport(Lcom/nimbusds/jose/JWEEncrypter;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_4e

    .line 370
    :try_start_7
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getPayload()Lcom/nimbusds/jose/Payload;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/Payload;->toBytes()[B

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/nimbusds/jose/JWEEncrypter;->encrypt(Lcom/nimbusds/jose/JWEHeader;[B)Lcom/nimbusds/jose/JWECryptoParts;

    move-result-object p1
    :try_end_17
    .catch Lcom/nimbusds/jose/JOSEException; {:try_start_7 .. :try_end_17} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_41
    .catchall {:try_start_7 .. :try_end_17} :catchall_4e

    .line 384
    :try_start_17
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWECryptoParts;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 385
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWECryptoParts;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEObject;->header:Lcom/nimbusds/jose/JWEHeader;

    .line 388
    :cond_23
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWECryptoParts;->getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEObject;->encryptedKey:Lcom/nimbusds/jose/util/Base64URL;

    .line 389
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWECryptoParts;->getInitializationVector()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEObject;->iv:Lcom/nimbusds/jose/util/Base64URL;

    .line 390
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWECryptoParts;->getCipherText()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v0

    iput-object v0, p0, Lcom/nimbusds/jose/JWEObject;->cipherText:Lcom/nimbusds/jose/util/Base64URL;

    .line 391
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWECryptoParts;->getAuthenticationTag()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/JWEObject;->authTag:Lcom/nimbusds/jose/util/Base64URL;

    .line 393
    sget-object p1, Lcom/nimbusds/jose/JWEObject$State;->ENCRYPTED:Lcom/nimbusds/jose/JWEObject$State;

    iput-object p1, p0, Lcom/nimbusds/jose/JWEObject;->state:Lcom/nimbusds/jose/JWEObject$State;
    :try_end_3f
    .catchall {:try_start_17 .. :try_end_3f} :catchall_4e

    .line 394
    monitor-exit p0

    return-void

    :catch_41
    move-exception p1

    .line 380
    :try_start_42
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4c
    move-exception p1

    .line 374
    throw p1
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getAuthTag()Lcom/nimbusds/jose/util/Base64URL;
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/nimbusds/jose/JWEObject;->authTag:Lcom/nimbusds/jose/util/Base64URL;

    return-object v0
.end method

.method public getCipherText()Lcom/nimbusds/jose/util/Base64URL;
    .registers 2

    .line 253
    iget-object v0, p0, Lcom/nimbusds/jose/JWEObject;->cipherText:Lcom/nimbusds/jose/util/Base64URL;

    return-object v0
.end method

.method public getEncryptedKey()Lcom/nimbusds/jose/util/Base64URL;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/nimbusds/jose/JWEObject;->encryptedKey:Lcom/nimbusds/jose/util/Base64URL;

    return-object v0
.end method

.method public bridge synthetic getHeader()Lcom/nimbusds/jose/Header;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWEObject;->getHeader()Lcom/nimbusds/jose/JWEHeader;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lcom/nimbusds/jose/JWEHeader;
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/nimbusds/jose/JWEObject;->header:Lcom/nimbusds/jose/JWEHeader;

    return-object v0
.end method

.method public getIV()Lcom/nimbusds/jose/util/Base64URL;
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/nimbusds/jose/JWEObject;->iv:Lcom/nimbusds/jose/util/Base64URL;

    return-object v0
.end method

.method public getState()Lcom/nimbusds/jose/JWEObject$State;
    .registers 2

    .line 276
    iget-object v0, p0, Lcom/nimbusds/jose/JWEObject;->state:Lcom/nimbusds/jose/JWEObject$State;

    return-object v0
.end method

.method public serialize()Ljava/lang/String;
    .registers 4

    .line 456
    invoke-direct {p0}, Lcom/nimbusds/jose/JWEObject;->ensureEncryptedOrDecryptedState()V

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nimbusds/jose/JWEObject;->header:Lcom/nimbusds/jose/JWEHeader;

    invoke-virtual {v1}, Lcom/nimbusds/jose/JWEHeader;->toBase64URL()Lcom/nimbusds/jose/util/Base64URL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 461
    iget-object v2, p0, Lcom/nimbusds/jose/JWEObject;->encryptedKey:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v2, :cond_22

    .line 463
    invoke-virtual {v2}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 468
    iget-object v2, p0, Lcom/nimbusds/jose/JWEObject;->iv:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v2, :cond_30

    .line 470
    invoke-virtual {v2}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :cond_30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    iget-object v2, p0, Lcom/nimbusds/jose/JWEObject;->cipherText:Lcom/nimbusds/jose/util/Base64URL;

    invoke-virtual {v2}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    iget-object v1, p0, Lcom/nimbusds/jose/JWEObject;->authTag:Lcom/nimbusds/jose/util/Base64URL;

    if-eqz v1, :cond_4a

    .line 481
    invoke-virtual {v1}, Lcom/nimbusds/jose/util/Base64URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
