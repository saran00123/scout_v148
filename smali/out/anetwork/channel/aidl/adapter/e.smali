.class final Lanetwork/channel/aidl/adapter/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    const/4 p1, 0x2

    .line 44
    invoke-static {p1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    const/4 p1, 0x0

    .line 45
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "anet.RemoteGetter"

    const-string v3, "[onServiceConnected]ANet_Service start success. ANet run with service mode"

    invoke-static {v2, v3, p1, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :cond_12
    const-class p1, Lanetwork/channel/aidl/adapter/d;

    monitor-enter p1

    .line 48
    :try_start_15
    invoke-static {p2}, Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub;->asInterface(Landroid/os/IBinder;)Lanetwork/channel/aidl/IRemoteNetworkGetter;

    move-result-object p2

    sput-object p2, Lanetwork/channel/aidl/adapter/d;->a:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    .line 49
    sget-object p2, Lanetwork/channel/aidl/adapter/d;->d:Ljava/util/concurrent/CountDownLatch;

    if-eqz p2, :cond_24

    .line 50
    sget-object p2, Lanetwork/channel/aidl/adapter/d;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 52
    :cond_24
    monitor-exit p1
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_2a

    .line 53
    sput-boolean v0, Lanetwork/channel/aidl/adapter/d;->b:Z

    .line 54
    sput-boolean v0, Lanetwork/channel/aidl/adapter/d;->c:Z

    return-void

    :catchall_2a
    move-exception p2

    .line 52
    :try_start_2b
    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    const/4 p1, 0x2

    .line 32
    invoke-static {p1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    .line 33
    new-array p1, v0, [Ljava/lang/Object;

    const-string v2, "anet.RemoteGetter"

    const-string v3, "ANet_Service Disconnected"

    invoke-static {v2, v3, v1, p1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    :cond_12
    sput-object v1, Lanetwork/channel/aidl/adapter/d;->a:Lanetwork/channel/aidl/IRemoteNetworkGetter;

    .line 36
    sput-boolean v0, Lanetwork/channel/aidl/adapter/d;->c:Z

    .line 37
    sget-object p1, Lanetwork/channel/aidl/adapter/d;->d:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_1f

    .line 38
    sget-object p1, Lanetwork/channel/aidl/adapter/d;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1f
    return-void
.end method
