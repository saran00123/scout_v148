.class public final Lcom/amazon/identity/auth/device/thread/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# static fields
.field public static final THREAD_POOL:Ljava/util/concurrent/Executor;

.field private static sThreadNum:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lcom/amazon/identity/auth/device/thread/ThreadUtils$1;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/thread/ThreadUtils$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/thread/ThreadUtils;->THREAD_POOL:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$004()I
    .registers 1

    .line 11
    sget v0, Lcom/amazon/identity/auth/device/thread/ThreadUtils;->sThreadNum:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amazon/identity/auth/device/thread/ThreadUtils;->sThreadNum:I

    return v0
.end method

.method public static isRunningOnMainThread()Z
    .registers 2

    .line 31
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static runOffMainThread(Ljava/lang/Runnable;)V
    .registers 2

    .line 47
    invoke-static {}, Lcom/amazon/identity/auth/device/thread/ThreadUtils;->isRunningOnMainThread()Z

    move-result v0

    if-nez v0, :cond_a

    .line 49
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_d

    .line 53
    :cond_a
    invoke-static {p0}, Lcom/amazon/identity/auth/device/thread/ThreadUtils;->submitToBackgroundThread(Ljava/lang/Runnable;)V

    :goto_d
    return-void
.end method

.method public static runOnMainThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static submitToBackgroundThread(Ljava/lang/Runnable;)V
    .registers 2

    .line 42
    sget-object v0, Lcom/amazon/identity/auth/device/thread/ThreadUtils;->THREAD_POOL:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
