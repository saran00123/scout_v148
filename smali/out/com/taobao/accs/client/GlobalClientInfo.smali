.class public Lcom/taobao/accs/client/GlobalClientInfo;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final AGOO_SERVICE_ID:Ljava/lang/String; = "agooSend"

.field public static a:Landroid/content/Context; = null

.field public static b:Ljava/lang/String; = null

.field public static c:Z = false

.field private static volatile d:Lcom/taobao/accs/client/GlobalClientInfo;

.field private static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/ILoginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/app/ActivityManager;

.field private g:Landroid/net/ConnectivityManager;

.field private h:Landroid/content/pm/PackageInfo;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/base/AccsAbstractDataListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->i:Ljava/util/Map;

    .line 40
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->i:Ljava/util/Map;

    const-string v1, "org.android.agoo.accs.AgooService"

    const-string v2, "agooSend"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->i:Ljava/util/Map;

    const-string v2, "agooAck"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->i:Ljava/util/Map;

    const-string v2, "agooTokenReport"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->j:Ljava/util/Map;

    if-eqz p1, :cond_1f

    .line 69
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    if-nez v0, :cond_16

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    .line 72
    :cond_16
    new-instance p1, Lcom/taobao/accs/client/d;

    invoke-direct {p1, p0}, Lcom/taobao/accs/client/d;-><init>(Lcom/taobao/accs/client/GlobalClientInfo;)V

    invoke-static {p1}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 67
    :cond_1f
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Context is null!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .line 62
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;
    .registers 3

    .line 50
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->d:Lcom/taobao/accs/client/GlobalClientInfo;

    if-nez v0, :cond_17

    .line 51
    const-class v0, Lcom/taobao/accs/client/GlobalClientInfo;

    monitor-enter v0

    .line 52
    :try_start_7
    sget-object v1, Lcom/taobao/accs/client/GlobalClientInfo;->d:Lcom/taobao/accs/client/GlobalClientInfo;

    if-nez v1, :cond_12

    .line 53
    new-instance v1, Lcom/taobao/accs/client/GlobalClientInfo;

    invoke-direct {v1, p0}, Lcom/taobao/accs/client/GlobalClientInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/taobao/accs/client/GlobalClientInfo;->d:Lcom/taobao/accs/client/GlobalClientInfo;

    .line 55
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 57
    :cond_17
    :goto_17
    sget-object p0, Lcom/taobao/accs/client/GlobalClientInfo;->d:Lcom/taobao/accs/client/GlobalClientInfo;

    return-object p0
.end method


# virtual methods
.method public clearLoginInfoImpl()V
    .registers 2

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public getActivityManager()Landroid/app/ActivityManager;
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->f:Landroid/app/ActivityManager;

    if-nez v0, :cond_10

    .line 84
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->f:Landroid/app/ActivityManager;

    .line 86
    :cond_10
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->f:Landroid/app/ActivityManager;

    return-object v0
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->g:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_10

    .line 92
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->g:Landroid/net/ConnectivityManager;

    .line 95
    :cond_10
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->g:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public getListener(Ljava/lang/String;)Lcom/taobao/accs/base/AccsAbstractDataListener;
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/accs/base/AccsAbstractDataListener;

    return-object p1
.end method

.method public getNick(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 134
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->e:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 137
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/accs/ILoginInfo;

    if-nez p1, :cond_f

    return-object v1

    .line 141
    :cond_f
    invoke-interface {p1}, Lcom/taobao/accs/ILoginInfo;->getNick()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 5

    const/4 v0, 0x0

    .line 180
    :try_start_1
    iget-object v1, p0, Lcom/taobao/accs/client/GlobalClientInfo;->h:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_22

    .line 181
    sget-object v1, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/taobao/accs/client/GlobalClientInfo;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/accs/client/GlobalClientInfo;->h:Landroid/content/pm/PackageInfo;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_17} :catch_18

    goto :goto_22

    :catch_18
    move-exception v1

    .line 184
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "GlobalClientInfo"

    const-string v3, "getPackageInfo"

    invoke-static {v2, v3, v1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 186
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->h:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getService(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 159
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSid(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->e:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 115
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/accs/ILoginInfo;

    if-nez p1, :cond_f

    return-object v1

    .line 119
    :cond_f
    invoke-interface {p1}, Lcom/taobao/accs/ILoginInfo;->getSid()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->e:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 126
    :cond_6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/accs/ILoginInfo;

    if-nez p1, :cond_f

    return-object v1

    .line 130
    :cond_f
    invoke-interface {p1}, Lcom/taobao/accs/ILoginInfo;->getUserId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public registerListener(Ljava/lang/String;Lcom/taobao/accs/base/AccsAbstractDataListener;)V
    .registers 4

    .line 163
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    if-nez p2, :cond_9

    goto :goto_e

    .line 166
    :cond_9
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->j:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_e
    return-void
.end method

.method public registerService(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_12

    .line 148
    :cond_d
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->i:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    :goto_12
    return-void
.end method

.method public setLoginInfoImpl(Ljava/lang/String;Lcom/taobao/accs/ILoginInfo;)V
    .registers 5

    .line 99
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->e:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_c

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->e:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_c
    if-eqz p2, :cond_13

    .line 103
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-void
.end method

.method public unRegisterService(Ljava/lang/String;)V
    .registers 3

    .line 152
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 155
    :cond_7
    sget-object v0, Lcom/taobao/accs/client/GlobalClientInfo;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterListener(Ljava/lang/String;)V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/taobao/accs/client/GlobalClientInfo;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
