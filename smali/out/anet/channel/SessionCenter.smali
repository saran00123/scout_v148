.class public Lanet/channel/SessionCenter;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/SessionCenter$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "awcn.SessionCenter"

.field static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lanet/channel/Config;",
            "Lanet/channel/SessionCenter;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Z


# instance fields
.field b:Landroid/content/Context;

.field c:Ljava/lang/String;

.field d:Lanet/channel/Config;

.field final e:Lanet/channel/e;

.field final f:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lanet/channel/SessionRequest;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lanet/channel/c;

.field final h:Lanet/channel/AccsSessionManager;

.field final i:Lanet/channel/SessionCenter$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lanet/channel/SessionCenter;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 53
    sput-boolean v0, Lanet/channel/SessionCenter;->j:Z

    return-void
.end method

.method private constructor <init>(Lanet/channel/Config;)V
    .registers 4

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lanet/channel/e;

    invoke-direct {v0}, Lanet/channel/e;-><init>()V

    iput-object v0, p0, Lanet/channel/SessionCenter;->e:Lanet/channel/e;

    .line 60
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lanet/channel/SessionCenter;->f:Landroid/util/LruCache;

    .line 61
    new-instance v0, Lanet/channel/c;

    invoke-direct {v0}, Lanet/channel/c;-><init>()V

    iput-object v0, p0, Lanet/channel/SessionCenter;->g:Lanet/channel/c;

    .line 63
    new-instance v0, Lanet/channel/SessionCenter$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lanet/channel/SessionCenter$a;-><init>(Lanet/channel/SessionCenter;Lanet/channel/d;)V

    iput-object v0, p0, Lanet/channel/SessionCenter;->i:Lanet/channel/SessionCenter$a;

    .line 133
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/SessionCenter;->b:Landroid/content/Context;

    .line 134
    iput-object p1, p0, Lanet/channel/SessionCenter;->d:Lanet/channel/Config;

    .line 135
    invoke-virtual {p1}, Lanet/channel/Config;->getAppkey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lanet/channel/SessionCenter;->i:Lanet/channel/SessionCenter$a;

    invoke-virtual {v0}, Lanet/channel/SessionCenter$a;->a()V

    .line 137
    new-instance v0, Lanet/channel/AccsSessionManager;

    invoke-direct {v0, p0}, Lanet/channel/AccsSessionManager;-><init>(Lanet/channel/SessionCenter;)V

    iput-object v0, p0, Lanet/channel/SessionCenter;->h:Lanet/channel/AccsSessionManager;

    .line 139
    invoke-virtual {p1}, Lanet/channel/Config;->getAppkey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[default]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 140
    invoke-virtual {p1}, Lanet/channel/Config;->getSecurity()Lanet/channel/security/ISecurity;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lanet/channel/Config;->getAppkey()Ljava/lang/String;

    move-result-object p1

    .line 142
    new-instance v1, Lanet/channel/d;

    invoke-direct {v1, p0, p1, v0}, Lanet/channel/d;-><init>(Lanet/channel/SessionCenter;Ljava/lang/String;Lanet/channel/security/ISecurity;)V

    invoke-static {v1}, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->setSign(Lanet/channel/strategy/dispatch/IAmdcSign;)V

    :cond_58
    return-void
.end method

.method private a(Lanet/channel/util/HttpUrl;)Lanet/channel/SessionRequest;
    .registers 4

    .line 393
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lanet/channel/strategy/IStrategyInstance;->getCNameByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    .line 394
    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    .line 395
    :cond_12
    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->isSchemeLocked()Z

    move-result p1

    if-nez p1, :cond_24

    .line 397
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lanet/channel/strategy/IStrategyInstance;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_24
    const-string p1, "://"

    .line 400
    invoke-static {v1, p1, v0}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 401
    invoke-virtual {p0, p1}, Lanet/channel/SessionCenter;->a(Ljava/lang/String;)Lanet/channel/SessionRequest;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lanet/channel/SessionCenter;Lanet/channel/strategy/l$d;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lanet/channel/SessionCenter;->a(Lanet/channel/strategy/l$d;)V

    return-void
.end method

.method private a(Lanet/channel/strategy/l$b;)V
    .registers 9

    .line 534
    iget-object v0, p0, Lanet/channel/SessionCenter;->e:Lanet/channel/e;

    iget-object v1, p1, Lanet/channel/strategy/l$b;->c:Ljava/lang/String;

    iget-object v2, p1, Lanet/channel/strategy/l$b;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lanet/channel/util/StringUtils;->buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lanet/channel/SessionCenter;->a(Ljava/lang/String;)Lanet/channel/SessionRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanet/channel/e;->a(Lanet/channel/SessionRequest;)Ljava/util/List;

    move-result-object v0

    .line 535
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/Session;

    .line 536
    iget-object v2, v1, Lanet/channel/Session;->l:Ljava/lang/String;

    iget-object v3, p1, Lanet/channel/strategy/l$b;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lanet/channel/util/StringUtils;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 537
    iget-object v2, v1, Lanet/channel/Session;->p:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "session unit"

    aput-object v5, v3, v4

    iget-object v4, v1, Lanet/channel/Session;->l:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const-string/jumbo v6, "unit"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    iget-object v6, p1, Lanet/channel/strategy/l$b;->e:Ljava/lang/String;

    aput-object v6, v3, v4

    const-string v4, "awcn.SessionCenter"

    const-string/jumbo v6, "unit change"

    invoke-static {v4, v6, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    invoke-virtual {v1, v5}, Lanet/channel/Session;->close(Z)V

    goto :goto_16

    :cond_52
    return-void
.end method

.method private a(Lanet/channel/strategy/l$d;)V
    .registers 6

    const/4 v0, 0x0

    .line 518
    :try_start_1
    iget-object p1, p1, Lanet/channel/strategy/l$d;->b:[Lanet/channel/strategy/l$b;

    move v1, v0

    .line 519
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_26

    .line 520
    aget-object v2, p1, v1

    .line 521
    iget-boolean v3, v2, Lanet/channel/strategy/l$b;->k:Z

    if-eqz v3, :cond_10

    .line 522
    invoke-direct {p0, v2}, Lanet/channel/SessionCenter;->b(Lanet/channel/strategy/l$b;)V

    .line 524
    :cond_10
    iget-object v3, v2, Lanet/channel/strategy/l$b;->e:Ljava/lang/String;

    if-eqz v3, :cond_17

    .line 525
    invoke-direct {p0, v2}, Lanet/channel/SessionCenter;->a(Lanet/channel/strategy/l$b;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1a

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catch_1a
    move-exception p1

    .line 529
    iget-object v1, p0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "awcn.SessionCenter"

    const-string v3, "checkStrategy failed"

    invoke-static {v2, v3, v1, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_26
    return-void
.end method

.method static synthetic a()Z
    .registers 1

    .line 48
    sget-boolean v0, Lanet/channel/SessionCenter;->j:Z

    return v0
.end method

.method private b(Lanet/channel/strategy/l$b;)V
    .registers 14

    .line 544
    iget-object v0, p0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "host"

    aput-object v4, v2, v3

    iget-object v4, p1, Lanet/channel/strategy/l$b;->a:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "awcn.SessionCenter"

    const-string v6, "find effectNow"

    invoke-static {v4, v6, v0, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 545
    iget-object v0, p1, Lanet/channel/strategy/l$b;->h:[Lanet/channel/strategy/l$a;

    .line 546
    iget-object v2, p1, Lanet/channel/strategy/l$b;->f:[Ljava/lang/String;

    .line 548
    iget-object v6, p0, Lanet/channel/SessionCenter;->e:Lanet/channel/e;

    iget-object v7, p1, Lanet/channel/strategy/l$b;->c:Ljava/lang/String;

    iget-object p1, p1, Lanet/channel/strategy/l$b;->a:Ljava/lang/String;

    invoke-static {v7, p1}, Lanet/channel/util/StringUtils;->buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lanet/channel/SessionCenter;->a(Ljava/lang/String;)Lanet/channel/SessionRequest;

    move-result-object p1

    invoke-virtual {v6, p1}, Lanet/channel/e;->a(Lanet/channel/SessionRequest;)Ljava/util/List;

    move-result-object p1

    .line 549
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_30
    :goto_30
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ea

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lanet/channel/Session;

    .line 550
    invoke-virtual {v6}, Lanet/channel/Session;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v7

    invoke-virtual {v7}, Lanet/channel/entity/ConnType;->isHttpType()Z

    move-result v7

    if-eqz v7, :cond_47

    goto :goto_30

    :cond_47
    move v7, v3

    .line 555
    :goto_48
    array-length v8, v2

    if-ge v7, v8, :cond_5c

    .line 556
    invoke-virtual {v6}, Lanet/channel/Session;->getIp()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v2, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    move v7, v5

    goto :goto_5d

    :cond_59
    add-int/lit8 v7, v7, 0x1

    goto :goto_48

    :cond_5c
    move v7, v3

    :goto_5d
    const/4 v8, 0x3

    const/4 v9, 0x4

    if-nez v7, :cond_88

    .line 563
    invoke-static {v1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v7

    if-eqz v7, :cond_84

    .line 564
    iget-object v7, v6, Lanet/channel/Session;->p:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "session ip"

    aput-object v10, v9, v3

    invoke-virtual {v6}, Lanet/channel/Session;->getIp()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    const-string v10, "ips"

    aput-object v10, v9, v1

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    const-string v8, "ip not match"

    invoke-static {v4, v8, v7, v9}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    :cond_84
    invoke-virtual {v6, v5}, Lanet/channel/Session;->close(Z)V

    goto :goto_30

    :cond_88
    move v7, v3

    .line 571
    :goto_89
    array-length v10, v0

    if-ge v7, v10, :cond_af

    .line 572
    invoke-virtual {v6}, Lanet/channel/Session;->getPort()I

    move-result v10

    aget-object v11, v0, v7

    iget v11, v11, Lanet/channel/strategy/l$a;->a:I

    if-ne v10, v11, :cond_ac

    invoke-virtual {v6}, Lanet/channel/Session;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v10

    aget-object v11, v0, v7

    invoke-static {v11}, Lanet/channel/strategy/ConnProtocol;->valueOf(Lanet/channel/strategy/l$a;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v11

    invoke-static {v11}, Lanet/channel/entity/ConnType;->valueOf(Lanet/channel/strategy/ConnProtocol;)Lanet/channel/entity/ConnType;

    move-result-object v11

    invoke-virtual {v10, v11}, Lanet/channel/entity/ConnType;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ac

    move v7, v5

    goto :goto_b0

    :cond_ac
    add-int/lit8 v7, v7, 0x1

    goto :goto_89

    :cond_af
    move v7, v3

    :goto_b0
    if-nez v7, :cond_30

    .line 579
    invoke-static {v1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v7

    if-eqz v7, :cond_e5

    .line 580
    iget-object v7, v6, Lanet/channel/Session;->p:Ljava/lang/String;

    const/4 v10, 0x6

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "port"

    aput-object v11, v10, v3

    invoke-virtual {v6}, Lanet/channel/Session;->getPort()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    const-string v11, "connType"

    aput-object v11, v10, v1

    invoke-virtual {v6}, Lanet/channel/Session;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v11

    aput-object v11, v10, v8

    const-string v8, "aisle"

    aput-object v8, v10, v9

    const/4 v8, 0x5

    .line 581
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v8

    const-string v8, "aisle not match"

    .line 580
    invoke-static {v4, v8, v7, v10}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    :cond_e5
    invoke-virtual {v6, v5}, Lanet/channel/Session;->close(Z)V

    goto/16 :goto_30

    :cond_ea
    return-void
.end method

.method public static checkAndStartAccsSession()V
    .registers 2

    .line 383
    sget-object v0, Lanet/channel/SessionCenter;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/SessionCenter;

    .line 384
    iget-object v1, v1, Lanet/channel/SessionCenter;->h:Lanet/channel/AccsSessionManager;

    invoke-virtual {v1}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method public static declared-synchronized getInstance()Lanet/channel/SessionCenter;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lanet/channel/SessionCenter;

    monitor-enter v0

    .line 235
    :try_start_3
    sget-boolean v1, Lanet/channel/SessionCenter;->j:Z

    if-nez v1, :cond_10

    .line 236
    invoke-static {}, Lanet/channel/util/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 238
    invoke-static {v1}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;)V

    :cond_10
    const/4 v1, 0x0

    .line 243
    sget-object v2, Lanet/channel/SessionCenter;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/SessionCenter;

    .line 245
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lanet/channel/Config;->DEFAULT_CONFIG:Lanet/channel/Config;
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_3b

    if-eq v1, v4, :cond_37

    .line 246
    monitor-exit v0

    return-object v3

    :cond_37
    move-object v1, v3

    goto :goto_1b

    .line 249
    :cond_39
    monitor-exit v0

    return-object v1

    :catchall_3b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Lanet/channel/Config;)Lanet/channel/SessionCenter;
    .registers 4

    const-class v0, Lanet/channel/SessionCenter;

    monitor-enter v0

    if-eqz p0, :cond_2a

    .line 214
    :try_start_5
    sget-boolean v1, Lanet/channel/SessionCenter;->j:Z

    if-nez v1, :cond_12

    .line 215
    invoke-static {}, Lanet/channel/util/Utils;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 217
    invoke-static {v1}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;)V

    .line 221
    :cond_12
    sget-object v1, Lanet/channel/SessionCenter;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/SessionCenter;

    if-nez v1, :cond_26

    .line 223
    new-instance v1, Lanet/channel/SessionCenter;

    invoke-direct {v1, p0}, Lanet/channel/SessionCenter;-><init>(Lanet/channel/Config;)V

    .line 224
    sget-object v2, Lanet/channel/SessionCenter;->a:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_28

    .line 227
    :cond_26
    monitor-exit v0

    return-object v1

    :catchall_28
    move-exception p0

    goto :goto_32

    .line 211
    :cond_2a
    :try_start_2a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "config is null!"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_28

    :goto_32
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;
    .registers 3

    const-class v0, Lanet/channel/SessionCenter;

    monitor-enter v0

    .line 202
    :try_start_3
    invoke-static {p0}, Lanet/channel/Config;->getConfigByTag(Ljava/lang/String;)Lanet/channel/Config;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 206
    invoke-static {p0}, Lanet/channel/SessionCenter;->getInstance(Lanet/channel/Config;)Lanet/channel/SessionCenter;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_18

    monitor-exit v0

    return-object p0

    .line 204
    :cond_f
    :try_start_f
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "tag not exist!"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_18

    :catchall_18
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .registers 6

    const-class v0, Lanet/channel/SessionCenter;

    monitor-enter v0

    if-eqz p0, :cond_48

    .line 70
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lanet/channel/GlobalAppRuntimeInfo;->setContext(Landroid/content/Context;)V

    .line 71
    sget-boolean v1, Lanet/channel/SessionCenter;->j:Z

    if-nez v1, :cond_44

    .line 72
    sget-object v1, Lanet/channel/SessionCenter;->a:Ljava/util/Map;

    sget-object v2, Lanet/channel/Config;->DEFAULT_CONFIG:Lanet/channel/Config;

    new-instance v3, Lanet/channel/SessionCenter;

    sget-object v4, Lanet/channel/Config;->DEFAULT_CONFIG:Lanet/channel/Config;

    invoke-direct {v3, v4}, Lanet/channel/SessionCenter;-><init>(Lanet/channel/Config;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {}, Lanet/channel/util/AppLifecycle;->initialize()V

    .line 76
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->startListener(Landroid/content/Context;)V

    .line 78
    invoke-static {}, Lanet/channel/AwcnConfig;->isTbNextLaunch()Z

    move-result p0

    if-nez p0, :cond_35

    .line 79
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object p0

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p0, v1}, Lanet/channel/strategy/IStrategyInstance;->initialize(Landroid/content/Context;)V

    .line 82
    :cond_35
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result p0

    if-eqz p0, :cond_41

    .line 83
    invoke-static {}, Lanet/channel/detect/n;->a()V

    .line 84
    invoke-static {}, Lanet/channel/e/a;->a()V

    :cond_41
    const/4 p0, 0x1

    .line 86
    sput-boolean p0, Lanet/channel/SessionCenter;->j:Z
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_46

    .line 88
    :cond_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    goto :goto_5b

    :cond_48
    :try_start_48
    const-string p0, "awcn.SessionCenter"

    const-string v1, "context is null!"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 67
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v1, "init failed. context is null"

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5b
    .catchall {:try_start_48 .. :try_end_5b} :catchall_46

    :goto_5b
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lanet/channel/Config;)V
    .registers 5

    const-class v0, Lanet/channel/SessionCenter;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_31

    if-eqz p1, :cond_20

    .line 124
    :try_start_9
    invoke-static {p0}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;)V

    .line 126
    sget-object p0, Lanet/channel/SessionCenter;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    .line 127
    new-instance p0, Lanet/channel/SessionCenter;

    invoke-direct {p0, p1}, Lanet/channel/SessionCenter;-><init>(Lanet/channel/Config;)V

    .line 128
    sget-object v1, Lanet/channel/SessionCenter;->a:Ljava/util/Map;

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_42

    .line 130
    :cond_1e
    monitor-exit v0

    return-void

    :cond_20
    :try_start_20
    const-string p0, "awcn.SessionCenter"

    const-string p1, "paramter config is null!"

    .line 120
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v2, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "init failed. config is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    const-string p0, "awcn.SessionCenter"

    const-string p1, "context is null!"

    .line 115
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v2, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "init failed. context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_42
    .catchall {:try_start_20 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lanet/channel/SessionCenter;

    monitor-enter v0

    .line 96
    :try_start_3
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;Ljava/lang/String;Lanet/channel/entity/ENV;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 97
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Lanet/channel/entity/ENV;)V
    .registers 5

    const-class v0, Lanet/channel/SessionCenter;

    monitor-enter v0

    if-eqz p0, :cond_23

    .line 105
    :try_start_5
    invoke-static {p1, p2}, Lanet/channel/Config;->getConfig(Ljava/lang/String;Lanet/channel/entity/ENV;)Lanet/channel/Config;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 107
    new-instance v1, Lanet/channel/Config$Builder;

    invoke-direct {v1}, Lanet/channel/Config$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lanet/channel/Config$Builder;->setAppkey(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lanet/channel/Config$Builder;->setEnv(Lanet/channel/entity/ENV;)Lanet/channel/Config$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lanet/channel/Config$Builder;->build()Lanet/channel/Config;

    move-result-object v1

    .line 110
    :cond_1c
    invoke-static {p0, v1}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;Lanet/channel/Config;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_21

    .line 111
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    goto :goto_36

    :cond_23
    :try_start_23
    const-string p0, "awcn.SessionCenter"

    const-string p1, "context is null!"

    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 101
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "init failed. context is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_21

    :goto_36
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized switchEnvironment(Lanet/channel/entity/ENV;)V
    .registers 13

    const-class v0, Lanet/channel/SessionCenter;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 172
    :try_start_5
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, p0, :cond_49

    const-string v3, "awcn.SessionCenter"

    const-string/jumbo v6, "switch env"

    const/4 v7, 0x4

    .line 173
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "old"

    aput-object v8, v7, v2

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v8

    aput-object v8, v7, v5

    const-string v8, "new"

    aput-object v8, v7, v4

    const/4 v8, 0x3

    aput-object p0, v7, v8

    invoke-static {v3, v6, v1, v7}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-static {p0}, Lanet/channel/GlobalAppRuntimeInfo;->setEnv(Lanet/channel/entity/ENV;)V

    .line 176
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v3

    invoke-interface {v3}, Lanet/channel/strategy/IStrategyInstance;->switchEnv()V

    .line 177
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v6, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v7, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v3, v6, v7}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v3

    .line 178
    sget-object v6, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    if-ne p0, v6, :cond_45

    move v6, v2

    goto :goto_46

    :cond_45
    move v6, v5

    :goto_46
    invoke-virtual {v3, v6}, Lorg/android/spdy/SpdyAgent;->switchAccsServer(I)V

    .line 181
    :cond_49
    sget-object v3, Lanet/channel/SessionCenter;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 182
    :cond_53
    :goto_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 183
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lanet/channel/SessionCenter;

    .line 184
    iget-object v7, v6, Lanet/channel/SessionCenter;->d:Lanet/channel/Config;

    invoke-virtual {v7}, Lanet/channel/Config;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v7

    if-eq v7, p0, :cond_53

    const-string v7, "awcn.SessionCenter"

    const-string v8, "remove instance"

    .line 185
    iget-object v9, v6, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    new-array v10, v4, [Ljava/lang/Object;

    const-string v11, "ENVIRONMENT"

    aput-object v11, v10, v2

    iget-object v11, v6, Lanet/channel/SessionCenter;->d:Lanet/channel/Config;

    invoke-virtual {v11}, Lanet/channel/Config;->getEnv()Lanet/channel/entity/ENV;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v7, v8, v9, v10}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    iget-object v7, v6, Lanet/channel/SessionCenter;->h:Lanet/channel/AccsSessionManager;

    invoke-virtual {v7, v2}, Lanet/channel/AccsSessionManager;->forceCloseSession(Z)V

    .line 187
    iget-object v6, v6, Lanet/channel/SessionCenter;->i:Lanet/channel/SessionCenter$a;

    invoke-virtual {v6}, Lanet/channel/SessionCenter$a;->b()V

    .line 188
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_91} :catch_94
    .catchall {:try_start_5 .. :try_end_91} :catchall_92

    goto :goto_53

    :catchall_92
    move-exception p0

    goto :goto_a1

    :catch_94
    move-exception p0

    :try_start_95
    const-string v3, "awcn.SessionCenter"

    const-string/jumbo v4, "switch env error."

    .line 192
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v1, p0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_9f
    .catchall {:try_start_95 .. :try_end_9f} :catchall_92

    .line 194
    :cond_9f
    monitor-exit v0

    return-void

    :goto_a1
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method protected a(Lanet/channel/util/HttpUrl;IJLanet/channel/SessionGetCallback;)Lanet/channel/Session;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    move v8, p2

    move-wide/from16 v9, p3

    .line 405
    sget-boolean v1, Lanet/channel/SessionCenter;->j:Z

    const/4 v2, 0x0

    const-string v3, "awcn.SessionCenter"

    if-eqz v1, :cond_e1

    if-eqz p1, :cond_d9

    .line 414
    iget-object v1, v0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "u"

    aput-object v5, v4, v2

    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->urlString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string v7, "sessionType"

    aput-object v7, v4, v5

    const/4 v7, 0x3

    sget v11, Lanet/channel/entity/c;->a:I

    if-ne v8, v11, :cond_2b

    const-string v11, "LongLink"

    goto :goto_2d

    :cond_2b
    const-string v11, "ShortLink"

    :goto_2d
    aput-object v11, v4, v7

    const/4 v7, 0x4

    const-string/jumbo v11, "timeout"

    aput-object v11, v4, v7

    const/4 v7, 0x5

    .line 415
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v7

    const-string v7, "getInternal"

    .line 414
    invoke-static {v3, v7, v1, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    invoke-direct {p0, p1}, Lanet/channel/SessionCenter;->a(Lanet/channel/util/HttpUrl;)Lanet/channel/SessionRequest;

    move-result-object v11

    .line 418
    iget-object v1, v0, Lanet/channel/SessionCenter;->e:Lanet/channel/e;

    invoke-virtual {v1, v11, p2}, Lanet/channel/e;->a(Lanet/channel/SessionRequest;I)Lanet/channel/Session;

    move-result-object v12

    if-eqz v12, :cond_5e

    .line 421
    iget-object v1, v0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    const-string v5, "session"

    aput-object v5, v4, v2

    aput-object v12, v4, v6

    const-string v2, "get internal hit cache session"

    invoke-static {v3, v2, v1, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_d8

    .line 423
    :cond_5e
    iget-object v1, v0, Lanet/channel/SessionCenter;->d:Lanet/channel/Config;

    sget-object v4, Lanet/channel/Config;->DEFAULT_CONFIG:Lanet/channel/Config;

    if-ne v1, v4, :cond_6f

    sget v1, Lanet/channel/entity/c;->b:I

    if-eq v8, v1, :cond_6f

    if-eqz p5, :cond_6d

    .line 426
    invoke-interface/range {p5 .. p5}, Lanet/channel/SessionGetCallback;->onSessionGetFail()V

    :cond_6d
    const/4 v1, 0x0

    return-object v1

    .line 431
    :cond_6f
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v1

    if-eqz v1, :cond_a1

    sget v1, Lanet/channel/entity/c;->a:I

    if-ne v8, v1, :cond_a1

    .line 433
    invoke-static {}, Lanet/channel/AwcnConfig;->isAccsSessionCreateForbiddenInBg()Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 434
    iget-object v1, v0, Lanet/channel/SessionCenter;->g:Lanet/channel/c;

    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lanet/channel/c;->b(Ljava/lang/String;)Lanet/channel/SessionInfo;

    move-result-object v1

    if-eqz v1, :cond_a1

    .line 435
    iget-boolean v1, v1, Lanet/channel/SessionInfo;->isAccs:Z

    if-nez v1, :cond_90

    goto :goto_a1

    .line 436
    :cond_90
    iget-object v1, v0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "app background, forbid to create accs session"

    invoke-static {v3, v4, v1, v2}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    new-instance v1, Ljava/net/ConnectException;

    const-string v2, "accs session connecting forbidden in background"

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 440
    :cond_a1
    :goto_a1
    iget-object v2, v0, Lanet/channel/SessionCenter;->b:Landroid/content/Context;

    iget-object v1, v0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    invoke-static {v1}, Lanet/channel/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v11

    move v3, p2

    move-object/from16 v5, p5

    move-wide/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Lanet/channel/SessionRequest;->a(Landroid/content/Context;ILjava/lang/String;Lanet/channel/SessionGetCallback;J)V

    if-nez p5, :cond_d8

    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-lez v1, :cond_d8

    .line 441
    sget v1, Lanet/channel/entity/c;->c:I

    if-eq v8, v1, :cond_c4

    .line 443
    invoke-virtual {v11}, Lanet/channel/SessionRequest;->b()I

    move-result v1

    if-ne v1, v8, :cond_d8

    .line 444
    :cond_c4
    invoke-virtual {v11, v9, v10}, Lanet/channel/SessionRequest;->a(J)V

    .line 445
    iget-object v1, v0, Lanet/channel/SessionCenter;->e:Lanet/channel/e;

    invoke-virtual {v1, v11, p2}, Lanet/channel/e;->a(Lanet/channel/SessionRequest;I)Lanet/channel/Session;

    move-result-object v12

    if-eqz v12, :cond_d0

    goto :goto_d8

    .line 447
    :cond_d0
    new-instance v1, Ljava/net/ConnectException;

    const-string v2, "session connecting failed or timeout"

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d8
    :goto_d8
    return-object v12

    .line 411
    :cond_d9
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "httpUrl is null"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :cond_e1
    iget-object v1, v0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "getInternal not inited!"

    invoke-static {v3, v4, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getInternal not inited"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected a(Ljava/lang/String;)Lanet/channel/SessionRequest;
    .registers 5

    .line 589
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 594
    :cond_8
    iget-object v0, p0, Lanet/channel/SessionCenter;->f:Landroid/util/LruCache;

    monitor-enter v0

    .line 595
    :try_start_b
    iget-object v1, p0, Lanet/channel/SessionCenter;->f:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/SessionRequest;

    if-nez v1, :cond_1f

    .line 597
    new-instance v1, Lanet/channel/SessionRequest;

    invoke-direct {v1, p1, p0}, Lanet/channel/SessionRequest;-><init>(Ljava/lang/String;Lanet/channel/SessionCenter;)V

    .line 598
    iget-object v2, p0, Lanet/channel/SessionCenter;->f:Landroid/util/LruCache;

    invoke-virtual {v2, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    :cond_1f
    monitor-exit v0

    return-object v1

    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_21

    throw p1
.end method

.method public asyncGet(Lanet/channel/util/HttpUrl;IJLanet/channel/SessionGetCallback;)V
    .registers 8

    if-eqz p5, :cond_19

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_10

    .line 350
    :try_start_8
    invoke-virtual/range {p0 .. p5}, Lanet/channel/SessionCenter;->b(Lanet/channel/util/HttpUrl;IJLanet/channel/SessionGetCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_f

    .line 352
    :catch_c
    invoke-interface {p5}, Lanet/channel/SessionGetCallback;->onSessionGetFail()V

    :goto_f
    return-void

    .line 347
    :cond_10
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string/jumbo p2, "timeout must > 0"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 344
    :cond_19
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cb is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected b(Lanet/channel/util/HttpUrl;IJLanet/channel/SessionGetCallback;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    move v3, p2

    move-object/from16 v5, p5

    .line 456
    sget-boolean v1, Lanet/channel/SessionCenter;->j:Z

    const/4 v2, 0x0

    const-string v4, "awcn.SessionCenter"

    if-eqz v1, :cond_c2

    if-eqz p1, :cond_ba

    if-eqz v5, :cond_b2

    .line 469
    iget-object v1, v0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "u"

    aput-object v7, v6, v2

    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->urlString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    const-string v9, "sessionType"

    aput-object v9, v6, v7

    const/4 v9, 0x3

    sget v10, Lanet/channel/entity/c;->a:I

    if-ne v3, v10, :cond_2d

    const-string v10, "LongLink"

    goto :goto_2f

    :cond_2d
    const-string v10, "ShortLink"

    :goto_2f
    aput-object v10, v6, v9

    const/4 v9, 0x4

    const-string/jumbo v10, "timeout"

    aput-object v10, v6, v9

    const/4 v9, 0x5

    .line 470
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v9

    const-string v9, "getInternal"

    .line 469
    invoke-static {v4, v9, v1, v6}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    invoke-direct {p0, p1}, Lanet/channel/SessionCenter;->a(Lanet/channel/util/HttpUrl;)Lanet/channel/SessionRequest;

    move-result-object v1

    .line 473
    iget-object v6, v0, Lanet/channel/SessionCenter;->e:Lanet/channel/e;

    invoke-virtual {v6, v1, p2}, Lanet/channel/e;->a(Lanet/channel/SessionRequest;I)Lanet/channel/Session;

    move-result-object v6

    if-eqz v6, :cond_62

    .line 476
    iget-object v1, v0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v7, "session"

    aput-object v7, v3, v2

    aput-object v6, v3, v8

    const-string v2, "get internal hit cache session"

    invoke-static {v4, v2, v1, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 477
    invoke-interface {v5, v6}, Lanet/channel/SessionGetCallback;->onSessionGetSuccess(Lanet/channel/Session;)V

    return-void

    .line 480
    :cond_62
    iget-object v6, v0, Lanet/channel/SessionCenter;->d:Lanet/channel/Config;

    sget-object v7, Lanet/channel/Config;->DEFAULT_CONFIG:Lanet/channel/Config;

    if-ne v6, v7, :cond_70

    sget v6, Lanet/channel/entity/c;->b:I

    if-eq v3, v6, :cond_70

    .line 482
    invoke-interface/range {p5 .. p5}, Lanet/channel/SessionGetCallback;->onSessionGetFail()V

    return-void

    .line 486
    :cond_70
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v6

    if-eqz v6, :cond_a2

    sget v6, Lanet/channel/entity/c;->a:I

    if-ne v3, v6, :cond_a2

    .line 488
    invoke-static {}, Lanet/channel/AwcnConfig;->isAccsSessionCreateForbiddenInBg()Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 489
    iget-object v6, v0, Lanet/channel/SessionCenter;->g:Lanet/channel/c;

    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lanet/channel/c;->b(Ljava/lang/String;)Lanet/channel/SessionInfo;

    move-result-object v6

    if-eqz v6, :cond_a2

    .line 490
    iget-boolean v6, v6, Lanet/channel/SessionInfo;->isAccs:Z

    if-nez v6, :cond_91

    goto :goto_a2

    .line 491
    :cond_91
    iget-object v1, v0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "app background, forbid to create accs session"

    invoke-static {v4, v3, v1, v2}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    new-instance v1, Ljava/net/ConnectException;

    const-string v2, "accs session connecting forbidden in background"

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :cond_a2
    :goto_a2
    iget-object v2, v0, Lanet/channel/SessionCenter;->b:Landroid/content/Context;

    iget-object v4, v0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    invoke-static {v4}, Lanet/channel/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move v3, p2

    move-object/from16 v5, p5

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lanet/channel/SessionRequest;->b(Landroid/content/Context;ILjava/lang/String;Lanet/channel/SessionGetCallback;J)V

    return-void

    .line 466
    :cond_b2
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "sessionGetCallback is null"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :cond_ba
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "httpUrl is null"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 457
    :cond_c2
    iget-object v1, v0, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "getInternal not inited!"

    invoke-static {v4, v3, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getInternal not inited"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enterBackground()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 505
    invoke-static {}, Lanet/channel/util/AppLifecycle;->onBackground()V

    return-void
.end method

.method public enterForeground()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 513
    invoke-static {}, Lanet/channel/util/AppLifecycle;->onForeground()V

    return-void
.end method

.method public forceRecreateAccsSession()V
    .registers 3

    .line 389
    iget-object v0, p0, Lanet/channel/SessionCenter;->h:Lanet/channel/AccsSessionManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lanet/channel/AccsSessionManager;->forceCloseSession(Z)V

    return-void
.end method

.method public get(Lanet/channel/util/HttpUrl;IJ)Lanet/channel/Session;
    .registers 21

    move-object/from16 v7, p0

    const-string v8, "[Get]"

    const-string/jumbo v9, "url"

    const-string v10, "awcn.SessionCenter"

    const/4 v6, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    .line 318
    :try_start_17
    invoke-virtual/range {v1 .. v6}, Lanet/channel/SessionCenter;->a(Lanet/channel/util/HttpUrl;IJLanet/channel/SessionGetCallback;)Lanet/channel/Session;

    move-result-object v12
    :try_end_1b
    .catch Ljava/security/InvalidParameterException; {:try_start_17 .. :try_end_1b} :catch_9c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_17 .. :try_end_1b} :catch_88
    .catch Ljava/net/ConnectException; {:try_start_17 .. :try_end_1b} :catch_69
    .catch Lanet/channel/NoAvailStrategyException; {:try_start_17 .. :try_end_1b} :catch_42
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1b} :catch_1d

    goto/16 :goto_ab

    :catch_1d
    move-exception v0

    move-object v1, v0

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    new-array v2, v15, [Ljava/lang/Object;

    aput-object v9, v2, v14

    .line 333
    invoke-virtual/range {p1 .. p1}, Lanet/channel/util/HttpUrl;->urlString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    .line 332
    invoke-static {v10, v0, v1, v12, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_ab

    :catch_42
    move-exception v0

    move-object v1, v0

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lanet/channel/NoAvailStrategyException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    new-array v2, v11, [Ljava/lang/Object;

    aput-object v12, v2, v14

    aput-object v9, v2, v13

    .line 330
    invoke-virtual/range {p1 .. p1}, Lanet/channel/util/HttpUrl;->urlString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v15

    .line 329
    invoke-static {v10, v0, v1, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ab

    :catch_69
    move-exception v0

    move-object v1, v0

    .line 326
    iget-object v0, v7, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "errMsg"

    aput-object v3, v2, v14

    invoke-virtual {v1}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v13

    aput-object v9, v2, v15

    .line 327
    invoke-virtual/range {p1 .. p1}, Lanet/channel/util/HttpUrl;->urlString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v11

    const-string v1, "[Get]connect exception"

    .line 326
    invoke-static {v10, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ab

    :catch_88
    move-exception v0

    move-object v1, v0

    .line 323
    iget-object v0, v7, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    new-array v2, v15, [Ljava/lang/Object;

    aput-object v9, v2, v14

    .line 324
    invoke-virtual/range {p1 .. p1}, Lanet/channel/util/HttpUrl;->urlString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    const-string v3, "[Get]timeout exception"

    .line 323
    invoke-static {v10, v3, v0, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_ab

    :catch_9c
    move-exception v0

    move-object v1, v0

    .line 320
    iget-object v0, v7, Lanet/channel/SessionCenter;->c:Ljava/lang/String;

    new-array v2, v15, [Ljava/lang/Object;

    aput-object v9, v2, v14

    aput-object p1, v2, v13

    const-string v3, "[Get]param url is invalid"

    invoke-static {v10, v3, v0, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_ab
    return-object v12
.end method

.method public get(Lanet/channel/util/HttpUrl;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 309
    sget-object v0, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    if-ne p2, v0, :cond_7

    sget p2, Lanet/channel/entity/c;->a:I

    goto :goto_9

    :cond_7
    sget p2, Lanet/channel/entity/c;->b:I

    :goto_9
    invoke-virtual {p0, p1, p2, p3, p4}, Lanet/channel/SessionCenter;->get(Lanet/channel/util/HttpUrl;IJ)Lanet/channel/Session;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;J)Lanet/channel/Session;
    .registers 5

    .line 297
    invoke-static {p1}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object p1

    sget v0, Lanet/channel/entity/c;->c:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lanet/channel/SessionCenter;->get(Lanet/channel/util/HttpUrl;IJ)Lanet/channel/Session;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    invoke-static {p1}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object p1

    sget-object v0, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    if-ne p2, v0, :cond_b

    sget p2, Lanet/channel/entity/c;->a:I

    goto :goto_d

    :cond_b
    sget p2, Lanet/channel/entity/c;->b:I

    :goto_d
    invoke-virtual {p0, p1, p2, p3, p4}, Lanet/channel/SessionCenter;->get(Lanet/channel/util/HttpUrl;IJ)Lanet/channel/Session;

    move-result-object p1

    return-object p1
.end method

.method public getThrowsException(Lanet/channel/util/HttpUrl;IJ)Lanet/channel/Session;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 278
    invoke-virtual/range {v0 .. v5}, Lanet/channel/SessionCenter;->a(Lanet/channel/util/HttpUrl;IJLanet/channel/SessionGetCallback;)Lanet/channel/Session;

    move-result-object p1

    return-object p1
.end method

.method public getThrowsException(Lanet/channel/util/HttpUrl;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 283
    sget-object v0, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    if-ne p2, v0, :cond_7

    sget p2, Lanet/channel/entity/c;->a:I

    goto :goto_9

    :cond_7
    sget p2, Lanet/channel/entity/c;->b:I

    :goto_9
    move v2, p2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lanet/channel/SessionCenter;->a(Lanet/channel/util/HttpUrl;IJLanet/channel/SessionGetCallback;)Lanet/channel/Session;

    move-result-object p1

    return-object p1
.end method

.method public getThrowsException(Ljava/lang/String;J)Lanet/channel/Session;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 266
    invoke-static {p1}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v1

    sget v2, Lanet/channel/entity/c;->c:I

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lanet/channel/SessionCenter;->a(Lanet/channel/util/HttpUrl;IJLanet/channel/SessionGetCallback;)Lanet/channel/Session;

    move-result-object p1

    return-object p1
.end method

.method public getThrowsException(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 271
    invoke-static {p1}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v1

    sget-object p1, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    if-ne p2, p1, :cond_b

    sget p1, Lanet/channel/entity/c;->a:I

    goto :goto_d

    :cond_b
    sget p1, Lanet/channel/entity/c;->b:I

    :goto_d
    move v2, p1

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lanet/channel/SessionCenter;->a(Lanet/channel/util/HttpUrl;IJLanet/channel/SessionGetCallback;)Lanet/channel/Session;

    move-result-object p1

    return-object p1
.end method

.method public registerAccsSessionListener(Lanet/channel/ISessionListener;)V
    .registers 3

    .line 371
    iget-object v0, p0, Lanet/channel/SessionCenter;->h:Lanet/channel/AccsSessionManager;

    invoke-virtual {v0, p1}, Lanet/channel/AccsSessionManager;->registerListener(Lanet/channel/ISessionListener;)V

    return-void
.end method

.method public registerPublicKey(Ljava/lang/String;I)V
    .registers 4

    .line 379
    iget-object v0, p0, Lanet/channel/SessionCenter;->g:Lanet/channel/c;

    invoke-virtual {v0, p1, p2}, Lanet/channel/c;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public registerSessionInfo(Lanet/channel/SessionInfo;)V
    .registers 3

    .line 357
    iget-object v0, p0, Lanet/channel/SessionCenter;->g:Lanet/channel/c;

    invoke-virtual {v0, p1}, Lanet/channel/c;->a(Lanet/channel/SessionInfo;)V

    .line 358
    iget-boolean p1, p1, Lanet/channel/SessionInfo;->isKeepAlive:Z

    if-eqz p1, :cond_e

    .line 359
    iget-object p1, p0, Lanet/channel/SessionCenter;->h:Lanet/channel/AccsSessionManager;

    invoke-virtual {p1}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V

    :cond_e
    return-void
.end method

.method public declared-synchronized switchEnv(Lanet/channel/entity/ENV;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 167
    :try_start_1
    invoke-static {p1}, Lanet/channel/SessionCenter;->switchEnvironment(Lanet/channel/entity/ENV;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 168
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unregisterAccsSessionListener(Lanet/channel/ISessionListener;)V
    .registers 3

    .line 375
    iget-object v0, p0, Lanet/channel/SessionCenter;->h:Lanet/channel/AccsSessionManager;

    invoke-virtual {v0, p1}, Lanet/channel/AccsSessionManager;->unregisterListener(Lanet/channel/ISessionListener;)V

    return-void
.end method

.method public unregisterSessionInfo(Ljava/lang/String;)V
    .registers 3

    .line 364
    iget-object v0, p0, Lanet/channel/SessionCenter;->g:Lanet/channel/c;

    invoke-virtual {v0, p1}, Lanet/channel/c;->a(Ljava/lang/String;)Lanet/channel/SessionInfo;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 365
    iget-boolean p1, p1, Lanet/channel/SessionInfo;->isKeepAlive:Z

    if-eqz p1, :cond_11

    .line 366
    iget-object p1, p0, Lanet/channel/SessionCenter;->h:Lanet/channel/AccsSessionManager;

    invoke-virtual {p1}, Lanet/channel/AccsSessionManager;->checkAndStartSession()V

    :cond_11
    return-void
.end method
