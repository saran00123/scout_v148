.class public Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final c:Ljava/lang/String; = "SecureX509TrustManager"

.field public static final d:Ljava/lang/String; = "hmsrootcas.bks"

.field private static final e:Ljava/lang/String; = ""

.field private static final f:Ljava/lang/String; = "X509"

.field private static final g:Ljava/lang/String; = "bks"

.field private static final h:Ljava/lang/String; = "AndroidCAStore"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/net/ssl/X509TrustManager;",
            ">;"
        }
    .end annotation
.end field

.field private b:[Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a:Ljava/util/List;

    if-eqz p1, :cond_28

    .line 39
    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/util/c;->a(Landroid/content/Context;)V

    if-eqz p2, :cond_14

    .line 41
    invoke-direct {p0}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a()V

    .line 43
    :cond_14
    invoke-direct {p0, p1}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a(Landroid/content/Context;)V

    .line 44
    iget-object p1, p0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_20

    return-void

    .line 45
    :cond_20
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string p2, "X509TrustManager is empty"

    invoke-direct {p1, p2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a:Ljava/util/List;

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a:Ljava/util/List;

    if-eqz p3, :cond_f

    .line 298
    invoke-direct {p0}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a()V

    .line 300
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, v0}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a:Ljava/util/List;

    .line 185
    :try_start_a
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_1f

    :try_start_f
    const-string p1, ""

    .line 187
    invoke-direct {p0, v0, p1}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1d

    .line 189
    invoke-static {v0}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/InputStream;)V

    if-eqz p2, :cond_1c

    .line 192
    invoke-direct {p0}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a()V

    :cond_1c
    return-void

    :catchall_1d
    move-exception p1

    goto :goto_21

    :catchall_1f
    move-exception p1

    const/4 v0, 0x0

    .line 193
    :goto_21
    invoke-static {v0}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/InputStream;)V

    .line 194
    throw p1
.end method

.method private a()V
    .registers 7

    .line 1
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    const-string v1, "loadSystemCA"

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_b
    const-string v2, "AndroidCAStore"

    .line 4
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v2, v3, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v3, "X509"

    .line 6
    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v3

    .line 7
    invoke-virtual {v3, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 8
    invoke-virtual {v3}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 9
    :goto_23
    array-length v4, v2

    if-ge v3, v4, :cond_59

    .line 10
    aget-object v4, v2, v3

    instance-of v4, v4, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_35

    .line 11
    iget-object v4, p0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a:Ljava/util/List;

    aget-object v5, v2, v3

    check-cast v5, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/security/KeyStoreException; {:try_start_b .. :try_end_35} :catch_3e
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_35} :catch_3c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_35} :catch_3a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_35} :catch_38

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :catch_38
    move-exception v2

    goto :goto_3f

    :catch_3a
    move-exception v2

    goto :goto_3f

    :catch_3c
    move-exception v2

    goto :goto_3f

    :catch_3e
    move-exception v2

    .line 15
    :goto_3f
    sget-object v3, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadSystemCA: exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_59
    sget-object v2, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadSystemCA: cost : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/huawei/secure/android/common/ssl/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    const-string v1, "loadBksCA"

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 20
    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/util/BksUtil;->getFilesBksIS(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 25
    :try_start_11
    sget-object v3, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    const-string v4, "get bks not from assets"

    invoke-static {v3, v4}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, v2}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a(Ljava/io/InputStream;)V
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_1b} :catch_22
    .catch Ljava/security/KeyStoreException; {:try_start_11 .. :try_end_1b} :catch_20
    .catch Ljava/security/cert/CertificateException; {:try_start_11 .. :try_end_1b} :catch_1e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1b} :catch_1c

    goto :goto_3f

    :catch_1c
    move-exception v3

    goto :goto_23

    :catch_1e
    move-exception v3

    goto :goto_23

    :catch_20
    move-exception v3

    goto :goto_23

    :catch_22
    move-exception v3

    .line 28
    :goto_23
    sget-object v4, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadBksCA: exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v3, 0x1

    :goto_40
    if-eqz v3, :cond_44

    if-nez v2, :cond_58

    .line 33
    :cond_44
    sget-object v2, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    const-string v3, " get bks from assets "

    invoke-static {v2, v3}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v2, "hmsrootcas.bks"

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a(Ljava/io/InputStream;)V

    .line 37
    :cond_58
    sget-object p1, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadBksCA: cost : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/secure/android/common/ssl/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string v0, "X509"

    .line 38
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const-string v1, "bks"

    .line 39
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const-string v2, ""

    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 41
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 42
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 43
    :goto_1d
    array-length v2, v0

    if-ge v1, v2, :cond_32

    .line 44
    aget-object v2, v0, v1

    instance-of v2, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_2f

    .line 45
    iget-object v2, p0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a:Ljava/util/List;

    aget-object v3, v0, v1

    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catchall {:try_start_0 .. :try_end_2f} :catchall_36

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 49
    :cond_32
    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/InputStream;)V

    return-void

    :catchall_36
    move-exception v0

    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/InputStream;)V

    .line 50
    throw v0
.end method

.method private a(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_87

    if-eqz p2, :cond_87

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_8
    const-string v2, "X509"

    .line 53
    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    const-string v3, "bks"

    .line 54
    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 55
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 56
    invoke-virtual {v2, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 57
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p2

    const/4 v2, 0x0

    .line 58
    :goto_23
    array-length v3, p2

    if-ge v2, v3, :cond_38

    .line 59
    aget-object v3, p2, v2

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_35

    .line 60
    iget-object v3, p0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a:Ljava/util/List;

    aget-object v4, p2, v2

    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_35} :catch_44
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_35} :catch_42
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_35} :catch_40
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_35} :catch_3e
    .catchall {:try_start_8 .. :try_end_35} :catchall_3c

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 66
    :cond_38
    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/InputStream;)V

    goto :goto_62

    :catchall_3c
    move-exception p2

    goto :goto_83

    :catch_3e
    move-exception p2

    goto :goto_45

    :catch_40
    move-exception p2

    goto :goto_45

    :catch_42
    move-exception p2

    goto :goto_45

    :catch_44
    move-exception p2

    .line 67
    :goto_45
    :try_start_45
    sget-object v2, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadInputStream: exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_45 .. :try_end_5f} :catchall_3c

    .line 69
    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/InputStream;)V

    .line 71
    :goto_62
    sget-object p1, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadInputStream: cost : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/secure/android/common/ssl/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 72
    :goto_83
    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/util/f;->a(Ljava/io/InputStream;)V

    .line 73
    throw p2

    .line 74
    :cond_87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "inputstream or trustPwd is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    const-string v1, "checkClientTrusted: "

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "checkServerTrusted CertificateException"

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    .line 4
    :try_start_1b
    invoke-interface {v1, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/security/cert/CertificateException; {:try_start_1b .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception v1

    .line 7
    sget-object v3, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 10
    :cond_39
    new-instance p1, Ljava/security/cert/CertificateException;

    invoke-direct {p1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->setChain([Ljava/security/cert/X509Certificate;)V

    .line 2
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkServerTrusted begin ,server ca chain size is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,auth type is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_29
    if-ge v4, v2, :cond_7e

    aget-object v5, p1, v4

    .line 6
    sget-object v6, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "server ca chain: getSubjectDN is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/secure/android/common/ssl/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v6, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IssuerDN :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/secure/android/common/ssl/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object v6, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SerialNumber : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/huawei/secure/android/common/ssl/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 11
    :cond_7e
    iget-object v2, p0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_85
    if-ge v4, v2, :cond_158

    .line 14
    :try_start_87
    sget-object v5, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check server i : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v5, p0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/X509TrustManager;

    .line 16
    invoke-interface {v5}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v6

    if-eqz v6, :cond_e5

    .line 18
    sget-object v7, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "client root ca size is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v3

    .line 19
    :goto_c3
    array-length v8, v6

    if-ge v7, v8, :cond_e5

    .line 20
    sget-object v8, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "client root ca getIssuerDN :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v6, v7

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/huawei/secure/android/common/ssl/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_c3

    .line 23
    :cond_e5
    invoke-interface {v5, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 24
    sget-object v5, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkServerTrusted succeed ,root ca issuer is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    aget-object v7, p1, v7

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_107
    .catch Ljava/security/cert/CertificateException; {:try_start_87 .. :try_end_107} :catch_108

    return-void

    :catch_108
    move-exception v5

    .line 27
    sget-object v6, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkServerTrusted error :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " , time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v2, -0x1

    if-ne v4, v6, :cond_154

    if-eqz p1, :cond_153

    .line 30
    array-length p2, p1

    if-lez p2, :cond_153

    .line 31
    sget-object p2, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "root ca issuer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_153
    throw v5

    :cond_154
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_85

    .line 37
    :cond_158
    sget-object p1, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkServerTrusted: cost : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/secure/android/common/ssl/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    .line 3
    invoke-interface {v2}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    .line 6
    :cond_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    return-object v0

    :catch_30
    move-exception v0

    .line 8
    sget-object v1, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAcceptedIssuers exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getChain()[Ljava/security/cert/X509Certificate;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->b:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getX509TrustManagers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljavax/net/ssl/X509TrustManager;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a:Ljava/util/List;

    return-object v0
.end method

.method public setChain([Ljava/security/cert/X509Certificate;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->b:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public setX509TrustManagers(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/net/ssl/X509TrustManager;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->a:Ljava/util/List;

    return-void
.end method
