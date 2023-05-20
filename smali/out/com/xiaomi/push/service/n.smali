.class public Lcom/xiaomi/push/service/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/n$c;,
        Lcom/xiaomi/push/service/n$a;,
        Lcom/xiaomi/push/service/n$b;,
        Lcom/xiaomi/push/service/n$d;
    }
.end annotation


# static fields
.field private static a:J

.field private static b:J

.field private static c:J


# instance fields
.field private final a:Lcom/xiaomi/push/service/n$a;

.field private final a:Lcom/xiaomi/push/service/n$c;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :cond_e
    sput-wide v2, Lcom/xiaomi/push/service/n;->a:J

    sget-wide v0, Lcom/xiaomi/push/service/n;->a:J

    sput-wide v0, Lcom/xiaomi/push/service/n;->b:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/service/n;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/push/service/n;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_16

    new-instance v0, Lcom/xiaomi/push/service/n$c;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/push/service/n$c;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/n$c;

    new-instance p1, Lcom/xiaomi/push/service/n$a;

    iget-object p2, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/n$c;

    invoke-direct {p1, p2}, Lcom/xiaomi/push/service/n$a;-><init>(Lcom/xiaomi/push/service/n$c;)V

    iput-object p1, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/n$a;

    return-void

    :cond_16
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Z)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaomi/push/service/n;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/push/service/n;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method static declared-synchronized a()J
    .registers 7

    const-class v0, Lcom/xiaomi/push/service/n;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lcom/xiaomi/push/service/n;->b:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_16

    sget-wide v3, Lcom/xiaomi/push/service/n;->a:J

    sget-wide v5, Lcom/xiaomi/push/service/n;->b:J

    sub-long v5, v1, v5

    add-long/2addr v3, v5

    sput-wide v3, Lcom/xiaomi/push/service/n;->a:J

    :cond_16
    sput-wide v1, Lcom/xiaomi/push/service/n;->b:J

    sget-wide v1, Lcom/xiaomi/push/service/n;->a:J
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-wide v1

    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized b()J
    .registers 5

    const-class v0, Lcom/xiaomi/push/service/n;

    monitor-enter v0

    :try_start_3
    sget-wide v1, Lcom/xiaomi/push/service/n;->c:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lcom/xiaomi/push/service/n;->c:J
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-wide v1

    :catchall_c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Lcom/xiaomi/push/service/n$b;J)V
    .registers 7

    iget-object v0, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/n$c;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/n$c;

    invoke-static {v1}, Lcom/xiaomi/push/service/n$c;->a(Lcom/xiaomi/push/service/n$c;)Z

    move-result v1

    if-nez v1, :cond_41

    invoke-static {}, Lcom/xiaomi/push/service/n;->a()J

    move-result-wide v1

    add-long/2addr p2, v1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-ltz v1, :cond_2a

    new-instance v1, Lcom/xiaomi/push/service/n$d;

    invoke-direct {v1}, Lcom/xiaomi/push/service/n$d;-><init>()V

    iget v2, p1, Lcom/xiaomi/push/service/n$b;->a:I

    iput v2, v1, Lcom/xiaomi/push/service/n$d;->a:I

    iput-object p1, v1, Lcom/xiaomi/push/service/n$d;->a:Lcom/xiaomi/push/service/n$b;

    iput-wide p2, v1, Lcom/xiaomi/push/service/n$d;->a:J

    iget-object p1, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/n$c;

    invoke-static {p1, v1}, Lcom/xiaomi/push/service/n$c;->a(Lcom/xiaomi/push/service/n$c;Lcom/xiaomi/push/service/n$d;)V

    monitor-exit v0

    return-void

    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal delay to start the TimerTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_41
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Timer was canceled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_49
    move-exception p1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw p1
.end method


# virtual methods
.method public a()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "quit. finalizer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/n$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/n$c;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/n$c;->a()V

    return-void
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/n$c;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/n$c;

    invoke-static {v1}, Lcom/xiaomi/push/service/n$c;->a(Lcom/xiaomi/push/service/n$c;)Lcom/xiaomi/push/service/n$c$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/service/n$c$a;->a(I)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public a(ILcom/xiaomi/push/service/n$b;)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/n$c;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/n$c;

    invoke-static {v1}, Lcom/xiaomi/push/service/n$c;->a(Lcom/xiaomi/push/service/n$c;)Lcom/xiaomi/push/service/n$c$a;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/xiaomi/push/service/n$c$a;->a(ILcom/xiaomi/push/service/n$b;)V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public a(Lcom/xiaomi/push/service/n$b;)V
    .registers 4

    invoke-static {}, Lcom/xiaomi/channel/commonutils/logger/b;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1d

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/n$c;

    if-ne v0, v1, :cond_10

    goto :goto_1d

    :cond_10
    const-string p1, "run job outside job job thread"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    const-string v0, "Run job outside job thread"

    invoke-direct {p1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1d
    :goto_1d
    invoke-virtual {p1}, Lcom/xiaomi/push/service/n$b;->run()V

    return-void
.end method

.method public a(Lcom/xiaomi/push/service/n$b;J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_a

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/service/n;->b(Lcom/xiaomi/push/service/n$b;J)V

    return-void

    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delay < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Z
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/n$c;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/n$c;->a()Z

    move-result v0

    return v0
.end method

.method public a(I)Z
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/n$c;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/n$c;

    invoke-static {v1}, Lcom/xiaomi/push/service/n$c;->a(Lcom/xiaomi/push/service/n$c;)Lcom/xiaomi/push/service/n$c$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaomi/push/service/n$c$a;->a(I)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/n$c;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/push/service/n;->a:Lcom/xiaomi/push/service/n$c;

    invoke-static {v1}, Lcom/xiaomi/push/service/n$c;->a(Lcom/xiaomi/push/service/n$c;)Lcom/xiaomi/push/service/n$c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/push/service/n$c$a;->a()V

    monitor-exit v0

    return-void

    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
