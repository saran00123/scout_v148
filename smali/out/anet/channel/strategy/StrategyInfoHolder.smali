.class Lanet/channel/strategy/StrategyInfoHolder;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;
    }
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyTable;",
            ">;"
        }
    .end annotation
.end field

.field volatile b:Lanet/channel/strategy/StrategyConfig;

.field final c:Lanet/channel/strategy/a;

.field private final d:Lanet/channel/strategy/StrategyTable;

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;

    invoke-direct {v0}, Lanet/channel/strategy/StrategyInfoHolder$LruStrategyMap;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/StrategyConfig;

    .line 34
    new-instance v0, Lanet/channel/strategy/a;

    invoke-direct {v0}, Lanet/channel/strategy/a;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->c:Lanet/channel/strategy/a;

    .line 37
    new-instance v0, Lanet/channel/strategy/StrategyTable;

    const-string v1, "Unknown"

    invoke-direct {v0, v1}, Lanet/channel/strategy/StrategyTable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/StrategyTable;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->e:Ljava/util/Set;

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->f:Ljava/lang/String;

    .line 49
    :try_start_28
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInfoHolder;->e()V

    .line 50
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInfoHolder;->g()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_2e} :catch_34
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2f

    goto :goto_34

    :catchall_2f
    move-exception v0

    .line 54
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInfoHolder;->f()V

    .line 55
    throw v0

    .line 54
    :catch_34
    :goto_34
    invoke-direct {p0}, Lanet/channel/strategy/StrategyInfoHolder;->f()V

    return-void
.end method

.method public static a()Lanet/channel/strategy/StrategyInfoHolder;
    .registers 1

    .line 44
    new-instance v0, Lanet/channel/strategy/StrategyInfoHolder;

    invoke-direct {v0}, Lanet/channel/strategy/StrategyInfoHolder;-><init>()V

    return-object v0
.end method

.method private a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;
    .registers 4

    .line 219
    invoke-virtual {p1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isWifi()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_26

    .line 220
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getWifiBSSID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lanet/channel/util/StringUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object p1, v1

    .line 224
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WIFI$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_45

    .line 225
    :cond_26
    invoke-virtual {p1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "$"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getApn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_45
    :goto_45
    return-object v1
.end method

.method private e()V
    .registers 2

    .line 63
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->addStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    .line 64
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    invoke-direct {p0, v0}, Lanet/channel/strategy/StrategyInfoHolder;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->f:Ljava/lang/String;

    return-void
.end method

.method private f()V
    .registers 3

    .line 68
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyTable;

    invoke-virtual {v1}, Lanet/channel/strategy/StrategyTable;->a()V

    goto :goto_a

    .line 72
    :cond_20
    monitor-enter p0

    .line 73
    :try_start_21
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/StrategyConfig;

    if-nez v0, :cond_32

    .line 74
    new-instance v0, Lanet/channel/strategy/StrategyConfig;

    invoke-direct {v0}, Lanet/channel/strategy/StrategyConfig;-><init>()V

    .line 75
    invoke-virtual {v0}, Lanet/channel/strategy/StrategyConfig;->b()V

    .line 76
    invoke-virtual {v0, p0}, Lanet/channel/strategy/StrategyConfig;->a(Lanet/channel/strategy/StrategyInfoHolder;)V

    .line 77
    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/StrategyConfig;

    .line 79
    :cond_32
    monitor-exit p0

    return-void

    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_21 .. :try_end_36} :catchall_34

    throw v0
.end method

.method private g()V
    .registers 5

    const/4 v0, 0x0

    .line 83
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "awcn.StrategyInfoHolder"

    const-string v3, "restore"

    invoke-static {v2, v3, v1, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->f:Ljava/lang/String;

    .line 86
    invoke-static {}, Lanet/channel/AwcnConfig;->isAsyncLoadStrategyEnable()Z

    move-result v2

    if-nez v2, :cond_35

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v2, 0x1

    .line 89
    invoke-virtual {p0, v0, v2}, Lanet/channel/strategy/StrategyInfoHolder;->a(Ljava/lang/String;Z)V

    :cond_1d
    const-string v2, "StrategyConfig"

    .line 92
    invoke-static {v2, v1}, Lanet/channel/strategy/m;->a(Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyConfig;

    iput-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/StrategyConfig;

    .line 93
    iget-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/StrategyConfig;

    if-eqz v1, :cond_35

    .line 94
    iget-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/StrategyConfig;

    invoke-virtual {v1}, Lanet/channel/strategy/StrategyConfig;->b()V

    .line 95
    iget-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/StrategyConfig;

    invoke-virtual {v1, p0}, Lanet/channel/strategy/StrategyConfig;->a(Lanet/channel/strategy/StrategyInfoHolder;)V

    .line 100
    :cond_35
    new-instance v1, Lanet/channel/strategy/d;

    invoke-direct {v1, p0, v0}, Lanet/channel/strategy/d;-><init>(Lanet/channel/strategy/StrategyInfoHolder;Ljava/lang/String;)V

    invoke-static {v1}, Lanet/channel/strategy/utils/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method a(Lanet/channel/strategy/l$d;)V
    .registers 4

    .line 232
    iget v0, p1, Lanet/channel/strategy/l$d;->g:I

    if-eqz v0, :cond_b

    .line 233
    iget v0, p1, Lanet/channel/strategy/l$d;->g:I

    iget v1, p1, Lanet/channel/strategy/l$d;->h:I

    invoke-static {v0, v1}, Lanet/channel/strategy/dispatch/AmdcRuntimeInfo;->updateAmdcLimit(II)V

    .line 236
    :cond_b
    invoke-virtual {p0}, Lanet/channel/strategy/StrategyInfoHolder;->d()Lanet/channel/strategy/StrategyTable;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyTable;->update(Lanet/channel/strategy/l$d;)V

    .line 238
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/StrategyConfig;

    invoke-virtual {v0, p1}, Lanet/channel/strategy/StrategyConfig;->a(Lanet/channel/strategy/l$d;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Z)V
    .registers 9

    .line 150
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->e:Ljava/util/Set;

    monitor-enter v0

    .line 151
    :try_start_3
    iget-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 152
    iget-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->e:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_53

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_1c

    .line 159
    new-instance v0, Lanet/channel/statist/StrategyStatObject;

    invoke-direct {v0, v1}, Lanet/channel/statist/StrategyStatObject;-><init>(I)V

    .line 160
    iput-object p1, v0, Lanet/channel/statist/StrategyStatObject;->readStrategyFileId:Ljava/lang/String;

    .line 162
    :cond_1c
    invoke-static {p1, v0}, Lanet/channel/strategy/m;->a(Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanet/channel/strategy/StrategyTable;

    if-eqz v2, :cond_36

    .line 164
    invoke-virtual {v2}, Lanet/channel/strategy/StrategyTable;->a()V

    .line 165
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    monitor-enter v3

    .line 166
    :try_start_2a
    iget-object v4, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    iget-object v5, v2, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    monitor-exit v3

    goto :goto_36

    :catchall_33
    move-exception p1

    monitor-exit v3
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_33

    throw p1

    .line 169
    :cond_36
    :goto_36
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->e:Ljava/util/Set;

    monitor-enter v3

    .line 170
    :try_start_39
    iget-object v4, p0, Lanet/channel/strategy/StrategyInfoHolder;->e:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 171
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_4e

    if-eqz p2, :cond_4d

    if-eqz v2, :cond_44

    const/4 v1, 0x1

    .line 175
    :cond_44
    iput v1, v0, Lanet/channel/statist/StrategyStatObject;->isSucceed:I

    .line 176
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    invoke-interface {p1, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    :cond_4d
    return-void

    :catchall_4e
    move-exception p1

    .line 171
    :try_start_4f
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p1

    .line 154
    :cond_51
    :try_start_51
    monitor-exit v0

    return-void

    :catchall_53
    move-exception p1

    .line 156
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_53

    throw p1
.end method

.method b()V
    .registers 1

    .line 59
    invoke-static {p0}, Lanet/channel/status/NetworkStatusHelper;->removeStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    return-void
.end method

.method c()V
    .registers 5

    .line 184
    monitor-enter p0

    .line 185
    :try_start_1
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/strategy/StrategyTable;

    .line 186
    iget-boolean v2, v1, Lanet/channel/strategy/StrategyTable;->d:Z

    if-eqz v2, :cond_b

    .line 187
    new-instance v2, Lanet/channel/statist/StrategyStatObject;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lanet/channel/statist/StrategyStatObject;-><init>(I)V

    .line 188
    iget-object v3, v1, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    iput-object v3, v2, Lanet/channel/statist/StrategyStatObject;->writeStrategyFileId:Ljava/lang/String;

    .line 189
    iget-object v3, v1, Lanet/channel/strategy/StrategyTable;->a:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lanet/channel/strategy/m;->a(Ljava/io/Serializable;Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)V

    const/4 v2, 0x0

    .line 190
    iput-boolean v2, v1, Lanet/channel/strategy/StrategyTable;->d:Z

    goto :goto_b

    .line 193
    :cond_2e
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/StrategyConfig;

    invoke-virtual {v0}, Lanet/channel/strategy/StrategyConfig;->a()Lanet/channel/strategy/StrategyConfig;

    move-result-object v0

    const-string v1, "StrategyConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lanet/channel/strategy/m;->a(Ljava/io/Serializable;Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)V

    .line 194
    monitor-exit p0

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method d()Lanet/channel/strategy/StrategyTable;
    .registers 5

    .line 201
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/StrategyTable;

    .line 202
    iget-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->f:Ljava/lang/String;

    .line 203
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 204
    iget-object v2, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    monitor-enter v2

    .line 205
    :try_start_d
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanet/channel/strategy/StrategyTable;

    if-eqz v0, :cond_18

    goto :goto_22

    .line 209
    :cond_18
    new-instance v0, Lanet/channel/strategy/StrategyTable;

    invoke-direct {v0, v1}, Lanet/channel/strategy/StrategyTable;-><init>(Ljava/lang/String;)V

    .line 210
    iget-object v3, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :goto_22
    monitor-exit v2

    goto :goto_27

    :catchall_24
    move-exception v0

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :goto_27
    return-object v0
.end method

.method public onNetworkStatusChanged(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)V
    .registers 4

    .line 243
    invoke-direct {p0, p1}, Lanet/channel/strategy/StrategyInfoHolder;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/strategy/StrategyInfoHolder;->f:Ljava/lang/String;

    .line 244
    iget-object p1, p0, Lanet/channel/strategy/StrategyInfoHolder;->f:Ljava/lang/String;

    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 246
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    monitor-enter v0

    .line 247
    :try_start_11
    iget-object v1, p0, Lanet/channel/strategy/StrategyInfoHolder;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 248
    new-instance v1, Lanet/channel/strategy/e;

    invoke-direct {v1, p0, p1}, Lanet/channel/strategy/e;-><init>(Lanet/channel/strategy/StrategyInfoHolder;Ljava/lang/String;)V

    invoke-static {v1}, Lanet/channel/strategy/utils/a;->a(Ljava/lang/Runnable;)V

    .line 255
    :cond_21
    monitor-exit v0

    goto :goto_26

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_23

    throw p1

    :cond_26
    :goto_26
    return-void
.end method
