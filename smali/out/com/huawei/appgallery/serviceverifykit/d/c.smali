.class public Lcom/huawei/appgallery/serviceverifykit/d/c;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    const/4 p0, 0x0

    return-object p0

    :cond_22
    const-string v2, ","

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_36

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/security/cert/X509Certificate;
    .registers 7

    const-string v0, "close stream failed"

    const-string v1, "X509CertUtil"

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v3, "ag_sdk_cbg_root.cer"

    invoke-virtual {p0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_13} :catch_47
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_3c
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_13} :catch_2e
    .catchall {:try_start_5 .. :try_end_13} :catchall_29

    :try_start_13
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_1f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_1f} :catch_48
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1f} :catch_3d
    .catch Ljava/security/cert/CertificateException; {:try_start_13 .. :try_end_1f} :catch_2f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_58

    if-eqz p0, :cond_27

    :try_start_21
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_27

    :catch_25
    move-object v2, v3

    goto :goto_52

    :cond_27
    :goto_27
    move-object v2, v3

    goto :goto_57

    :catchall_29
    move-exception p0

    move-object v5, v2

    move-object v2, p0

    move-object p0, v5

    goto :goto_59

    :catch_2e
    move-object p0, v2

    :catch_2f
    :try_start_2f
    sget-object v3, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string v4, "CertificateException"

    invoke-virtual {v3, v1, v4}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_58

    if-eqz p0, :cond_57

    :goto_38
    :try_start_38
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_52

    goto :goto_57

    :catch_3c
    move-object p0, v2

    :catch_3d
    :try_start_3d
    sget-object v3, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string v4, "can not open cbg root cer"

    invoke-virtual {v3, v1, v4}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_57

    goto :goto_38

    :catch_47
    move-object p0, v2

    :catch_48
    sget-object v3, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string v4, "can not found cbg root cer"

    invoke-virtual {v3, v1, v4}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_3d .. :try_end_4f} :catchall_58

    if-eqz p0, :cond_57

    goto :goto_38

    :catch_52
    :goto_52
    sget-object p0, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    invoke-virtual {p0, v1, v0}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_57
    :goto_57
    return-object v2

    :catchall_58
    move-exception v2

    :goto_59
    if-eqz p0, :cond_64

    :try_start_5b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_64

    :catch_5f
    sget-object p0, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    invoke-virtual {p0, v1, v0}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    :goto_64
    throw v2
.end method

.method private static a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-static {p0}, Lcom/huawei/appgallery/serviceverifykit/d/a;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/appgallery/serviceverifykit/d/c;->a([B)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method private static a([B)Ljava/security/cert/X509Certificate;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3a

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_3a

    :cond_7
    :try_start_7
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    instance-of v1, p0, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_3a

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_1c
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception p0

    sget-object v1, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get cert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "X509CertUtil"

    invoke-virtual {v1, v2, p0}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    return-object v0
.end method

.method private static a(Ljava/security/cert/X509Certificate;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    return v0

    :cond_c
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object p0

    const/4 v0, 0x5

    aget-boolean p0, p0, v0

    return p0
.end method

.method public static a(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "CN"

    invoke-static {p0, v0, p1}, Lcom/huawei/appgallery/serviceverifykit/d/c;->a(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-eqz p0, :cond_20

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_20

    :cond_f
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/huawei/appgallery/serviceverifykit/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_20
    :goto_20
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/security/cert/X509Certificate;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_81

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_81

    :cond_b
    const-string v1, "X509CertUtil"

    if-nez p0, :cond_17

    sget-object p0, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string p1, "rootCert is null,verify failed "

    invoke-virtual {p0, v1, p1}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_17
    :try_start_17
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_1a
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_17 .. :try_end_1a} :catch_66
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_17 .. :try_end_1a} :catch_64

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_24
    if-ltz v2, :cond_5f

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_5e

    :try_start_2e
    invoke-virtual {v3, p0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->checkValidity()V

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0
    :try_end_38
    .catch Ljava/security/cert/CertificateException; {:try_start_2e .. :try_end_38} :catch_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2e .. :try_end_38} :catch_41
    .catch Ljava/security/InvalidKeyException; {:try_start_2e .. :try_end_38} :catch_3f
    .catch Ljava/security/NoSuchProviderException; {:try_start_2e .. :try_end_38} :catch_3d
    .catch Ljava/security/SignatureException; {:try_start_2e .. :try_end_38} :catch_3b

    add-int/lit8 v2, v2, -0x1

    goto :goto_24

    :catch_3b
    move-exception p0

    goto :goto_44

    :catch_3d
    move-exception p0

    goto :goto_44

    :catch_3f
    move-exception p0

    goto :goto_44

    :catch_41
    move-exception p0

    goto :goto_44

    :catch_43
    move-exception p0

    :goto_44
    sget-object p1, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verify failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    return v0

    :cond_5f
    invoke-static {p1}, Lcom/huawei/appgallery/serviceverifykit/d/c;->a(Ljava/util/List;)Z

    move-result p0

    return p0

    :catch_64
    move-exception p0

    goto :goto_67

    :catch_66
    move-exception p0

    :goto_67
    sget-object p1, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyCertChain Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    :goto_81
    return v0
.end method

.method public static a(Ljava/security/cert/X509Certificate;[B[B)Z
    .registers 6

    const/4 v0, 0x0

    const-string v1, "X509CertUtil"

    if-eqz p0, :cond_31

    if-eqz p1, :cond_31

    if-eqz p2, :cond_31

    array-length v2, p2

    if-nez v2, :cond_d

    goto :goto_31

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    invoke-virtual {v2, p1}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v2, p2}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_23} :catch_28
    .catch Ljava/security/SignatureException; {:try_start_d .. :try_end_23} :catch_26
    .catch Ljava/security/InvalidKeyException; {:try_start_d .. :try_end_23} :catch_24

    return p0

    :catch_24
    move-exception p0

    goto :goto_29

    :catch_26
    move-exception p0

    goto :goto_29

    :catch_28
    move-exception p0

    :goto_29
    sget-object p1, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string p2, "failed checkSignature,Exception:"

    invoke-virtual {p1, v1, p2, p0}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_31
    :goto_31
    sget-object p0, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string p1, "checkSignature parameter is null"

    invoke-virtual {p0, v1, p1}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static a(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-static {v2}, Lcom/huawei/appgallery/serviceverifykit/d/c;->a(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_19
    return v0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/huawei/appgallery/serviceverifykit/d/c;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/appgallery/serviceverifykit/d/c;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    const-string v0, "X509CertUtil"

    if-nez p0, :cond_11

    sget-object p0, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string v1, "base64 CertChain is null."

    invoke-virtual {p0, v0, v1}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/huawei/appgallery/serviceverifykit/d/c;->a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-nez v2, :cond_38

    sget-object v2, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    const-string v3, "Failed to get cert from CertChain"

    invoke-virtual {v2, v0, v3}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_38
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_3c
    return-object v1
.end method

.method public static b(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "OU"

    invoke-static {p0, v0, p1}, Lcom/huawei/appgallery/serviceverifykit/d/c;->a(Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static c(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    const/4 v1, 0x1

    if-gt p0, v1, :cond_11

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2b

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_28} :catch_2c

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2b
    return-object p0

    :catch_2c
    move-exception p0

    sget-object v0, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->b:Lcom/huawei/appgallery/serviceverifykit/d/d/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to getCertChain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "X509CertUtil"

    invoke-virtual {v0, v1, p0}, Lcom/huawei/appgallery/serviceverifykit/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
