.class public Lcom/amazon/identity/auth/device/utils/JWTDecoder;
.super Ljava/lang/Object;
.source "JWTDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/utils/JWTDecoder$JWT_SECTION;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CHAR_SET:Ljava/lang/String; = "UTF-8"

.field private static final FAILED_TO_DECODE:Ljava/lang/String; = "Failed to decode: "

.field private static final JWT_SPLITTER:Ljava/lang/String; = "[.]"

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.utils.JWTDecoder"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeBase64ToBytes(Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1

    return-object p1
.end method

.method private decodeBase64ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/utils/JWTDecoder;->decodeBase64ToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 90
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private getTokenParts(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const-string v0, "[.]"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 81
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    return-object p1

    .line 82
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid JWT format"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifySignature([Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/identity/auth/device/utils/JWTDecoder$JWT_SECTION;->HEADER:Lcom/amazon/identity/auth/device/utils/JWTDecoder$JWT_SECTION;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/utils/JWTDecoder$JWT_SECTION;->ordinal()I

    move-result v1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/identity/auth/device/utils/JWTDecoder$JWT_SECTION;->PAYLOAD:Lcom/amazon/identity/auth/device/utils/JWTDecoder$JWT_SECTION;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/utils/JWTDecoder$JWT_SECTION;->ordinal()I

    move-result v1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 103
    sget-object v1, Lcom/amazon/identity/auth/device/utils/JWTDecoder$JWT_SECTION;->SIGNATURE:Lcom/amazon/identity/auth/device/utils/JWTDecoder$JWT_SECTION;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/utils/JWTDecoder$JWT_SECTION;->ordinal()I

    move-result v1

    aget-object p1, p1, v1

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/utils/JWTDecoder;->decodeBase64ToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 105
    invoke-static {}, Lcom/amazon/identity/auth/device/utils/SignatureUtil;->getAmazonPublicCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/identity/auth/device/utils/JWTDecoder;->verifySignatureWithRsaSha256([B[BLjava/security/cert/Certificate;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 108
    sget-object p1, Lcom/amazon/identity/auth/device/utils/JWTDecoder;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Signature match!"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_50
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Decoding fails: signature mismatch!"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private verifySignatureWithRsaSha256([B[BLjava/security/cert/Certificate;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    const-string v0, "SHA256withRSA"

    .line 113
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p3}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 115
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 117
    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public decode(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    const-string v0, "Failed to decode: "

    const/4 v1, 0x0

    if-nez p1, :cond_6

    return-object v1

    .line 49
    :cond_6
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/utils/JWTDecoder;->getTokenParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/utils/JWTDecoder;->verifySignature([Ljava/lang/String;)V

    .line 51
    new-instance v2, Lorg/json/JSONObject;

    sget-object v3, Lcom/amazon/identity/auth/device/utils/JWTDecoder$JWT_SECTION;->PAYLOAD:Lcom/amazon/identity/auth/device/utils/JWTDecoder$JWT_SECTION;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/utils/JWTDecoder$JWT_SECTION;->ordinal()I

    move-result v3

    aget-object p1, p1, v3

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/utils/JWTDecoder;->decodeBase64ToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_22} :catch_112
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_22} :catch_f8
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_22} :catch_de
    .catch Ljava/security/NoSuchProviderException; {:try_start_6 .. :try_end_22} :catch_c4
    .catch Ljava/security/SignatureException; {:try_start_6 .. :try_end_22} :catch_aa
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_22} :catch_8f
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_22} :catch_74
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_22} :catch_59
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_22} :catch_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_22} :catch_23

    return-object v2

    :catch_23
    move-exception p1

    .line 72
    sget-object v2, Lcom/amazon/identity/auth/device/utils/JWTDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12b

    :catch_3e
    move-exception p1

    .line 70
    sget-object v2, Lcom/amazon/identity/auth/device/utils/JWTDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12b

    :catch_59
    move-exception p1

    .line 68
    sget-object v2, Lcom/amazon/identity/auth/device/utils/JWTDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12b

    :catch_74
    move-exception p1

    .line 66
    sget-object v2, Lcom/amazon/identity/auth/device/utils/JWTDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12b

    :catch_8f
    move-exception p1

    .line 64
    sget-object v2, Lcom/amazon/identity/auth/device/utils/JWTDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12b

    :catch_aa
    move-exception p1

    .line 62
    sget-object v2, Lcom/amazon/identity/auth/device/utils/JWTDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/SignatureException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12b

    :catch_c4
    move-exception p1

    .line 60
    sget-object v2, Lcom/amazon/identity/auth/device/utils/JWTDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/NoSuchProviderException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12b

    :catch_de
    move-exception p1

    .line 58
    sget-object v2, Lcom/amazon/identity/auth/device/utils/JWTDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12b

    :catch_f8
    move-exception p1

    .line 56
    sget-object v2, Lcom/amazon/identity/auth/device/utils/JWTDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12b

    :catch_112
    move-exception p1

    .line 54
    sget-object v2, Lcom/amazon/identity/auth/device/utils/JWTDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12b
    return-object v1
.end method
