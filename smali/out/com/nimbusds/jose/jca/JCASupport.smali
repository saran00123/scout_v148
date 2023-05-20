.class public final Lcom/nimbusds/jose/jca/JCASupport;
.super Ljava/lang/Object;
.source "JCASupport.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported(Lcom/nimbusds/jose/Algorithm;)Z
    .registers 4

    .line 72
    instance-of v0, p0, Lcom/nimbusds/jose/JWSAlgorithm;

    if-eqz v0, :cond_b

    .line 73
    check-cast p0, Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-static {p0}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/JWSAlgorithm;)Z

    move-result p0

    return p0

    .line 75
    :cond_b
    instance-of v0, p0, Lcom/nimbusds/jose/JWEAlgorithm;

    if-eqz v0, :cond_16

    .line 76
    check-cast p0, Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-static {p0}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/JWEAlgorithm;)Z

    move-result p0

    return p0

    .line 78
    :cond_16
    instance-of v0, p0, Lcom/nimbusds/jose/EncryptionMethod;

    if-eqz v0, :cond_21

    .line 79
    check-cast p0, Lcom/nimbusds/jose/EncryptionMethod;

    invoke-static {p0}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/EncryptionMethod;)Z

    move-result p0

    return p0

    .line 81
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected algorithm class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSupported(Lcom/nimbusds/jose/Algorithm;Ljava/security/Provider;)Z
    .registers 4

    .line 97
    instance-of v0, p0, Lcom/nimbusds/jose/JWSAlgorithm;

    if-eqz v0, :cond_b

    .line 98
    check-cast p0, Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-static {p0, p1}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/security/Provider;)Z

    move-result p0

    return p0

    .line 100
    :cond_b
    instance-of v0, p0, Lcom/nimbusds/jose/JWEAlgorithm;

    if-eqz v0, :cond_16

    .line 101
    check-cast p0, Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-static {p0, p1}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/security/Provider;)Z

    move-result p0

    return p0

    .line 103
    :cond_16
    instance-of v0, p0, Lcom/nimbusds/jose/EncryptionMethod;

    if-eqz v0, :cond_21

    .line 104
    check-cast p0, Lcom/nimbusds/jose/EncryptionMethod;

    invoke-static {p0, p1}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/EncryptionMethod;Ljava/security/Provider;)Z

    move-result p0

    return p0

    .line 106
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected algorithm class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isSupported(Lcom/nimbusds/jose/EncryptionMethod;)Z
    .registers 6

    .line 305
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, v0, v3

    .line 307
    invoke-static {p0, v4}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/EncryptionMethod;Ljava/security/Provider;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_16
    return v2
.end method

.method public static isSupported(Lcom/nimbusds/jose/EncryptionMethod;Ljava/security/Provider;)Z
    .registers 5

    .line 328
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod$Family;->AES_CBC_HMAC_SHA:Lcom/nimbusds/jose/EncryptionMethod$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/EncryptionMethod$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    :try_start_a
    const-string v0, "AES/CBC/PKCS5Padding"

    .line 331
    invoke-static {v0, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_f} :catch_32
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_a .. :try_end_f} :catch_32

    .line 339
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A128CBC_HS256:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/EncryptionMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "HmacSHA256"

    goto :goto_27

    .line 341
    :cond_1a
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod;->A192CBC_HS384:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/EncryptionMethod;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    const-string p0, "HmacSHA384"

    goto :goto_27

    :cond_25
    const-string p0, "HmacSHA512"

    :goto_27
    const-string v0, "KeyGenerator"

    .line 346
    invoke-virtual {p1, v0, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    if-eqz p0, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    return v1

    :catch_32
    return v2

    .line 349
    :cond_33
    sget-object v0, Lcom/nimbusds/jose/EncryptionMethod$Family;->AES_GCM:Lcom/nimbusds/jose/EncryptionMethod$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/EncryptionMethod$Family;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_41

    :try_start_3b
    const-string p0, "AES/GCM/NoPadding"

    .line 352
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_40
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3b .. :try_end_40} :catch_41
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_3b .. :try_end_40} :catch_41

    return v1

    :catch_41
    :cond_41
    return v2
.end method

.method public static isSupported(Lcom/nimbusds/jose/JWEAlgorithm;)Z
    .registers 6

    .line 211
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, v0, v3

    .line 213
    invoke-static {p0, v4}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/security/Provider;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_16
    return v2
.end method

.method public static isSupported(Lcom/nimbusds/jose/JWEAlgorithm;Ljava/security/Provider;)Z
    .registers 5

    .line 236
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWEAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2f

    .line 237
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->RSA1_5:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p0, "RSA/ECB/PKCS1Padding"

    goto :goto_2a

    .line 239
    :cond_15
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->RSA_OAEP:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p0, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    goto :goto_2a

    .line 241
    :cond_20
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->RSA_OAEP_256:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const-string p0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    .line 249
    :goto_2a
    :try_start_2a
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_2d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2a .. :try_end_2d} :catch_2e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2a .. :try_end_2d} :catch_2e

    return v1

    :catch_2e
    :cond_2e
    return v2

    .line 258
    :cond_2f
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->AES_KW:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWEAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string p0, "Cipher"

    const-string v0, "AESWrap"

    .line 259
    invoke-virtual {p1, p0, v0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    if-eqz p0, :cond_42

    goto :goto_43

    :cond_42
    move v1, v2

    :goto_43
    return v1

    .line 262
    :cond_44
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->ECDH_ES:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWEAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    const-string p0, "KeyAgreement"

    const-string v0, "ECDH"

    .line 263
    invoke-virtual {p1, p0, v0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    if-eqz p0, :cond_57

    goto :goto_58

    :cond_57
    move v1, v2

    :goto_58
    return v1

    .line 266
    :cond_59
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->AES_GCM_KW:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWEAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    :try_start_61
    const-string p0, "AES/GCM/NoPadding"

    .line 269
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    :try_end_66
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_61 .. :try_end_66} :catch_67
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_61 .. :try_end_66} :catch_67

    return v1

    :catch_67
    return v2

    .line 278
    :cond_68
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm$Family;->PBES2:Lcom/nimbusds/jose/JWEAlgorithm$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWEAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 280
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->PBES2_HS256_A128KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    const-string p0, "HmacSHA256"

    goto :goto_88

    .line 282
    :cond_7b
    sget-object v0, Lcom/nimbusds/jose/JWEAlgorithm;->PBES2_HS384_A192KW:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_86

    const-string p0, "HmacSHA384"

    goto :goto_88

    :cond_86
    const-string p0, "HmacSHA512"

    :goto_88
    const-string v0, "KeyGenerator"

    .line 287
    invoke-virtual {p1, v0, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    if-eqz p0, :cond_91

    goto :goto_92

    :cond_91
    move v1, v2

    :goto_92
    return v1

    .line 290
    :cond_93
    sget-object p1, Lcom/nimbusds/jose/JWEAlgorithm;->DIR:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {p1, p0}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSupported(Lcom/nimbusds/jose/JWSAlgorithm;)Z
    .registers 7

    .line 121
    invoke-virtual {p0}, Lcom/nimbusds/jose/JWSAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nimbusds/jose/Algorithm;->NONE:Lcom/nimbusds/jose/Algorithm;

    invoke-virtual {v1}, Lcom/nimbusds/jose/Algorithm;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    return v1

    .line 125
    :cond_12
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    if-ge v4, v2, :cond_27

    aget-object v5, v0, v4

    .line 127
    invoke-static {p0, v5}, Lcom/nimbusds/jose/jca/JCASupport;->isSupported(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/security/Provider;)Z

    move-result v5

    if-eqz v5, :cond_24

    return v1

    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_27
    return v3
.end method

.method public static isSupported(Lcom/nimbusds/jose/JWSAlgorithm;Ljava/security/Provider;)Z
    .registers 6

    .line 148
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;->HMAC_SHA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWSAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_36

    .line 150
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->HS256:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p0, "HMACSHA256"

    goto :goto_2a

    .line 152
    :cond_15
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->HS384:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p0, "HMACSHA384"

    goto :goto_2a

    .line 154
    :cond_20
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->HS512:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    const-string p0, "HMACSHA512"

    :goto_2a
    const-string v0, "KeyGenerator"

    .line 159
    invoke-virtual {p1, v0, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    if-eqz p0, :cond_33

    goto :goto_34

    :cond_33
    move v1, v2

    :goto_34
    return v1

    :cond_35
    return v2

    .line 162
    :cond_36
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWSAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "Signature"

    if-eqz v0, :cond_8b

    .line 164
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->RS256:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string p0, "SHA256withRSA"

    goto :goto_81

    .line 166
    :cond_4b
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->RS384:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string p0, "SHA384withRSA"

    goto :goto_81

    .line 168
    :cond_56
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->RS512:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const-string p0, "SHA512withRSA"

    goto :goto_81

    .line 170
    :cond_61
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->PS256:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const-string p0, "SHA256withRSAandMGF1"

    goto :goto_81

    .line 172
    :cond_6c
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->PS384:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string p0, "SHA384withRSAandMGF1"

    goto :goto_81

    .line 174
    :cond_77
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->PS512:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8a

    const-string p0, "SHA512withRSAandMGF1"

    .line 179
    :goto_81
    invoke-virtual {p1, v3, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    if-eqz p0, :cond_88

    goto :goto_89

    :cond_88
    move v1, v2

    :goto_89
    return v1

    :cond_8a
    return v2

    .line 182
    :cond_8b
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm$Family;->EC:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-virtual {v0, p0}, Lcom/nimbusds/jose/JWSAlgorithm$Family;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 184
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES256:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    const-string p0, "SHA256withECDSA"

    goto :goto_b3

    .line 186
    :cond_9e
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES384:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const-string p0, "SHA384withECDSA"

    goto :goto_b3

    .line 188
    :cond_a9
    sget-object v0, Lcom/nimbusds/jose/JWSAlgorithm;->ES512:Lcom/nimbusds/jose/JWSAlgorithm;

    invoke-virtual {p0, v0}, Lcom/nimbusds/jose/JWSAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_bc

    const-string p0, "SHA512withECDSA"

    .line 193
    :goto_b3
    invoke-virtual {p1, v3, p0}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    if-eqz p0, :cond_ba

    goto :goto_bb

    :cond_ba
    move v1, v2

    :goto_bb
    return v1

    :cond_bc
    return v2
.end method

.method public static isUnlimitedStrength()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "AES"

    .line 54
    invoke-static {v1}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v1
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_7} :catch_c

    const/16 v2, 0x100

    if-lt v1, v2, :cond_c

    const/4 v0, 0x1

    :catch_c
    :cond_c
    return v0
.end method
