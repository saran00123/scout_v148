.class public Lorg/android/spdy/SessionInfo;
.super Ljava/lang/Object;
.source "SessionInfo.java"


# static fields
.field private static INVALID_PUBLIC_SEQNUM:I = -0x1


# instance fields
.field private certHost:Ljava/lang/String;

.field private connTimeoutMs:I

.field private domain:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private mode:I

.field private port:I

.field private proxyHost:Ljava/lang/String;

.field private proxyPort:I

.field private pubkey_seqnum:I

.field private sessionCb:Lorg/android/spdy/SessionCb;

.field private sessionUserData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lorg/android/spdy/SessionCb;I)V
    .registers 10

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/android/spdy/SessionInfo;->certHost:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lorg/android/spdy/SessionInfo;->host:Ljava/lang/String;

    .line 19
    iput p2, p0, Lorg/android/spdy/SessionInfo;->port:I

    .line 20
    iput-object p3, p0, Lorg/android/spdy/SessionInfo;->domain:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lorg/android/spdy/SessionInfo;->proxyHost:Ljava/lang/String;

    .line 22
    iput p5, p0, Lorg/android/spdy/SessionInfo;->proxyPort:I

    .line 23
    iput-object p6, p0, Lorg/android/spdy/SessionInfo;->sessionUserData:Ljava/lang/Object;

    .line 24
    iput-object p7, p0, Lorg/android/spdy/SessionInfo;->sessionCb:Lorg/android/spdy/SessionCb;

    .line 25
    iput p8, p0, Lorg/android/spdy/SessionInfo;->mode:I

    .line 26
    sget p1, Lorg/android/spdy/SessionInfo;->INVALID_PUBLIC_SEQNUM:I

    iput p1, p0, Lorg/android/spdy/SessionInfo;->pubkey_seqnum:I

    const/4 p1, -0x1

    .line 27
    iput p1, p0, Lorg/android/spdy/SessionInfo;->connTimeoutMs:I

    return-void
.end method


# virtual methods
.method getAuthority()Ljava/lang/String;
    .registers 4

    .line 31
    iget-object v0, p0, Lorg/android/spdy/SessionInfo;->proxyHost:Ljava/lang/String;

    const-string v1, ":"

    if-eqz v0, :cond_33

    iget v0, p0, Lorg/android/spdy/SessionInfo;->proxyPort:I

    if-eqz v0, :cond_33

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/android/spdy/SessionInfo;->host:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/android/spdy/SessionInfo;->port:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/android/spdy/SessionInfo;->proxyHost:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/android/spdy/SessionInfo;->proxyPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 34
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/android/spdy/SessionInfo;->host:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/android/spdy/SessionInfo;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCertHost()Ljava/lang/String;
    .registers 3

    .line 39
    iget v0, p0, Lorg/android/spdy/SessionInfo;->pubkey_seqnum:I

    sget v1, Lorg/android/spdy/SessionInfo;->INVALID_PUBLIC_SEQNUM:I

    if-eq v0, v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_8
    iget-object v0, p0, Lorg/android/spdy/SessionInfo;->certHost:Ljava/lang/String;

    return-object v0
.end method

.method getConnectionTimeoutMs()I
    .registers 2

    .line 65
    iget v0, p0, Lorg/android/spdy/SessionInfo;->connTimeoutMs:I

    return v0
.end method

.method getDomain()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lorg/android/spdy/SessionInfo;->domain:Ljava/lang/String;

    return-object v0
.end method

.method getMode()I
    .registers 2

    .line 56
    iget v0, p0, Lorg/android/spdy/SessionInfo;->mode:I

    return v0
.end method

.method getPubKeySeqNum()I
    .registers 2

    .line 71
    iget v0, p0, Lorg/android/spdy/SessionInfo;->pubkey_seqnum:I

    return v0
.end method

.method getSessionCb()Lorg/android/spdy/SessionCb;
    .registers 2

    .line 53
    iget-object v0, p0, Lorg/android/spdy/SessionInfo;->sessionCb:Lorg/android/spdy/SessionCb;

    return-object v0
.end method

.method getSessonUserData()Ljava/lang/Object;
    .registers 2

    .line 50
    iget-object v0, p0, Lorg/android/spdy/SessionInfo;->sessionUserData:Ljava/lang/Object;

    return-object v0
.end method

.method public setCertHost(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lorg/android/spdy/SessionInfo;->certHost:Ljava/lang/String;

    return-void
.end method

.method public setConnectionTimeoutMs(I)V
    .registers 2

    .line 62
    iput p1, p0, Lorg/android/spdy/SessionInfo;->connTimeoutMs:I

    return-void
.end method

.method public setPubKeySeqNum(I)V
    .registers 2

    .line 68
    iput p1, p0, Lorg/android/spdy/SessionInfo;->pubkey_seqnum:I

    return-void
.end method
