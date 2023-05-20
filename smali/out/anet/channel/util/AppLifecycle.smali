.class public Lanet/channel/util/AppLifecycle;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/util/AppLifecycle$AppLifecycleListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.AppLifeCycle"

.field public static volatile isGoingForeground:Z

.field public static volatile lastEnterBackgroundTime:J

.field private static listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lanet/channel/util/AppLifecycle$AppLifecycleListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private static mComponentCallbacks2:Landroid/content/ComponentCallbacks2;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lanet/channel/util/AppLifecycle;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    const-wide/16 v0, 0x0

    .line 30
    sput-wide v0, Lanet/channel/util/AppLifecycle;->lastEnterBackgroundTime:J

    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lanet/channel/util/AppLifecycle;->isGoingForeground:Z

    .line 87
    new-instance v0, Lanet/channel/util/AppLifecycle$2;

    invoke-direct {v0}, Lanet/channel/util/AppLifecycle$2;-><init>()V

    sput-object v0, Lanet/channel/util/AppLifecycle;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 128
    new-instance v0, Lanet/channel/util/AppLifecycle$3;

    invoke-direct {v0}, Lanet/channel/util/AppLifecycle$3;-><init>()V

    sput-object v0, Lanet/channel/util/AppLifecycle;->mComponentCallbacks2:Landroid/content/ComponentCallbacks2;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/CopyOnWriteArraySet;
    .registers 1

    .line 19
    sget-object v0, Lanet/channel/util/AppLifecycle;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method public static initialize()V
    .registers 2

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_24

    invoke-static {}, Lanet/channel/AwcnConfig;->isAppLifeCycleListenerEnable()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 35
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    sget-object v1, Lanet/channel/util/AppLifecycle;->mActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 36
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lanet/channel/util/AppLifecycle;->mComponentCallbacks2:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_24
    return-void
.end method

.method private static notifyListener(Z)V
    .registers 5

    const/4 v0, 0x2

    .line 68
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "foreground"

    aput-object v2, v0, v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "awcn.AppLifeCycle"

    const-string v2, "notifyListener"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    new-instance v0, Lanet/channel/util/AppLifecycle$1;

    invoke-direct {v0, p0}, Lanet/channel/util/AppLifecycle$1;-><init>(Z)V

    invoke-static {v0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static onBackground()V
    .registers 2

    .line 60
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 61
    invoke-static {v0}, Lanet/channel/GlobalAppRuntimeInfo;->setBackground(Z)V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lanet/channel/util/AppLifecycle;->lastEnterBackgroundTime:J

    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Lanet/channel/util/AppLifecycle;->notifyListener(Z)V

    :cond_14
    return-void
.end method

.method public static onForeground()V
    .registers 1

    .line 52
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 53
    invoke-static {v0}, Lanet/channel/GlobalAppRuntimeInfo;->setBackground(Z)V

    .line 54
    sput-boolean v0, Lanet/channel/util/AppLifecycle;->isGoingForeground:Z

    const/4 v0, 0x1

    .line 55
    invoke-static {v0}, Lanet/channel/util/AppLifecycle;->notifyListener(Z)V

    :cond_10
    return-void
.end method

.method public static registerLifecycleListener(Lanet/channel/util/AppLifecycle$AppLifecycleListener;)V
    .registers 2

    if-eqz p0, :cond_7

    .line 43
    sget-object v0, Lanet/channel/util/AppLifecycle;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public static unregisterLifecycleListener(Lanet/channel/util/AppLifecycle$AppLifecycleListener;)V
    .registers 2

    .line 48
    sget-object v0, Lanet/channel/util/AppLifecycle;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
