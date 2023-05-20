.class public Lanet/channel/session/TnetSpdySession;
.super Lanet/channel/Session;
.source "Taobao"

# interfaces
.implements Lorg/android/spdy/SessionCb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/session/TnetSpdySession$a;
    }
.end annotation


# instance fields
.field protected A:J

.field protected B:I

.field protected C:Lanet/channel/DataFrameCb;

.field protected D:Lanet/channel/heartbeat/IHeartbeat;

.field protected E:Lanet/channel/IAuth;

.field protected F:Ljava/lang/String;

.field protected G:Lanet/channel/security/ISecurity;

.field private H:I

.field private I:Z

.field protected w:Lorg/android/spdy/SpdyAgent;

.field protected x:Lorg/android/spdy/SpdySession;

.field protected volatile y:Z

.field protected z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lanet/channel/entity/a;)V
    .registers 5

    .line 94
    invoke-direct {p0, p1, p2}, Lanet/channel/Session;-><init>(Landroid/content/Context;Lanet/channel/entity/a;)V

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lanet/channel/session/TnetSpdySession;->y:Z

    const-wide/16 v0, 0x0

    .line 77
    iput-wide v0, p0, Lanet/channel/session/TnetSpdySession;->A:J

    .line 78
    iput p1, p0, Lanet/channel/session/TnetSpdySession;->H:I

    const/4 p2, -0x1

    .line 80
    iput p2, p0, Lanet/channel/session/TnetSpdySession;->B:I

    const/4 p2, 0x0

    .line 81
    iput-object p2, p0, Lanet/channel/session/TnetSpdySession;->C:Lanet/channel/DataFrameCb;

    .line 82
    iput-object p2, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    .line 83
    iput-object p2, p0, Lanet/channel/session/TnetSpdySession;->E:Lanet/channel/IAuth;

    .line 84
    iput-object p2, p0, Lanet/channel/session/TnetSpdySession;->F:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lanet/channel/session/TnetSpdySession;->G:Lanet/channel/security/ISecurity;

    .line 86
    iput-boolean p1, p0, Lanet/channel/session/TnetSpdySession;->I:Z

    return-void
.end method

.method static synthetic a(Lanet/channel/session/TnetSpdySession;I)I
    .registers 2

    .line 68
    iput p1, p0, Lanet/channel/session/TnetSpdySession;->H:I

    return p1
.end method

.method private a(IIZLjava/lang/String;)V
    .registers 6

    .line 271
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->C:Lanet/channel/DataFrameCb;

    if-eqz v0, :cond_7

    .line 272
    invoke-interface {v0, p1, p2, p3, p4}, Lanet/channel/DataFrameCb;->onException(IIZLjava/lang/String;)V

    :cond_7
    return-void
.end method

.method static synthetic a(Lanet/channel/session/TnetSpdySession;ILanet/channel/entity/b;)V
    .registers 3

    .line 68
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(ILanet/channel/entity/b;)V

    return-void
.end method

.method static synthetic a(Lanet/channel/session/TnetSpdySession;Lanet/channel/request/Request;I)V
    .registers 3

    .line 68
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleResponseCode(Lanet/channel/request/Request;I)V

    return-void
.end method

.method static synthetic a(Lanet/channel/session/TnetSpdySession;Lanet/channel/request/Request;Ljava/util/Map;)V
    .registers 3

    .line 68
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleResponseHeaders(Lanet/channel/request/Request;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lanet/channel/session/TnetSpdySession;)Z
    .registers 1

    .line 68
    iget-boolean p0, p0, Lanet/channel/session/TnetSpdySession;->I:Z

    return p0
.end method

.method static synthetic b(Lanet/channel/session/TnetSpdySession;)Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lanet/channel/session/TnetSpdySession;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lanet/channel/session/TnetSpdySession;ILanet/channel/entity/b;)V
    .registers 3

    .line 68
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/b;)V

    return-void
.end method

.method static synthetic c(Lanet/channel/session/TnetSpdySession;)Lanet/channel/strategy/IConnStrategy;
    .registers 1

    .line 68
    iget-object p0, p0, Lanet/channel/session/TnetSpdySession;->k:Lanet/channel/strategy/IConnStrategy;

    return-object p0
.end method

.method private c()V
    .registers 8

    const-string/jumbo v0, "tnet disableHeaderCache"

    const-string v1, "awcn.TnetSpdySession"

    const/4 v2, 0x0

    .line 511
    sput-boolean v2, Lorg/android/spdy/SpdyAgent;->enableDebug:Z

    .line 512
    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->a:Landroid/content/Context;

    sget-object v4, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v5, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v3, v4, v5}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v3

    iput-object v3, p0, Lanet/channel/session/TnetSpdySession;->w:Lorg/android/spdy/SpdyAgent;

    .line 513
    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->G:Lanet/channel/security/ISecurity;

    if-eqz v3, :cond_28

    invoke-interface {v3}, Lanet/channel/security/ISecurity;->isSecOff()Z

    move-result v3

    if-nez v3, :cond_28

    .line 514
    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->w:Lorg/android/spdy/SpdyAgent;

    new-instance v4, Lanet/channel/session/j;

    invoke-direct {v4, p0}, Lanet/channel/session/j;-><init>(Lanet/channel/session/TnetSpdySession;)V

    invoke-virtual {v3, v4}, Lorg/android/spdy/SpdyAgent;->setAccsSslCallback(Lorg/android/spdy/AccsSSLCallback;)V

    .line 531
    :cond_28
    invoke-static {}, Lanet/channel/AwcnConfig;->isTnetHeaderCacheEnable()Z

    move-result v3

    if-nez v3, :cond_50

    const/4 v3, 0x0

    .line 533
    :try_start_2f
    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->w:Lorg/android/spdy/SpdyAgent;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "disableHeaderCache"

    .line 534
    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->w:Lorg/android/spdy/SpdyAgent;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_49} :catch_4a

    goto :goto_50

    :catch_4a
    move-exception v4

    .line 537
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_50
    :goto_50
    return-void
.end method

.method static synthetic c(Lanet/channel/session/TnetSpdySession;ILanet/channel/entity/b;)V
    .registers 3

    .line 68
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/b;)V

    return-void
.end method

.method static synthetic d(Lanet/channel/session/TnetSpdySession;)Landroid/content/Context;
    .registers 1

    .line 68
    iget-object p0, p0, Lanet/channel/session/TnetSpdySession;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lanet/channel/session/TnetSpdySession;ILanet/channel/entity/b;)V
    .registers 3

    .line 68
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(ILanet/channel/entity/b;)V

    return-void
.end method

.method static synthetic e(Lanet/channel/session/TnetSpdySession;)I
    .registers 2

    .line 68
    iget v0, p0, Lanet/channel/session/TnetSpdySession;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lanet/channel/session/TnetSpdySession;->H:I

    return v0
.end method

.method static synthetic e(Lanet/channel/session/TnetSpdySession;ILanet/channel/entity/b;)V
    .registers 3

    .line 68
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(ILanet/channel/entity/b;)V

    return-void
.end method

.method static synthetic f(Lanet/channel/session/TnetSpdySession;)Ljava/lang/String;
    .registers 1

    .line 68
    iget-object p0, p0, Lanet/channel/session/TnetSpdySession;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lanet/channel/session/TnetSpdySession;)Lanet/channel/strategy/IConnStrategy;
    .registers 1

    .line 68
    iget-object p0, p0, Lanet/channel/session/TnetSpdySession;->k:Lanet/channel/strategy/IConnStrategy;

    return-object p0
.end method


# virtual methods
.method protected b()V
    .registers 3

    .line 468
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->E:Lanet/channel/IAuth;

    if-eqz v0, :cond_d

    .line 469
    new-instance v1, Lanet/channel/session/i;

    invoke-direct {v1, p0}, Lanet/channel/session/i;-><init>(Lanet/channel/session/TnetSpdySession;)V

    invoke-interface {v0, p0, v1}, Lanet/channel/IAuth;->auth(Lanet/channel/Session;Lanet/channel/IAuth$AuthCallback;)V

    goto :goto_1e

    :cond_d
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 495
    invoke-virtual {p0, v0, v1}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/b;)V

    .line 496
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    const/4 v1, 0x1

    iput v1, v0, Lanet/channel/statist/SessionStatistic;->ret:I

    .line 497
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz v0, :cond_1e

    .line 498
    invoke-interface {v0, p0}, Lanet/channel/heartbeat/IHeartbeat;->start(Lanet/channel/Session;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V
    .registers 3

    return-void
.end method

.method public close()V
    .registers 5

    .line 356
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "session"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string v2, "awcn.TnetSpdySession"

    const-string v3, "force close!"

    invoke-static {v2, v3, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 357
    invoke-virtual {p0, v1, v0}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/b;)V

    .line 360
    :try_start_19
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz v1, :cond_24

    .line 361
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    invoke-interface {v1}, Lanet/channel/heartbeat/IHeartbeat;->stop()V

    .line 362
    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    .line 365
    :cond_24
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->x:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_2d

    .line 366
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->x:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->closeSession()I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2d} :catch_2d

    :catch_2d
    :cond_2d
    return-void
.end method

.method public connect()V
    .registers 17

    move-object/from16 v10, p0

    const-string v11, "awcn.TnetSpdySession"

    .line 281
    iget v0, v10, Lanet/channel/session/TnetSpdySession;->n:I

    const/4 v12, 0x1

    if-eq v0, v12, :cond_185

    iget v0, v10, Lanet/channel/session/TnetSpdySession;->n:I

    if-eqz v0, :cond_185

    iget v0, v10, Lanet/channel/session/TnetSpdySession;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    goto/16 :goto_185

    :cond_14
    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    .line 286
    :try_start_17
    iget-object v0, v10, Lanet/channel/session/TnetSpdySession;->w:Lorg/android/spdy/SpdyAgent;

    if-nez v0, :cond_1e

    .line 287
    invoke-direct/range {p0 .. p0}, Lanet/channel/session/TnetSpdySession;->c()V

    .line 292
    :cond_1e
    invoke-static {}, Lanet/channel/util/c;->a()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, v10, Lanet/channel/session/TnetSpdySession;->e:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/strategy/utils/c;->a(Ljava/lang/String;)Z

    move-result v0
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_2a} :catch_178

    if-eqz v0, :cond_34

    .line 294
    :try_start_2c
    iget-object v0, v10, Lanet/channel/session/TnetSpdySession;->e:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/util/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lanet/channel/session/TnetSpdySession;->f:Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_34} :catch_34
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_34} :catch_178

    .line 299
    :catch_34
    :cond_34
    :try_start_34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v0, "connect"

    .line 301
    iget-object v2, v10, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "host"

    aput-object v4, v3, v15

    iget-object v4, v10, Lanet/channel/session/TnetSpdySession;->c:Ljava/lang/String;

    aput-object v4, v3, v12

    const-string v4, "ip"

    aput-object v4, v3, v14

    const/4 v4, 0x3

    iget-object v5, v10, Lanet/channel/session/TnetSpdySession;->f:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "port"

    aput-object v4, v3, v1

    const/4 v1, 0x5

    iget v4, v10, Lanet/channel/session/TnetSpdySession;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x6

    const-string v4, "sessionId"

    aput-object v4, v3, v1

    const/4 v1, 0x7

    aput-object v7, v3, v1

    const/16 v1, 0x8

    const-string v4, "SpdyProtocol,"

    aput-object v4, v3, v1

    const/16 v1, 0x9

    iget-object v4, v10, Lanet/channel/session/TnetSpdySession;->j:Lanet/channel/entity/ConnType;

    aput-object v4, v3, v1

    const/16 v1, 0xa

    const-string v4, "proxyIp,"

    aput-object v4, v3, v1

    const/16 v1, 0xb

    iget-object v4, v10, Lanet/channel/session/TnetSpdySession;->h:Ljava/lang/String;

    aput-object v4, v3, v1

    const/16 v1, 0xc

    const-string v4, "proxyPort,"

    aput-object v4, v3, v1

    const/16 v1, 0xd

    iget v4, v10, Lanet/channel/session/TnetSpdySession;->i:I

    .line 303
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 301
    invoke-static {v11, v0, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    new-instance v0, Lorg/android/spdy/SessionInfo;

    iget-object v2, v10, Lanet/channel/session/TnetSpdySession;->f:Ljava/lang/String;

    iget v3, v10, Lanet/channel/session/TnetSpdySession;->g:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v10, Lanet/channel/session/TnetSpdySession;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lanet/channel/session/TnetSpdySession;->F:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v10, Lanet/channel/session/TnetSpdySession;->h:Ljava/lang/String;

    iget v6, v10, Lanet/channel/session/TnetSpdySession;->i:I

    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->j:Lanet/channel/entity/ConnType;

    invoke-virtual {v1}, Lanet/channel/entity/ConnType;->getTnetConType()I

    move-result v9

    move-object v1, v0

    move-object/from16 v8, p0

    invoke-direct/range {v1 .. v9}, Lorg/android/spdy/SessionInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lorg/android/spdy/SessionCb;I)V

    .line 305
    iget v1, v10, Lanet/channel/session/TnetSpdySession;->r:I

    int-to-float v1, v1

    invoke-static {}, Lanet/channel/util/Utils;->getNetworkTimeFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/android/spdy/SessionInfo;->setConnectionTimeoutMs(I)V

    .line 307
    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->j:Lanet/channel/entity/ConnType;

    invoke-virtual {v1}, Lanet/channel/entity/ConnType;->isPublicKeyAuto()Z

    move-result v1

    if-nez v1, :cond_10c

    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->j:Lanet/channel/entity/ConnType;

    invoke-virtual {v1}, Lanet/channel/entity/ConnType;->isH2S()Z

    move-result v1

    if-nez v1, :cond_10c

    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->j:Lanet/channel/entity/ConnType;

    invoke-virtual {v1}, Lanet/channel/entity/ConnType;->isHTTP3()Z

    move-result v1

    if-eqz v1, :cond_e8

    goto :goto_10c

    .line 310
    :cond_e8
    iget v1, v10, Lanet/channel/session/TnetSpdySession;->B:I

    if-ltz v1, :cond_f2

    .line 311
    iget v1, v10, Lanet/channel/session/TnetSpdySession;->B:I

    invoke-virtual {v0, v1}, Lorg/android/spdy/SessionInfo;->setPubKeySeqNum(I)V

    goto :goto_118

    .line 313
    :cond_f2
    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->j:Lanet/channel/entity/ConnType;

    iget-object v2, v10, Lanet/channel/session/TnetSpdySession;->G:Lanet/channel/security/ISecurity;

    if-eqz v2, :cond_ff

    iget-object v2, v10, Lanet/channel/session/TnetSpdySession;->G:Lanet/channel/security/ISecurity;

    invoke-interface {v2}, Lanet/channel/security/ISecurity;->isSecOff()Z

    move-result v2

    goto :goto_100

    :cond_ff
    move v2, v12

    :goto_100
    invoke-virtual {v1, v2}, Lanet/channel/entity/ConnType;->getTnetPublicKey(Z)I

    move-result v1

    iput v1, v10, Lanet/channel/session/TnetSpdySession;->B:I

    .line 314
    iget v1, v10, Lanet/channel/session/TnetSpdySession;->B:I

    invoke-virtual {v0, v1}, Lorg/android/spdy/SessionInfo;->setPubKeySeqNum(I)V

    goto :goto_118

    .line 308
    :cond_10c
    :goto_10c
    iget-boolean v1, v10, Lanet/channel/session/TnetSpdySession;->m:Z

    if-eqz v1, :cond_113

    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->e:Ljava/lang/String;

    goto :goto_115

    :cond_113
    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->d:Ljava/lang/String;

    :goto_115
    invoke-virtual {v0, v1}, Lorg/android/spdy/SessionInfo;->setCertHost(Ljava/lang/String;)V

    .line 318
    :goto_118
    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->j:Lanet/channel/entity/ConnType;

    invoke-virtual {v1}, Lanet/channel/entity/ConnType;->isHTTP3()Z

    move-result v1

    if-eqz v1, :cond_129

    .line 319
    invoke-static {}, Lanet/channel/AwcnConfig;->getXquicCongControl()I

    move-result v1

    if-ltz v1, :cond_129

    .line 321
    invoke-virtual {v0, v1}, Lorg/android/spdy/SessionInfo;->setXquicCongControl(I)V

    .line 325
    :cond_129
    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->w:Lorg/android/spdy/SpdyAgent;

    invoke-virtual {v1, v0}, Lorg/android/spdy/SpdyAgent;->createSession(Lorg/android/spdy/SessionInfo;)Lorg/android/spdy/SpdySession;

    move-result-object v0

    iput-object v0, v10, Lanet/channel/session/TnetSpdySession;->x:Lorg/android/spdy/SpdySession;

    .line 327
    iget-object v0, v10, Lanet/channel/session/TnetSpdySession;->x:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->getRefCount()I

    move-result v0

    if-le v0, v12, :cond_14e

    const-string v0, "get session ref count > 1!!!"

    .line 328
    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    new-array v2, v15, [Ljava/lang/Object;

    invoke-static {v11, v0, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    new-instance v0, Lanet/channel/entity/b;

    invoke-direct {v0, v12}, Lanet/channel/entity/b;-><init>(I)V

    invoke-virtual {v10, v15, v0}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/b;)V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lanet/channel/session/TnetSpdySession;->b()V

    return-void

    .line 334
    :cond_14e
    invoke-virtual {v10, v12, v13}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/b;)V

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lanet/channel/session/TnetSpdySession;->z:J

    .line 339
    iget-object v0, v10, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_162

    goto :goto_163

    :cond_162
    move v12, v15

    :goto_163
    iput v12, v0, Lanet/channel/statist/SessionStatistic;->isProxy:I

    .line 340
    iget-object v0, v10, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    const-string v1, "false"

    iput-object v1, v0, Lanet/channel/statist/SessionStatistic;->isTunnel:Ljava/lang/String;

    .line 341
    iget-object v0, v10, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v1

    iput-boolean v1, v0, Lanet/channel/statist/SessionStatistic;->isBackground:Z

    const-wide/16 v0, 0x0

    .line 343
    iput-wide v0, v10, Lanet/channel/session/TnetSpdySession;->A:J
    :try_end_177
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_177} :catch_178

    goto :goto_185

    :catch_178
    move-exception v0

    .line 345
    invoke-virtual {v10, v14, v13}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/b;)V

    .line 346
    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    new-array v2, v15, [Ljava/lang/Object;

    const-string v3, "connect exception "

    invoke-static {v11, v3, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_185
    :goto_185
    return-void
.end method

.method protected getRecvTimeOutRunnable()Ljava/lang/Runnable;
    .registers 2

    .line 380
    new-instance v0, Lanet/channel/session/h;

    invoke-direct {v0, p0}, Lanet/channel/session/h;-><init>(Lanet/channel/session/TnetSpdySession;)V

    return-object v0
.end method

.method public getSSLMeta(Lorg/android/spdy/SpdySession;)[B
    .registers 9

    .line 708
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object p1

    .line 709
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "awcn.TnetSpdySession"

    const/4 v3, 0x0

    if-eqz v0, :cond_16

    .line 710
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "get sslticket host is null"

    invoke-static {v2, v0, v3, p1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 715
    :cond_16
    :try_start_16
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->G:Lanet/channel/security/ISecurity;

    if-eqz v0, :cond_3d

    .line 716
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->G:Lanet/channel/security/ISecurity;

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->a:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accs_ssl_key2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v4, p1}, Lanet/channel/security/ISecurity;->getBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_33} :catch_35

    move-object v3, p1

    goto :goto_3d

    :catch_35
    move-exception p1

    .line 719
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getSSLMeta"

    invoke-static {v2, v1, v3, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3d
    :goto_3d
    return-object v3
.end method

.method public initConfig(Lanet/channel/Config;)V
    .registers 3

    if-eqz p1, :cond_e

    .line 99
    invoke-virtual {p1}, Lanet/channel/Config;->getAppkey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->F:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Lanet/channel/Config;->getSecurity()Lanet/channel/security/ISecurity;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/session/TnetSpdySession;->G:Lanet/channel/security/ISecurity;

    :cond_e
    return-void
.end method

.method public initSessionInfo(Lanet/channel/SessionInfo;)V
    .registers 5

    if-eqz p1, :cond_3a

    .line 106
    iget-object v0, p1, Lanet/channel/SessionInfo;->dataFrameCb:Lanet/channel/DataFrameCb;

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->C:Lanet/channel/DataFrameCb;

    .line 107
    iget-object v0, p1, Lanet/channel/SessionInfo;->auth:Lanet/channel/IAuth;

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->E:Lanet/channel/IAuth;

    .line 108
    iget-boolean v0, p1, Lanet/channel/SessionInfo;->isKeepAlive:Z

    if-eqz v0, :cond_3a

    .line 109
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lanet/channel/statist/SessionStatistic;->isKL:J

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lanet/channel/session/TnetSpdySession;->t:Z

    .line 111
    iget-object v0, p1, Lanet/channel/SessionInfo;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    .line 112
    iget-boolean v0, p1, Lanet/channel/SessionInfo;->isAccs:Z

    iput-boolean v0, p0, Lanet/channel/session/TnetSpdySession;->I:Z

    .line 113
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    if-nez v0, :cond_3a

    .line 114
    iget-boolean p1, p1, Lanet/channel/SessionInfo;->isAccs:Z

    if-eqz p1, :cond_34

    invoke-static {}, Lanet/channel/AwcnConfig;->isAccsSessionCreateForbiddenInBg()Z

    move-result p1

    if-nez p1, :cond_34

    .line 115
    invoke-static {}, Lanet/channel/heartbeat/HeartbeatManager;->getDefaultBackgroundAccsHeartbeat()Lanet/channel/heartbeat/IHeartbeat;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    goto :goto_3a

    .line 117
    :cond_34
    invoke-static {}, Lanet/channel/heartbeat/HeartbeatManager;->getDefaultHeartbeat()Lanet/channel/heartbeat/IHeartbeat;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    .line 123
    :cond_3a
    :goto_3a
    invoke-static {}, Lanet/channel/AwcnConfig;->isIdleSessionCloseEnable()Z

    move-result p1

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    if-nez p1, :cond_4b

    .line 124
    new-instance p1, Lanet/channel/heartbeat/c;

    invoke-direct {p1}, Lanet/channel/heartbeat/c;-><init>()V

    iput-object p1, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    :cond_4b
    return-void
.end method

.method public isAvailable()Z
    .registers 3

    .line 504
    iget v0, p0, Lanet/channel/session/TnetSpdySession;->n:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method protected onDisconnect()V
    .registers 2

    const/4 v0, 0x0

    .line 375
    iput-boolean v0, p0, Lanet/channel/session/TnetSpdySession;->y:Z

    return-void
.end method

.method public ping(Z)V
    .registers 3

    .line 406
    iget v0, p0, Lanet/channel/session/TnetSpdySession;->s:I

    invoke-virtual {p0, p1, v0}, Lanet/channel/session/TnetSpdySession;->ping(ZI)V

    return-void
.end method

.method public ping(ZI)V
    .registers 14

    const/4 v0, 0x1

    .line 415
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    const-string v4, "ping"

    const/4 v5, 0x0

    const-string v6, "awcn.TnetSpdySession"

    if-eqz v1, :cond_2d

    .line 416
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "host"

    aput-object v8, v7, v5

    iget-object v8, p0, Lanet/channel/session/TnetSpdySession;->c:Ljava/lang/String;

    aput-object v8, v7, v0

    const-string/jumbo v8, "thread"

    aput-object v8, v7, v2

    const/4 v8, 0x3

    .line 417
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 416
    invoke-static {v6, v4, v1, v7}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2d
    if-eqz p1, :cond_f6

    .line 421
    :try_start_2f
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->x:Lorg/android/spdy/SpdySession;

    if-eqz v1, :cond_9b

    .line 422
    iget v1, p0, Lanet/channel/session/TnetSpdySession;->n:I

    if-eqz v1, :cond_3b

    iget v1, p0, Lanet/channel/session/TnetSpdySession;->n:I

    if-ne v1, v3, :cond_f6

    :cond_3b
    const/16 v1, 0x40

    const/4 v3, 0x0

    .line 423
    invoke-virtual {p0, v1, v3}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(ILanet/channel/entity/b;)V

    .line 425
    iget-boolean v1, p0, Lanet/channel/session/TnetSpdySession;->y:Z

    if-eqz v1, :cond_46

    return-void

    .line 428
    :cond_46
    iput-boolean v0, p0, Lanet/channel/session/TnetSpdySession;->y:Z

    .line 429
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget-wide v7, v1, Lanet/channel/statist/SessionStatistic;->ppkgCount:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v1, Lanet/channel/statist/SessionStatistic;->ppkgCount:J

    .line 430
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->x:Lorg/android/spdy/SpdySession;

    invoke-virtual {v1}, Lorg/android/spdy/SpdySession;->submitPing()I

    .line 431
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " submit ping ms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lanet/channel/session/TnetSpdySession;->z:J

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " force:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6, p1, v0, v1}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    :cond_88
    invoke-virtual {p0, p2}, Lanet/channel/session/TnetSpdySession;->setPingTimeout(I)V

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lanet/channel/session/TnetSpdySession;->z:J

    .line 438
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz p1, :cond_f6

    .line 439
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    invoke-interface {p1}, Lanet/channel/heartbeat/IHeartbeat;->reSchedule()V

    goto :goto_f6

    .line 444
    :cond_9b
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    if-eqz p1, :cond_a5

    .line 445
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    const-string p2, "session null"

    iput-object p2, p1, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    .line 447
    :cond_a5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " session null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v6, p1, p2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    invoke-virtual {p0}, Lanet/channel/session/TnetSpdySession;->close()V
    :try_end_c2
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_2f .. :try_end_c2} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_c2} :catch_c3

    goto :goto_f6

    :catch_c3
    move-exception p1

    .line 459
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v6, v4, p2, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_f6

    :catch_cc
    move-exception p1

    .line 452
    invoke-virtual {p1}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result p2

    const/16 v0, -0x450

    if-eq p2, v0, :cond_dd

    .line 453
    invoke-virtual {p1}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result p2

    const/16 v0, -0x44f

    if-ne p2, v0, :cond_ef

    .line 454
    :cond_dd
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "Send request on closed session!!!"

    invoke-static {v6, v1, p2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x6

    .line 455
    new-instance v0, Lanet/channel/entity/b;

    invoke-direct {v0, v2}, Lanet/channel/entity/b;-><init>(I)V

    invoke-virtual {p0, p2, v0}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/b;)V

    .line 457
    :cond_ef
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v6, v4, p2, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_f6
    :goto_f6
    return-void
.end method

.method public putSSLMeta(Lorg/android/spdy/SpdySession;[B)I
    .registers 9

    .line 728
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object p1

    .line 729
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x0

    .line 733
    :try_start_d
    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->G:Lanet/channel/security/ISecurity;

    if-eqz v2, :cond_3b

    .line 734
    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->G:Lanet/channel/security/ISecurity;

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->a:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accs_ssl_key2_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1, p2}, Lanet/channel/security/ISecurity;->saveBytes(Landroid/content/Context;Ljava/lang/String;[B)Z

    move-result p1
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_2a} :catch_30

    if-eqz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    move v1, v0

    goto :goto_3b

    :catch_30
    move-exception p1

    const/4 p2, 0x0

    .line 737
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "awcn.TnetSpdySession"

    const-string v3, "putSSLMeta"

    invoke-static {v2, v3, p2, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3b
    :goto_3b
    return v1
.end method

.method public request(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/request/Cancelable;
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "Host"

    const-string v4, "awcn.TnetSpdySession"

    .line 135
    sget-object v5, Lanet/channel/request/c;->NULL:Lanet/channel/request/c;

    if-eqz v0, :cond_11

    .line 137
    iget-object v6, v0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    goto :goto_19

    :cond_11
    new-instance v6, Lanet/channel/statist/RequestStatistic;

    iget-object v7, v1, Lanet/channel/session/TnetSpdySession;->d:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_19
    iget-object v7, v1, Lanet/channel/session/TnetSpdySession;->j:Lanet/channel/entity/ConnType;

    invoke-virtual {v6, v7}, Lanet/channel/statist/RequestStatistic;->setConnType(Lanet/channel/entity/ConnType;)V

    .line 139
    iget-wide v7, v6, Lanet/channel/statist/RequestStatistic;->start:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_2e

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lanet/channel/statist/RequestStatistic;->reqStart:J

    iput-wide v7, v6, Lanet/channel/statist/RequestStatistic;->start:J

    .line 142
    :cond_2e
    iget-object v7, v1, Lanet/channel/session/TnetSpdySession;->f:Ljava/lang/String;

    iget v8, v1, Lanet/channel/session/TnetSpdySession;->g:I

    invoke-virtual {v6, v7, v8}, Lanet/channel/statist/RequestStatistic;->setIPAndPort(Ljava/lang/String;I)V

    .line 143
    iget-object v7, v1, Lanet/channel/session/TnetSpdySession;->k:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v7}, Lanet/channel/strategy/IConnStrategy;->getIpSource()I

    move-result v7

    iput v7, v6, Lanet/channel/statist/RequestStatistic;->ipRefer:I

    .line 144
    iget-object v7, v1, Lanet/channel/session/TnetSpdySession;->k:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v7}, Lanet/channel/strategy/IConnStrategy;->getIpType()I

    move-result v7

    iput v7, v6, Lanet/channel/statist/RequestStatistic;->ipType:I

    .line 145
    iget-object v7, v1, Lanet/channel/session/TnetSpdySession;->l:Ljava/lang/String;

    iput-object v7, v6, Lanet/channel/statist/RequestStatistic;->unit:Ljava/lang/String;

    if-eqz v0, :cond_201

    if-nez v2, :cond_4f

    goto/16 :goto_201

    :cond_4f
    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 158
    :try_start_51
    iget-object v9, v1, Lanet/channel/session/TnetSpdySession;->x:Lorg/android/spdy/SpdySession;

    if-eqz v9, :cond_1b6

    iget v9, v1, Lanet/channel/session/TnetSpdySession;->n:I

    if-eqz v9, :cond_5e

    iget v9, v1, Lanet/channel/session/TnetSpdySession;->n:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1b6

    .line 159
    :cond_5e
    iget-boolean v9, v1, Lanet/channel/session/TnetSpdySession;->m:Z

    if-eqz v9, :cond_69

    .line 160
    iget-object v9, v1, Lanet/channel/session/TnetSpdySession;->e:Ljava/lang/String;

    iget v10, v1, Lanet/channel/session/TnetSpdySession;->g:I

    invoke-virtual {v0, v9, v10}, Lanet/channel/request/Request;->setDnsOptimize(Ljava/lang/String;I)V

    .line 162
    :cond_69
    iget-object v9, v1, Lanet/channel/session/TnetSpdySession;->j:Lanet/channel/entity/ConnType;

    invoke-virtual {v9}, Lanet/channel/entity/ConnType;->isSSL()Z

    move-result v9

    invoke-virtual {v0, v9}, Lanet/channel/request/Request;->setUrlScheme(Z)V

    .line 163
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getUrl()Ljava/net/URL;

    move-result-object v11

    .line 164
    invoke-static {v8}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v9
    :try_end_7a
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_51 .. :try_end_7a} :catch_1cc
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_7a} :catch_1c2

    const-string v15, ""

    const/16 v21, 0x1

    if-eqz v9, :cond_b9

    .line 165
    :try_start_80
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Object;

    const-string v12, "request URL"

    aput-object v12, v10, v7

    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v21

    invoke-static {v4, v15, v9, v10}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Object;

    const-string v12, "request Method"

    aput-object v12, v10, v7

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getMethod()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v21

    invoke-static {v4, v15, v9, v10}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Object;

    const-string v12, "request headers"

    aput-object v12, v10, v7

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v12

    aput-object v12, v10, v21

    invoke-static {v4, v15, v9, v10}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_b9
    iget-object v9, v1, Lanet/channel/session/TnetSpdySession;->h:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_ed

    iget v9, v1, Lanet/channel/session/TnetSpdySession;->i:I

    if-gtz v9, :cond_c6

    goto :goto_ed

    .line 176
    :cond_c6
    new-instance v9, Lorg/android/spdy/SpdyRequest;

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v12

    .line 177
    invoke-virtual {v11}, Ljava/net/URL;->getPort()I

    move-result v13

    iget-object v14, v1, Lanet/channel/session/TnetSpdySession;->h:Ljava/lang/String;

    iget v10, v1, Lanet/channel/session/TnetSpdySession;->i:I

    .line 178
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getMethod()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    const/16 v18, -0x1

    .line 180
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getConnectTimeout()I

    move-result v19

    const/16 v20, 0x0

    move/from16 v22, v10

    move-object v10, v9

    move-object/from16 v23, v15

    move/from16 v15, v22

    invoke-direct/range {v10 .. v20}, Lorg/android/spdy/SpdyRequest;-><init>(Ljava/net/URL;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lorg/android/spdy/RequestPriority;III)V

    goto :goto_100

    :cond_ed
    :goto_ed
    move-object/from16 v23, v15

    .line 172
    new-instance v9, Lorg/android/spdy/SpdyRequest;

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getMethod()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    const/4 v14, -0x1

    .line 174
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getConnectTimeout()I

    move-result v15

    move-object v10, v9

    invoke-direct/range {v10 .. v15}, Lorg/android/spdy/SpdyRequest;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;II)V

    .line 183
    :goto_100
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getReadTimeout()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/android/spdy/SpdyRequest;->setRequestRdTimeoutMs(I)V

    .line 184
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v10

    .line 185
    invoke-interface {v10, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11
    :try_end_10f
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_80 .. :try_end_10f} :catch_1cc
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_10f} :catch_1c2

    const-string v12, ":host"

    if-nez v11, :cond_125

    .line 186
    :try_start_113
    invoke-virtual {v9, v10}, Lorg/android/spdy/SpdyRequest;->addHeaders(Ljava/util/Map;)V

    .line 187
    iget-boolean v3, v1, Lanet/channel/session/TnetSpdySession;->m:Z

    if-eqz v3, :cond_11d

    iget-object v3, v1, Lanet/channel/session/TnetSpdySession;->e:Ljava/lang/String;

    goto :goto_121

    :cond_11d
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v3

    :goto_121
    invoke-virtual {v9, v12, v3}, Lorg/android/spdy/SpdyRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_140

    .line 189
    :cond_125
    new-instance v10, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 190
    invoke-interface {v10, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 191
    iget-boolean v11, v1, Lanet/channel/session/TnetSpdySession;->m:Z

    if-eqz v11, :cond_13a

    iget-object v3, v1, Lanet/channel/session/TnetSpdySession;->e:Ljava/lang/String;

    :cond_13a
    invoke-interface {v10, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-virtual {v9, v10}, Lorg/android/spdy/SpdyRequest;->addHeaders(Ljava/util/Map;)V

    .line 195
    :goto_140
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getBodyBytes()[B

    move-result-object v3

    .line 196
    new-instance v10, Lorg/android/spdy/SpdyDataProvider;

    invoke-direct {v10, v3}, Lorg/android/spdy/SpdyDataProvider;-><init>([B)V

    .line 198
    iget-object v3, v0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v3, Lanet/channel/statist/RequestStatistic;->sendStart:J

    .line 199
    iget-object v3, v0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-object v11, v0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v11, v11, Lanet/channel/statist/RequestStatistic;->sendStart:J

    iget-object v13, v0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    iget-wide v13, v13, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v11, v13

    iput-wide v11, v3, Lanet/channel/statist/RequestStatistic;->processTime:J

    .line 200
    iget-object v3, v1, Lanet/channel/session/TnetSpdySession;->x:Lorg/android/spdy/SpdySession;

    new-instance v11, Lanet/channel/session/TnetSpdySession$a;

    invoke-direct {v11, v1, v0, v2}, Lanet/channel/session/TnetSpdySession$a;-><init>(Lanet/channel/session/TnetSpdySession;Lanet/channel/request/Request;Lanet/channel/RequestCb;)V

    invoke-virtual {v3, v9, v10, v1, v11}, Lorg/android/spdy/SpdySession;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I

    move-result v3

    .line 201
    invoke-static/range {v21 .. v21}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v9

    if-eqz v9, :cond_185

    .line 202
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Object;

    const-string/jumbo v11, "streamId"

    aput-object v11, v10, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v21

    move-object/from16 v11, v23

    invoke-static {v4, v11, v9, v10}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :cond_185
    new-instance v9, Lanet/channel/request/c;

    iget-object v10, v1, Lanet/channel/session/TnetSpdySession;->x:Lorg/android/spdy/SpdySession;

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v10, v3, v0}, Lanet/channel/request/c;-><init>(Lorg/android/spdy/SpdySession;ILjava/lang/String;)V
    :try_end_190
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_113 .. :try_end_190} :catch_1cc
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_190} :catch_1c2

    .line 205
    :try_start_190
    iget-object v0, v1, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget-wide v10, v0, Lanet/channel/statist/SessionStatistic;->requestCount:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, v0, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 206
    iget-object v0, v1, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget-wide v10, v0, Lanet/channel/statist/SessionStatistic;->stdRCount:J

    add-long/2addr v10, v12

    iput-wide v10, v0, Lanet/channel/statist/SessionStatistic;->stdRCount:J

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v1, Lanet/channel/session/TnetSpdySession;->z:J

    .line 209
    iget-object v0, v1, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz v0, :cond_1af

    .line 210
    iget-object v0, v1, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    invoke-interface {v0}, Lanet/channel/heartbeat/IHeartbeat;->reSchedule()V
    :try_end_1af
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_190 .. :try_end_1af} :catch_1b3
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_1af} :catch_1b1

    :cond_1af
    move-object v5, v9

    goto :goto_200

    :catch_1b1
    move-object v5, v9

    goto :goto_1c2

    :catch_1b3
    move-exception v0

    move-object v5, v9

    goto :goto_1cd

    :cond_1b6
    const/16 v3, -0x12d

    .line 214
    :try_start_1b8
    invoke-static {v3}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-interface {v2, v3, v9, v0}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    :try_end_1c1
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_1b8 .. :try_end_1c1} :catch_1cc
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1c1} :catch_1c2

    goto :goto_200

    :catch_1c2
    :goto_1c2
    const/16 v0, -0x65

    .line 226
    invoke-static {v0}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3, v6}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    goto :goto_200

    :catch_1cc
    move-exception v0

    .line 217
    :goto_1cd
    invoke-virtual {v0}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v3

    const/16 v9, -0x450

    if-eq v3, v9, :cond_1dd

    .line 218
    invoke-virtual {v0}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v3

    const/16 v9, -0x44f

    if-ne v3, v9, :cond_1ef

    .line 219
    :cond_1dd
    iget-object v3, v1, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    const-string v9, "Send request on closed session!!!"

    invoke-static {v4, v9, v3, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x6

    .line 220
    new-instance v4, Lanet/channel/entity/b;

    invoke-direct {v4, v8}, Lanet/channel/entity/b;-><init>(I)V

    invoke-virtual {v1, v3, v4}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/b;)V

    .line 224
    :cond_1ef
    invoke-virtual {v0}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x12c

    .line 223
    invoke-static {v3, v0}, Lanet/channel/util/ErrorConstant;->formatMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-interface {v2, v3, v0, v6}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :goto_200
    return-object v5

    :cond_201
    :goto_201
    if-eqz v2, :cond_20c

    const/16 v0, -0x66

    .line 152
    invoke-static {v0}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3, v6}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_20c
    return-object v5
.end method

.method public sendCustomFrame(I[BI)V
    .registers 15

    const-string v0, "sendCustomFrame"

    const-string v1, "sendCustomFrame error"

    const-string v2, "awcn.TnetSpdySession"

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 239
    :try_start_8
    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->C:Lanet/channel/DataFrameCb;

    if-nez v5, :cond_d

    return-void

    .line 243
    :cond_d
    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "dataId"

    aput-object v8, v7, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x2

    const-string/jumbo v9, "type"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2, v0, v5, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iget v5, p0, Lanet/channel/session/TnetSpdySession;->n:I

    if-ne v5, v6, :cond_72

    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->x:Lorg/android/spdy/SpdySession;

    if-eqz v5, :cond_72

    if-eqz p2, :cond_43

    .line 245
    array-length v0, p2

    const/16 v5, 0x4000

    if-le v0, v5, :cond_43

    const/16 p2, -0x12f

    const/4 p3, 0x0

    .line 246
    invoke-direct {p0, p1, p2, v4, p3}, Lanet/channel/session/TnetSpdySession;->a(IIZLjava/lang/String;)V

    goto/16 :goto_ca

    .line 248
    :cond_43
    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->x:Lorg/android/spdy/SpdySession;

    const/4 v8, 0x0

    if-nez p2, :cond_4a

    move v9, v4

    goto :goto_4c

    :cond_4a
    array-length v0, p2

    move v9, v0

    :goto_4c
    move v6, p1

    move v7, p3

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lorg/android/spdy/SpdySession;->sendCustomControlFrame(IIII[B)I

    .line 250
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget-wide v5, p2, Lanet/channel/statist/SessionStatistic;->requestCount:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p2, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 251
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget-wide v5, p2, Lanet/channel/statist/SessionStatistic;->cfRCount:J

    add-long/2addr v5, v7

    iput-wide v5, p2, Lanet/channel/statist/SessionStatistic;->cfRCount:J

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lanet/channel/session/TnetSpdySession;->z:J

    .line 253
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz p2, :cond_ca

    .line 254
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    invoke-interface {p2}, Lanet/channel/heartbeat/IHeartbeat;->reSchedule()V

    goto :goto_ca

    .line 258
    :cond_72
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    new-array p3, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendCustomFrame con invalid mStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lanet/channel/session/TnetSpdySession;->n:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, v4

    invoke-static {v2, v0, p2, p3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p2, -0x12d

    const-string p3, "session invalid"

    .line 259
    invoke-direct {p0, p1, p2, v3, p3}, Lanet/channel/session/TnetSpdySession;->a(IIZLjava/lang/String;)V
    :try_end_95
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_8 .. :try_end_95} :catch_a8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_95} :catch_96

    goto :goto_ca

    :catch_96
    move-exception p2

    .line 265
    iget-object p3, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, p3, p2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/16 p3, -0x65

    .line 266
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, v3, p2}, Lanet/channel/session/TnetSpdySession;->a(IIZLjava/lang/String;)V

    goto :goto_ca

    :catch_a8
    move-exception p2

    .line 262
    iget-object p3, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, p3, p2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/16 p3, -0x12c

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpdyErrorException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/android/spdy/SpdyErrorException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, v3, p2}, Lanet/channel/session/TnetSpdySession;->a(IIZLjava/lang/String;)V

    :cond_ca
    :goto_ca
    return-void
.end method

.method public setTnetPublicKey(I)V
    .registers 2

    .line 129
    iput p1, p0, Lanet/channel/session/TnetSpdySession;->B:I

    return-void
.end method

.method public spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
    .registers 8

    .line 701
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "dataId"

    aput-object v1, p2, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const-string v0, "awcn.TnetSpdySession"

    const-string/jumbo v2, "spdyCustomControlFrameFailCallback"

    invoke-static {v0, v2, p1, p2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo p1, "tnet error"

    .line 702
    invoke-direct {p0, p3, p4, v1, p1}, Lanet/channel/session/TnetSpdySession;->a(IIZLjava/lang/String;)V

    return-void
.end method

.method public spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .registers 12

    .line 585
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p5, 0x0

    const-string v0, "len"

    aput-object v0, p2, p5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    const-string v2, "frameCb"

    aput-object v2, p2, v0

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->C:Lanet/channel/DataFrameCb;

    const/4 v3, 0x3

    aput-object v2, p2, v3

    const-string v2, "awcn.TnetSpdySession"

    const-string v3, "[spdyCustomControlFrameRecvCallback]"

    invoke-static {v2, v3, p1, p2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    invoke-static {v1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_61

    const/16 p1, 0x200

    if-ge p6, p1, :cond_61

    const-string p1, ""

    move-object p6, p1

    move p1, p5

    .line 589
    :goto_31
    array-length v3, p7

    if-ge p1, v3, :cond_53

    .line 590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p6, p7, p1

    and-int/lit16 p6, p6, 0xff

    invoke-static {p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " "

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    add-int/lit8 p1, p1, 0x1

    goto :goto_31

    .line 592
    :cond_53
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v3, "str"

    aput-object v3, v0, p5

    aput-object p6, v0, v1

    invoke-static {v2, p2, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    :cond_61
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->C:Lanet/channel/DataFrameCb;

    if-eqz p1, :cond_69

    .line 597
    invoke-interface {p1, p0, p7, p3, p4}, Lanet/channel/DataFrameCb;->onDataReceive(Lanet/channel/session/TnetSpdySession;[BII)V

    goto :goto_82

    .line 599
    :cond_69
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    new-array p3, p5, [Ljava/lang/Object;

    const-string p4, "AccsFrameCb is null"

    invoke-static {v2, p4, p1, p3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    new-instance p1, Lanet/channel/statist/ExceptionStatistic;

    const/16 p3, -0x69

    const-string p4, "rt"

    invoke-direct {p1, p3, p2, p4}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p2

    invoke-interface {p2, p1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 603
    :goto_82
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget-wide p2, p1, Lanet/channel/statist/SessionStatistic;->inceptCount:J

    const-wide/16 p4, 0x1

    add-long/2addr p2, p4

    iput-wide p2, p1, Lanet/channel/statist/SessionStatistic;->inceptCount:J

    .line 604
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz p1, :cond_92

    .line 605
    invoke-interface {p1}, Lanet/channel/heartbeat/IHeartbeat;->reSchedule()V

    :cond_92
    return-void
.end method

.method public spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .registers 9

    const/4 p1, 0x2

    .line 564
    invoke-static {p1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_28

    .line 565
    iget-object p4, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Host"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "id"

    aput-object v2, v1, p1

    const/4 p1, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "awcn.TnetSpdySession"

    const-string v2, "ping receive"

    invoke-static {p1, v2, p4, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gez p1, :cond_2f

    return-void

    .line 570
    :cond_2f
    iput-boolean v0, p0, Lanet/channel/session/TnetSpdySession;->y:Z

    .line 571
    iput v0, p0, Lanet/channel/session/TnetSpdySession;->H:I

    .line 572
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz p1, :cond_3a

    .line 573
    invoke-interface {p1}, Lanet/channel/heartbeat/IHeartbeat;->reSchedule()V

    :cond_3a
    const/16 p1, 0x80

    const/4 p2, 0x0

    .line 575
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(ILanet/channel/entity/b;)V

    return-void
.end method

.method public spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .registers 12

    .line 639
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, " errorCode:"

    aput-object v3, v1, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "awcn.TnetSpdySession"

    const-string/jumbo v5, "spdySessionCloseCallback"

    invoke-static {v3, v5, p2, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    const/4 v1, 0x0

    if-eqz p2, :cond_23

    .line 641
    invoke-interface {p2}, Lanet/channel/heartbeat/IHeartbeat;->stop()V

    .line 642
    iput-object v1, p0, Lanet/channel/session/TnetSpdySession;->D:Lanet/channel/heartbeat/IHeartbeat;

    :cond_23
    if-eqz p1, :cond_31

    .line 647
    :try_start_25
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_31

    :catch_29
    move-exception p2

    .line 650
    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "session clean up failed!"

    invoke-static {v3, v6, v1, p2, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_31
    :goto_31
    const/16 p2, -0xdbc

    if-ne p4, p2, :cond_47

    .line 655
    new-instance p2, Lanet/channel/strategy/ConnEvent;

    invoke-direct {p2}, Lanet/channel/strategy/ConnEvent;-><init>()V

    .line 656
    iput-boolean v2, p2, Lanet/channel/strategy/ConnEvent;->isSuccess:Z

    .line 657
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v1

    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->d:Ljava/lang/String;

    iget-object v6, p0, Lanet/channel/session/TnetSpdySession;->k:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v1, v5, v6, p2}, Lanet/channel/strategy/IStrategyInstance;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lanet/channel/strategy/ConnEvent;)V

    :cond_47
    const/4 p2, 0x6

    .line 660
    new-instance v1, Lanet/channel/entity/b;

    invoke-direct {v1, v0}, Lanet/channel/entity/b;-><init>(I)V

    invoke-virtual {p0, p2, v1}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/b;)V

    if-eqz p3, :cond_a1

    .line 663
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget v1, p3, Lorg/android/spdy/SuperviseConnectInfo;->reused_counter:I

    int-to-long v5, v1

    iput-wide v5, p2, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 664
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget v1, p3, Lorg/android/spdy/SuperviseConnectInfo;->keepalive_period_second:I

    int-to-long v5, v1

    iput-wide v5, p2, Lanet/channel/statist/SessionStatistic;->liveTime:J

    .line 667
    :try_start_60
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->j:Lanet/channel/entity/ConnType;

    invoke-virtual {p2}, Lanet/channel/entity/ConnType;->isHTTP3()Z

    move-result p2

    if-eqz p2, :cond_a1

    if-eqz p1, :cond_7d

    const-string p2, "[HTTP3 spdySessionCloseCallback]"

    .line 669
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "connectInfo"

    aput-object v5, v0, v2

    .line 670
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getConnectInfoOnDisConnected()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    .line 669
    invoke-static {v3, p2, v1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 672
    :cond_7d
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget p2, p3, Lorg/android/spdy/SuperviseConnectInfo;->xqc0RttStatus:I

    iput p2, p1, Lanet/channel/statist/SessionStatistic;->xqc0RttStatus:I

    .line 673
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget-wide v0, p3, Lorg/android/spdy/SuperviseConnectInfo;->retransmissionRate:D

    iput-wide v0, p1, Lanet/channel/statist/SessionStatistic;->retransmissionRate:D

    .line 674
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget-wide v0, p3, Lorg/android/spdy/SuperviseConnectInfo;->lossRate:D

    iput-wide v0, p1, Lanet/channel/statist/SessionStatistic;->lossRate:D

    .line 675
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget p2, p3, Lorg/android/spdy/SuperviseConnectInfo;->tlpCount:I

    iput p2, p1, Lanet/channel/statist/SessionStatistic;->tlpCount:I

    .line 676
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget p2, p3, Lorg/android/spdy/SuperviseConnectInfo;->rtoCount:I

    iput p2, p1, Lanet/channel/statist/SessionStatistic;->rtoCount:I

    .line 677
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget-wide p2, p3, Lorg/android/spdy/SuperviseConnectInfo;->srtt:J

    iput-wide p2, p1, Lanet/channel/statist/SessionStatistic;->srtt:J
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_a1} :catch_a1

    .line 684
    :catch_a1
    :cond_a1
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget-wide p1, p1, Lanet/channel/statist/SessionStatistic;->errorCode:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_b0

    .line 685
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    int-to-long p2, p4

    iput-wide p2, p1, Lanet/channel/statist/SessionStatistic;->errorCode:J

    .line 688
    :cond_b0
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lanet/channel/session/TnetSpdySession;->z:J

    sub-long/2addr p2, v0

    long-to-int p2, p2

    iput p2, p1, Lanet/channel/statist/SessionStatistic;->lastPingInterval:I

    .line 689
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    invoke-interface {p1, p2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 692
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget-object p1, p1, Lanet/channel/statist/SessionStatistic;->ip:Ljava/lang/String;

    invoke-static {p1}, Lanet/channel/strategy/utils/c;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_dd

    .line 693
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    new-instance p2, Lanet/channel/statist/SessionMonitor;

    iget-object p3, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    invoke-direct {p2, p3}, Lanet/channel/statist/SessionMonitor;-><init>(Lanet/channel/statist/SessionStatistic;)V

    invoke-interface {p1, p2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 695
    :cond_dd
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    invoke-virtual {p2}, Lanet/channel/statist/SessionStatistic;->getAlarmObject()Lanet/channel/statist/AlarmObject;

    move-result-object p2

    invoke-interface {p1, p2}, Lanet/channel/appmonitor/IAppMonitor;->commitAlarm(Lanet/channel/statist/AlarmObject;)V

    return-void
.end method

.method public spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .registers 10

    .line 545
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget v1, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    int-to-long v1, v1

    iput-wide v1, v0, Lanet/channel/statist/SessionStatistic;->connectionTime:J

    .line 546
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget v1, p2, Lorg/android/spdy/SuperviseConnectInfo;->handshakeTime:I

    int-to-long v1, v1

    iput-wide v1, v0, Lanet/channel/statist/SessionStatistic;->sslTime:J

    .line 547
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget v1, p2, Lorg/android/spdy/SuperviseConnectInfo;->doHandshakeTime:I

    int-to-long v1, v1

    iput-wide v1, v0, Lanet/channel/statist/SessionStatistic;->sslCalTime:J

    .line 548
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getNetworkSubType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/SessionStatistic;->netType:Ljava/lang/String;

    .line 549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanet/channel/session/TnetSpdySession;->A:J

    .line 550
    new-instance v0, Lanet/channel/entity/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lanet/channel/entity/b;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/b;)V

    .line 551
    invoke-virtual {p0}, Lanet/channel/session/TnetSpdySession;->b()V

    .line 552
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "connectTime"

    aput-object v4, v3, v2

    iget v4, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string/jumbo v5, "sslTime"

    aput-object v5, v3, v4

    iget v5, p2, Lorg/android/spdy/SuperviseConnectInfo;->handshakeTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v3, v6

    const-string v5, "awcn.TnetSpdySession"

    const-string/jumbo v6, "spdySessionConnectCB connect"

    invoke-static {v5, v6, v0, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->j:Lanet/channel/entity/ConnType;

    invoke-virtual {v0}, Lanet/channel/entity/ConnType;->isHTTP3()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 555
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget-object v3, p2, Lorg/android/spdy/SuperviseConnectInfo;->scid:Ljava/lang/String;

    iput-object v3, v0, Lanet/channel/statist/SessionStatistic;->scid:Ljava/lang/String;

    .line 556
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget-object v3, p2, Lorg/android/spdy/SuperviseConnectInfo;->dcid:Ljava/lang/String;

    iput-object v3, v0, Lanet/channel/statist/SessionStatistic;->dcid:Ljava/lang/String;

    .line 557
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget p2, p2, Lorg/android/spdy/SuperviseConnectInfo;->congControlKind:I

    iput p2, v0, Lanet/channel/statist/SessionStatistic;->congControlKind:I

    .line 558
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v3, "connectInfo"

    aput-object v3, v0, v2

    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getConnectInfoOnConnected()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "[HTTP3 spdySessionConnectCB]"

    invoke-static {v5, p1, p2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_85
    return-void
.end method

.method public spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .registers 9

    const/4 p3, 0x0

    const-string v0, "awcn.TnetSpdySession"

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    .line 615
    :try_start_6
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception p1

    .line 618
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "[spdySessionFailedError]session clean up failed!"

    invoke-static {v0, v3, p3, p1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 621
    :cond_12
    :goto_12
    new-instance p1, Lanet/channel/entity/b;

    const/16 v2, 0x100

    const-string/jumbo v3, "tnet connect fail"

    invoke-direct {p1, v2, p2, v3}, Lanet/channel/entity/b;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/b;)V

    .line 622
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->p:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, " errorId:"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p3, p1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    int-to-long p2, p2

    iput-wide p2, p1, Lanet/channel/statist/SessionStatistic;->errorCode:J

    .line 624
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iput v1, p1, Lanet/channel/statist/SessionStatistic;->ret:I

    .line 625
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getNetworkSubType()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lanet/channel/statist/SessionStatistic;->netType:Ljava/lang/String;

    .line 626
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    invoke-interface {p1, p2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 629
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    iget-object p1, p1, Lanet/channel/statist/SessionStatistic;->ip:Ljava/lang/String;

    invoke-static {p1}, Lanet/channel/strategy/utils/c;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_64

    .line 630
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    new-instance p2, Lanet/channel/statist/SessionMonitor;

    iget-object p3, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    invoke-direct {p2, p3}, Lanet/channel/statist/SessionMonitor;-><init>(Lanet/channel/statist/SessionStatistic;)V

    invoke-interface {p1, p2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 632
    :cond_64
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->q:Lanet/channel/statist/SessionStatistic;

    invoke-virtual {p2}, Lanet/channel/statist/SessionStatistic;->getAlarmObject()Lanet/channel/statist/AlarmObject;

    move-result-object p2

    invoke-interface {p1, p2}, Lanet/channel/appmonitor/IAppMonitor;->commitAlarm(Lanet/channel/statist/AlarmObject;)V

    return-void
.end method
