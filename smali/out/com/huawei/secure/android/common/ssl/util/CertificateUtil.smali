.class public final Lcom/huawei/secure/android/common/ssl/util/CertificateUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "CertificateUtil"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHwCbgRootCA(Landroid/content/Context;)Ljava/security/cert/X509Certificate;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "bks"

    .line 1
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v2, "hmsrootcas.bks"

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_11
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_11} :catch_3b
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_11} :catch_39
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_37
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_11} :catch_34
    .catchall {:try_start_1 .. :try_end_11} :catchall_2f

    .line 3
    :try_start_11
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    const-string v2, ""

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v2, "052root"

    .line 5
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_25
    .catch Ljava/security/KeyStoreException; {:try_start_11 .. :try_end_25} :catch_2d
    .catch Ljava/security/cert/CertificateException; {:try_start_11 .. :try_end_25} :catch_2b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_25} :catch_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_25} :catch_27
    .catchall {:try_start_11 .. :try_end_25} :catchall_5b

    move-object v0, v1

    goto :goto_57

    :catch_27
    move-exception v1

    goto :goto_3d

    :catch_29
    move-exception v1

    goto :goto_3d

    :catch_2b
    move-exception v1

    goto :goto_3d

    :catch_2d
    move-exception v1

    goto :goto_3d

    :catchall_2f
    move-exception p0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_5c

    :catch_34
    move-exception v1

    :goto_35
    move-object p0, v0

    goto :goto_3d

    :catch_37
    move-exception v1

    goto :goto_35

    :catch_39
    move-exception v1

    goto :goto_35

    :catch_3b
    move-exception v1

    goto :goto_35

    :goto_3d
    const-string v2, "CertificateUtil"

    .line 10
    :try_start_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadBksCA: exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_3f .. :try_end_57} :catchall_5b

    .line 9
    :goto_57
    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/InputStream;)V

    return-object v0

    :catchall_5b
    move-exception v0

    .line 12
    :goto_5c
    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/InputStream;)V

    .line 13
    throw v0
.end method
