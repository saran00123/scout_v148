.class public Lcom/huawei/hms/api/HuaweiApiClientImpl;
.super Lcom/huawei/hms/api/HuaweiApiClient;
.source "HuaweiApiClientImpl.java"

# interfaces
.implements Lcom/huawei/hms/support/api/client/InnerApiClient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/api/HuaweiApiClientImpl$e;,
        Lcom/huawei/hms/api/HuaweiApiClientImpl$h;,
        Lcom/huawei/hms/api/HuaweiApiClientImpl$f;,
        Lcom/huawei/hms/api/HuaweiApiClientImpl$g;
    }
.end annotation


# static fields
.field private static final B:Ljava/lang/Object;

.field private static final C:Ljava/lang/Object;

.field public static final DEFAULT_ACCOUNT:Ljava/lang/String; = "<<default account>>"

.field public static final SIGN_IN_MODE_OPTIONAL:I = 0x2

.field public static final SIGN_IN_MODE_REQUIRED:I = 0x1


# instance fields
.field private A:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

.field private a:I

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private volatile f:Lcom/huawei/hms/core/aidl/d;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/hms/api/Api<",
            "*>;",
            "Lcom/huawei/hms/api/Api$ApiOptions;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/huawei/hms/support/api/client/SubAppInfo;

.field private p:J

.field private q:I

.field private final r:Ljava/lang/Object;

.field private final s:Ljava/util/concurrent/locks/ReentrantLock;

.field private final t:Ljava/util/concurrent/locks/Condition;

.field private u:Lcom/huawei/hms/api/ConnectionResult;

.field private v:Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;

.field private w:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

.field private x:Landroid/os/Handler;

.field private y:Landroid/os/Handler;

.field private z:Lcom/huawei/hms/api/CheckUpdatelistener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->B:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->C:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClient;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->a:I

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j:Z

    .line 50
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v1, 0x0

    .line 63
    iput-wide v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->p:J

    .line 65
    iput v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->q:I

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->r:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    .line 71
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->t:Ljava/util/concurrent/locks/Condition;

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->x:Landroid/os/Handler;

    .line 91
    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Landroid/os/Handler;

    .line 94
    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->z:Lcom/huawei/hms/api/CheckUpdatelistener;

    .line 170
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    .line 171
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Ljava/lang/String;

    .line 173
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->getCpId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/api/HuaweiApiClientImpl;)Lcom/huawei/hms/api/CheckUpdatelistener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->z:Lcom/huawei/hms/api/CheckUpdatelistener;

    return-object p0
.end method

.method static synthetic a(Lcom/huawei/hms/api/HuaweiApiClientImpl;Lcom/huawei/hms/api/CheckUpdatelistener;)Lcom/huawei/hms/api/CheckUpdatelistener;
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->z:Lcom/huawei/hms/api/CheckUpdatelistener;

    return-object p1
.end method

.method private a()V
    .registers 5

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.hms.core.aidlservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/utils/HMSPackageManager;->refresh()V

    .line 8
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    sget-object v1, Lcom/huawei/hms/api/HuaweiApiClientImpl;->B:Ljava/lang/Object;

    monitor-enter v1

    .line 10
    :try_start_20
    iget-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 12
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->i()V

    .line 13
    monitor-exit v1

    return-void

    .line 15
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_3d

    .line 16
    invoke-direct {p0, v3}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(I)V

    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "In connect, bind core service fail"

    .line 17
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b()V

    return-void

    :catchall_3d
    move-exception v0

    .line 19
    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method private a(I)V
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_17

    .line 20
    sget-object v2, Lcom/huawei/hms/api/HuaweiApiClientImpl;->B:Ljava/lang/Object;

    monitor-enter v2

    .line 21
    :try_start_7
    iget-object v3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->x:Landroid/os/Handler;

    if-eqz v3, :cond_12

    .line 22
    iget-object v3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->x:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 23
    iput-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->x:Landroid/os/Handler;

    .line 25
    :cond_12
    monitor-exit v2

    goto :goto_17

    :catchall_14
    move-exception p1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p1

    :cond_17
    :goto_17
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2d

    .line 28
    sget-object v2, Lcom/huawei/hms/api/HuaweiApiClientImpl;->C:Ljava/lang/Object;

    monitor-enter v2

    .line 29
    :try_start_1d
    iget-object v3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Landroid/os/Handler;

    if-eqz v3, :cond_28

    .line 30
    iget-object v3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    iput-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Landroid/os/Handler;

    .line 33
    :cond_28
    monitor-exit v2

    goto :goto_2d

    :catchall_2a
    move-exception p1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_2a

    throw p1

    .line 36
    :cond_2d
    :goto_2d
    sget-object p1, Lcom/huawei/hms/api/HuaweiApiClientImpl;->B:Ljava/lang/Object;

    monitor-enter p1

    .line 37
    :try_start_30
    iget-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->x:Landroid/os/Handler;

    if-eqz v2, :cond_3b

    .line 38
    iget-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->x:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    iput-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->x:Landroid/os/Handler;

    .line 41
    :cond_3b
    monitor-exit p1

    return-void

    :catchall_3d
    move-exception v0

    monitor-exit p1
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method static synthetic a(Lcom/huawei/hms/api/HuaweiApiClientImpl;I)V
    .registers 2

    .line 4
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/api/HuaweiApiClientImpl;Lcom/huawei/hms/support/api/ResolveResult;)V
    .registers 2

    .line 5
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(Lcom/huawei/hms/support/api/ResolveResult;)V

    return-void
.end method

.method private a(Lcom/huawei/hms/support/api/ResolveResult;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/support/api/ResolveResult<",
            "Lcom/huawei/hms/support/api/entity/core/ConnectResp;",
            ">;)V"
        }
    .end annotation

    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "Enter onConnectionResult"

    .line 42
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->f:Lcom/huawei/hms/core/aidl/d;

    if-eqz v1, :cond_139

    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_16

    goto/16 :goto_139

    :cond_16
    const/4 v1, 0x3

    .line 50
    invoke-direct {p0, v1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->a(I)V

    .line 53
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/ResolveResult;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/support/api/entity/core/ConnectResp;

    if-eqz v2, :cond_26

    .line 55
    iget-object v2, v2, Lcom/huawei/hms/support/api/entity/core/ConnectResp;->sessionId:Ljava/lang/String;

    iput-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->g:Ljava/lang/String;

    .line 59
    :cond_26
    iget-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->o:Lcom/huawei/hms/support/api/client/SubAppInfo;

    const/4 v3, 0x0

    if-nez v2, :cond_2d

    move-object v2, v3

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Lcom/huawei/hms/support/api/client/SubAppInfo;->getSubAppID()Ljava/lang/String;

    move-result-object v2

    .line 60
    :goto_31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 61
    iput-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Ljava/lang/String;

    .line 64
    :cond_39
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result v2

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter onConnectionResult, connect to server result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v4, Lcom/huawei/hms/support/api/client/Status;->SUCCESS:Lcom/huawei/hms/support/api/client/Status;

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huawei/hms/support/api/client/Status;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e7

    .line 68
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/ResolveResult;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_76

    .line 69
    invoke-static {}, Lcom/huawei/hms/api/ProtocolNegotiate;->getInstance()Lcom/huawei/hms/api/ProtocolNegotiate;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/ResolveResult;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/support/api/entity/core/ConnectResp;

    iget-object p1, p1, Lcom/huawei/hms/support/api/entity/core/ConnectResp;->protocolVersion:Ljava/util/List;

    invoke-virtual {v2, p1}, Lcom/huawei/hms/api/ProtocolNegotiate;->negotiate(Ljava/util/List;)I

    .line 72
    :cond_76
    invoke-direct {p0, v1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(I)V

    .line 73
    iput-object v3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Lcom/huawei/hms/api/ConnectionResult;

    .line 75
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->v:Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;

    if-eqz p1, :cond_82

    .line 76
    invoke-interface {p1}, Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;->onConnected()V

    .line 80
    :cond_82
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_89

    .line 81
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->n()V

    .line 84
    :cond_89
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->getApiMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_95
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_138

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/api/Api;

    invoke-virtual {v2}, Lcom/huawei/hms/api/Api;->getmConnetctPostList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_95

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/api/Api;

    invoke-virtual {v2}, Lcom/huawei/hms/api/Api;->getmConnetctPostList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_95

    const-string v2, "Enter onConnectionResult, get the ConnetctPostList "

    .line 86
    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/api/Api;

    invoke-virtual {v1}, Lcom/huawei/hms/api/Api;->getmConnetctPostList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_95

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/common/api/ConnectionPostProcessor;

    const-string v3, "Enter onConnectionResult, processor.run"

    .line 88
    invoke-static {v0, v3}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h:Ljava/lang/ref/WeakReference;

    invoke-interface {v2, p0, v3}, Lcom/huawei/hms/common/api/ConnectionPostProcessor;->run(Lcom/huawei/hms/api/HuaweiApiClient;Ljava/lang/ref/WeakReference;)V

    goto :goto_d0

    .line 94
    :cond_e7
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_108

    .line 95
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result p1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_108

    .line 96
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->o()V

    .line 97
    invoke-direct {p0, v4}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(I)V

    .line 99
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->v:Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;

    if-eqz p1, :cond_138

    .line 100
    invoke-interface {p1, v1}, Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;->onConnectionSuspended(I)V

    goto :goto_138

    .line 103
    :cond_108
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->o()V

    .line 105
    invoke-direct {p0, v4}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(I)V

    .line 107
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    if-eqz p1, :cond_138

    .line 109
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_12c

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_12c

    .line 110
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h:Ljava/lang/ref/WeakReference;

    .line 111
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0, v2}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getResolveErrorPendingIntent(Landroid/app/Activity;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 113
    :cond_12c
    new-instance p1, Lcom/huawei/hms/api/ConnectionResult;

    invoke-direct {p1, v2, v3}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 114
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    invoke-interface {v0, p1}, Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    .line 115
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Lcom/huawei/hms/api/ConnectionResult;

    :cond_138
    :goto_138
    return-void

    :cond_139
    :goto_139
    const-string p1, "Invalid onConnectionResult"

    .line 116
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/api/HuaweiApiClientImpl;Z)Z
    .registers 2

    .line 3
    iput-boolean p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/huawei/hms/api/HuaweiApiClientImpl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private b()V
    .registers 4

    .line 11
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->o()V

    .line 12
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    if-eqz v0, :cond_39

    .line 14
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/utils/UIUtil;->isBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x7

    goto :goto_12

    :cond_11
    const/4 v0, 0x6

    :goto_12
    const/4 v1, 0x0

    .line 21
    iget-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 23
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getResolveErrorPendingIntent(Landroid/app/Activity;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 25
    :cond_2d
    new-instance v2, Lcom/huawei/hms/api/ConnectionResult;

    invoke-direct {v2, v0, v1}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 26
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    invoke-interface {v0, v2}, Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    .line 27
    iput-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Lcom/huawei/hms/api/ConnectionResult;

    :cond_39
    return-void
.end method

.method private b(I)V
    .registers 5

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 5
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getResolveErrorPendingIntent(Landroid/app/Activity;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect 2.0 fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HuaweiApiClientImpl"

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    .line 8
    :goto_32
    new-instance v1, Lcom/huawei/hms/api/ConnectionResult;

    invoke-direct {v1, p1, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 9
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    invoke-interface {p1, v1}, Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    .line 10
    iput-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Lcom/huawei/hms/api/ConnectionResult;

    return-void
.end method

.method static synthetic b(Lcom/huawei/hms/api/HuaweiApiClientImpl;Lcom/huawei/hms/support/api/ResolveResult;)V
    .registers 2

    .line 2
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->a(Lcom/huawei/hms/support/api/ResolveResult;)V

    return-void
.end method

.method private b(Lcom/huawei/hms/support/api/ResolveResult;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/support/api/ResolveResult<",
            "Lcom/huawei/hms/support/api/entity/core/DisconnectResp;",
            ">;)V"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter onDisconnectionResult, disconnect from server result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HuaweiApiClientImpl"

    .line 30
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->o()V

    const/4 p1, 0x1

    .line 34
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(I)V

    return-void
.end method

.method private c()Lcom/huawei/hms/support/api/entity/core/ConnectInfo;
    .registers 6

    .line 10
    new-instance v0, Lcom/huawei/hms/utils/PackageManagerHelper;

    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huawei/hms/utils/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/utils/PackageManagerHelper;->getPackageSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    const-string v0, ""

    .line 13
    :cond_15
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->o:Lcom/huawei/hms/support/api/client/SubAppInfo;

    if-nez v1, :cond_1b

    const/4 v1, 0x0

    goto :goto_1f

    :cond_1b
    invoke-virtual {v1}, Lcom/huawei/hms/support/api/client/SubAppInfo;->getSubAppID()Ljava/lang/String;

    move-result-object v1

    .line 15
    :goto_1f
    new-instance v2, Lcom/huawei/hms/support/api/entity/core/ConnectInfo;

    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->getApiNameList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->l:Ljava/util/List;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/huawei/hms/support/api/entity/core/ConnectInfo;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private c(I)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1d

    .line 4
    :cond_e
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 6
    :try_start_13
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->t:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1e

    .line 8
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1d
    return-void

    :catchall_1e
    move-exception p1

    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 9
    throw p1
.end method

.method static synthetic c(Lcom/huawei/hms/api/HuaweiApiClientImpl;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b()V

    return-void
.end method

.method private d()Lcom/huawei/hms/support/api/entity/core/DisconnectInfo;
    .registers 4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->n:Ljava/util/Map;

    if-eqz v1, :cond_25

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/api/Api;

    .line 8
    invoke-virtual {v2}, Lcom/huawei/hms/api/Api;->getApiName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 11
    :cond_25
    new-instance v1, Lcom/huawei/hms/support/api/entity/core/DisconnectInfo;

    iget-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->l:Ljava/util/List;

    invoke-direct {v1, v2, v0}, Lcom/huawei/hms/support/api/entity/core/DisconnectInfo;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method static synthetic d(Lcom/huawei/hms/api/HuaweiApiClientImpl;)Ljava/lang/ref/WeakReference;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private e()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/utils/Util;->getHmsVersion(Landroid/content/Context;)I

    move-result v0

    const v1, 0x138d9d8

    if-eqz v0, :cond_f

    if-ge v0, v1, :cond_e

    goto :goto_f

    :cond_e
    return v0

    .line 7
    :cond_f
    :goto_f
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->f()I

    move-result v0

    .line 10
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h()Z

    move-result v2

    if-eqz v2, :cond_1d

    if-ge v0, v1, :cond_1c

    move v0, v1

    :cond_1c
    return v0

    :cond_1d
    const v1, 0x13a54c0

    if-ge v0, v1, :cond_23

    move v0, v1

    :cond_23
    return v0
.end method

.method private f()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->getApiMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 5
    :cond_8
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/api/Api;

    .line 9
    invoke-virtual {v2}, Lcom/huawei/hms/api/Api;->getApiName()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 11
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getApiMap()Ljava/util/Map;

    move-result-object v3

    .line 12
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_10

    .line 14
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v1, :cond_10

    move v1, v2

    goto :goto_10

    :cond_3a
    return v1
.end method

.method private g()V
    .registers 2

    .line 1
    new-instance v0, Lcom/huawei/hms/api/HuaweiApiClientImpl$a;

    invoke-direct {v0, p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl$a;-><init>(Lcom/huawei/hms/api/HuaweiApiClientImpl;)V

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->A:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    return-void
.end method

.method private h()Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->n:Ljava/util/Map;

    if-eqz v0, :cond_26

    .line 2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/api/Api;

    .line 5
    invoke-virtual {v1}, Lcom/huawei/hms/api/Api;->getApiName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HuaweiGame.API"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method private i()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->x:Landroid/os/Handler;

    const/4 v1, 0x2

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_19

    .line 4
    :cond_9
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/huawei/hms/api/HuaweiApiClientImpl$b;

    invoke-direct {v3, p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl$b;-><init>(Lcom/huawei/hms/api/HuaweiApiClientImpl;)V

    invoke-direct {v0, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->x:Landroid/os/Handler;

    .line 22
    :goto_19
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->x:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private j()V
    .registers 6

    .line 1
    sget-object v0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->C:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Landroid/os/Handler;

    const/4 v2, 0x3

    if-eqz v1, :cond_e

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1e

    .line 5
    :cond_e
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lcom/huawei/hms/api/HuaweiApiClientImpl$c;

    invoke-direct {v4, p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl$c;-><init>(Lcom/huawei/hms/api/HuaweiApiClientImpl;)V

    invoke-direct {v1, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Landroid/os/Handler;

    .line 20
    :goto_1e
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_3e

    const-string v2, "HuaweiApiClientImpl"

    .line 21
    :try_start_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendEmptyMessageDelayed for onConnectionResult 3 seconds. the result is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private k()V
    .registers 4

    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "Enter sendConnectApiServceRequest."

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c()Lcom/huawei/hms/support/api/entity/core/ConnectInfo;

    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/huawei/hms/support/api/core/ConnectService;->connect(Lcom/huawei/hms/support/api/client/ApiClient;Lcom/huawei/hms/support/api/entity/core/ConnectInfo;)Lcom/huawei/hms/support/api/client/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/api/HuaweiApiClientImpl$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/huawei/hms/api/HuaweiApiClientImpl$f;-><init>(Lcom/huawei/hms/api/HuaweiApiClientImpl;Lcom/huawei/hms/api/HuaweiApiClientImpl$a;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/client/PendingResult;->setResultCallback(Lcom/huawei/hms/support/api/client/ResultCallback;)V

    return-void
.end method

.method private l()V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d()Lcom/huawei/hms/support/api/entity/core/DisconnectInfo;

    move-result-object v0

    .line 4
    invoke-static {p0, v0}, Lcom/huawei/hms/support/api/core/ConnectService;->disconnect(Lcom/huawei/hms/support/api/client/ApiClient;Lcom/huawei/hms/support/api/entity/core/DisconnectInfo;)Lcom/huawei/hms/support/api/ResolvePendingResult;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/api/HuaweiApiClientImpl$g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/huawei/hms/api/HuaweiApiClientImpl$g;-><init>(Lcom/huawei/hms/api/HuaweiApiClientImpl;Lcom/huawei/hms/api/HuaweiApiClientImpl$a;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/PendingResultImpl;->setResultCallback(Lcom/huawei/hms/support/api/client/ResultCallback;)V

    return-void
.end method

.method private m()V
    .registers 4

    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "Enter sendForceConnectApiServceRequest."

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c()Lcom/huawei/hms/support/api/entity/core/ConnectInfo;

    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/huawei/hms/support/api/core/ConnectService;->forceConnect(Lcom/huawei/hms/support/api/client/ApiClient;Lcom/huawei/hms/support/api/entity/core/ConnectInfo;)Lcom/huawei/hms/support/api/client/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/api/HuaweiApiClientImpl$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/huawei/hms/api/HuaweiApiClientImpl$f;-><init>(Lcom/huawei/hms/api/HuaweiApiClientImpl;Lcom/huawei/hms/api/HuaweiApiClientImpl$a;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/client/PendingResult;->setResultCallback(Lcom/huawei/hms/support/api/client/ResultCallback;)V

    return-void
.end method

.method private n()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j:Z

    if-eqz v0, :cond_c

    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "Connect notice has been shown."

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_c
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/api/HuaweiApiAvailability;->isHuaweiMobileNoticeAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x0

    const-string v1, "5.3.0.304"

    .line 8
    invoke-static {p0, v0, v1}, Lcom/huawei/hms/support/api/core/ConnectService;->getNotice(Lcom/huawei/hms/support/api/client/ApiClient;ILjava/lang/String;)Lcom/huawei/hms/support/api/client/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/api/HuaweiApiClientImpl$h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/huawei/hms/api/HuaweiApiClientImpl$h;-><init>(Lcom/huawei/hms/api/HuaweiApiClientImpl;Lcom/huawei/hms/api/HuaweiApiClientImpl$a;)V

    .line 10
    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/client/PendingResult;->setResultCallback(Lcom/huawei/hms/support/api/client/ResultCallback;)V

    :cond_28
    return-void
.end method

.method private o()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/huawei/hms/utils/Util;->unBindServiceCatchException(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->f:Lcom/huawei/hms/core/aidl/d;

    return-void
.end method


# virtual methods
.method public asyncRequest(Landroid/os/Bundle;Ljava/lang/String;ILcom/huawei/hms/support/api/client/ResultCallback;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "I",
            "Lcom/huawei/hms/support/api/client/ResultCallback<",
            "Lcom/huawei/hms/support/api/client/BundleResult;",
            ">;)I"
        }
    .end annotation

    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "Enter asyncRequest."

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_7e

    if-eqz p2, :cond_7e

    if-nez p1, :cond_e

    goto :goto_7e

    .line 9
    :cond_e
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->innerIsConnected()Z

    move-result v1

    if-nez v1, :cond_1d

    const-string p1, "client is unConnect."

    .line 10
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x3611c81b

    return p1

    .line 15
    :cond_1d
    new-instance v1, Lcom/huawei/hms/core/aidl/b;

    invoke-direct {v1, p2, p3}, Lcom/huawei/hms/core/aidl/b;-><init>(Ljava/lang/String;I)V

    .line 16
    invoke-virtual {v1}, Lcom/huawei/hms/core/aidl/b;->c()I

    move-result p2

    invoke-static {p2}, Lcom/huawei/hms/core/aidl/a;->a(I)Lcom/huawei/hms/core/aidl/e;

    move-result-object p2

    .line 19
    invoke-virtual {v1, p1}, Lcom/huawei/hms/core/aidl/b;->a(Landroid/os/Bundle;)Lcom/huawei/hms/core/aidl/b;

    .line 22
    new-instance p1, Lcom/huawei/hms/core/aidl/RequestHeader;

    .line 23
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->getAppID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->getSessionId()Ljava/lang/String;

    move-result-object v3

    const v4, 0x2ff8590

    invoke-direct {p1, p3, v2, v4, v3}, Lcom/huawei/hms/core/aidl/RequestHeader;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->getApiNameList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/huawei/hms/core/aidl/RequestHeader;->setApiNameList(Ljava/util/List;)V

    .line 26
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p1, p3}, Lcom/huawei/hms/core/aidl/e;->a(Lcom/huawei/hms/core/aidl/IMessageEntity;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v1, Lcom/huawei/hms/core/aidl/b;->b:Landroid/os/Bundle;

    .line 29
    :try_start_53
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->getService()Lcom/huawei/hms/core/aidl/d;

    move-result-object p1

    new-instance p2, Lcom/huawei/hms/api/HuaweiApiClientImpl$d;

    invoke-direct {p2, p0, p4}, Lcom/huawei/hms/api/HuaweiApiClientImpl$d;-><init>(Lcom/huawei/hms/api/HuaweiApiClientImpl;Lcom/huawei/hms/support/api/client/ResultCallback;)V

    invoke-interface {p1, v1, p2}, Lcom/huawei/hms/core/aidl/d;->a(Lcom/huawei/hms/core/aidl/b;Lcom/huawei/hms/core/aidl/c;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5f} :catch_61

    const/4 p1, 0x0

    return p1

    :catch_61
    move-exception p1

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "remote exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x3611c819

    return p1

    :cond_7e
    :goto_7e
    const-string p1, "arguments is invalid."

    .line 48
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x3611c818

    return p1
.end method

.method public checkUpdate(Landroid/app/Activity;Lcom/huawei/hms/api/CheckUpdatelistener;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "HuaweiApiClientImpl"

    if-eqz v0, :cond_4a

    const-string v0, "Enter checkUpdate"

    .line 2
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_17

    const-string p1, "listener is null!"

    .line 5
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    if-eqz p1, :cond_31

    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_31

    .line 15
    :cond_20
    iput-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->z:Lcom/huawei/hms/api/CheckUpdatelistener;

    .line 16
    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->A:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    if-nez p2, :cond_29

    .line 17
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->g()V

    .line 20
    :cond_29
    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->A:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v0, v1}, Lcom/huawei/updatesdk/UpdateSdkAPI;->checkClientOTAUpdate(Landroid/content/Context;Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;ZIZ)V

    goto :goto_4f

    .line 21
    :cond_31
    :goto_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUpdate, activity is illegal: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 22
    invoke-interface {p2, p1}, Lcom/huawei/hms/api/CheckUpdatelistener;->onResult(I)V

    return-void

    :cond_4a
    const-string p1, "available lib does not exist."

    .line 33
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f
    return-void
.end method

.method public connect(I)V
    .registers 2

    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->connect(Landroid/app/Activity;)V

    return-void
.end method

.method public connect(Landroid/app/Activity;)V
    .registers 7

    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "====== HMSSDK version: 50300304 ======"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter connect, Connection Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_b1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_b1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_2f

    goto/16 :goto_b1

    :cond_2f
    if-eqz p1, :cond_3f

    .line 13
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h:Ljava/lang/ref/WeakReference;

    .line 14
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->i:Ljava/lang/ref/WeakReference;

    .line 21
    :cond_3f
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_50

    :cond_4e
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c:Ljava/lang/String;

    :goto_50
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->e()I

    move-result p1

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect minVersion:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lcom/huawei/hms/api/HuaweiApiAvailability;->setServicesVersionCode(I)V

    .line 27
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/huawei/hms/api/HuaweiMobileServicesUtil;->isHuaweiMobileServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In connect, isHuaweiMobileServicesAvailable result: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getHmsVersionCode()I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->q:I

    if-nez p1, :cond_aa

    .line 33
    invoke-direct {p0, v2}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(I)V

    .line 35
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->f:Lcom/huawei/hms/core/aidl/d;

    if-nez p1, :cond_a0

    .line 37
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->a()V

    goto :goto_b1

    .line 40
    :cond_a0
    invoke-direct {p0, v3}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(I)V

    .line 42
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->k()V

    .line 44
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j()V

    goto :goto_b1

    .line 47
    :cond_aa
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    if-eqz v0, :cond_b1

    .line 48
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(I)V

    :cond_b1
    :goto_b1
    return-void
.end method

.method public connectForeground()V
    .registers 5

    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "====== HMSSDK version: 50300304 ======"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter forceConnect, Connection Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-eq v1, v0, :cond_44

    const/4 v0, 0x5

    if-eq v1, v0, :cond_44

    const/4 v0, 0x2

    if-eq v1, v0, :cond_44

    const/4 v0, 0x4

    if-ne v1, v0, :cond_2e

    goto :goto_44

    .line 14
    :cond_2e
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/utils/Util;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :cond_3d
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c:Ljava/lang/String;

    :goto_3f
    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->m()V

    :cond_44
    :goto_44
    return-void
.end method

.method public disableLifeCycleManagement(Landroid/app/Activity;)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->a:I

    if-ltz v0, :cond_11

    .line 2
    invoke-static {p1}, Lcom/huawei/hms/common/internal/AutoLifecycleFragment;->getInstance(Landroid/app/Activity;)Lcom/huawei/hms/common/internal/AutoLifecycleFragment;

    move-result-object p1

    if-nez p1, :cond_b

    return-void

    .line 6
    :cond_b
    iget v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->a:I

    invoke-virtual {p1, v0}, Lcom/huawei/hms/common/internal/AutoLifecycleFragment;->stopAutoManage(I)V

    return-void

    .line 9
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "disableLifeCycleManagement failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public discardAndReconnect()Lcom/huawei/hms/support/api/client/PendingResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/client/Status;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hms/api/HuaweiApiClientImpl$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/huawei/hms/api/HuaweiApiClientImpl$e;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

.method public disconnect()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter disconnect, Connection Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HuaweiApiClientImpl"

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3d

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq v0, v1, :cond_3a

    const/4 v3, 0x3

    if-eq v0, v3, :cond_33

    if-eq v0, v2, :cond_3d

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2c

    goto :goto_3d

    .line 12
    :cond_2c
    invoke-direct {p0, v1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->a(I)V

    .line 13
    invoke-direct {p0, v2}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(I)V

    goto :goto_3d

    .line 21
    :cond_33
    invoke-direct {p0, v2}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(I)V

    .line 23
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->l()V

    goto :goto_3d

    .line 24
    :cond_3a
    invoke-direct {p0, v2}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(I)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public getApiMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/api/Api<",
            "*>;",
            "Lcom/huawei/hms/api/Api$ApiOptions;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->n:Ljava/util/Map;

    return-object v0
.end method

.method public getApiNameList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->n:Ljava/util/Map;

    if-eqz v1, :cond_25

    .line 3
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/api/Api;

    .line 6
    invoke-virtual {v2}, Lcom/huawei/hms/api/Api;->getApiName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_25
    return-object v0
.end method

.method public getAppID()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionResult(Lcom/huawei/hms/api/Api;)Lcom/huawei/hms/api/ConnectionResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/Api<",
            "*>;)",
            "Lcom/huawei/hms/api/ConnectionResult;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->isConnected()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Lcom/huawei/hms/api/ConnectionResult;

    .line 3
    new-instance p1, Lcom/huawei/hms/api/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1

    .line 5
    :cond_10
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Lcom/huawei/hms/api/ConnectionResult;

    if-eqz p1, :cond_15

    return-object p1

    .line 8
    :cond_15
    new-instance p1, Lcom/huawei/hms/api/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {p1, v1, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getCpID()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionInfos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->m:Ljava/util/List;

    return-object v0
.end method

.method public getScopes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->l:Ljava/util/List;

    return-object v0
.end method

.method public getService()Lcom/huawei/hms/core/aidl/d;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->f:Lcom/huawei/hms/core/aidl/d;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubAppInfo()Lcom/huawei/hms/support/api/client/SubAppInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->o:Lcom/huawei/hms/support/api/client/SubAppInfo;

    return-object v0
.end method

.method public getTopActivity()Landroid/app/Activity;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->i:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_6
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getTransportName()Ljava/lang/String;
    .registers 2

    .line 1
    const-class v0, Lcom/huawei/hms/api/IPCTransport;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasConnectedApi(Lcom/huawei/hms/api/Api;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/Api<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->isConnected()Z

    move-result p1

    return p1
.end method

.method public hasConnectionFailureListener(Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;)Z
    .registers 4

    const-string v0, "onConnectionFailedListener should not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_8
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    if-ne v1, p1, :cond_f

    const/4 p1, 0x1

    .line 4
    monitor-exit v0

    return p1

    .line 6
    :cond_f
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public hasConnectionSuccessListener(Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;)Z
    .registers 4

    const-string v0, "connectionCallbacksListener should not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_8
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->v:Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;

    if-ne v1, p1, :cond_f

    const/4 p1, 0x1

    .line 4
    monitor-exit v0

    return p1

    .line 6
    :cond_f
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public holdUpConnect()Lcom/huawei/hms/api/ConnectionResult;
    .registers 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_67

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 6
    :try_start_10
    invoke-virtual {p0, v0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->connect(Landroid/app/Activity;)V

    .line 7
    :goto_13
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->isConnecting()Z

    move-result v1
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_60

    if-eqz v1, :cond_33

    .line 9
    :try_start_19
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->t:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1e} :catch_1f
    .catchall {:try_start_19 .. :try_end_1e} :catchall_60

    goto :goto_13

    .line 11
    :catch_1f
    :try_start_1f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 12
    new-instance v1, Lcom/huawei/hms/api/ConnectionResult;

    const/16 v2, 0xf

    invoke-direct {v1, v2, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_60

    .line 27
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 28
    :cond_33
    :try_start_33
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 29
    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Lcom/huawei/hms/api/ConnectionResult;

    .line 30
    new-instance v1, Lcom/huawei/hms/api/ConnectionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_60

    .line 39
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 40
    :cond_47
    :try_start_47
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Lcom/huawei/hms/api/ConnectionResult;

    if-eqz v1, :cond_53

    .line 41
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Lcom/huawei/hms/api/ConnectionResult;
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_60

    .line 45
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .line 46
    :cond_53
    :try_start_53
    new-instance v1, Lcom/huawei/hms/api/ConnectionResult;

    const/16 v2, 0xd

    invoke-direct {v1, v2, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_60

    .line 48
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_60
    move-exception v0

    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 49
    throw v0

    .line 50
    :cond_67
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public holdUpConnect(JLjava/util/concurrent/TimeUnit;)Lcom/huawei/hms/api/ConnectionResult;
    .registers 7

    .line 51
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_82

    .line 54
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    .line 56
    :try_start_10
    invoke-virtual {p0, v0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->connect(Landroid/app/Activity;)V

    .line 57
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 58
    :goto_17
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->isConnecting()Z

    move-result p3

    if-eqz p3, :cond_4e

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-gtz p3, :cond_33

    .line 60
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->disconnect()V

    .line 61
    new-instance p1, Lcom/huawei/hms/api/ConnectionResult;

    const/16 p2, 0xe

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_7b

    .line 82
    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 83
    :cond_33
    :try_start_33
    iget-object p3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->t:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_39} :catch_3a
    .catchall {:try_start_33 .. :try_end_39} :catchall_7b

    goto :goto_17

    .line 85
    :catch_3a
    :try_start_3a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 86
    new-instance p1, Lcom/huawei/hms/api/ConnectionResult;

    const/16 p2, 0xf

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_7b

    .line 101
    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 102
    :cond_4e
    :try_start_4e
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 103
    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Lcom/huawei/hms/api/ConnectionResult;

    .line 104
    new-instance p1, Lcom/huawei/hms/api/ConnectionResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5c
    .catchall {:try_start_4e .. :try_end_5c} :catchall_7b

    .line 113
    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 114
    :cond_62
    :try_start_62
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Lcom/huawei/hms/api/ConnectionResult;

    if-eqz p1, :cond_6e

    .line 115
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Lcom/huawei/hms/api/ConnectionResult;
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_7b

    .line 119
    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 120
    :cond_6e
    :try_start_6e
    new-instance p1, Lcom/huawei/hms/api/ConnectionResult;

    const/16 p2, 0xd

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_7b

    .line 122
    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_7b
    move-exception p1

    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 123
    throw p1

    .line 124
    :cond_82
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "blockingConnect must not be called on the UI thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public innerIsConnected()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public isConnected()Z
    .registers 5

    .line 1
    iget v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->q:I

    if-nez v0, :cond_10

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getHmsVersionCode()I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->q:I

    .line 5
    :cond_10
    iget v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->q:I

    const v1, 0x138ddc0

    if-ge v0, v1, :cond_88

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->p:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_30

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_30

    .line 10
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->innerIsConnected()Z

    move-result v0

    return v0

    .line 13
    :cond_30
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->innerIsConnected()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 14
    new-instance v0, Lcom/huawei/hms/support/api/entity/core/CheckConnectInfo;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/core/CheckConnectInfo;-><init>()V

    .line 15
    invoke-static {p0, v0}, Lcom/huawei/hms/support/api/core/ConnectService;->checkconnect(Lcom/huawei/hms/support/api/client/ApiClient;Lcom/huawei/hms/support/api/entity/core/CheckConnectInfo;)Lcom/huawei/hms/support/api/client/InnerPendingResult;

    move-result-object v0

    .line 16
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    .line 17
    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/hms/support/api/client/InnerPendingResult;->awaitOnAnyThread(JLjava/util/concurrent/TimeUnit;)Lcom/huawei/hms/support/api/client/Result;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/support/api/ResolveResult;

    .line 19
    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/Status;->isSuccess()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5b

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->p:J

    return v2

    .line 25
    :cond_5b
    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result v0

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isConnected is false, statuscode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HuaweiApiClientImpl"

    invoke-static {v3, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x3611c81c

    if-eq v0, v1, :cond_86

    .line 28
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->o()V

    .line 29
    invoke-direct {p0, v2}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(I)V

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->p:J

    :cond_86
    const/4 v0, 0x0

    return v0

    .line 37
    :cond_88
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->innerIsConnected()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 3

    const-string p1, "HuaweiApiClientImpl"

    const-string v0, "onPause"

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 4

    if-eqz p1, :cond_10

    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "onResume"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->i:Ljava/lang/ref/WeakReference;

    :cond_10
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    const-string p1, "HuaweiApiClientImpl"

    const-string v0, "Enter onServiceConnected."

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 4
    invoke-direct {p0, v0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->a(I)V

    .line 6
    invoke-static {p2}, Lcom/huawei/hms/core/aidl/d$a;->a(Landroid/os/IBinder;)Lcom/huawei/hms/core/aidl/d;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->f:Lcom/huawei/hms/core/aidl/d;

    .line 8
    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->f:Lcom/huawei/hms/core/aidl/d;

    if-nez p2, :cond_4f

    const-string p2, "In onServiceConnected, mCoreService must not be null."

    .line 9
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->o()V

    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(I)V

    .line 14
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    if-eqz p1, :cond_4e

    const/4 p1, 0x0

    .line 16
    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h:Ljava/lang/ref/WeakReference;

    const/16 v0, 0xa

    if-eqz p2, :cond_42

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_42

    .line 17
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h:Ljava/lang/ref/WeakReference;

    .line 18
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p1, p2, v0}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getResolveErrorPendingIntent(Landroid/app/Activity;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 20
    :cond_42
    new-instance p2, Lcom/huawei/hms/api/ConnectionResult;

    invoke-direct {p2, v0, p1}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 22
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    invoke-interface {p1, p2}, Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    .line 23
    iput-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Lcom/huawei/hms/api/ConnectionResult;

    :cond_4e
    return-void

    .line 29
    :cond_4f
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_62

    .line 30
    invoke-direct {p0, v0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(I)V

    .line 32
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->k()V

    .line 34
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j()V

    goto :goto_6e

    .line 35
    :cond_62
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_6e

    .line 36
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->o()V

    :cond_6e
    :goto_6e
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    const-string p1, "HuaweiApiClientImpl"

    const-string v0, "Enter onServiceDisconnected."

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->f:Lcom/huawei/hms/core/aidl/d;

    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(I)V

    .line 7
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->v:Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;

    if-eqz v0, :cond_15

    .line 8
    invoke-interface {v0, p1}, Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;->onConnectionSuspended(I)V

    :cond_15
    return-void
.end method

.method public print(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    return-void
.end method

.method public reconnect()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->disconnect()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->connect(Landroid/app/Activity;)V

    return-void
.end method

.method public removeConnectionFailureListener(Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;)V
    .registers 4

    const-string v0, "onConnectionFailedListener should not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_8
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    if-eq v1, p1, :cond_14

    const-string p1, "HuaweiApiClientImpl"

    const-string v1, "unregisterConnectionFailedListener: this onConnectionFailedListener has not been registered"

    .line 4
    invoke-static {p1, v1}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_14
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    .line 9
    :goto_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public removeConnectionSuccessListener(Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;)V
    .registers 4

    const-string v0, "connectionCallbacksListener should not be null"

    .line 1
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->r:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_8
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->v:Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;

    if-eq v1, p1, :cond_14

    const-string p1, "HuaweiApiClientImpl"

    const-string v1, "unregisterConnectionCallback: this connectionCallbacksListener has not been registered"

    .line 4
    invoke-static {p1, v1}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_14
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->v:Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;

    .line 8
    :goto_17
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public setApiMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/api/Api<",
            "*>;",
            "Lcom/huawei/hms/api/Api$ApiOptions;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->n:Ljava/util/Map;

    return-void
.end method

.method protected setAutoLifecycleClientId(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->a:I

    return-void
.end method

.method public setConnectionCallbacks(Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->v:Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;

    return-void
.end method

.method public setConnectionFailedListener(Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    return-void
.end method

.method public setHasShowNotice(Z)V
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j:Z

    return-void
.end method

.method public setPermissionInfos(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->m:Ljava/util/List;

    return-void
.end method

.method public setScopes(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->l:Ljava/util/List;

    return-void
.end method

.method public setSubAppInfo(Lcom/huawei/hms/support/api/client/SubAppInfo;)Z
    .registers 6

    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "Enter setSubAppInfo"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p1, :cond_10

    const-string p1, "subAppInfo is null"

    .line 3
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 7
    :cond_10
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/SubAppInfo;->getSubAppID()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-string p1, "subAppId is empty"

    .line 9
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 13
    :cond_20
    iget-object v3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/hms/utils/Util;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_31

    :cond_2f
    iget-object v3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c:Ljava/lang/String;

    .line 14
    :goto_31
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const-string p1, "subAppId is host appid"

    .line 15
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 20
    :cond_3d
    new-instance v0, Lcom/huawei/hms/support/api/client/SubAppInfo;

    invoke-direct {v0, p1}, Lcom/huawei/hms/support/api/client/SubAppInfo;-><init>(Lcom/huawei/hms/support/api/client/SubAppInfo;)V

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->o:Lcom/huawei/hms/support/api/client/SubAppInfo;

    const/4 p1, 0x1

    return p1
.end method
