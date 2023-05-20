.class public Lcom/huawei/secure/android/common/ssl/util/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "X509CertificateUtil"

.field public static final c:Ljava/lang/String; = "hmsrootcas.bks"

.field public static final d:Ljava/lang/String; = ""

.field public static final e:Ljava/lang/String; = "bks"

.field public static final f:Ljava/lang/String; = "052root"

.field private static final g:Ljava/lang/String; = "hmsincas.bks"

.field private static final h:Ljava/lang/String; = "huawei cbg application integration ca"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/util/j;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/security/cert/X509Certificate;
    .registers 3

    const-string v0, "hmsincas.bks"

    const-string v1, "huawei cbg application integration ca"

    .line 11
    invoke-virtual {p0, v0, v1}, Lcom/huawei/secure/android/common/ssl/util/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "bks"

    .line 1
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/huawei/secure/android/common/ssl/util/j;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_11
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_11} :catch_36
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_11} :catch_34
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_32
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_11} :catch_2f
    .catchall {:try_start_1 .. :try_end_11} :catchall_2c

    .line 3
    :try_start_11
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    const-string v2, ""

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 5
    invoke-virtual {v1, p2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p2

    check-cast p2, Ljava/security/cert/X509Certificate;
    :try_end_23
    .catch Ljava/security/KeyStoreException; {:try_start_11 .. :try_end_23} :catch_2a
    .catch Ljava/security/cert/CertificateException; {:try_start_11 .. :try_end_23} :catch_28
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_23} :catch_26
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_23} :catch_24
    .catchall {:try_start_11 .. :try_end_23} :catchall_57

    goto :goto_53

    :catch_24
    move-exception p2

    goto :goto_38

    :catch_26
    move-exception p2

    goto :goto_38

    :catch_28
    move-exception p2

    goto :goto_38

    :catch_2a
    move-exception p2

    goto :goto_38

    :catchall_2c
    move-exception p2

    move-object p1, v0

    goto :goto_58

    :catch_2f
    move-exception p2

    :goto_30
    move-object p1, v0

    goto :goto_38

    :catch_32
    move-exception p2

    goto :goto_30

    :catch_34
    move-exception p2

    goto :goto_30

    :catch_36
    move-exception p2

    goto :goto_30

    :goto_38
    const-string v1, "X509CertificateUtil"

    .line 7
    :try_start_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadBksCA: exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_3a .. :try_end_52} :catchall_57

    move-object p2, v0

    .line 9
    :goto_53
    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/InputStream;)V

    return-object p2

    :catchall_57
    move-exception p2

    :goto_58
    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/InputStream;)V

    .line 10
    throw p2
.end method

.method public b()Ljava/security/cert/X509Certificate;
    .registers 3

    const-string v0, "hmsrootcas.bks"

    const-string v1, "052root"

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/huawei/secure/android/common/ssl/util/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
