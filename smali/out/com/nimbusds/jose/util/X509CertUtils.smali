.class public Lcom/nimbusds/jose/util/X509CertUtils;
.super Ljava/lang/Object;
.source "X509CertUtils.java"


# static fields
.field public static final PEM_BEGIN_MARKER:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----"

.field public static final PEM_END_MARKER:Ljava/lang/String; = "-----END CERTIFICATE-----"

.field private static jcaProvider:Ljava/security/Provider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSHA256Thumbprint(Ljava/security/cert/X509Certificate;)Lcom/nimbusds/jose/util/Base64URL;
    .registers 2

    .line 260
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    const-string v0, "SHA-256"

    .line 261
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 262
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64URL;->encode([B)Lcom/nimbusds/jose/util/Base64URL;

    move-result-object p0
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getProvider()Ljava/security/Provider;
    .registers 1

    .line 64
    sget-object v0, Lcom/nimbusds/jose/util/X509CertUtils;->jcaProvider:Ljava/security/Provider;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3d

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_3d

    :cond_a
    const-string v1, "-----BEGIN CERTIFICATE-----"

    .line 143
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_13

    return-object v0

    :cond_13
    add-int/lit8 v1, v1, 0x1b

    .line 149
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "-----END CERTIFICATE-----"

    .line 151
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_22

    return-object v0

    :cond_22
    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s"

    const-string v1, ""

    .line 159
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 161
    new-instance v0, Lcom/nimbusds/jose/util/Base64;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/util/Base64;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/util/X509CertUtils;->parse([B)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0

    :cond_3d
    :goto_3d
    return-object v0
.end method

.method public static parse([B)Ljava/security/cert/X509Certificate;
    .registers 1

    .line 91
    :try_start_0
    invoke-static {p0}, Lcom/nimbusds/jose/util/X509CertUtils;->parseWithException([B)Ljava/security/cert/X509Certificate;

    move-result-object p0
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseWithException(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p0, :cond_4a

    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_4a

    :cond_9
    const-string v0, "-----BEGIN CERTIFICATE-----"

    .line 181
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_42

    add-int/lit8 v0, v0, 0x1b

    .line 187
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-----END CERTIFICATE-----"

    .line 189
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3a

    const/4 v1, 0x0

    .line 195
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\s"

    const-string v1, ""

    .line 197
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 199
    new-instance v0, Lcom/nimbusds/jose/util/Base64;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/util/Base64;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Base64;->decode()[B

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/util/X509CertUtils;->parseWithException([B)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0

    .line 192
    :cond_3a
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string v0, "PEM end marker not found"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :cond_42
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string v0, "PEM begin marker not found"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4a
    :goto_4a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseWithException([B)Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p0, :cond_40

    .line 111
    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_40

    .line 115
    :cond_6
    sget-object v0, Lcom/nimbusds/jose/util/X509CertUtils;->jcaProvider:Ljava/security/Provider;

    const-string v1, "X.509"

    if-eqz v0, :cond_11

    .line 116
    invoke-static {v1, v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    goto :goto_15

    .line 117
    :cond_11
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 118
    :goto_15
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    .line 120
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_25

    .line 124
    check-cast p0, Ljava/security/cert/X509Certificate;

    return-object p0

    .line 121
    :cond_25
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a X.509 certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    :goto_40
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setProvider(Ljava/security/Provider;)V
    .registers 1

    .line 75
    sput-object p0, Lcom/nimbusds/jose/util/X509CertUtils;->jcaProvider:Ljava/security/Provider;

    return-void
.end method

.method public static store(Ljava/security/KeyStore;Ljava/security/PrivateKey;[CLjava/security/cert/X509Certificate;)Ljava/util/UUID;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 291
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/security/cert/Certificate;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {p0, v1, p1, p2, v2}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    return-object v0
.end method

.method public static toPEMString(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    .line 213
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/X509CertUtils;->toPEMString(Ljava/security/cert/X509Certificate;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toPEMString(Ljava/security/cert/X509Certificate;Z)Ljava/lang/String;
    .registers 4

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN CERTIFICATE-----"

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    if-eqz p1, :cond_11

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64;->encode([B)Lcom/nimbusds/jose/util/Base64;

    move-result-object p0

    invoke-virtual {p0}, Lcom/nimbusds/jose/util/Base64;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_11 .. :try_end_20} :catch_2f

    if-eqz p1, :cond_25

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_25
    const-string p0, "-----END CERTIFICATE-----"

    .line 244
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_2f
    const/4 p0, 0x0

    return-object p0
.end method
