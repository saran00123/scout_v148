.class public Lanetwork/channel/cookie/CookieManager;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/cookie/CookieManager$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "anet.CookieManager"

.field private static volatile a:Z = false

.field private static b:Landroid/webkit/CookieManager; = null

.field private static c:Z = true

.field private static d:Lanetwork/channel/cookie/CookieManager$a;

.field private static e:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lanetwork/channel/cookie/CookieManager$a;)Lanetwork/channel/cookie/CookieManager$a;
    .registers 1

    .line 30
    sput-object p0, Lanetwork/channel/cookie/CookieManager;->d:Lanetwork/channel/cookie/CookieManager$a;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    .line 30
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)V
    .registers 2

    .line 156
    new-instance v0, Lanetwork/channel/cookie/b;

    invoke-direct {v0, p0}, Lanetwork/channel/cookie/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitCookieMonitor(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 181
    new-instance v0, Lanetwork/channel/cookie/c;

    invoke-direct {v0, p0, p1}, Lanetwork/channel/cookie/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitCookieMonitor(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic b()Lanetwork/channel/cookie/CookieManager$a;
    .registers 1

    .line 30
    sget-object v0, Lanetwork/channel/cookie/CookieManager;->d:Lanetwork/channel/cookie/CookieManager$a;

    return-object v0
.end method

.method static synthetic c()Landroid/content/SharedPreferences;
    .registers 1

    .line 30
    sget-object v0, Lanetwork/channel/cookie/CookieManager;->e:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static d()Z
    .registers 1

    .line 71
    sget-boolean v0, Lanetwork/channel/cookie/CookieManager;->a:Z

    if-nez v0, :cond_11

    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 72
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/cookie/CookieManager;->setup(Landroid/content/Context;)V

    .line 74
    :cond_11
    sget-boolean v0, Lanetwork/channel/cookie/CookieManager;->a:Z

    return v0
.end method

.method private static e()V
    .registers 1

    .line 140
    new-instance v0, Lanetwork/channel/cookie/a;

    invoke-direct {v0}, Lanetwork/channel/cookie/a;-><init>()V

    invoke-static {v0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitCookieMonitor(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static f()Ljava/lang/String;
    .registers 3

    .line 214
    sget-object v0, Lanetwork/channel/cookie/CookieManager;->e:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    const-string v2, "networksdk_target_cookie_name"

    .line 217
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getCookie(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-class v0, Lanetwork/channel/cookie/CookieManager;

    monitor-enter v0

    .line 122
    :try_start_3
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isCookieEnable()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_3f

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 123
    monitor-exit v0

    return-object v2

    .line 126
    :cond_c
    :try_start_c
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->d()Z

    move-result v1

    if-eqz v1, :cond_3d

    sget-boolean v1, Lanetwork/channel/cookie/CookieManager;->c:Z
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_3f

    if-nez v1, :cond_17

    goto :goto_3d

    .line 131
    :cond_17
    :try_start_17
    sget-object v1, Lanetwork/channel/cookie/CookieManager;->b:Landroid/webkit/CookieManager;

    invoke-virtual {v1, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_1d} :catch_1e
    .catchall {:try_start_17 .. :try_end_1d} :catchall_3f

    goto :goto_38

    :catch_1e
    move-exception v1

    :try_start_1f
    const-string v3, "anet.CookieManager"

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get cookie failed. url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v1, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 135
    :goto_38
    invoke-static {p0, v2}, Lanetwork/channel/cookie/CookieManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_3f

    .line 136
    monitor-exit v0

    return-object v2

    .line 127
    :cond_3d
    :goto_3d
    monitor-exit v0

    return-object v2

    :catchall_3f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-class v0, Lanetwork/channel/cookie/CookieManager;

    monitor-enter v0

    .line 78
    :try_start_3
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isCookieEnable()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_50

    if-nez v1, :cond_b

    .line 79
    monitor-exit v0

    return-void

    .line 82
    :cond_b
    :try_start_b
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->d()Z

    move-result v1

    if-eqz v1, :cond_4e

    sget-boolean v1, Lanetwork/channel/cookie/CookieManager;->c:Z
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_50

    if-nez v1, :cond_16

    goto :goto_4e

    .line 86
    :cond_16
    :try_start_16
    sget-object v1, Lanetwork/channel/cookie/CookieManager;->b:Landroid/webkit/CookieManager;

    invoke-virtual {v1, p0, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_29

    .line 88
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_4c

    .line 90
    :cond_29
    sget-object v1, Lanetwork/channel/cookie/CookieManager;->b:Landroid/webkit/CookieManager;

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->flush()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_2e} :catch_2f
    .catchall {:try_start_16 .. :try_end_2e} :catchall_50

    goto :goto_4c

    :catch_2f
    move-exception v1

    :try_start_30
    const-string v2, "anet.CookieManager"

    const-string v3, "set cookie failed."

    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 93
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "url"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    const/4 p0, 0x2

    const-string v6, "cookies"

    aput-object v6, v5, p0

    const/4 p0, 0x3

    aput-object p1, v5, p0

    invoke-static {v2, v3, v4, v1, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_50

    .line 95
    :goto_4c
    monitor-exit v0

    return-void

    .line 83
    :cond_4e
    :goto_4e
    monitor-exit v0

    return-void

    :catchall_50
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setCookie(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 98
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isCookieEnable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p0, :cond_72

    if-nez p1, :cond_c

    goto :goto_72

    .line 106
    :cond_c
    :try_start_c
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_14

    const-string v3, "Set-Cookie"

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_38

    const-string v3, "Set-Cookie2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 110
    :cond_38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    invoke-static {p0, v2}, Lanetwork/channel/cookie/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {v2}, Lanetwork/channel/cookie/CookieManager;->a(Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_54} :catch_55

    goto :goto_42

    :catch_55
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 117
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 p0, 0x2

    const-string v3, "\nheaders"

    aput-object v3, v2, p0

    const/4 p0, 0x3

    aput-object p1, v2, p0

    const-string p0, "anet.CookieManager"

    const-string p1, "set cookie failed"

    invoke-static {p0, p1, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_72
    :goto_72
    return-void
.end method

.method public static setTargetMonitorCookieName(Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_13

    .line 208
    sget-object v0, Lanetwork/channel/cookie/CookieManager;->e:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_13

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "networksdk_target_cookie_name"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_13
    return-void
.end method

.method public static declared-synchronized setup(Landroid/content/Context;)V
    .registers 11

    const-class v0, Lanetwork/channel/cookie/CookieManager;

    monitor-enter v0

    .line 42
    :try_start_3
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isCookieEnable()Z

    move-result v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_68

    if-nez v1, :cond_b

    .line 43
    monitor-exit v0

    return-void

    .line 46
    :cond_b
    :try_start_b
    sget-boolean v1, Lanetwork/channel/cookie/CookieManager;->a:Z
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_68

    if-eqz v1, :cond_11

    .line 47
    monitor-exit v0

    return-void

    :cond_11
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 51
    :try_start_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 52
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_21

    .line 53
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 55
    :cond_21
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v6

    sput-object v6, Lanetwork/channel/cookie/CookieManager;->b:Landroid/webkit/CookieManager;

    .line 56
    sget-object v6, Lanetwork/channel/cookie/CookieManager;->b:Landroid/webkit/CookieManager;

    invoke-virtual {v6, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 57
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v6, v7, :cond_35

    .line 58
    sget-object v6, Lanetwork/channel/cookie/CookieManager;->b:Landroid/webkit/CookieManager;

    invoke-virtual {v6}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 60
    :cond_35
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lanetwork/channel/cookie/CookieManager;->e:Landroid/content/SharedPreferences;

    .line 61
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->e()V

    const-string p0, "anet.CookieManager"

    const-string v6, "CookieManager setup."

    const/4 v7, 0x2

    .line 62
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "cost"

    aput-object v8, v7, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-static {p0, v6, v1, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_57} :catch_58
    .catchall {:try_start_14 .. :try_end_57} :catchall_68

    goto :goto_64

    :catch_58
    move-exception p0

    .line 64
    :try_start_59
    sput-boolean v3, Lanetwork/channel/cookie/CookieManager;->c:Z

    const-string v4, "anet.CookieManager"

    const-string v5, "Cookie Manager setup failed!!!"

    .line 65
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v1, p0, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 67
    :goto_64
    sput-boolean v2, Lanetwork/channel/cookie/CookieManager;->a:Z
    :try_end_66
    .catchall {:try_start_59 .. :try_end_66} :catchall_68

    .line 68
    monitor-exit v0

    return-void

    :catchall_68
    move-exception p0

    monitor-exit v0

    throw p0
.end method
