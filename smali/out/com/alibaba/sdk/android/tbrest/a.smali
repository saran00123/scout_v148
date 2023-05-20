.class public Lcom/alibaba/sdk/android/tbrest/a;
.super Ljava/lang/Object;
.source "SendAsyncExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/tbrest/a$a;
    }
.end annotation


# static fields
.field public static a:Ljava/util/concurrent/ScheduledExecutorService; = null

.field public static final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static e:I = 0x1


# instance fields
.field public a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/tbrest/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/a;->a:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Runnable;)V
    .registers 5

    monitor-enter p0

    .line 46
    :try_start_1
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_18

    .line 47
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/alibaba/sdk/android/tbrest/a$a;

    sget v2, Lcom/alibaba/sdk/android/tbrest/a;->e:I

    invoke-direct {v1, v2}, Lcom/alibaba/sdk/android/tbrest/a$a;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/tbrest/a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 49
    :cond_18
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/a;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1d} :catch_20
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1e

    goto :goto_24

    :catchall_1e
    move-exception p1

    goto :goto_26

    :catch_20
    move-exception p1

    .line 51
    :try_start_21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1e

    .line 53
    :goto_24
    monitor-exit p0

    return-void

    :goto_26
    monitor-exit p0

    throw p1
.end method
