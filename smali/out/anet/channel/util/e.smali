.class Lanet/channel/util/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/util/d;


# direct methods
.method constructor <init>(Lanet/channel/util/d;)V
    .registers 2

    .line 262
    iput-object p1, p0, Lanet/channel/util/e;->a:Lanet/channel/util/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 266
    :try_start_0
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/util/c;->a(Lanet/channel/status/NetworkStatusHelper$NetworkStatus;)Ljava/lang/String;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lanet/channel/util/e;->a:Lanet/channel/util/d;

    iget-object v1, v1, Lanet/channel/util/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    const-string v0, "awcn.Inet64Util"

    const-string/jumbo v1, "startIpStackDetect double check"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 270
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-static {}, Lanet/channel/util/c;->f()I

    move-result v0

    .line 272
    iget-object v1, p0, Lanet/channel/util/e;->a:Lanet/channel/util/d;

    iget-object v1, v1, Lanet/channel/util/d;->b:Lanet/channel/statist/NetTypeStat;

    iget v1, v1, Lanet/channel/statist/NetTypeStat;->ipStackType:I

    if-eq v1, v0, :cond_4a

    .line 273
    sget-object v1, Lanet/channel/util/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lanet/channel/util/e;->a:Lanet/channel/util/d;

    iget-object v2, v2, Lanet/channel/util/d;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v1, p0, Lanet/channel/util/e;->a:Lanet/channel/util/d;

    iget-object v1, v1, Lanet/channel/util/d;->b:Lanet/channel/statist/NetTypeStat;

    iget-object v2, p0, Lanet/channel/util/e;->a:Lanet/channel/util/d;

    iget-object v2, v2, Lanet/channel/util/d;->b:Lanet/channel/statist/NetTypeStat;

    iget v2, v2, Lanet/channel/statist/NetTypeStat;->ipStackType:I

    iput v2, v1, Lanet/channel/statist/NetTypeStat;->lastIpStackType:I

    .line 275
    iget-object v1, p0, Lanet/channel/util/e;->a:Lanet/channel/util/d;

    iget-object v1, v1, Lanet/channel/util/d;->b:Lanet/channel/statist/NetTypeStat;

    iput v0, v1, Lanet/channel/statist/NetTypeStat;->ipStackType:I

    :cond_4a
    const/4 v1, 0x2

    if-eq v0, v1, :cond_50

    const/4 v1, 0x3

    if-ne v0, v1, :cond_69

    .line 279
    :cond_50
    invoke-static {}, Lanet/channel/util/c;->g()Lanet/channel/util/f;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 281
    sget-object v1, Lanet/channel/util/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lanet/channel/util/e;->a:Lanet/channel/util/d;

    iget-object v2, v2, Lanet/channel/util/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v1, p0, Lanet/channel/util/e;->a:Lanet/channel/util/d;

    iget-object v1, v1, Lanet/channel/util/d;->b:Lanet/channel/statist/NetTypeStat;

    invoke-virtual {v0}, Lanet/channel/util/f;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lanet/channel/statist/NetTypeStat;->nat64Prefix:Ljava/lang/String;

    .line 285
    :cond_69
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 286
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    iget-object v1, p0, Lanet/channel/util/e;->a:Lanet/channel/util/d;

    iget-object v1, v1, Lanet/channel/util/d;->b:Lanet/channel/statist/NetTypeStat;

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7a} :catch_7a

    :catch_7a
    :cond_7a
    return-void
.end method
