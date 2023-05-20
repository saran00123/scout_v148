.class Lcom/ta/a/d/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static a:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .registers 4

    const-class v0, Lcom/ta/a/d/g;

    monitor-enter v0

    .line 21
    :try_start_3
    sget-object v1, Lcom/ta/a/d/g;->a:[Ljavax/net/ssl/TrustManager;

    if-nez v1, :cond_14

    const/4 v1, 0x1

    .line 22
    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/ta/a/d/g;

    invoke-direct {v3}, Lcom/ta/a/d/g;-><init>()V

    aput-object v3, v1, v2

    sput-object v1, Lcom/ta/a/d/g;->a:[Ljavax/net/ssl/TrustManager;

    .line 25
    :cond_14
    sget-object v1, Lcom/ta/a/d/g;->a:[Ljavax/net/ssl/TrustManager;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_4e

    .line 35
    array-length v0, p1

    if-lez v0, :cond_4e

    :try_start_5
    const-string v0, "X509"

    .line 41
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 42
    check-cast v1, Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_11} :catch_47
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_11} :catch_40

    if-eqz v0, :cond_3f

    .line 49
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 50
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v1, :cond_3f

    aget-object v3, v0, v2

    .line 52
    :try_start_23
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v3, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/security/cert/CertificateException; {:try_start_23 .. :try_end_28} :catch_2b

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :catch_2b
    move-exception p1

    move-object p2, p1

    :goto_2d
    if-eqz p2, :cond_3e

    .line 56
    instance-of v0, p2, Ljava/security/cert/CertificateExpiredException;

    if-nez v0, :cond_3d

    instance-of v0, p2, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz v0, :cond_38

    goto :goto_3d

    .line 60
    :cond_38
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_2d

    :cond_3d
    :goto_3d
    return-void

    .line 62
    :cond_3e
    throw p1

    :cond_3f
    return-void

    :catch_40
    move-exception p1

    .line 46
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_47
    move-exception p1

    .line 44
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 36
    :cond_4e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "checkServerTrusted: X509Certificate array is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    const/4 v0, 0x0

    .line 70
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
