.class public Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "SourceFile"


# static fields
.field public static final BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private static final i:Ljava/lang/String;

.field private static volatile j:Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;


# instance fields
.field private a:Ljavax/net/ssl/SSLContext;

.field private b:Ljavax/net/ssl/SSLSocket;

.field private c:Landroid/content/Context;

.field private d:[Ljava/lang/String;

.field private e:Ljavax/net/ssl/X509TrustManager;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    sput-object v0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 8
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    sput-object v0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 10
    const-class v0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->j:Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;

    return-void
.end method

.method private constructor <init>(Ljava/security/KeyStore;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->b:Ljavax/net/ssl/SSLSocket;

    return-void
.end method

.method private constructor <init>(Ljava/security/KeyStore;Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->b:Ljavax/net/ssl/SSLSocket;

    if-nez p2, :cond_10

    .line 34
    sget-object p1, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->i:Ljava/lang/String;

    const-string p2, "SecureSSLSocketFactory: context is null"

    invoke-static {p1, p2}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 37
    :cond_10
    invoke-virtual {p0, p2}, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->setContext(Landroid/content/Context;)V

    .line 38
    invoke-static {}, Lcom/huawei/secure/android/common/ssl/SSLUtil;->setSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->setSslContext(Ljavax/net/ssl/SSLContext;)V

    .line 39
    invoke-static {p2}, Lcom/huawei/secure/android/common/ssl/SecureX509SingleInstance;->getInstance(Landroid/content/Context;)Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->e:Ljavax/net/ssl/X509TrustManager;

    .line 40
    iget-object p2, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/X509TrustManager;

    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->e:Ljavax/net/ssl/X509TrustManager;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2, p1, v0, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->b:Ljavax/net/ssl/SSLSocket;

    .line 100
    invoke-static {}, Lcom/huawei/secure/android/common/ssl/SSLUtil;->setSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    .line 101
    new-instance v0, Lcom/huawei/secure/android/common/ssl/HiCloudX509TrustManager;

    invoke-direct {v0, p2, p3}, Lcom/huawei/secure/android/common/ssl/HiCloudX509TrustManager;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->setX509TrustManager(Ljavax/net/ssl/X509TrustManager;)V

    .line 103
    iget-object p2, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    const/4 p3, 0x1

    new-array p3, p3, [Ljavax/net/ssl/X509TrustManager;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-virtual {p2, p1, p3, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljavax/net/ssl/X509TrustManager;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->b:Ljavax/net/ssl/SSLSocket;

    .line 186
    invoke-static {}, Lcom/huawei/secure/android/common/ssl/SSLUtil;->setSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    .line 187
    invoke-virtual {p0, p2}, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->setX509TrustManager(Ljavax/net/ssl/X509TrustManager;)V

    .line 188
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/X509TrustManager;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1, p1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .registers 6

    .line 21
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->h:[Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/secure/android/common/ssl/util/a;->a([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    .line 22
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->i:Ljava/lang/String;

    const-string v3, "set protocols"

    invoke-static {v0, v3}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iget-object v3, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->h:[Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/huawei/secure/android/common/ssl/SSLUtil;->setEnabledProtocols(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    .line 27
    :goto_1c
    iget-object v3, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->g:[Ljava/lang/String;

    invoke-static {v3}, Lcom/huawei/secure/android/common/ssl/util/a;->a([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->f:[Ljava/lang/String;

    invoke-static {v3}, Lcom/huawei/secure/android/common/ssl/util/a;->a([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_2f

    :cond_2d
    move v1, v2

    goto :goto_4f

    .line 28
    :cond_2f
    :goto_2f
    sget-object v2, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->i:Ljava/lang/String;

    const-string v3, "set white cipher or black cipher"

    invoke-static {v2, v3}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    move-object v2, p1

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-static {v2}, Lcom/huawei/secure/android/common/ssl/SSLUtil;->setEnabledProtocols(Ljavax/net/ssl/SSLSocket;)V

    .line 30
    iget-object v3, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->g:[Ljava/lang/String;

    invoke-static {v3}, Lcom/huawei/secure/android/common/ssl/util/a;->a([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 31
    iget-object v3, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->g:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/huawei/secure/android/common/ssl/SSLUtil;->setWhiteListCipherSuites(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    goto :goto_4f

    .line 33
    :cond_4a
    iget-object v3, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->f:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/huawei/secure/android/common/ssl/SSLUtil;->setBlackListCipherSuites(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    :goto_4f
    if-nez v0, :cond_5e

    .line 39
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->i:Ljava/lang/String;

    const-string v2, "set default protocols"

    invoke-static {v0, v2}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Lcom/huawei/secure/android/common/ssl/SSLUtil;->setEnabledProtocols(Ljavax/net/ssl/SSLSocket;)V

    :cond_5e
    if-nez v1, :cond_6c

    .line 44
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->i:Ljava/lang/String;

    const-string v1, "set default cipher suites"

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/SSLUtil;->setEnableSafeCipherSuites(Ljavax/net/ssl/SSLSocket;)V

    :cond_6c
    return-void
.end method

.method static a(Ljavax/net/ssl/X509TrustManager;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->i:Ljava/lang/String;

    const-string v1, "sasf update socket factory trust manager"

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :try_start_7
    new-instance v0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;-><init>(Ljava/security/KeyStore;Ljavax/net/ssl/X509TrustManager;)V

    sput-object v0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->j:Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_f} :catch_38
    .catch Ljava/security/KeyManagementException; {:try_start_7 .. :try_end_f} :catch_30
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_7 .. :try_end_f} :catch_28
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_f} :catch_20
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_f} :catch_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_3f

    .line 15
    :catch_10
    sget-object p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->i:Ljava/lang/String;

    const-string v0, "IOException"

    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 16
    :catch_18
    sget-object p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->i:Ljava/lang/String;

    const-string v0, "CertificateException"

    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 17
    :catch_20
    sget-object p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->i:Ljava/lang/String;

    const-string v0, "KeyStoreException"

    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 18
    :catch_28
    sget-object p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->i:Ljava/lang/String;

    const-string v0, "UnrecoverableKeyException"

    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 19
    :catch_30
    sget-object p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->i:Ljava/lang/String;

    const-string v0, "KeyManagementException"

    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3f

    .line 20
    :catch_38
    sget-object p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->i:Ljava/lang/String;

    const-string v0, "NoSuchAlgorithmException"

    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3f
    return-void
.end method

.method public static getInstance(Ljava/security/KeyStore;Landroid/content/Context;)Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/util/c;->a(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->j:Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;

    if-nez v0, :cond_1a

    .line 3
    const-class v0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;

    monitor-enter v0

    .line 4
    :try_start_a
    sget-object v1, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->j:Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;

    if-nez v1, :cond_15

    .line 5
    new-instance v1, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;

    invoke-direct {v1, p0, p1}, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;-><init>(Ljava/security/KeyStore;Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->j:Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;

    .line 7
    :cond_15
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_17

    throw p0

    .line 10
    :cond_1a
    :goto_1a
    sget-object p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->j:Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;

    return-object p0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->i:Ljava/lang/String;

    const-string v1, "createSocket: "

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 9
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_2b

    .line 10
    invoke-direct {p0, v0}, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->a(Ljava/net/Socket;)V

    .line 11
    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    iput-object v1, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->b:Ljavax/net/ssl/SSLSocket;

    .line 12
    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->b:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->d:[Ljava/lang/String;

    :cond_2b
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->i:Ljava/lang/String;

    const-string v1, "createSocket: socket host port autoClose"

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    .line 3
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_2b

    .line 4
    invoke-direct {p0, p1}, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->a(Ljava/net/Socket;)V

    .line 5
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    iput-object p2, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->b:Ljavax/net/ssl/SSLSocket;

    .line 6
    iget-object p2, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->b:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->d:[Ljava/lang/String;

    :cond_2b
    return-object p1
.end method

.method public getBlackCiphers()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public getChain()[Ljava/security/cert/X509Certificate;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->e:Ljavax/net/ssl/X509TrustManager;

    instance-of v1, v0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    if-eqz v1, :cond_d

    .line 2
    check-cast v0, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    invoke-virtual {v0}, Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;->getChain()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->c:Landroid/content/Context;

    return-object v0
.end method

.method public getProtocols()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public getSslContext()Ljavax/net/ssl/SSLContext;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public getSslSocket()Ljavax/net/ssl/SSLSocket;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->b:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->d:[Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getWhiteCiphers()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->e:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public setBlackCiphers([Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->f:[Ljava/lang/String;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->c:Landroid/content/Context;

    return-void
.end method

.method public setProtocols([Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->h:[Ljava/lang/String;

    return-void
.end method

.method public setSslContext(Ljavax/net/ssl/SSLContext;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method public setSslSocket(Ljavax/net/ssl/SSLSocket;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->b:Ljavax/net/ssl/SSLSocket;

    return-void
.end method

.method public setWhiteCiphers([Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->g:[Ljava/lang/String;

    return-void
.end method

.method public setX509TrustManager(Ljavax/net/ssl/X509TrustManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SecureApacheSSLSocketFactory;->e:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method
