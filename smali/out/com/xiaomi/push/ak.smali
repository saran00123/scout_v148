.class public Lcom/xiaomi/push/ak;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/ak$a;,
        Lcom/xiaomi/push/ak$b;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/xiaomi/push/ak;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private a:Ljava/lang/Object;

.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ScheduledFuture;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/push/ak;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/ak;->a:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/ak;->a:Ljava/lang/Object;

    const-string v0, "mipush_extra"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/push/ak;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/ak;)Landroid/content/SharedPreferences;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/ak;->a:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/ak;
    .registers 3

    sget-object v0, Lcom/xiaomi/push/ak;->a:Lcom/xiaomi/push/ak;

    if-nez v0, :cond_17

    const-class v0, Lcom/xiaomi/push/ak;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/push/ak;->a:Lcom/xiaomi/push/ak;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/push/ak;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/ak;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/push/ak;->a:Lcom/xiaomi/push/ak;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/xiaomi/push/ak;->a:Lcom/xiaomi/push/ak;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/ak;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/ak;->a:Ljava/lang/Object;

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_job_time"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/ak;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/ak;->a:Ljava/util/Map;

    return-object p0
.end method

.method private a(Lcom/xiaomi/push/ak$a;)Ljava/util/concurrent/ScheduledFuture;
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/ak;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/push/ak;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaomi/push/ak$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0

    return-object p1

    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/ak;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;I)V
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/push/ak;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    int-to-long v1, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v1, v2, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public a(Lcom/xiaomi/push/ak$a;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/ak;->b(Lcom/xiaomi/push/ak$a;I)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/xiaomi/push/ak$a;I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/push/ak;->a(Lcom/xiaomi/push/ak$a;II)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/xiaomi/push/ak$a;II)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/push/ak;->a(Lcom/xiaomi/push/ak$a;IIZ)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/xiaomi/push/ak$a;IIZ)Z
    .registers 13

    if-eqz p1, :cond_57

    invoke-direct {p0, p1}, Lcom/xiaomi/push/ak;->a(Lcom/xiaomi/push/ak$a;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_57

    :cond_9
    invoke-virtual {p1}, Lcom/xiaomi/push/ak$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/push/al;

    invoke-direct {v2, p0, p1, p4, v0}, Lcom/xiaomi/push/al;-><init>(Lcom/xiaomi/push/ak;Lcom/xiaomi/push/ak$a;ZLjava/lang/String;)V

    if-nez p4, :cond_36

    iget-object p4, p0, Lcom/xiaomi/push/ak;->a:Landroid/content/SharedPreferences;

    const-wide/16 v3, 0x0

    invoke-interface {p4, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    sub-int p4, p2, p3

    int-to-long v3, p4

    cmp-long p4, v0, v3

    if-gez p4, :cond_36

    int-to-long p3, p2

    sub-long/2addr p3, v0

    long-to-int p3, p3

    :cond_36
    :try_start_36
    iget-object v1, p0, Lcom/xiaomi/push/ak;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    int-to-long v3, p3

    int-to-long v5, p2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v1 .. v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaomi/push/ak;->a:Ljava/lang/Object;

    monitor-enter p3
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_43} :catch_51

    :try_start_43
    iget-object p4, p0, Lcom/xiaomi/push/ak;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaomi/push/ak$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p3

    goto :goto_55

    :catchall_4e
    move-exception p1

    monitor-exit p3
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_4e

    :try_start_50
    throw p1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_51} :catch_51

    :catch_51
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :goto_55
    const/4 p1, 0x1

    return p1

    :cond_57
    :goto_57
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/push/ak;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/push/ak;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    monitor-exit v0

    return v2

    :cond_10
    iget-object v3, p0, Lcom/xiaomi/push/ak;->a:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1b

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    move-result p1

    return p1

    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public b(Lcom/xiaomi/push/ak$a;I)Z
    .registers 7

    if-eqz p1, :cond_29

    invoke-direct {p0, p1}, Lcom/xiaomi/push/ak;->a(Lcom/xiaomi/push/ak$a;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    if-eqz v0, :cond_9

    goto :goto_29

    :cond_9
    new-instance v0, Lcom/xiaomi/push/am;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/push/am;-><init>(Lcom/xiaomi/push/ak;Lcom/xiaomi/push/ak$a;)V

    iget-object v1, p0, Lcom/xiaomi/push/ak;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    int-to-long v2, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaomi/push/ak;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1a
    iget-object v1, p0, Lcom/xiaomi/push/ak;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaomi/push/ak$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_26

    throw p1

    :cond_29
    :goto_29
    const/4 p1, 0x0

    return p1
.end method
