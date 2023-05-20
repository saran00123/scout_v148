.class public Lcom/nimbusds/jose/crypto/impl/AESGCM;
.super Ljava/lang/Object;
.source "AESGCM.java"


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field public static final AUTH_TAG_BIT_LENGTH:I = 0x80

.field public static final IV_BIT_LENGTH:I = 0x60


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static actualIVOf(Ljavax/crypto/Cipher;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 175
    invoke-static {p0}, Lcom/nimbusds/jose/crypto/impl/AESGCM;->actualParamsOf(Ljavax/crypto/Cipher;)Ljavax/crypto/spec/GCMParameterSpec;

    move-result-object p0

    .line 177
    invoke-virtual {p0}, Ljavax/crypto/spec/GCMParameterSpec;->getIV()[B

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result p0

    .line 180
    invoke-static {v0, p0}, Lcom/nimbusds/jose/crypto/impl/AESGCM;->validate([BI)V

    return-object v0
.end method

.method private static actualParamsOf(Ljavax/crypto/Cipher;)Ljavax/crypto/spec/GCMParameterSpec;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 240
    :try_start_6
    const-class v0, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {p0, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    check-cast p0, Ljavax/crypto/spec/GCMParameterSpec;
    :try_end_e
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_6 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 242
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    invoke-virtual {p0}, Ljava/security/spec/InvalidParameterSpecException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 235
    :cond_1a
    new-instance p0, Lcom/nimbusds/jose/JOSEException;

    const-string v0, "AES GCM ciphers are expected to make use of algorithm parameters"

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decrypt(Ljavax/crypto/SecretKey;[B[B[B[BLjava/security/Provider;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 270
    invoke-static {p0}, Lcom/nimbusds/jose/util/KeyUtils;->toAESKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object p0

    const-string v0, "AES/GCM/NoPadding"

    if-eqz p5, :cond_d

    .line 276
    :try_start_8
    invoke-static {v0, p5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p5

    goto :goto_11

    .line 278
    :cond_d
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p5

    .line 281
    :goto_11
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v1, 0x2

    .line 282
    invoke-virtual {p5, v1, p0, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_1c} :catch_54
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_8 .. :try_end_1c} :catch_52
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_1c} :catch_50
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_8 .. :try_end_1c} :catch_4e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_8 .. :try_end_1c} :catch_56

    .line 294
    invoke-virtual {p5, p3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 297
    :try_start_1f
    new-array p0, v1, [[B

    const/4 p1, 0x0

    aput-object p2, p0, p1

    const/4 p1, 0x1

    aput-object p4, p0, p1

    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->concat([[B)[B

    move-result-object p0

    invoke-virtual {p5, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_2f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1f .. :try_end_2f} :catch_32
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1f .. :try_end_2f} :catch_30

    return-object p0

    :catch_30
    move-exception p0

    goto :goto_33

    :catch_32
    move-exception p0

    .line 301
    :goto_33
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AES/GCM/NoPadding decryption failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4e
    move-exception p0

    goto :goto_5b

    :catch_50
    move-exception p0

    goto :goto_5b

    :catch_52
    move-exception p0

    goto :goto_5b

    :catch_54
    move-exception p0

    goto :goto_5b

    .line 291
    :catch_56
    invoke-static {p0, p1, p2, p3, p4}, Lcom/nimbusds/jose/crypto/impl/LegacyAESGCM;->decrypt(Ljavax/crypto/SecretKey;[B[B[B[B)[B

    move-result-object p0

    return-object p0

    .line 286
    :goto_5b
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t create AES/GCM/NoPadding cipher: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static encrypt(Ljavax/crypto/SecretKey;Lcom/nimbusds/jose/util/Container;[B[BLjava/security/Provider;)Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/crypto/SecretKey;",
            "Lcom/nimbusds/jose/util/Container<",
            "[B>;[B[B",
            "Ljava/security/Provider;",
            ")",
            "Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 107
    invoke-static {p0}, Lcom/nimbusds/jose/util/KeyUtils;->toAESKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 111
    invoke-virtual {p1}, Lcom/nimbusds/jose/util/Container;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v1, "AES/GCM/NoPadding"

    if-eqz p4, :cond_13

    .line 115
    :try_start_e
    invoke-static {v1, p4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p4

    goto :goto_17

    .line 117
    :cond_13
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p4

    .line 120
    :goto_17
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    invoke-direct {v1, v2, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v3, 0x1

    .line 121
    invoke-virtual {p4, v3, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_22} :catch_6d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_e .. :try_end_22} :catch_6b
    .catch Ljava/security/InvalidKeyException; {:try_start_e .. :try_end_22} :catch_69
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_e .. :try_end_22} :catch_67
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_e .. :try_end_22} :catch_6f

    .line 133
    invoke-virtual {p4, p3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 138
    :try_start_25
    invoke-virtual {p4, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_29
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_25 .. :try_end_29} :catch_4b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_25 .. :try_end_29} :catch_49

    .line 145
    array-length p2, p0

    invoke-static {v2}, Lcom/nimbusds/jose/util/ByteUtils;->byteLength(I)I

    move-result p3

    sub-int/2addr p2, p3

    const/4 p3, 0x0

    .line 147
    invoke-static {p0, p3, p2}, Lcom/nimbusds/jose/util/ByteUtils;->subArray([BII)[B

    move-result-object p3

    .line 148
    invoke-static {v2}, Lcom/nimbusds/jose/util/ByteUtils;->byteLength(I)I

    move-result v0

    invoke-static {p0, p2, v0}, Lcom/nimbusds/jose/util/ByteUtils;->subArray([BII)[B

    move-result-object p0

    .line 151
    invoke-static {p4}, Lcom/nimbusds/jose/crypto/impl/AESGCM;->actualIVOf(Ljavax/crypto/Cipher;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/util/Container;->set(Ljava/lang/Object;)V

    .line 153
    new-instance p1, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;

    invoke-direct {p1, p3, p0}, Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;-><init>([B[B)V

    return-object p1

    :catch_49
    move-exception p0

    goto :goto_4c

    :catch_4b
    move-exception p0

    .line 142
    :goto_4c
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t encrypt with AES/GCM/NoPadding: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_67
    move-exception p0

    goto :goto_74

    :catch_69
    move-exception p0

    goto :goto_74

    :catch_6b
    move-exception p0

    goto :goto_74

    :catch_6d
    move-exception p0

    goto :goto_74

    .line 130
    :catch_6f
    invoke-static {p0, v0, p2, p3}, Lcom/nimbusds/jose/crypto/impl/LegacyAESGCM;->encrypt(Ljavax/crypto/SecretKey;[B[B[B)Lcom/nimbusds/jose/crypto/impl/AuthenticatedCipherText;

    move-result-object p0

    return-object p0

    .line 125
    :goto_74
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t create AES/GCM/NoPadding cipher: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static generateIV(Ljava/security/SecureRandom;)[B
    .registers 2

    const/16 v0, 0xc

    .line 73
    new-array v0, v0, [B

    .line 74
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private static validate([BI)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation

    .line 204
    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x60

    if-ne v0, v4, :cond_2a

    const/16 p0, 0x80

    if-ne p1, p0, :cond_10

    return-void

    .line 209
    :cond_10
    new-instance v0, Lcom/nimbusds/jose/JOSEException;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    const-string p0, "Authentication tag length of %d bits is required, got %d"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_2a
    new-instance p1, Lcom/nimbusds/jose/JOSEException;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p0}, Lcom/nimbusds/jose/util/ByteUtils;->safeBitLength([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "IV length of %d bits is required, got %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/nimbusds/jose/JOSEException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
