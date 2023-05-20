.class public Lanet/channel/monitor/b;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/monitor/b$a;
    }
.end annotation


# static fields
.field static a:I = 0x0

.field static b:J = 0x0L

.field static c:J = 0x0L

.field static d:J = 0x0L

.field static e:J = 0x0L

.field static f:J = 0x0L

.field static g:D = 0.0

.field static h:D = 0.0

.field static i:D = 0.0

.field static j:D = 40.0

.field private static volatile k:Z = false


# instance fields
.field private l:I

.field private m:I

.field private n:Lanet/channel/monitor/e;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 29
    iput v0, p0, Lanet/channel/monitor/b;->l:I

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lanet/channel/monitor/b;->m:I

    .line 32
    new-instance v0, Lanet/channel/monitor/e;

    invoke-direct {v0}, Lanet/channel/monitor/e;-><init>()V

    iput-object v0, p0, Lanet/channel/monitor/b;->n:Lanet/channel/monitor/e;

    .line 43
    new-instance v0, Lanet/channel/monitor/c;

    invoke-direct {v0, p0}, Lanet/channel/monitor/c;-><init>(Lanet/channel/monitor/b;)V

    invoke-static {v0}, Lanet/channel/status/NetworkStatusHelper;->addStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lanet/channel/monitor/c;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Lanet/channel/monitor/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lanet/channel/monitor/b;I)I
    .registers 2

    .line 10
    iput p1, p0, Lanet/channel/monitor/b;->m:I

    return p1
.end method

.method public static a()Lanet/channel/monitor/b;
    .registers 1

    .line 39
    sget-object v0, Lanet/channel/monitor/b$a;->a:Lanet/channel/monitor/b;

    return-object v0
.end method

.method static synthetic a(Lanet/channel/monitor/b;)Lanet/channel/monitor/e;
    .registers 1

    .line 10
    iget-object p0, p0, Lanet/channel/monitor/b;->n:Lanet/channel/monitor/e;

    return-object p0
.end method

.method static synthetic b(Lanet/channel/monitor/b;)I
    .registers 3

    .line 10
    iget v0, p0, Lanet/channel/monitor/b;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lanet/channel/monitor/b;->m:I

    return v0
.end method

.method static synthetic b(Lanet/channel/monitor/b;I)I
    .registers 2

    .line 10
    iput p1, p0, Lanet/channel/monitor/b;->l:I

    return p1
.end method

.method static synthetic c(Lanet/channel/monitor/b;)I
    .registers 1

    .line 10
    iget p0, p0, Lanet/channel/monitor/b;->m:I

    return p0
.end method


# virtual methods
.method public a(JJJ)V
    .registers 16

    .line 87
    sget-boolean v0, Lanet/channel/monitor/b;->k:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 91
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 92
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "mRequestStartTime"

    aput-object v4, v2, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "mRequestFinishedTime"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "mRequestDataSize"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    .line 93
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "awcn.BandWidthSampler"

    const-string v3, "onDataReceived"

    .line 92
    invoke-static {v0, v3, v1, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3a
    const-wide/16 v0, 0xbb8

    cmp-long v0, p5, v0

    if-lez v0, :cond_52

    cmp-long v0, p1, p3

    if-ltz v0, :cond_45

    goto :goto_52

    .line 102
    :cond_45
    new-instance v0, Lanet/channel/monitor/d;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p5

    move-wide v5, p3

    move-wide v7, p1

    invoke-direct/range {v1 .. v8}, Lanet/channel/monitor/d;-><init>(Lanet/channel/monitor/b;JJJ)V

    invoke-static {v0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_52
    :goto_52
    return-void
.end method

.method public b()I
    .registers 3

    .line 54
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    .line 57
    :cond_a
    iget v0, p0, Lanet/channel/monitor/b;->l:I

    return v0
.end method

.method public c()D
    .registers 3

    .line 61
    sget-wide v0, Lanet/channel/monitor/b;->i:D

    return-wide v0
.end method

.method public declared-synchronized d()V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "awcn.BandWidthSampler"

    const-string v3, "[startNetworkMeter]"

    const/4 v4, 0x2

    .line 69
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "NetworkStatus"

    aput-object v5, v4, v1

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v3, v0, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v2

    sget-object v3, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v2, v3, :cond_24

    .line 71
    sput-boolean v1, Lanet/channel/monitor/b;->k:Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_29
    .catchall {:try_start_3 .. :try_end_22} :catchall_27

    .line 72
    monitor-exit p0

    return-void

    .line 75
    :cond_24
    :try_start_24
    sput-boolean v6, Lanet/channel/monitor/b;->k:Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_26} :catch_29
    .catchall {:try_start_24 .. :try_end_26} :catchall_27

    goto :goto_34

    :catchall_27
    move-exception v0

    goto :goto_36

    :catch_29
    move-exception v2

    :try_start_2a
    const-string v3, "awcn.BandWidthSampler"

    const-string/jumbo v4, "startNetworkMeter fail."

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v2, v1}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_27

    .line 79
    :goto_34
    monitor-exit p0

    return-void

    :goto_36
    monitor-exit p0

    throw v0
.end method

.method public e()V
    .registers 2

    const/4 v0, 0x0

    .line 83
    sput-boolean v0, Lanet/channel/monitor/b;->k:Z

    return-void
.end method
