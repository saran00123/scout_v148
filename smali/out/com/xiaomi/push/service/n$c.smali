.class final Lcom/xiaomi/push/service/n$c;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/n$c$a;
    }
.end annotation


# instance fields
.field private volatile a:J

.field private a:Lcom/xiaomi/push/service/n$c$a;

.field private volatile a:Z

.field private b:J

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/service/n$c;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/service/n$c;->a:Z

    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/xiaomi/push/service/n$c;->b:J

    new-instance v0, Lcom/xiaomi/push/service/n$c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/push/service/n$c$a;-><init>(Lcom/xiaomi/push/service/o;)V

    iput-object v0, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/n$c;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/xiaomi/push/service/n$c;->setDaemon(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/n$c;->start()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/n$c;)Lcom/xiaomi/push/service/n$c$a;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/n$c;Lcom/xiaomi/push/service/n$d;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/n$c;->a(Lcom/xiaomi/push/service/n$d;)V

    return-void
.end method

.method private a(Lcom/xiaomi/push/service/n$d;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/service/n$c$a;->a(Lcom/xiaomi/push/service/n$d;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/service/n$c;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/xiaomi/push/service/n$c;->b:Z

    return p0
.end method

.method static synthetic a(Lcom/xiaomi/push/service/n$c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/xiaomi/push/service/n$c;->c:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/xiaomi/push/service/n$c;->b:Z

    iget-object v0, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/n$c$a;->a()V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Z
    .registers 5

    iget-boolean v0, p0, Lcom/xiaomi/push/service/n$c;->a:Z

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/service/n$c;->a:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public run()V
    .registers 11

    :goto_0
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/xiaomi/push/service/n$c;->b:Z

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/n$c$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/xiaomi/push/service/n$c;->c:Z

    if-eqz v0, :cond_15

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_b5

    return-void

    :cond_15
    :try_start_15
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_18} :catch_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_b5

    :catch_18
    :goto_18
    :try_start_18
    monitor-exit p0

    goto :goto_0

    :cond_1a
    invoke-static {}, Lcom/xiaomi/push/service/n;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/n$c$a;->a()Lcom/xiaomi/push/service/n$d;

    move-result-object v2

    iget-object v3, v2, Lcom/xiaomi/push/service/n$d;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_27
    .catchall {:try_start_18 .. :try_end_27} :catchall_b5

    :try_start_27
    iget-boolean v4, v2, Lcom/xiaomi/push/service/n$d;->a:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_33

    iget-object v0, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-virtual {v0, v5}, Lcom/xiaomi/push/service/n$c$a;->b(I)V

    monitor-exit v3

    goto :goto_18

    :cond_33
    iget-wide v6, v2, Lcom/xiaomi/push/service/n$d;->a:J

    sub-long/2addr v6, v0

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_b2

    const-wide/16 v0, 0x0

    cmp-long v3, v6, v0

    const-wide/16 v8, 0x32

    if-lez v3, :cond_5a

    :try_start_3f
    iget-wide v0, p0, Lcom/xiaomi/push/service/n$c;->b:J

    cmp-long v0, v6, v0

    if-lez v0, :cond_47

    iget-wide v6, p0, Lcom/xiaomi/push/service/n$c;->b:J

    :cond_47
    iget-wide v0, p0, Lcom/xiaomi/push/service/n$c;->b:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/xiaomi/push/service/n$c;->b:J

    iget-wide v0, p0, Lcom/xiaomi/push/service/n$c;->b:J

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_56

    iput-wide v2, p0, Lcom/xiaomi/push/service/n$c;->b:J
    :try_end_56
    .catchall {:try_start_3f .. :try_end_56} :catchall_b5

    :cond_56
    :try_start_56
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_59} :catch_18
    .catchall {:try_start_56 .. :try_end_59} :catchall_b5

    goto :goto_18

    :cond_5a
    :try_start_5a
    iput-wide v8, p0, Lcom/xiaomi/push/service/n$c;->b:J

    iget-object v3, v2, Lcom/xiaomi/push/service/n$d;->a:Ljava/lang/Object;

    monitor-enter v3
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_b5

    :try_start_5f
    iget-object v4, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-virtual {v4}, Lcom/xiaomi/push/service/n$c$a;->a()Lcom/xiaomi/push/service/n$d;

    move-result-object v4

    iget-wide v6, v4, Lcom/xiaomi/push/service/n$d;->a:J

    iget-wide v8, v2, Lcom/xiaomi/push/service/n$d;->a:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_74

    iget-object v4, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-static {v4, v2}, Lcom/xiaomi/push/service/n$c$a;->a(Lcom/xiaomi/push/service/n$c$a;Lcom/xiaomi/push/service/n$d;)I

    move-result v4

    goto :goto_75

    :cond_74
    move v4, v5

    :goto_75
    iget-boolean v6, v2, Lcom/xiaomi/push/service/n$d;->a:Z

    if-eqz v6, :cond_86

    iget-object v0, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    iget-object v1, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-static {v1, v2}, Lcom/xiaomi/push/service/n$c$a;->a(Lcom/xiaomi/push/service/n$c$a;Lcom/xiaomi/push/service/n$d;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/service/n$c$a;->b(I)V

    monitor-exit v3

    goto :goto_18

    :cond_86
    iget-wide v6, v2, Lcom/xiaomi/push/service/n$d;->a:J

    invoke-virtual {v2, v6, v7}, Lcom/xiaomi/push/service/n$d;->a(J)V

    iget-object v6, p0, Lcom/xiaomi/push/service/n$c;->a:Lcom/xiaomi/push/service/n$c$a;

    invoke-virtual {v6, v4}, Lcom/xiaomi/push/service/n$c$a;->b(I)V

    iput-wide v0, v2, Lcom/xiaomi/push/service/n$d;->a:J

    monitor-exit v3
    :try_end_93
    .catchall {:try_start_5f .. :try_end_93} :catchall_af

    :try_start_93
    monitor-exit p0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_b5

    const/4 v0, 0x1

    :try_start_95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/xiaomi/push/service/n$c;->a:J

    iput-boolean v0, p0, Lcom/xiaomi/push/service/n$c;->a:Z

    iget-object v1, v2, Lcom/xiaomi/push/service/n$d;->a:Lcom/xiaomi/push/service/n$b;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/n$b;->run()V

    iput-boolean v5, p0, Lcom/xiaomi/push/service/n$c;->a:Z
    :try_end_a4
    .catchall {:try_start_95 .. :try_end_a4} :catchall_a6

    goto/16 :goto_0

    :catchall_a6
    move-exception v1

    monitor-enter p0

    :try_start_a8
    iput-boolean v0, p0, Lcom/xiaomi/push/service/n$c;->b:Z

    monitor-exit p0
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_ac

    throw v1

    :catchall_ac
    move-exception v0

    :try_start_ad
    monitor-exit p0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw v0

    :catchall_af
    move-exception v0

    :try_start_b0
    monitor-exit v3
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    :try_start_b1
    throw v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b5

    :catchall_b2
    move-exception v0

    :try_start_b3
    monitor-exit v3
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    :try_start_b4
    throw v0

    :catchall_b5
    move-exception v0

    monitor-exit p0
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b5

    throw v0
.end method
