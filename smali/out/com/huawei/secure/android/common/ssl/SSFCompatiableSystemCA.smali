.class public Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SourceFile"


# static fields
.field private static final i:Ljava/lang/String; = "SSFCompatiableSystemCA"

.field private static volatile j:Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;


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
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->a:Ljavax/net/ssl/SSLContext;

    .line 3
    iput-object v0, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->b:Ljavax/net/ssl/SSLSocket;

    if-nez p1, :cond_12

    .line 25
    sget-object p1, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->i:Ljava/lang/String;

    const-string v0, "SecureSSLSocketFactory: context is null"

    invoke-static {p1, v0}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 28
    :cond_12
    invoke-virtual {p0, p1}, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->setContext(Landroid/content/Context;)V

    .line 29
    invoke-static {}, Lcom/huawei/secure/android/common/ssl/SSLUtil;->setSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->setSslContext(Ljavax/net/ssl/SSLContext;)V

    .line 30
    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/SSFSecureX509SingleInstance;->getInstance(Landroid/content/Context;)Lcom/huawei/secure/android/common/ssl/SecureX509TrustManager;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->e:Ljavax/net/ssl/X509TrustManager;

    .line 31
    iget-object p1, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->a:Ljavax/net/ssl/SSLContext;

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/X509TrustManager;

    iget-object v2, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->e:Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->a:Ljavax/net/ssl/SSLContext;

    .line 34
    iput-object v0, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->b:Ljavax/net/ssl/SSLSocket;

    .line 94
    invoke-static {}, Lcom/huawei/secure/android/common/ssl/SSLUtil;->setSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->a:Ljavax/net/ssl/SSLContext;

    .line 95
    invoke-virtual {p0, p1}, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->setX509TrustManager(Ljavax/net/ssl/X509TrustManager;)V

    .line 96
    iget-object v1, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->a:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/X509TrustManager;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method

.method private a(Ljava/net/Socket;)V
    .registers 6

    .line 14
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->h:[Ljava/lang/String;

    invoke-static {v0}, Lcom/huawei/secure/android/common/ssl/util/a;->a([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    .line 15
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->i:Ljava/lang/String;

    const-string v3, "set protocols"

    invoke-static {v0, v3}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iget-object v3, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->h:[Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/huawei/secure/android/common/ssl/SSLUtil;->setEnabledProtocols(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    .line 20
    :goto_1c
    iget-object v3, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->g:[Ljava/lang/String;

    invoke-static {v3}, Lcom/huawei/secure/android/common/ssl/util/a;->a([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->f:[Ljava/lang/String;

    invoke-static {v3}, Lcom/huawei/secure/android/common/ssl/util/a;->a([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_2f

    :cond_2d
    move v1, v2

    goto :goto_4f

    .line 21
    :cond_2f
    :goto_2f
    sget-object v2, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->i:Ljava/lang/String;

    const-string v3, "set white cipher or black cipher"

    invoke-static {v2, v3}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    move-object v2, p1

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-static {v2}, Lcom/huawei/secure/android/common/ssl/SSLUtil;->setEnabledProtocols(Ljavax/net/ssl/SSLSocket;)V

    .line 23
    iget-object v3, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->g:[Ljava/lang/String;

    invoke-static {v3}, Lcom/huawei/secure/android/common/ssl/util/a;->a([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 24
    iget-object v3, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->g:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/huawei/secure/android/common/ssl/SSLUtil;->setWhiteListCipherSuites(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    goto :goto_4f

    .line 26
    :cond_4a
    iget-object v3, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->f:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/huawei/secure/android/common/ssl/SSLUtil;->setBlackListCipherSuites(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)Z

    :goto_4f
    if-nez v0, :cond_5e

    .line 32
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->i:Ljava/lang/String;

    const-string v2, "set default protocols"

    invoke-static {v0, v2}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-static {v0}, Lcom/huawei/secure/android/common/ssl/SSLUtil;->setEnabledProtocols(Ljavax/net/ssl/SSLSocket;)V

    :cond_5e
    if-nez v1, :cond_6c

    .line 37
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->i:Ljava/lang/String;

    const-string v1, "set default cipher suites"

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    invoke-static {p1}, Lcom/huawei/secure/android/common/ssl/SSLUtil;->setEnableSafeCipherSuites(Ljavax/net/ssl/SSLSocket;)V

    :cond_6c
    return-void
.end method

.method static a(Ljavax/net/ssl/X509TrustManager;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->i:Ljava/lang/String;

    const-string v1, "ssfc update socket factory trust manager"

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    :try_start_b
    new-instance v2, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;

    invoke-direct {v2, p0}, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    sput-object v2, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->j:Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_12} :catch_1b
    .catch Ljava/security/KeyManagementException; {:try_start_b .. :try_end_12} :catch_13

    goto :goto_22

    .line 8
    :catch_13
    sget-object p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->i:Ljava/lang/String;

    const-string v2, "KeyManagementException"

    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    .line 9
    :catch_1b
    sget-object p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->i:Ljava/lang/String;

    const-string v2, "NoSuchAlgorithmException"

    invoke-static {p0, v2}, Lcom/huawei/secure/android/common/ssl/util/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :goto_22
    sget-object p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSF system ca update: cost : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/ssl/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/KeyManagementException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/huawei/secure/android/common/ssl/util/c;->a(Landroid/content/Context;)V

    .line 2
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->j:Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;

    if-nez v0, :cond_1a

    .line 3
    const-class v0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;

    monitor-enter v0

    .line 4
    :try_start_a
    sget-object v1, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->j:Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;

    if-nez v1, :cond_15

    .line 5
    new-instance v1, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;

    invoke-direct {v1, p0}, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->j:Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;

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

    .line 9
    :cond_1a
    :goto_1a
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->j:Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;

    iget-object v0, v0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->c:Landroid/content/Context;

    if-nez v0, :cond_27

    if-eqz p0, :cond_27

    .line 10
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->j:Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;

    invoke-virtual {v0, p0}, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->setContext(Landroid/content/Context;)V

    .line 12
    :cond_27
    sget-object p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->j:Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;

    return-object p0
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->i:Ljava/lang/String;

    const-string v1, "createSocket: host , port"

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    .line 3
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_2b

    .line 4
    invoke-direct {p0, p1}, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->a(Ljava/net/Socket;)V

    .line 5
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    iput-object p2, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->b:Ljavax/net/ssl/SSLSocket;

    .line 6
    iget-object p2, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->b:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->d:[Ljava/lang/String;

    :cond_2b
    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->i:Ljava/lang/String;

    const-string v1, "createSocket: s , host , port , autoClose"

    invoke-static {v0, v1}, Lcom/huawei/secure/android/common/ssl/util/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    .line 12
    instance-of p2, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz p2, :cond_2b

    .line 13
    invoke-direct {p0, p1}, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->a(Ljava/net/Socket;)V

    .line 14
    move-object p2, p1

    check-cast p2, Ljavax/net/ssl/SSLSocket;

    iput-object p2, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->b:Ljavax/net/ssl/SSLSocket;

    .line 15
    iget-object p2, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->b:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->d:[Ljava/lang/String;

    :cond_2b
    return-object p1
.end method

.method public getBlackCiphers()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public getChain()[Ljava/security/cert/X509Certificate;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->e:Ljavax/net/ssl/X509TrustManager;

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
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->c:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getProtocols()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->h:[Ljava/lang/String;

    return-object v0
.end method

.method public getSslContext()Ljavax/net/ssl/SSLContext;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->a:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public getSslSocket()Ljavax/net/ssl/SSLSocket;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->b:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->d:[Ljava/lang/String;

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
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->g:[Ljava/lang/String;

    return-object v0
.end method

.method public getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->e:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method public setBlackCiphers([Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->f:[Ljava/lang/String;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->c:Landroid/content/Context;

    return-void
.end method

.method public setProtocols([Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->h:[Ljava/lang/String;

    return-void
.end method

.method public setSslContext(Ljavax/net/ssl/SSLContext;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->a:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method public setWhiteCiphers([Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->g:[Ljava/lang/String;

    return-void
.end method

.method public setX509TrustManager(Ljavax/net/ssl/X509TrustManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/ssl/SSFCompatiableSystemCA;->e:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method
