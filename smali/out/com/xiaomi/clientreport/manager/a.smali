.class public Lcom/xiaomi/clientreport/manager/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field private static volatile a:Lcom/xiaomi/clientreport/manager/a;


# instance fields
.field private a:Landroid/content/Context;

.field private a:Lcom/xiaomi/clientreport/data/Config;

.field private a:Lcom/xiaomi/clientreport/processor/IEventProcessor;

.field private a:Lcom/xiaomi/clientreport/processor/IPerfProcessor;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/clientreport/data/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/clientreport/data/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x1e

    goto :goto_b

    :cond_9
    const/16 v0, 0xa

    :goto_b
    sput v0, Lcom/xiaomi/clientreport/manager/a;->a:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->b:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    return-void
.end method

.method private a()I
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->b:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/clientreport/manager/a;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    goto :goto_2a

    :cond_29
    move v3, v1

    :goto_2a
    add-int/2addr v2, v3

    goto :goto_e

    :cond_2c
    move v1, v2

    :cond_2d
    return v1
.end method

.method static synthetic a(Lcom/xiaomi/clientreport/manager/a;)I
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/clientreport/manager/a;->a()I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/a;
    .registers 3

    sget-object v0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/manager/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/xiaomi/clientreport/manager/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/manager/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/clientreport/manager/a;

    invoke-direct {v1, p0}, Lcom/xiaomi/clientreport/manager/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/manager/a;

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
    sget-object p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/manager/a;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/clientreport/manager/a;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/clientreport/manager/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/clientreport/manager/a;->d()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/clientreport/manager/a;Lcom/xiaomi/clientreport/data/EventClientReport;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/clientreport/manager/a;->b(Lcom/xiaomi/clientreport/data/EventClientReport;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/clientreport/manager/a;Lcom/xiaomi/clientreport/data/PerfClientReport;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/clientreport/manager/a;->b(Lcom/xiaomi/clientreport/data/PerfClientReport;)V

    return-void
.end method

.method private a(Lcom/xiaomi/push/ak$a;I)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/ak;->b(Lcom/xiaomi/push/ak$a;I)Z

    return-void
.end method

.method private b()I
    .registers 10

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/clientreport/manager/a;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/clientreport/data/a;

    instance-of v5, v4, Lcom/xiaomi/clientreport/data/PerfClientReport;

    if-eqz v5, :cond_2b

    check-cast v4, Lcom/xiaomi/clientreport/data/PerfClientReport;

    int-to-long v5, v1

    iget-wide v7, v4, Lcom/xiaomi/clientreport/data/PerfClientReport;->perfCounts:J

    add-long/2addr v5, v7

    long-to-int v1, v5

    goto :goto_2b

    :cond_49
    return v1
.end method

.method static synthetic b(Lcom/xiaomi/clientreport/manager/a;)I
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/clientreport/manager/a;->b()I

    move-result p0

    return p0
.end method

.method private b(Lcom/xiaomi/clientreport/data/EventClientReport;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/processor/IEventProcessor;

    if-eqz v0, :cond_28

    invoke-interface {v0, p1}, Lcom/xiaomi/clientreport/processor/IEventProcessor;->a(Lcom/xiaomi/clientreport/data/a;)V

    invoke-direct {p0}, Lcom/xiaomi/clientreport/manager/a;->a()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_1e

    invoke-direct {p0}, Lcom/xiaomi/clientreport/manager/a;->d()V

    iget-object p1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object p1

    const-string v0, "100888"

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/ak;->a(Ljava/lang/String;)Z

    goto :goto_28

    :cond_1e
    new-instance p1, Lcom/xiaomi/clientreport/manager/d;

    invoke-direct {p1, p0}, Lcom/xiaomi/clientreport/manager/d;-><init>(Lcom/xiaomi/clientreport/manager/a;)V

    sget v0, Lcom/xiaomi/clientreport/manager/a;->a:I

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/clientreport/manager/a;->a(Lcom/xiaomi/push/ak$a;I)V

    :cond_28
    :goto_28
    return-void
.end method

.method private b(Lcom/xiaomi/clientreport/data/PerfClientReport;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/processor/IPerfProcessor;

    if-eqz v0, :cond_28

    invoke-interface {v0, p1}, Lcom/xiaomi/clientreport/processor/IPerfProcessor;->a(Lcom/xiaomi/clientreport/data/a;)V

    invoke-direct {p0}, Lcom/xiaomi/clientreport/manager/a;->b()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_1e

    invoke-direct {p0}, Lcom/xiaomi/clientreport/manager/a;->e()V

    iget-object p1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object p1

    const-string v0, "100889"

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/ak;->a(Ljava/lang/String;)Z

    goto :goto_28

    :cond_1e
    new-instance p1, Lcom/xiaomi/clientreport/manager/f;

    invoke-direct {p1, p0}, Lcom/xiaomi/clientreport/manager/f;-><init>(Lcom/xiaomi/clientreport/manager/a;)V

    sget v0, Lcom/xiaomi/clientreport/manager/a;->a:I

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/clientreport/manager/a;->a(Lcom/xiaomi/push/ak$a;I)V

    :cond_28
    :goto_28
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/clientreport/manager/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/clientreport/manager/a;->e()V

    return-void
.end method

.method private d()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/processor/IEventProcessor;

    invoke-interface {v0}, Lcom/xiaomi/clientreport/processor/IEventProcessor;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1f

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "we: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method private e()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/processor/IPerfProcessor;

    invoke-interface {v0}, Lcom/xiaomi/clientreport/processor/IPerfProcessor;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1f

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method private f()V
    .registers 8

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/clientreport/manager/a;->a(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/clientreport/manager/a;->a()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/clientreport/data/Config;->isEventUploadSwitchOpen()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    new-instance v0, Lcom/xiaomi/push/bp;

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/push/bp;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/clientreport/manager/a;->a(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/clientreport/manager/a;->a()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/clientreport/data/Config;->getEventUploadFrequency()J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0x708

    if-ge v1, v2, :cond_2c

    move v1, v2

    :cond_2c
    iget-object v2, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/bv;->a(Landroid/content/Context;)Lcom/xiaomi/push/bv;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-string v5, "sp_client_report_status"

    const-string v6, "event_last_upload_time"

    invoke-virtual {v2, v5, v6, v3, v4}, Lcom/xiaomi/push/bv;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    mul-int/lit16 v2, v1, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_58

    iget-object v2, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/clientreport/manager/h;

    invoke-direct {v3, p0, v0}, Lcom/xiaomi/clientreport/manager/h;-><init>(Lcom/xiaomi/clientreport/manager/a;Lcom/xiaomi/push/bp;)V

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/ak;->a(Ljava/lang/Runnable;I)V

    :cond_58
    const-class v2, Lcom/xiaomi/clientreport/manager/a;

    monitor-enter v2

    :try_start_5b
    iget-object v3, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/push/ak;->a(Lcom/xiaomi/push/ak$a;I)Z

    move-result v3

    if-nez v3, :cond_7b

    iget-object v3, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object v3

    const-string v4, "100886"

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/ak;->a(Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/push/ak;->a(Lcom/xiaomi/push/ak$a;I)Z

    :cond_7b
    monitor-exit v2

    return-void

    :catchall_7d
    move-exception v0

    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_5b .. :try_end_7f} :catchall_7d

    throw v0
.end method

.method private g()V
    .registers 8

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/clientreport/manager/a;->a(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/clientreport/manager/a;->a()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/clientreport/data/Config;->isPerfUploadSwitchOpen()Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    new-instance v0, Lcom/xiaomi/push/bq;

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/push/bq;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/clientreport/manager/a;->a(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/clientreport/manager/a;->a()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/clientreport/data/Config;->getPerfUploadFrequency()J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0x708

    if-ge v1, v2, :cond_2c

    move v1, v2

    :cond_2c
    iget-object v2, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/bv;->a(Landroid/content/Context;)Lcom/xiaomi/push/bv;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-string v5, "sp_client_report_status"

    const-string v6, "perf_last_upload_time"

    invoke-virtual {v2, v5, v6, v3, v4}, Lcom/xiaomi/push/bv;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    mul-int/lit16 v2, v1, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-lez v2, :cond_58

    iget-object v2, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/clientreport/manager/i;

    invoke-direct {v3, p0, v0}, Lcom/xiaomi/clientreport/manager/i;-><init>(Lcom/xiaomi/clientreport/manager/a;Lcom/xiaomi/push/bq;)V

    const/16 v4, 0xf

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/ak;->a(Ljava/lang/Runnable;I)V

    :cond_58
    const-class v2, Lcom/xiaomi/clientreport/manager/a;

    monitor-enter v2

    :try_start_5b
    iget-object v3, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/push/ak;->a(Lcom/xiaomi/push/ak$a;I)Z

    move-result v3

    if-nez v3, :cond_7b

    iget-object v3, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object v3

    const-string v4, "100887"

    invoke-virtual {v3, v4}, Lcom/xiaomi/push/ak;->a(Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/xiaomi/push/ak;->a(Lcom/xiaomi/push/ak$a;I)Z

    :cond_7b
    monitor-exit v2

    return-void

    :catchall_7d
    move-exception v0

    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_5b .. :try_end_7f} :catchall_7d

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Lcom/xiaomi/clientreport/data/Config;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/data/Config;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/clientreport/data/Config;->defaultConfig(Landroid/content/Context;)Lcom/xiaomi/clientreport/data/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/data/Config;

    :cond_d
    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/data/Config;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(ILjava/lang/String;)Lcom/xiaomi/clientreport/data/EventClientReport;
    .registers 6

    new-instance v0, Lcom/xiaomi/clientreport/data/EventClientReport;

    invoke-direct {v0}, Lcom/xiaomi/clientreport/data/EventClientReport;-><init>()V

    iput-object p2, v0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventContent:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventTime:J

    iput p1, v0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventType:I

    const/4 p1, 0x6

    invoke-static {p1}, Lcom/xiaomi/push/bo;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/xiaomi/clientreport/data/EventClientReport;->eventId:Ljava/lang/String;

    const/16 p1, 0x3e8

    iput p1, v0, Lcom/xiaomi/clientreport/data/EventClientReport;->production:I

    const/16 p1, 0x3e9

    iput p1, v0, Lcom/xiaomi/clientreport/data/EventClientReport;->reportType:I

    const-string p1, "E100004"

    iput-object p1, v0, Lcom/xiaomi/clientreport/data/EventClientReport;->clientInterfaceId:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/clientreport/data/EventClientReport;->setAppPackageName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/clientreport/data/EventClientReport;->setSdkVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/clientreport/manager/a;->a(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/a;

    move-result-object v0

    invoke-direct {v0}, Lcom/xiaomi/clientreport/manager/a;->f()V

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/clientreport/manager/a;->a(Landroid/content/Context;)Lcom/xiaomi/clientreport/manager/a;

    move-result-object v0

    invoke-direct {v0}, Lcom/xiaomi/clientreport/manager/a;->g()V

    return-void
.end method

.method public a(Lcom/xiaomi/clientreport/data/Config;Lcom/xiaomi/clientreport/processor/IEventProcessor;Lcom/xiaomi/clientreport/processor/IPerfProcessor;)V
    .registers 4

    iput-object p1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/data/Config;

    iput-object p2, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/processor/IEventProcessor;

    iput-object p3, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/processor/IPerfProcessor;

    iget-object p1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/processor/IEventProcessor;

    iget-object p2, p0, Lcom/xiaomi/clientreport/manager/a;->b:Ljava/util/HashMap;

    invoke-interface {p1, p2}, Lcom/xiaomi/clientreport/processor/IEventProcessor;->setEventMap(Ljava/util/HashMap;)V

    iget-object p1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/processor/IPerfProcessor;

    iget-object p2, p0, Lcom/xiaomi/clientreport/manager/a;->a:Ljava/util/HashMap;

    invoke-interface {p1, p2}, Lcom/xiaomi/clientreport/processor/IPerfProcessor;->setPerfMap(Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Lcom/xiaomi/clientreport/data/EventClientReport;)V
    .registers 4

    invoke-virtual {p0}, Lcom/xiaomi/clientreport/manager/a;->a()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/clientreport/data/Config;->isEventUploadSwitchOpen()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/clientreport/manager/b;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/clientreport/manager/b;-><init>(Lcom/xiaomi/clientreport/manager/a;Lcom/xiaomi/clientreport/data/EventClientReport;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method

.method public a(Lcom/xiaomi/clientreport/data/PerfClientReport;)V
    .registers 4

    invoke-virtual {p0}, Lcom/xiaomi/clientreport/manager/a;->a()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/clientreport/data/Config;->isPerfUploadSwitchOpen()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/clientreport/manager/c;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/clientreport/manager/c;-><init>(Lcom/xiaomi/clientreport/manager/a;Lcom/xiaomi/clientreport/data/PerfClientReport;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Ljava/lang/String;

    return-void
.end method

.method public a(ZZJJ)V
    .registers 13

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/data/Config;

    if-eqz v0, :cond_e2

    invoke-virtual {v0}, Lcom/xiaomi/clientreport/data/Config;->isEventUploadSwitchOpen()Z

    move-result v0

    if-ne p1, v0, :cond_26

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/data/Config;

    invoke-virtual {v0}, Lcom/xiaomi/clientreport/data/Config;->isPerfUploadSwitchOpen()Z

    move-result v0

    if-ne p2, v0, :cond_26

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/data/Config;

    invoke-virtual {v0}, Lcom/xiaomi/clientreport/data/Config;->getEventUploadFrequency()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/data/Config;

    invoke-virtual {v0}, Lcom/xiaomi/clientreport/data/Config;->getPerfUploadFrequency()J

    move-result-wide v0

    cmp-long v0, p5, v0

    if-eqz v0, :cond_e2

    :cond_26
    iget-object v0, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/data/Config;

    invoke-virtual {v0}, Lcom/xiaomi/clientreport/data/Config;->getEventUploadFrequency()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/data/Config;

    invoke-virtual {v2}, Lcom/xiaomi/clientreport/data/Config;->getPerfUploadFrequency()J

    move-result-wide v2

    invoke-static {}, Lcom/xiaomi/clientreport/data/Config;->getBuilder()Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/xiaomi/push/bs;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/clientreport/data/Config$Builder;->setAESKey(Ljava/lang/String;)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/data/Config;

    invoke-virtual {v5}, Lcom/xiaomi/clientreport/data/Config;->isEventEncrypted()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventEncrypted(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventUploadSwitchOpen(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/xiaomi/clientreport/data/Config$Builder;->setEventUploadFrequency(J)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/clientreport/data/Config$Builder;->setPerfUploadSwitchOpen(Z)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object p1

    invoke-virtual {p1, p5, p6}, Lcom/xiaomi/clientreport/data/Config$Builder;->setPerfUploadFrequency(J)Lcom/xiaomi/clientreport/data/Config$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/xiaomi/clientreport/data/Config$Builder;->build(Landroid/content/Context;)Lcom/xiaomi/clientreport/data/Config;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/data/Config;

    iget-object p2, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/data/Config;

    invoke-virtual {p2}, Lcom/xiaomi/clientreport/data/Config;->isEventUploadSwitchOpen()Z

    move-result p2

    if-nez p2, :cond_76

    iget-object p2, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object p2

    const-string p3, "100886"

    invoke-virtual {p2, p3}, Lcom/xiaomi/push/ak;->a(Ljava/lang/String;)Z

    goto :goto_a2

    :cond_76
    invoke-virtual {p1}, Lcom/xiaomi/clientreport/data/Config;->getEventUploadFrequency()J

    move-result-wide p2

    cmp-long p2, v0, p2

    if-eqz p2, :cond_a2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "reset event job "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/clientreport/data/Config;->getEventUploadFrequency()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/clientreport/manager/a;->f()V

    :cond_a2
    :goto_a2
    iget-object p2, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/data/Config;

    invoke-virtual {p2}, Lcom/xiaomi/clientreport/data/Config;->isPerfUploadSwitchOpen()Z

    move-result p2

    if-nez p2, :cond_b6

    iget-object p1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object p1

    const-string p2, "100887"

    invoke-virtual {p1, p2}, Lcom/xiaomi/push/ak;->a(Ljava/lang/String;)Z

    goto :goto_e2

    :cond_b6
    invoke-virtual {p1}, Lcom/xiaomi/clientreport/data/Config;->getPerfUploadFrequency()J

    move-result-wide p2

    cmp-long p2, v2, p2

    if-eqz p2, :cond_e2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " reset perf job "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaomi/clientreport/data/Config;->getPerfUploadFrequency()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/clientreport/manager/a;->g()V

    :cond_e2
    :goto_e2
    return-void
.end method

.method public b()V
    .registers 3

    invoke-virtual {p0}, Lcom/xiaomi/clientreport/manager/a;->a()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/clientreport/data/Config;->isEventUploadSwitchOpen()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/xiaomi/push/br;

    invoke-direct {v0}, Lcom/xiaomi/push/br;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/br;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/processor/IEventProcessor;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/br;->a(Lcom/xiaomi/clientreport/processor/c;)V

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1e
    return-void
.end method

.method public c()V
    .registers 3

    invoke-virtual {p0}, Lcom/xiaomi/clientreport/manager/a;->a()Lcom/xiaomi/clientreport/data/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/clientreport/data/Config;->isPerfUploadSwitchOpen()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/xiaomi/push/br;

    invoke-direct {v0}, Lcom/xiaomi/push/br;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Lcom/xiaomi/clientreport/processor/IPerfProcessor;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/br;->a(Lcom/xiaomi/clientreport/processor/c;)V

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/br;->a(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaomi/clientreport/manager/a;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1e
    return-void
.end method
