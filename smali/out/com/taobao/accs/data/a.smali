.class public Lcom/taobao/accs/data/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final SPLITTED_DATA_INDEX:I = 0x11

.field public static final SPLITTED_DATA_MD5:I = 0x12

.field public static final SPLITTED_DATA_NUMS:I = 0x10

.field public static final SPLITTED_TIME_OUT:I = 0xf

.field private static final a:[C


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:J

.field private volatile f:I

.field private g:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    .line 28
    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/taobao/accs/data/a;->a:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/taobao/accs/data/a;->f:I

    .line 47
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/taobao/accs/data/b;

    invoke-direct {v1, p0}, Lcom/taobao/accs/data/b;-><init>(Lcom/taobao/accs/data/a;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/taobao/accs/data/a;->h:Ljava/util/Map;

    .line 55
    iput-object p1, p0, Lcom/taobao/accs/data/a;->b:Ljava/lang/String;

    .line 56
    iput p2, p0, Lcom/taobao/accs/data/a;->c:I

    .line 57
    iput-object p3, p0, Lcom/taobao/accs/data/a;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/taobao/accs/data/a;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/taobao/accs/data/a;->f:I

    return p0
.end method

.method static synthetic a(Lcom/taobao/accs/data/a;I)I
    .registers 2

    .line 26
    iput p1, p0, Lcom/taobao/accs/data/a;->f:I

    return p1
.end method

.method private static a([B)[C
    .registers 8

    .line 150
    array-length v0, p0

    shl-int/lit8 v1, v0, 0x1

    .line 151
    new-array v1, v1, [C

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v2, v0, :cond_24

    add-int/lit8 v4, v3, 0x1

    .line 154
    sget-object v5, Lcom/taobao/accs/data/a;->a:[C

    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v5, v6

    aput-char v6, v1, v3

    add-int/lit8 v3, v4, 0x1

    .line 155
    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_24
    return-object v1
.end method

.method static synthetic b(Lcom/taobao/accs/data/a;)Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/taobao/accs/data/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/taobao/accs/data/a;)Ljava/util/Map;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/taobao/accs/data/a;->h:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public a(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_8

    const-wide/16 p1, 0x7530

    .line 64
    :cond_8
    invoke-static {}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->getScheduledExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/taobao/accs/data/c;

    invoke-direct {v1, p0}, Lcom/taobao/accs/data/c;-><init>(Lcom/taobao/accs/data/a;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/data/a;->g:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public a(II[B)[B
    .registers 16

    .line 81
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_28

    .line 82
    new-array v0, v1, [Ljava/lang/Object;

    const-string v6, "dataId"

    aput-object v6, v0, v5

    iget-object v6, p0, Lcom/taobao/accs/data/a;->b:Ljava/lang/String;

    aput-object v6, v0, v3

    const-string v6, "index"

    aput-object v6, v0, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    const-string v6, "AssembleMessage"

    const-string v7, "putBurst"

    invoke-static {v6, v7, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_28
    iget v0, p0, Lcom/taobao/accs/data/a;->c:I

    const/4 v6, 0x0

    if-eq p2, v0, :cond_37

    .line 85
    new-array p1, v5, [Ljava/lang/Object;

    const-string p2, "AssembleMessage"

    const-string p3, "putBurst fail as burstNums not match"

    invoke-static {p2, p3, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :cond_37
    if-ltz p1, :cond_15e

    if-lt p1, p2, :cond_3d

    goto/16 :goto_15e

    .line 92
    :cond_3d
    monitor-enter p0

    .line 93
    :try_start_3e
    iget p2, p0, Lcom/taobao/accs/data/a;->f:I

    if-nez p2, :cond_144

    .line 94
    iget-object p2, p0, Lcom/taobao/accs/data/a;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_59

    const-string p1, "AssembleMessage"

    const-string p2, "putBurst fail as exist old"

    .line 95
    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    monitor-exit p0

    return-object v6

    .line 98
    :cond_59
    iget-object p2, p0, Lcom/taobao/accs/data/a;->h:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_67

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/taobao/accs/data/a;->e:J

    .line 101
    :cond_67
    iget-object p2, p0, Lcom/taobao/accs/data/a;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object p1, p0, Lcom/taobao/accs/data/a;->h:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget p2, p0, Lcom/taobao/accs/data/a;->c:I

    if-ne p1, p2, :cond_159

    .line 104
    iget-object p1, p0, Lcom/taobao/accs/data/a;->h:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object p2, v6

    :goto_85
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    if-nez p2, :cond_95

    move-object p2, p3

    goto :goto_85

    .line 108
    :cond_95
    array-length v0, p2

    array-length v7, p3

    add-int/2addr v0, v7

    new-array v0, v0, [B

    .line 109
    array-length v7, p2

    invoke-static {p2, v5, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    array-length p2, p2

    array-length v7, p3

    invoke-static {p3, v5, v0, p2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v0

    goto :goto_85

    .line 115
    :cond_a5
    iget-object p1, p0, Lcom/taobao/accs/data/a;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p3, 0x5

    const/4 v0, 0x6

    if-nez p1, :cond_e6

    .line 116
    new-instance p1, Ljava/lang/String;

    invoke-static {p2}, Lcom/taobao/accs/utl/d;->a([B)[B

    move-result-object v7

    invoke-static {v7}, Lcom/taobao/accs/data/a;->a([B)[C

    move-result-object v7

    invoke-direct {p1, v7}, Ljava/lang/String;-><init>([C)V

    .line 117
    iget-object v7, p0, Lcom/taobao/accs/data/a;->d:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e6

    const-string p2, "AssembleMessage"

    const-string v7, "putBurst fail"

    .line 119
    new-array v8, v0, [Ljava/lang/Object;

    const-string v9, "dataId"

    aput-object v9, v8, v5

    iget-object v9, p0, Lcom/taobao/accs/data/a;->b:Ljava/lang/String;

    aput-object v9, v8, v3

    const-string v9, "dataMd5"

    aput-object v9, v8, v4

    iget-object v9, p0, Lcom/taobao/accs/data/a;->d:Ljava/lang/String;

    aput-object v9, v8, v2

    const-string v9, "finalDataMd5"

    aput-object v9, v8, v1

    aput-object p1, v8, p3

    invoke-static {p2, v7, v8}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iput v2, p0, Lcom/taobao/accs/data/a;->f:I

    move-object p2, v6

    :cond_e6
    const-wide/16 v6, 0x0

    if-eqz p2, :cond_11b

    .line 126
    array-length p1, p2

    int-to-long v6, p1

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/taobao/accs/data/a;->e:J

    sub-long/2addr v8, v10

    .line 128
    iput v4, p0, Lcom/taobao/accs/data/a;->f:I

    const-string p1, "AssembleMessage"

    const-string v10, "putBurst completed"

    .line 129
    new-array v0, v0, [Ljava/lang/Object;

    const-string v11, "dataId"

    aput-object v11, v0, v5

    iget-object v11, p0, Lcom/taobao/accs/data/a;->b:Ljava/lang/String;

    aput-object v11, v0, v3

    const-string v3, "length"

    aput-object v3, v0, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "cost"

    aput-object v2, v0, v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, p3

    invoke-static {p1, v10, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11c

    :cond_11b
    move-wide v8, v6

    .line 131
    :goto_11c
    new-instance p1, Lcom/taobao/accs/ut/monitor/AssembleMonitor;

    iget-object p3, p0, Lcom/taobao/accs/data/a;->b:Ljava/lang/String;

    iget v0, p0, Lcom/taobao/accs/data/a;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Lcom/taobao/accs/ut/monitor/AssembleMonitor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-wide v6, p1, Lcom/taobao/accs/ut/monitor/AssembleMonitor;->assembleLength:J

    .line 133
    iput-wide v8, p1, Lcom/taobao/accs/ut/monitor/AssembleMonitor;->assembleTimes:J

    .line 134
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p3

    invoke-interface {p3, p1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 136
    iget-object p1, p0, Lcom/taobao/accs/data/a;->h:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 137
    iget-object p1, p0, Lcom/taobao/accs/data/a;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_142

    .line 138
    iget-object p1, p0, Lcom/taobao/accs/data/a;->g:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {p1, v5}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 140
    :cond_142
    monitor-exit p0

    return-object p2

    :cond_144
    const-string p1, "AssembleMessage"

    const-string p2, "putBurst fail"

    .line 143
    new-array p3, v4, [Ljava/lang/Object;

    const-string v0, "status"

    aput-object v0, p3, v5

    iget v0, p0, Lcom/taobao/accs/data/a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-static {p1, p2, p3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :cond_159
    monitor-exit p0

    return-object v6

    :catchall_15b
    move-exception p1

    monitor-exit p0
    :try_end_15d
    .catchall {:try_start_3e .. :try_end_15d} :catchall_15b

    throw p1

    .line 89
    :cond_15e
    :goto_15e
    new-array p1, v5, [Ljava/lang/Object;

    const-string p2, "AssembleMessage"

    const-string p3, "putBurst fail as burstIndex invalid"

    invoke-static {p2, p3, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method
