.class public Lcom/xiaomi/push/fu;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/fu$a;
    }
.end annotation


# instance fields
.field private a:I

.field private a:J

.field private a:Lcom/xiaomi/push/bk;

.field private a:Lcom/xiaomi/push/ft;

.field private a:Ljava/lang/String;

.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/fu;->a:Z

    invoke-static {}, Lcom/xiaomi/push/bk;->a()Lcom/xiaomi/push/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/push/fu;->a:Lcom/xiaomi/push/bk;

    return-void
.end method

.method private a(Lcom/xiaomi/push/bk$a;)Lcom/xiaomi/push/fn;
    .registers 4

    iget v0, p1, Lcom/xiaomi/push/bk$a;->a:I

    if-nez v0, :cond_11

    iget-object v0, p1, Lcom/xiaomi/push/bk$a;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/xiaomi/push/fn;

    if-eqz v0, :cond_f

    iget-object p1, p1, Lcom/xiaomi/push/bk$a;->a:Ljava/lang/Object;

    check-cast p1, Lcom/xiaomi/push/fn;

    goto :goto_29

    :cond_f
    const/4 p1, 0x0

    goto :goto_29

    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fn;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/fm;->k:Lcom/xiaomi/push/fm;

    invoke-virtual {v1}, Lcom/xiaomi/push/fm;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fn;->a(I)Lcom/xiaomi/push/fn;

    iget v1, p1, Lcom/xiaomi/push/bk$a;->a:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fn;->c(I)Lcom/xiaomi/push/fn;

    iget-object p1, p1, Lcom/xiaomi/push/bk$a;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/fn;->c(Ljava/lang/String;)Lcom/xiaomi/push/fn;

    move-object p1, v0

    :goto_29
    return-object p1
.end method

.method private a(I)Lcom/xiaomi/push/fo;
    .registers 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/xiaomi/push/fo;

    iget-object v2, p0, Lcom/xiaomi/push/fu;->a:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/push/fo;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v2, p0, Lcom/xiaomi/push/fu;->a:Lcom/xiaomi/push/ft;

    iget-object v2, v2, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/push/bi;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/xiaomi/push/fu;->a:Lcom/xiaomi/push/ft;

    iget-object v2, v2, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v2}, Lcom/xiaomi/push/i;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/fo;->a(Ljava/lang/String;)Lcom/xiaomi/push/fo;

    :cond_21
    new-instance v2, Lcom/xiaomi/push/jz;

    invoke-direct {v2, p1}, Lcom/xiaomi/push/jz;-><init>(I)V

    new-instance v3, Lcom/xiaomi/push/jx$a;

    invoke-direct {v3}, Lcom/xiaomi/push/jx$a;-><init>()V

    invoke-virtual {v3, v2}, Lcom/xiaomi/push/jx$a;->a(Lcom/xiaomi/push/kb;)Lcom/xiaomi/push/jr;

    move-result-object v3

    :try_start_2f
    invoke-virtual {v1, v3}, Lcom/xiaomi/push/fo;->b(Lcom/xiaomi/push/jr;)V
    :try_end_32
    .catch Lcom/xiaomi/push/jl; {:try_start_2f .. :try_end_32} :catch_32

    :catch_32
    iget-object v4, p0, Lcom/xiaomi/push/fu;->a:Lcom/xiaomi/push/bk;

    invoke-virtual {v4}, Lcom/xiaomi/push/bk;->a()Ljava/util/LinkedList;

    move-result-object v4

    :goto_38
    :try_start_38
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_5d

    invoke-virtual {v4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/push/bk$a;

    invoke-direct {p0, v5}, Lcom/xiaomi/push/fu;->a(Lcom/xiaomi/push/bk$a;)Lcom/xiaomi/push/fn;

    move-result-object v5

    if-eqz v5, :cond_4d

    invoke-virtual {v5, v3}, Lcom/xiaomi/push/fn;->b(Lcom/xiaomi/push/jr;)V

    :cond_4d
    invoke-virtual {v2}, Lcom/xiaomi/push/jz;->a_()I

    move-result v6

    if-le v6, p1, :cond_54

    goto :goto_5d

    :cond_54
    if-eqz v5, :cond_59

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_59
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_5c
    .catch Ljava/util/NoSuchElementException; {:try_start_38 .. :try_end_5c} :catch_5d
    .catch Lcom/xiaomi/push/jl; {:try_start_38 .. :try_end_5c} :catch_5d

    goto :goto_38

    :catch_5d
    :cond_5d
    :goto_5d
    return-object v1
.end method

.method public static a()Lcom/xiaomi/push/ft;
    .registers 2

    sget-object v0, Lcom/xiaomi/push/fu$a;->a:Lcom/xiaomi/push/fu;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/xiaomi/push/fu$a;->a:Lcom/xiaomi/push/fu;

    iget-object v1, v1, Lcom/xiaomi/push/fu;->a:Lcom/xiaomi/push/ft;

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public static a()Lcom/xiaomi/push/fu;
    .registers 1

    sget-object v0, Lcom/xiaomi/push/fu$a;->a:Lcom/xiaomi/push/fu;

    return-object v0
.end method

.method private a()V
    .registers 5

    iget-boolean v0, p0, Lcom/xiaomi/push/fu;->a:Z

    if-eqz v0, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/fu;->a:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/xiaomi/push/fu;->a:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_19

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/fu;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/fu;->a:J

    :cond_19
    return-void
.end method


# virtual methods
.method declared-synchronized a()Lcom/xiaomi/push/fn;
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/xiaomi/push/fn;

    invoke-direct {v0}, Lcom/xiaomi/push/fn;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/push/fu;->a:Lcom/xiaomi/push/ft;

    iget-object v1, v1, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/push/bi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fn;->a(Ljava/lang/String;)Lcom/xiaomi/push/fn;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/xiaomi/push/fn;->a:B

    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaomi/push/fn;->b:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/fn;->d(I)Lcom/xiaomi/push/fn;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-object v0

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a()Lcom/xiaomi/push/fo;
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/xiaomi/push/fu;->b()Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v0, 0x2ee

    iget-object v1, p0, Lcom/xiaomi/push/fu;->a:Lcom/xiaomi/push/ft;

    iget-object v1, v1, Lcom/xiaomi/push/ft;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v1}, Lcom/xiaomi/push/bi;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_16

    const/16 v0, 0x177

    :cond_16
    invoke-direct {p0, v0}, Lcom/xiaomi/push/fu;->a(I)Lcom/xiaomi/push/fo;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    return-object v0

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .registers 5

    if-lez p1, :cond_3b

    mul-int/lit16 p1, p1, 0x3e8

    const v0, 0x240c8400

    if-le p1, v0, :cond_a

    move p1, v0

    :cond_a
    iget v0, p0, Lcom/xiaomi/push/fu;->a:I

    if-ne v0, p1, :cond_12

    iget-boolean v0, p0, Lcom/xiaomi/push/fu;->a:Z

    if-nez v0, :cond_3b

    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/fu;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/fu;->a:J

    iput p1, p0, Lcom/xiaomi/push/fu;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable dot duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " start = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaomi/push/fu;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method declared-synchronized a(Lcom/xiaomi/push/fn;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/fu;->a:Lcom/xiaomi/push/bk;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/bk;->a(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/xiaomi/push/service/XMPushService;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/xiaomi/push/ft;

    invoke-direct {v0, p1}, Lcom/xiaomi/push/ft;-><init>(Lcom/xiaomi/push/service/XMPushService;)V

    iput-object v0, p0, Lcom/xiaomi/push/fu;->a:Lcom/xiaomi/push/ft;

    const-string p1, ""

    iput-object p1, p0, Lcom/xiaomi/push/fu;->a:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/push/service/bs;->a()Lcom/xiaomi/push/service/bs;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/push/fv;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/fv;-><init>(Lcom/xiaomi/push/fu;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/service/bs;->a(Lcom/xiaomi/push/service/bs$a;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/fu;->a:Z

    return v0
.end method

.method b()Z
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/push/fu;->a()V

    iget-boolean v0, p0, Lcom/xiaomi/push/fu;->a:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/xiaomi/push/fu;->a:Lcom/xiaomi/push/bk;

    invoke-virtual {v0}, Lcom/xiaomi/push/bk;->a()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method
