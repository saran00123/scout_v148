.class public Lcom/vivo/push/PushClient;
.super Ljava/lang/Object;
.source "PushClient.java"


# annotations
.annotation build Lcom/vivo/push/NoPorGuard;
.end annotation


# static fields
.field public static final DEFAULT_REQUEST_ID:Ljava/lang/String; = "1"

.field private static volatile sPushClient:Lcom/vivo/push/PushClient;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/push/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method private checkParam(Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_3

    return-void

    .line 49
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PushManager String param should not be "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/vivo/push/PushClient;
    .registers 3

    const-class v0, Lcom/vivo/push/PushClient;

    monitor-enter v0

    .line 27
    :try_start_3
    sget-object v1, Lcom/vivo/push/PushClient;->sPushClient:Lcom/vivo/push/PushClient;

    if-nez v1, :cond_12

    .line 28
    new-instance v1, Lcom/vivo/push/PushClient;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/vivo/push/PushClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/vivo/push/PushClient;->sPushClient:Lcom/vivo/push/PushClient;

    .line 30
    :cond_12
    sget-object p0, Lcom/vivo/push/PushClient;->sPushClient:Lcom/vivo/push/PushClient;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v0

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public bindAlias(Ljava/lang/String;Lcom/vivo/push/IPushActionListener;)V
    .registers 9

    .line 58
    invoke-direct {p0, p1}, Lcom/vivo/push/PushClient;->checkParam(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    .line 2527
    iget-object v1, v0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    if-nez v1, :cond_13

    if-eqz p2, :cond_12

    const/16 p1, 0x66

    .line 2529
    invoke-interface {p2, p1}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_12
    return-void

    .line 2533
    :cond_13
    iget-object v1, v0, Lcom/vivo/push/d;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    iget-object v1, v0, Lcom/vivo/push/d;->i:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    if-eqz p2, :cond_29

    .line 2535
    invoke-interface {p2, v2}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_29
    return-void

    .line 2539
    :cond_2a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2540
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2541
    new-instance v3, Lcom/vivo/push/b/a;

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/vivo/push/b/a;-><init>(ZLjava/lang/String;Ljava/util/ArrayList;)V

    const/16 v1, 0x64

    .line 3045
    iput v1, v3, Lcom/vivo/push/b/c;->h:I

    .line 2543
    iget-boolean v1, v0, Lcom/vivo/push/d;->j:Z

    if-eqz v1, :cond_a7

    .line 2545
    invoke-virtual {v0}, Lcom/vivo/push/d;->f()Z

    move-result v1

    if-nez v1, :cond_54

    if-eqz p2, :cond_53

    const/16 p1, 0x65

    .line 2547
    invoke-interface {p2, p1}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_53
    return-void

    .line 2551
    :cond_54
    iget-wide v1, v0, Lcom/vivo/push/d;->c:J

    invoke-static {v1, v2}, Lcom/vivo/push/d;->a(J)Z

    move-result v1

    if-nez v1, :cond_64

    if-eqz p2, :cond_63

    const/16 p1, 0x3ea

    .line 2553
    invoke-interface {p2, p1}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_63
    return-void

    .line 2557
    :cond_64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vivo/push/d;->c:J

    .line 2559
    new-instance v1, Lcom/vivo/push/d$a;

    invoke-direct {v1, v3, p2}, Lcom/vivo/push/d$a;-><init>(Lcom/vivo/push/b/c;Lcom/vivo/push/IPushActionListener;)V

    invoke-virtual {v0, v1}, Lcom/vivo/push/d;->a(Lcom/vivo/push/d$a;)Ljava/lang/String;

    move-result-object p2

    .line 3119
    iput-object p2, v3, Lcom/vivo/push/b/c;->e:Ljava/lang/String;

    .line 2561
    iget-object v1, v0, Lcom/vivo/push/d;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_83

    const/16 p1, 0x7531

    .line 2562
    invoke-virtual {v0, p2, p1}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    return-void

    .line 2565
    :cond_83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8f

    const/16 p1, 0x7532

    .line 2566
    invoke-virtual {v0, p2, p1}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    return-void

    .line 2569
    :cond_8f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v4, 0x46

    cmp-long p1, v1, v4

    if-lez p1, :cond_a0

    const/16 p1, 0x7533

    .line 2570
    invoke-virtual {v0, p2, p1}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    return-void

    .line 2573
    :cond_a0
    invoke-virtual {v0, v3}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    .line 2574
    invoke-virtual {v0, p2}, Lcom/vivo/push/d;->c(Ljava/lang/String;)V

    return-void

    .line 2576
    :cond_a7
    invoke-virtual {v0, v3}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    if-eqz p2, :cond_af

    .line 2578
    invoke-interface {p2, v2}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_af
    return-void
.end method

.method public checkManifest()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vivo/push/util/VivoPushException;
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    .line 2143
    iget-object v1, v0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    if-eqz v1, :cond_d

    .line 2144
    iget-object v0, v0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/push/util/y;->c(Landroid/content/Context;)V

    :cond_d
    return-void
.end method

.method public delTopic(Ljava/lang/String;Lcom/vivo/push/IPushActionListener;)V
    .registers 5

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 106
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/vivo/push/d;->b(Ljava/util/ArrayList;Lcom/vivo/push/IPushActionListener;)V

    return-void
.end method

.method public getAlias()Ljava/lang/String;
    .registers 2

    .line 87
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    .line 14666
    iget-object v0, v0, Lcom/vivo/push/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getRegId()Ljava/lang/String;
    .registers 2

    .line 91
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/push/d;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopics()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/push/d;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "2.9.0.0"

    return-object v0
.end method

.method public initialize()V
    .registers 3

    .line 38
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    .line 1299
    new-instance v1, Lcom/vivo/push/b/f;

    invoke-direct {v1}, Lcom/vivo/push/b/f;-><init>()V

    .line 1300
    invoke-virtual {v0, v1}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    return-void
.end method

.method public isSupport()Z
    .registers 2

    .line 124
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/push/d;->c()Z

    move-result v0

    return v0
.end method

.method public setSystemModel(Z)V
    .registers 3

    .line 120
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    .line 15282
    iput-boolean p1, v0, Lcom/vivo/push/d;->f:Z

    return-void
.end method

.method public setTopic(Ljava/lang/String;Lcom/vivo/push/IPushActionListener;)V
    .registers 5

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/vivo/push/d;->a(Ljava/util/ArrayList;Lcom/vivo/push/IPushActionListener;)V

    return-void
.end method

.method public turnOffPush(Lcom/vivo/push/IPushActionListener;)V
    .registers 8

    .line 83
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    .line 10408
    iget-object v1, v0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    const/16 v2, 0x66

    if-nez v1, :cond_10

    if-eqz p1, :cond_f

    .line 10410
    invoke-interface {p1, v2}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_f
    return-void

    .line 10415
    :cond_10
    iget-object v1, v0, Lcom/vivo/push/d;->h:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1f

    .line 10416
    invoke-interface {p1, v3}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    return-void

    .line 10420
    :cond_1f
    iget-wide v4, v0, Lcom/vivo/push/d;->b:J

    invoke-static {v4, v5}, Lcom/vivo/push/d;->a(J)Z

    move-result v1

    if-nez v1, :cond_2f

    if-eqz p1, :cond_2e

    const/16 v0, 0x3ea

    .line 10422
    invoke-interface {p1, v0}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_2e
    return-void

    .line 10426
    :cond_2f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/vivo/push/d;->b:J

    .line 10428
    iget-object v1, v0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 10454
    iget-object v4, v0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    const/4 v5, 0x0

    if-nez v4, :cond_46

    if-eqz p1, :cond_82

    .line 10456
    invoke-interface {p1, v2}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    goto :goto_82

    .line 10460
    :cond_46
    new-instance v2, Lcom/vivo/push/b/b;

    invoke-direct {v2, v3, v1}, Lcom/vivo/push/b/b;-><init>(ZLjava/lang/String;)V

    .line 11046
    iput-object v5, v2, Lcom/vivo/push/b/b;->d:Ljava/lang/String;

    .line 11054
    iput-object v5, v2, Lcom/vivo/push/b/b;->c:Ljava/lang/String;

    .line 12053
    iput-object v5, v2, Lcom/vivo/push/b/c;->i:Ljava/lang/String;

    const/16 v1, 0x64

    .line 13045
    iput v1, v2, Lcom/vivo/push/b/c;->h:I

    .line 10465
    iget-boolean v1, v0, Lcom/vivo/push/d;->j:Z

    if-eqz v1, :cond_7a

    .line 10467
    invoke-virtual {v0}, Lcom/vivo/push/d;->f()Z

    move-result v1

    if-nez v1, :cond_67

    if-eqz p1, :cond_82

    const/16 v1, 0x65

    .line 10469
    invoke-interface {p1, v1}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    goto :goto_82

    .line 10474
    :cond_67
    new-instance v5, Lcom/vivo/push/d$a;

    invoke-direct {v5, v2, p1}, Lcom/vivo/push/d$a;-><init>(Lcom/vivo/push/b/c;Lcom/vivo/push/IPushActionListener;)V

    .line 10475
    invoke-virtual {v0, v5}, Lcom/vivo/push/d;->a(Lcom/vivo/push/d$a;)Ljava/lang/String;

    move-result-object p1

    .line 13119
    iput-object p1, v2, Lcom/vivo/push/b/c;->e:Ljava/lang/String;

    .line 10477
    new-instance v1, Lcom/vivo/push/d$4;

    invoke-direct {v1, v0, v2, p1}, Lcom/vivo/push/d$4;-><init>(Lcom/vivo/push/d;Lcom/vivo/push/b/b;Ljava/lang/String;)V

    .line 14067
    iput-object v1, v5, Lcom/vivo/push/d$a;->b:Ljava/lang/Runnable;

    goto :goto_82

    .line 10487
    :cond_7a
    invoke-virtual {v0, v2}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    if-eqz p1, :cond_82

    .line 10489
    invoke-interface {p1, v3}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_82
    :goto_82
    if-eqz v5, :cond_8e

    .line 10432
    new-instance p1, Lcom/vivo/push/d$3;

    invoke-direct {p1, v0}, Lcom/vivo/push/d$3;-><init>(Lcom/vivo/push/d;)V

    .line 14079
    iput-object p1, v5, Lcom/vivo/push/d$a;->a:Lcom/vivo/push/IPushActionListener;

    .line 10449
    invoke-virtual {v5}, Lcom/vivo/push/d$a;->a()V

    :cond_8e
    return-void
.end method

.method public turnOnPush(Lcom/vivo/push/IPushActionListener;)V
    .registers 13

    .line 75
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    .line 4310
    iget-object v1, v0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    const/16 v2, 0x66

    if-nez v1, :cond_10

    if-eqz p1, :cond_f

    .line 4312
    invoke-interface {p1, v2}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_f
    return-void

    .line 4317
    :cond_10
    invoke-virtual {v0}, Lcom/vivo/push/d;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vivo/push/d;->h:Ljava/lang/String;

    .line 4318
    iget-object v1, v0, Lcom/vivo/push/d;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_25

    if-eqz p1, :cond_24

    .line 4320
    invoke-interface {p1, v3}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_24
    return-void

    .line 4325
    :cond_25
    iget-wide v4, v0, Lcom/vivo/push/d;->a:J

    invoke-static {v4, v5}, Lcom/vivo/push/d;->a(J)Z

    move-result v1

    if-nez v1, :cond_35

    if-eqz p1, :cond_34

    const/16 v0, 0x3ea

    .line 4327
    invoke-interface {p1, v0}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_34
    return-void

    .line 4331
    :cond_35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/vivo/push/d;->a:J

    .line 4333
    iget-object v1, v0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4359
    iget-object v4, v0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    const/4 v5, 0x0

    if-nez v4, :cond_4d

    if-eqz p1, :cond_ca

    .line 4361
    invoke-interface {p1, v2}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    goto/16 :goto_ca

    .line 4365
    :cond_4d
    new-instance v2, Lcom/vivo/push/b/b;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v1}, Lcom/vivo/push/b/b;-><init>(ZLjava/lang/String;)V

    .line 5053
    iput-object v5, v2, Lcom/vivo/push/b/c;->i:Ljava/lang/String;

    .line 6046
    iput-object v5, v2, Lcom/vivo/push/b/b;->d:Ljava/lang/String;

    .line 6054
    iput-object v5, v2, Lcom/vivo/push/b/b;->c:Ljava/lang/String;

    const/16 v1, 0x64

    .line 7045
    iput v1, v2, Lcom/vivo/push/b/c;->h:I

    .line 4371
    iget-boolean v1, v0, Lcom/vivo/push/d;->j:Z

    if-eqz v1, :cond_74

    .line 4373
    invoke-virtual {v0}, Lcom/vivo/push/d;->f()Z

    move-result v1

    if-nez v1, :cond_6f

    if-eqz p1, :cond_ca

    const/16 v1, 0x65

    .line 4375
    invoke-interface {p1, v1}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    goto :goto_ca

    .line 4379
    :cond_6f
    invoke-virtual {v0, v2, p1}, Lcom/vivo/push/d;->a(Lcom/vivo/push/b/b;Lcom/vivo/push/IPushActionListener;)Lcom/vivo/push/d$a;

    move-result-object v5

    goto :goto_ca

    .line 4381
    :cond_74
    iget-object v1, v0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    .line 7063
    iget v6, v2, Lcom/vivo/push/b/c;->g:I

    const/4 v7, 0x2

    const/4 v8, -0x1

    if-ne v6, v8, :cond_b9

    .line 7064
    iget-object v6, v2, Lcom/vivo/push/b/c;->f:Ljava/lang/String;

    .line 7065
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9a

    const-string v6, "BaseAppCommand"

    const-string v9, "pkg name is null"

    .line 7066
    invoke-static {v6, v9}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 8026
    iget-object v9, v2, Lcom/vivo/push/g;->b:Ljava/lang/String;

    .line 7069
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_99

    const-string v1, "src is null"

    .line 7070
    invoke-static {v6, v1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    :cond_99
    move-object v6, v9

    :cond_9a
    const-string v9, "com.vivo.pushservice.action.RECEIVE"

    .line 8442
    invoke-static {v1, v6, v9}, Lcom/vivo/push/util/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a3

    move v8, v3

    :cond_a3
    const-string v9, "com.vivo.pushclient.action.RECEIVE"

    .line 9438
    invoke-static {v1, v6, v9}, Lcom/vivo/push/util/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ac

    goto :goto_ad

    :cond_ac
    move v4, v8

    .line 7074
    :goto_ad
    iput v4, v2, Lcom/vivo/push/b/c;->g:I

    .line 10049
    iget-object v1, v2, Lcom/vivo/push/b/c;->i:Ljava/lang/String;

    .line 7076
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b9

    .line 7077
    iput v7, v2, Lcom/vivo/push/b/c;->g:I

    .line 7082
    :cond_b9
    iget v8, v2, Lcom/vivo/push/b/c;->g:I

    :goto_bb
    if-ne v8, v7, :cond_c2

    .line 4382
    invoke-virtual {v0, v2, p1}, Lcom/vivo/push/d;->a(Lcom/vivo/push/b/b;Lcom/vivo/push/IPushActionListener;)Lcom/vivo/push/d$a;

    move-result-object v5

    goto :goto_ca

    .line 4384
    :cond_c2
    invoke-virtual {v0, v2}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    if-eqz p1, :cond_ca

    .line 4386
    invoke-interface {p1, v3}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_ca
    :goto_ca
    if-eqz v5, :cond_d6

    .line 4337
    new-instance p1, Lcom/vivo/push/d$1;

    invoke-direct {p1, v0, v5}, Lcom/vivo/push/d$1;-><init>(Lcom/vivo/push/d;Lcom/vivo/push/d$a;)V

    .line 10079
    iput-object p1, v5, Lcom/vivo/push/d$a;->a:Lcom/vivo/push/IPushActionListener;

    .line 4354
    invoke-virtual {v5}, Lcom/vivo/push/d$a;->a()V

    :cond_d6
    return-void
.end method

.method public unBindAlias(Ljava/lang/String;Lcom/vivo/push/IPushActionListener;)V
    .registers 9

    .line 67
    invoke-direct {p0, p1}, Lcom/vivo/push/PushClient;->checkParam(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object v0

    .line 3609
    iget-object v1, v0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    if-nez v1, :cond_13

    if-eqz p2, :cond_12

    const/16 p1, 0x66

    .line 3611
    invoke-interface {p2, p1}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_12
    return-void

    .line 3615
    :cond_13
    iget-object v1, v0, Lcom/vivo/push/d;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    if-eqz p2, :cond_21

    .line 3617
    invoke-interface {p2, v2}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_21
    return-void

    .line 3621
    :cond_22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3622
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3623
    new-instance v3, Lcom/vivo/push/b/a;

    iget-object v4, v0, Lcom/vivo/push/d;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4, v1}, Lcom/vivo/push/b/a;-><init>(ZLjava/lang/String;Ljava/util/ArrayList;)V

    const/16 v1, 0x64

    .line 4045
    iput v1, v3, Lcom/vivo/push/b/c;->h:I

    .line 3625
    iget-boolean v1, v0, Lcom/vivo/push/d;->j:Z

    if-eqz v1, :cond_9e

    .line 3627
    invoke-virtual {v0}, Lcom/vivo/push/d;->f()Z

    move-result v1

    if-nez v1, :cond_4b

    if-eqz p2, :cond_4a

    const/16 p1, 0x65

    .line 3629
    invoke-interface {p2, p1}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_4a
    return-void

    .line 3633
    :cond_4b
    iget-wide v1, v0, Lcom/vivo/push/d;->d:J

    invoke-static {v1, v2}, Lcom/vivo/push/d;->a(J)Z

    move-result v1

    if-nez v1, :cond_5b

    if-eqz p2, :cond_5a

    const/16 p1, 0x3ea

    .line 3635
    invoke-interface {p2, p1}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_5a
    return-void

    .line 3639
    :cond_5b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vivo/push/d;->d:J

    .line 3641
    new-instance v1, Lcom/vivo/push/d$a;

    invoke-direct {v1, v3, p2}, Lcom/vivo/push/d$a;-><init>(Lcom/vivo/push/b/c;Lcom/vivo/push/IPushActionListener;)V

    invoke-virtual {v0, v1}, Lcom/vivo/push/d;->a(Lcom/vivo/push/d$a;)Ljava/lang/String;

    move-result-object p2

    .line 4119
    iput-object p2, v3, Lcom/vivo/push/b/c;->e:Ljava/lang/String;

    .line 3643
    iget-object v1, v0, Lcom/vivo/push/d;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7a

    const/16 p1, 0x7531

    .line 3644
    invoke-virtual {v0, p2, p1}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    return-void

    .line 3647
    :cond_7a
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_86

    const/16 p1, 0x7532

    .line 3648
    invoke-virtual {v0, p2, p1}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    return-void

    .line 3651
    :cond_86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    int-to-long v1, p1

    const-wide/16 v4, 0x46

    cmp-long p1, v1, v4

    if-lez p1, :cond_97

    const/16 p1, 0x7533

    .line 3652
    invoke-virtual {v0, p2, p1}, Lcom/vivo/push/d;->a(Ljava/lang/String;I)V

    return-void

    .line 3655
    :cond_97
    invoke-virtual {v0, v3}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    .line 3656
    invoke-virtual {v0, p2}, Lcom/vivo/push/d;->c(Ljava/lang/String;)V

    return-void

    .line 3658
    :cond_9e
    invoke-virtual {v0, v3}, Lcom/vivo/push/d;->a(Lcom/vivo/push/g;)V

    if-eqz p2, :cond_a6

    .line 3660
    invoke-interface {p2, v2}, Lcom/vivo/push/IPushActionListener;->onStateChanged(I)V

    :cond_a6
    return-void
.end method
