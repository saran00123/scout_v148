.class public Lcom/xiaomi/push/ft;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/gm;


# instance fields
.field private a:I

.field private a:J

.field a:Lcom/xiaomi/push/gj;

.field a:Lcom/xiaomi/push/service/XMPushService;

.field private a:Ljava/lang/Exception;

.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->a:J

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->b:J

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->c:J

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->d:J

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->e:J

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->f:J

    iput-object p1, p0, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;

    const-string p1, ""

    iput-object p1, p0, Lcom/xiaomi/push/ft;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/push/ft;->b()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    :try_start_1e
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->f:J

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->e:J
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2a} :catch_2b

    goto :goto_46

    :catch_2b
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to obtain traffic data during initialization: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->f:J

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->e:J

    :goto_46
    return-void
.end method

.method private b()V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->b:J

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->d:J

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->a:J

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->c:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/push/bi;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_18

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->a:J

    :cond_18
    iget-object v2, p0, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v2}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result v2

    if-eqz v2, :cond_22

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->c:J

    :cond_22
    return-void
.end method

.method private declared-synchronized c()V
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stat connpt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaomi/push/ft;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " netDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/push/ft;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ChannelDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/push/ft;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " channelConnectedTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/push/ft;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/push/fn;

    invoke-direct {v0}, Lcom/xiaomi/push/fn;-><init>()V

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/xiaomi/push/fn;->a:B

    sget-object v1, Lcom/xiaomi/push/fm;->h:Lcom/xiaomi/push/fm;

    invoke-virtual {v1}, Lcom/xiaomi/push/fm;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fn;->a(I)Lcom/xiaomi/push/fn;

    iget-object v1, p0, Lcom/xiaomi/push/ft;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fn;->a(Ljava/lang/String;)Lcom/xiaomi/push/fn;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fn;->d(I)Lcom/xiaomi/push/fn;

    iget-wide v1, p0, Lcom/xiaomi/push/ft;->b:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fn;->b(I)Lcom/xiaomi/push/fn;

    iget-wide v1, p0, Lcom/xiaomi/push/ft;->d:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fn;->c(I)Lcom/xiaomi/push/fn;

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/fu;->a(Lcom/xiaomi/push/fn;)V

    invoke-direct {p0}, Lcom/xiaomi/push/ft;->b()V
    :try_end_6e
    .catchall {:try_start_1 .. :try_end_6e} :catchall_70

    monitor-exit p0

    return-void

    :catchall_70
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method a()Ljava/lang/Exception;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/ft;->a:Ljava/lang/Exception;

    return-object v0
.end method

.method public declared-synchronized a()V
    .registers 11

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_6f

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/bi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/push/bi;->c(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/push/ft;->a:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2a

    iget-wide v4, p0, Lcom/xiaomi/push/ft;->b:J

    iget-wide v8, p0, Lcom/xiaomi/push/ft;->a:J

    sub-long v8, v2, v8

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/xiaomi/push/ft;->b:J

    iput-wide v6, p0, Lcom/xiaomi/push/ft;->a:J

    :cond_2a
    iget-wide v4, p0, Lcom/xiaomi/push/ft;->c:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3b

    iget-wide v4, p0, Lcom/xiaomi/push/ft;->d:J

    iget-wide v8, p0, Lcom/xiaomi/push/ft;->c:J

    sub-long v8, v2, v8

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/xiaomi/push/ft;->d:J

    iput-wide v6, p0, Lcom/xiaomi/push/ft;->c:J

    :cond_3b
    if-eqz v1, :cond_6d

    iget-object v1, p0, Lcom/xiaomi/push/ft;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    iget-wide v4, p0, Lcom/xiaomi/push/ft;->b:J

    const-wide/16 v8, 0x7530

    cmp-long v1, v4, v8

    if-gtz v1, :cond_56

    :cond_4d
    iget-wide v4, p0, Lcom/xiaomi/push/ft;->b:J

    const-wide/32 v8, 0x5265c0

    cmp-long v1, v4, v8

    if-lez v1, :cond_59

    :cond_56
    invoke-direct {p0}, Lcom/xiaomi/push/ft;->c()V

    :cond_59
    iput-object v0, p0, Lcom/xiaomi/push/ft;->a:Ljava/lang/String;

    iget-wide v0, p0, Lcom/xiaomi/push/ft;->a:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_63

    iput-wide v2, p0, Lcom/xiaomi/push/ft;->a:J

    :cond_63
    iget-object v0, p0, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result v0

    if-eqz v0, :cond_6d

    iput-wide v2, p0, Lcom/xiaomi/push/ft;->c:J
    :try_end_6d
    .catchall {:try_start_7 .. :try_end_6d} :catchall_6f

    :cond_6d
    monitor-exit p0

    return-void

    :catchall_6f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/xiaomi/push/gj;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/ft;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/push/ft;->a:Ljava/lang/Exception;

    iput-object p1, p0, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/gj;

    iget-object p1, p0, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {p1}, Lcom/xiaomi/push/bi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/push/ft;->a:Ljava/lang/String;

    sget-object p1, Lcom/xiaomi/push/fm;->v:Lcom/xiaomi/push/fm;

    invoke-virtual {p1}, Lcom/xiaomi/push/fm;->a()I

    move-result p1

    invoke-static {v0, p1}, Lcom/xiaomi/push/fw;->a(II)V

    return-void
.end method

.method public a(Lcom/xiaomi/push/gj;ILjava/lang/Exception;)V
    .registers 10

    iget v0, p0, Lcom/xiaomi/push/ft;->a:I

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/xiaomi/push/ft;->a:Ljava/lang/Exception;

    if-nez v0, :cond_13

    iput p2, p0, Lcom/xiaomi/push/ft;->a:I

    iput-object p3, p0, Lcom/xiaomi/push/ft;->a:Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/xiaomi/push/gj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/xiaomi/push/fw;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_13
    const/16 p3, 0x16

    if-ne p2, p3, :cond_3a

    iget-wide p2, p0, Lcom/xiaomi/push/ft;->c:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_3a

    invoke-virtual {p1}, Lcom/xiaomi/push/gj;->a()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/xiaomi/push/ft;->c:J

    sub-long/2addr p1, v2

    cmp-long p3, p1, v0

    if-gez p3, :cond_2b

    move-wide p1, v0

    :cond_2b
    invoke-static {}, Lcom/xiaomi/push/gp;->b()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-long v2, p3

    add-long/2addr p1, v2

    iget-wide v2, p0, Lcom/xiaomi/push/ft;->d:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/xiaomi/push/ft;->d:J

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->c:J

    :cond_3a
    invoke-virtual {p0}, Lcom/xiaomi/push/ft;->a()V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    const-wide/16 p2, -0x1

    :try_start_43
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide p2
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4b} :catch_4f

    move-wide v4, p2

    move-wide p2, v0

    move-wide v0, v4

    goto :goto_65

    :catch_4f
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to obtain traffic data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    move-wide v0, p2

    :goto_65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stats rx="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/push/ft;->f:J

    sub-long v2, p2, v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", tx="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/push/ft;->e:J

    sub-long v2, v0, v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    iput-wide p2, p0, Lcom/xiaomi/push/ft;->f:J

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->e:J

    return-void
.end method

.method public a(Lcom/xiaomi/push/gj;Ljava/lang/Exception;)V
    .registers 6

    iget-object p2, p0, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {p2}, Lcom/xiaomi/push/bi;->c(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    sget-object v1, Lcom/xiaomi/push/fm;->d:Lcom/xiaomi/push/fm;

    invoke-virtual {v1}, Lcom/xiaomi/push/fm;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/xiaomi/push/gj;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p1, p2}, Lcom/xiaomi/push/fw;->a(IIILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/xiaomi/push/ft;->a()V

    return-void
.end method

.method public b(Lcom/xiaomi/push/gj;)V
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/push/ft;->a()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/ft;->c:J

    sget-object v0, Lcom/xiaomi/push/fm;->v:Lcom/xiaomi/push/fm;

    invoke-virtual {v0}, Lcom/xiaomi/push/fm;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/push/gj;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaomi/push/gj;->a()I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, p1}, Lcom/xiaomi/push/fw;->a(IILjava/lang/String;I)V

    return-void
.end method
