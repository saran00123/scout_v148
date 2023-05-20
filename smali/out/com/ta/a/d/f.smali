.class Lcom/ta/a/d/f;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/reflect/Method;

.field private d:Ljava/lang/String;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/ta/a/d/f;->a:Ljava/lang/reflect/Method;

    .line 27
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/a/d/f;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 30
    iput-object p1, p0, Lcom/ta/a/d/f;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 71
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "peerHost"

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/ta/a/d/f;->d:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    const-string v4, "host"

    aput-object v4, v0, v2

    const/4 v4, 0x3

    aput-object p2, v0, v4

    const/4 p2, 0x4

    const-string v4, "port"

    aput-object v4, v0, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, 0x5

    aput-object p2, v0, v4

    const/4 p2, 0x6

    const-string v4, "autoClose"

    aput-object v4, v0, p2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v4, 0x7

    aput-object p2, v0, v4

    const-string p2, ""

    invoke-static {p2, v0}, Lcom/ta/a/e/h;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-static {v1}, Landroid/net/SSLCertificateSocketFactory;->getDefault(I)Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Landroid/net/SSLCertificateSocketFactory;

    .line 78
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-ge v4, v5, :cond_47

    .line 79
    invoke-static {}, Lcom/ta/a/d/g;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/SSLCertificateSocketFactory;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V

    goto :goto_4e

    .line 81
    :cond_47
    invoke-static {}, Lcom/ta/a/d/c;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/SSLCertificateSocketFactory;->setTrustManagers([Ljavax/net/ssl/TrustManager;)V

    .line 84
    :goto_4e
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "createSocket"

    aput-object v5, v4, v1

    invoke-static {p2, v4}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_6d

    .line 87
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz p4, :cond_66

    .line 90
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 92
    :cond_66
    invoke-virtual {v0, v4, p3}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    goto :goto_75

    .line 95
    :cond_6d
    iget-object p4, p0, Lcom/ta/a/d/f;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, p4, p3, v3}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 97
    :goto_75
    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "createSocket end"

    aput-object p4, p3, v1

    invoke-static {p2, p3}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 102
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x11

    if-lt p3, p4, :cond_91

    .line 103
    iget-object p3, p0, Lcom/ta/a/d/f;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Landroid/net/SSLCertificateSocketFactory;->setHostname(Ljava/net/Socket;Ljava/lang/String;)V

    goto :goto_c4

    .line 106
    :cond_91
    :try_start_91
    iget-object p3, p0, Lcom/ta/a/d/f;->a:Ljava/lang/reflect/Method;

    if-nez p3, :cond_ac

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string p4, "setHostname"

    new-array v0, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v0, v1

    invoke-virtual {p3, p4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lcom/ta/a/d/f;->a:Ljava/lang/reflect/Method;

    .line 108
    iget-object p3, p0, Lcom/ta/a/d/f;->a:Ljava/lang/reflect/Method;

    invoke-virtual {p3, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 110
    :cond_ac
    iget-object p3, p0, Lcom/ta/a/d/f;->a:Ljava/lang/reflect/Method;

    new-array p4, v3, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/ta/a/d/f;->d:Ljava/lang/String;

    aput-object v0, p4, v1

    invoke-virtual {p3, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_b7} :catch_b8

    goto :goto_c4

    :catch_b8
    move-exception p3

    .line 112
    new-array p4, v2, [Ljava/lang/Object;

    const-string v0, "SNI not useable"

    aput-object v0, p4, v1

    aput-object p3, p4, v3

    invoke-static {p2, p4}, Lcom/ta/a/e/h;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :goto_c4
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p3

    .line 118
    iget-object p4, p0, Lcom/ta/a/d/f;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p0, Lcom/ta/a/d/f;->d:Ljava/lang/String;

    invoke-interface {p4, v0, p3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p4

    if-eqz p4, :cond_e2

    .line 122
    new-array p4, v2, [Ljava/lang/Object;

    const-string v0, "SSLSession PeerHost"

    aput-object v0, p4, v1

    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p4, v3

    invoke-static {p2, p4}, Lcom/ta/a/e/h;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1

    .line 119
    :cond_e2
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot verify hostname: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/ta/a/d/f;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/ta/a/d/f;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    instance-of v0, p1, Lcom/ta/a/d/f;

    if-nez v0, :cond_e

    goto :goto_20

    .line 131
    :cond_e
    check-cast p1, Lcom/ta/a/d/f;

    iget-object p1, p1, Lcom/ta/a/d/f;->d:Ljava/lang/String;

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    .line 135
    :cond_19
    iget-object v0, p0, Lcom/ta/a/d/f;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_20
    :goto_20
    return v1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 61
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 66
    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
