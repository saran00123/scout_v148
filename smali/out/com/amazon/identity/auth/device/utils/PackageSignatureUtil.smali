.class public Lcom/amazon/identity/auth/device/utils/PackageSignatureUtil;
.super Ljava/lang/Object;
.source "PackageSignatureUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "PackageManagerGetSignatures"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.utils.PackageSignatureUtil"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllSignaturesFor(Ljava/lang/String;Lcom/amazon/identity/auth/device/utils/HashAlgorithm;Landroid/content/Context;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/utils/HashAlgorithm;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-static {p0, p2}, Lcom/amazon/identity/auth/device/utils/PackageSignatureUtil;->getAndroidSignaturesFor(Ljava/lang/String;Landroid/content/Context;)[Landroid/content/pm/Signature;

    move-result-object p2

    if-nez p2, :cond_22

    .line 39
    sget-object p1, Lcom/amazon/identity/auth/device/utils/PackageSignatureUtil;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " appSignature is null. pkg="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 43
    :cond_22
    sget-object v1, Lcom/amazon/identity/auth/device/utils/PackageSignatureUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "num sigs = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    array-length v1, p2

    const/4 v2, 0x0

    :goto_3b
    if-ge v2, v1, :cond_80

    aget-object v3, p2, v2

    const/4 v4, 0x0

    .line 47
    :try_start_40
    invoke-static {v3, p1}, Lcom/amazon/identity/auth/device/utils/PackageSignatureUtil;->getSignatureFingerprint(Landroid/content/pm/Signature;Lcom/amazon/identity/auth/device/utils/HashAlgorithm;)Ljava/lang/String;

    move-result-object v4

    .line 48
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4d} :catch_4e

    goto :goto_65

    :catch_4e
    move-exception v3

    .line 50
    sget-object v5, Lcom/amazon/identity/auth/device/utils/PackageSignatureUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encountered error while finding signatures for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    :goto_65
    sget-object v3, Lcom/amazon/identity/auth/device/utils/PackageSignatureUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fingerprint = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Fingerprint checking"

    invoke-static {v3, v5, v4}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_80
    return-object v0
.end method

.method private static getAndroidSignaturesFor(Ljava/lang/String;Landroid/content/Context;)[Landroid/content/pm/Signature;
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "Can\'t find app signatures as pkgMgr is null "

    const/4 v1, 0x0

    if-nez p1, :cond_f

    .line 77
    sget-object p0, Lcom/amazon/identity/auth/device/utils/PackageSignatureUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_f
    const/16 v2, 0x40

    .line 82
    :try_start_11
    invoke-virtual {p1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_15} :catch_16

    goto :goto_2d

    .line 84
    :catch_16
    sget-object p1, Lcom/amazon/identity/auth/device/utils/PackageSignatureUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName not found for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    :goto_2d
    if-nez p0, :cond_35

    .line 88
    sget-object p0, Lcom/amazon/identity/auth/device/utils/PackageSignatureUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 91
    :cond_35
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    return-object p0
.end method

.method private static getFingerprint(Lcom/amazon/identity/auth/device/utils/HashAlgorithm;[B)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/utils/HashAlgorithm;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static getSignatureFingerprint(Landroid/content/pm/Signature;Lcom/amazon/identity/auth/device/utils/HashAlgorithm;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/identity/auth/device/utils/SignatureUtil;->getCertificateFromByteArray([B)Ljava/security/cert/Certificate;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/utils/PackageSignatureUtil;->getFingerprint(Lcom/amazon/identity/auth/device/utils/HashAlgorithm;[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/identity/auth/device/utils/MAPUtils;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
