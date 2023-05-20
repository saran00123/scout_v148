.class Lcom/taobao/accs/net/s$a;
.super Ljava/lang/Thread;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/net/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:I

.field b:J

.field final synthetic c:Lcom/taobao/accs/net/s;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taobao/accs/net/s;Ljava/lang/String;)V
    .registers 3

    .line 643
    iput-object p1, p0, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    .line 644
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Lcom/taobao/accs/net/s$a;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const/4 p1, 0x0

    .line 639
    iput p1, p0, Lcom/taobao/accs/net/s$a;->a:I

    return-void
.end method

.method private a(Z)V
    .registers 12

    .line 648
    iget-object v0, p0, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v0}, Lcom/taobao/accs/net/s;->b(Lcom/taobao/accs/net/s;)I

    move-result v0

    const-wide/16 v1, 0x1388

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_f8

    .line 649
    iget-object v0, p0, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-virtual {v0}, Lcom/taobao/accs/net/s;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "force"

    aput-object v7, v6, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v4

    const-string v8, "tryConnect"

    invoke-static {v0, v8, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 650
    iget-object v0, p0, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    iget-object v0, v0, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 651
    iget-object p1, p0, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "Network not available"

    invoke-static {p1, v1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_38
    if-eqz p1, :cond_3c

    .line 655
    iput v3, p0, Lcom/taobao/accs/net/s$a;->a:I

    .line 657
    :cond_3c
    iget-object v0, p0, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v7, v9, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v9, v4

    const-string p1, "failTimes"

    aput-object p1, v9, v5

    iget p1, p0, Lcom/taobao/accs/net/s$a;->a:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v7, 0x3

    aput-object p1, v9, v7

    invoke-static {v0, v8, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    iget-object p1, p0, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {p1}, Lcom/taobao/accs/net/s;->b(Lcom/taobao/accs/net/s;)I

    move-result p1

    if-eq p1, v4, :cond_7f

    iget p1, p0, Lcom/taobao/accs/net/s$a;->a:I

    if-lt p1, v6, :cond_7f

    .line 659
    iget-object p1, p0, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {p1, v4}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;Z)Z

    .line 660
    iget-object p1, p0, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "maxTimes"

    aput-object v1, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "tryConnect fail"

    invoke-static {p1, v1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_10d

    .line 661
    :cond_7f
    iget-object p1, p0, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {p1}, Lcom/taobao/accs/net/s;->b(Lcom/taobao/accs/net/s;)I

    move-result p1

    if-eq p1, v4, :cond_10d

    .line 662
    iget-object p1, p0, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    iget p1, p1, Lcom/taobao/accs/net/s;->c:I

    if-ne p1, v4, :cond_9b

    iget p1, p0, Lcom/taobao/accs/net/s$a;->a:I

    if-nez p1, :cond_9b

    .line 663
    iget-object p1, p0, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "tryConnect in app, no sleep"

    invoke-static {p1, v1, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ac

    .line 665
    :cond_9b
    iget-object p1, p0, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v5, "tryConnect, need sleep"

    invoke-static {p1, v5, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    :try_start_a4
    invoke-static {v1, v2}, Lcom/taobao/accs/net/s$a;->sleep(J)V
    :try_end_a7
    .catch Ljava/lang/InterruptedException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_ac

    :catch_a8
    move-exception p1

    .line 669
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 672
    :goto_ac
    iget-object p1, p0, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;Ljava/lang/String;)Ljava/lang/String;

    .line 674
    iget p1, p0, Lcom/taobao/accs/net/s$a;->a:I

    if-ne p1, v7, :cond_c6

    .line 675
    iget-object p1, p0, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {p1}, Lcom/taobao/accs/net/s;->e(Lcom/taobao/accs/net/s;)Lcom/taobao/accs/net/g;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-virtual {v0}, Lcom/taobao/accs/net/s;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/taobao/accs/net/g;->b(Ljava/lang/String;)V

    .line 677
    :cond_c6
    iget-object p1, p0, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/taobao/accs/net/s;->b(Lcom/taobao/accs/net/s;Ljava/lang/String;)V

    .line 678
    iget-object p1, p0, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {p1}, Lcom/taobao/accs/net/s;->c(Lcom/taobao/accs/net/s;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object p1

    iget v0, p0, Lcom/taobao/accs/net/s$a;->a:I

    invoke-virtual {p1, v0}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setRetryTimes(I)V

    .line 679
    iget-object p1, p0, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {p1}, Lcom/taobao/accs/net/s;->b(Lcom/taobao/accs/net/s;)I

    move-result p1

    if-eq p1, v4, :cond_f1

    .line 680
    iget p1, p0, Lcom/taobao/accs/net/s$a;->a:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/taobao/accs/net/s$a;->a:I

    .line 681
    iget-object p1, p0, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "try connect fail, ready for reconnect"

    invoke-static {p1, v1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    invoke-direct {p0, v3}, Lcom/taobao/accs/net/s$a;->a(Z)V

    goto :goto_10d

    .line 684
    :cond_f1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/net/s$a;->b:J

    goto :goto_10d

    .line 687
    :cond_f8
    iget-object p1, p0, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {p1}, Lcom/taobao/accs/net/s;->b(Lcom/taobao/accs/net/s;)I

    move-result p1

    if-ne p1, v4, :cond_10d

    .line 688
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/taobao/accs/net/s$a;->b:J

    sub-long/2addr v4, v6

    cmp-long p1, v4, v1

    if-lez p1, :cond_10d

    .line 689
    iput v3, p0, Lcom/taobao/accs/net/s$a;->a:I

    :cond_10d
    :goto_10d
    return-void
.end method


# virtual methods
.method public run()V
    .registers 22

    move-object/from16 v1, p0

    .line 696
    iget-object v2, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "NetworkThread run"

    invoke-static {v2, v5, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    iput v3, v1, Lcom/taobao/accs/net/s$a;->a:I

    const/4 v2, 0x0

    .line 699
    :cond_f
    :goto_f
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v4}, Lcom/taobao/accs/net/s;->f(Lcom/taobao/accs/net/s;)Z

    move-result v4

    if-eqz v4, :cond_524

    .line 700
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "ready to get message"

    invoke-static {v4, v6, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v4}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4

    .line 702
    :try_start_27
    iget-object v5, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v5}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_520

    if-nez v5, :cond_4e

    .line 704
    :try_start_33
    iget-object v5, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const-string v6, "no message, wait"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    iget-object v5, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v5}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_45} :catch_46
    .catchall {:try_start_33 .. :try_end_45} :catchall_520

    goto :goto_4e

    :catch_46
    move-exception v0

    move-object v2, v0

    .line 707
    :try_start_48
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 708
    monitor-exit v4

    goto/16 :goto_524

    .line 711
    :cond_4e
    :goto_4e
    iget-object v5, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const-string v6, "try get message"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    iget-object v5, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v5}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-eqz v5, :cond_7c

    .line 713
    iget-object v2, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v2}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/accs/data/Message;

    .line 714
    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v5

    if-eqz v5, :cond_7c

    .line 715
    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onTakeFromQueue()V

    .line 718
    :cond_7c
    monitor-exit v4
    :try_end_7d
    .catchall {:try_start_48 .. :try_end_7d} :catchall_520

    .line 719
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v4}, Lcom/taobao/accs/net/s;->f(Lcom/taobao/accs/net/s;)Z

    move-result v4

    if-nez v4, :cond_87

    goto/16 :goto_524

    :cond_87
    if-eqz v2, :cond_f

    .line 723
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "sendMessage not null"

    invoke-static {v4, v6, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v4, 0xc9

    const/16 v5, 0x64

    const/4 v6, 0x1

    .line 726
    :try_start_97
    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->a()I

    move-result v7

    .line 727
    iget-object v8, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const-string v9, "sendMessage"

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Object;

    const-string v12, "type"

    aput-object v12, v11, v3

    invoke-static {v7}, Lcom/taobao/accs/data/Message$c;->b(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    const-string v12, "status"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    iget-object v12, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v12}, Lcom/taobao/accs/net/s;->b(Lcom/taobao/accs/net/s;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v14, 0x3

    aput-object v12, v11, v14

    invoke-static {v8, v9, v11}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v7, v13, :cond_1bf

    .line 729
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    iget v7, v7, Lcom/taobao/accs/net/s;->c:I

    if-ne v7, v6, :cond_ff

    .line 730
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const-string v8, "sendMessage INAPP ping, skip"

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d2
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_d2} :catch_39a
    .catchall {:try_start_97 .. :try_end_d2} :catchall_395

    .line 814
    :try_start_d2
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const-string v5, "send succ, remove it"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 815
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v4}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4
    :try_end_e2
    .catch Ljava/lang/Throwable; {:try_start_d2 .. :try_end_e2} :catch_f2

    .line 816
    :try_start_e2
    iget-object v5, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v5}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 817
    monitor-exit v4

    goto/16 :goto_f

    :catchall_ee
    move-exception v0

    move-object v5, v0

    monitor-exit v4
    :try_end_f1
    .catchall {:try_start_e2 .. :try_end_f1} :catchall_ee

    :try_start_f1
    throw v5
    :try_end_f2
    .catch Ljava/lang/Throwable; {:try_start_f1 .. :try_end_f2} :catch_f2

    :catch_f2
    move-exception v0

    move-object v4, v0

    .line 820
    iget-object v5, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, " run finally error"

    invoke-static {v5, v7, v4, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 733
    :cond_ff
    :try_start_ff
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v9}, Lcom/taobao/accs/net/s;->g(Lcom/taobao/accs/net/s;)J

    move-result-wide v11

    sub-long/2addr v7, v11

    iget-object v9, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    iget-object v9, v9, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    invoke-static {v9}, Lcom/taobao/accs/net/f;->a(Landroid/content/Context;)Lcom/taobao/accs/net/f;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/accs/net/f;->b()I

    move-result v9

    sub-int/2addr v9, v6

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v11, v9

    cmp-long v7, v7, v11

    if-gez v7, :cond_128

    iget-boolean v7, v2, Lcom/taobao/accs/data/Message;->d:Z

    if-eqz v7, :cond_123

    goto :goto_128

    .line 750
    :cond_123
    invoke-direct {v1, v3}, Lcom/taobao/accs/net/s$a;->a(Z)V

    goto/16 :goto_2dc

    .line 734
    :cond_128
    :goto_128
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const-string v8, "sendMessage"

    new-array v9, v10, [Ljava/lang/Object;

    const-string v10, "force"

    aput-object v10, v9, v3

    iget-boolean v10, v2, Lcom/taobao/accs/data/Message;->d:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v6

    const-string v10, "last ping"

    aput-object v10, v9, v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v12}, Lcom/taobao/accs/net/s;->g(Lcom/taobao/accs/net/s;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v14

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    invoke-direct {v1, v6}, Lcom/taobao/accs/net/s$a;->a(Z)V

    .line 736
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v7}, Lcom/taobao/accs/net/s;->h(Lcom/taobao/accs/net/s;)Lorg/android/spdy/SpdySession;

    move-result-object v7

    if-eqz v7, :cond_2c4

    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v7}, Lcom/taobao/accs/net/s;->b(Lcom/taobao/accs/net/s;)I

    move-result v7

    if-ne v7, v6, :cond_2c4

    .line 737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v9}, Lcom/taobao/accs/net/s;->g(Lcom/taobao/accs/net/s;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    iget-object v9, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    iget-object v9, v9, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    invoke-static {v9}, Lcom/taobao/accs/net/f;->a(Landroid/content/Context;)Lcom/taobao/accs/net/f;

    move-result-object v9

    invoke-virtual {v9}, Lcom/taobao/accs/net/f;->b()I

    move-result v9

    sub-int/2addr v9, v6

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_2dc

    .line 738
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const-string v8, "sendMessage onSendPing"

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    iget-object v7, v7, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    invoke-virtual {v7}, Lcom/taobao/accs/data/d;->a()V

    .line 740
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v7}, Lcom/taobao/accs/net/s;->h(Lcom/taobao/accs/net/s;)Lorg/android/spdy/SpdySession;

    move-result-object v7

    invoke-virtual {v7}, Lorg/android/spdy/SpdySession;->submitPing()I

    .line 741
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v7}, Lcom/taobao/accs/net/s;->c(Lcom/taobao/accs/net/s;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->onSendPing()V

    .line 742
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;J)J

    .line 743
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/net/s;->b(Lcom/taobao/accs/net/s;J)J

    .line 744
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-virtual {v7}, Lcom/taobao/accs/net/s;->f()V

    goto/16 :goto_2dc

    :cond_1bf
    if-ne v7, v6, :cond_2c6

    .line 753
    invoke-direct {v1, v6}, Lcom/taobao/accs/net/s$a;->a(Z)V

    .line 754
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v7}, Lcom/taobao/accs/net/s;->b(Lcom/taobao/accs/net/s;)I

    move-result v7

    if-ne v7, v6, :cond_2c4

    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v7}, Lcom/taobao/accs/net/s;->h(Lcom/taobao/accs/net/s;)Lorg/android/spdy/SpdySession;

    move-result-object v7

    if-eqz v7, :cond_2c4

    .line 755
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    iget-object v7, v7, Lcom/taobao/accs/net/s;->d:Landroid/content/Context;

    iget-object v8, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    iget v8, v8, Lcom/taobao/accs/net/s;->c:I

    invoke-virtual {v2, v7, v8}, Lcom/taobao/accs/data/Message;->a(Landroid/content/Context;I)[B

    move-result-object v7

    .line 756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcom/taobao/accs/data/Message;->a(J)V

    .line 757
    array-length v8, v7

    const/16 v9, 0x4000

    if-le v8, v9, :cond_201

    iget-object v8, v2, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x66

    if-eq v8, v9, :cond_201

    .line 758
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    iget-object v7, v7, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    sget-object v8, Lcom/taobao/accs/a;->MESSAGE_TOO_LARGE:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v7, v2, v8}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    goto/16 :goto_2dc

    .line 761
    :cond_201
    iget-boolean v8, v2, Lcom/taobao/accs/data/Message;->c:Z

    if-eqz v8, :cond_20f

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->d()Lcom/taobao/accs/data/Message$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/accs/data/Message$a;->a()I

    move-result v8

    neg-int v8, v8

    goto :goto_217

    :cond_20f
    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->d()Lcom/taobao/accs/data/Message$a;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/accs/data/Message$a;->a()I

    move-result v8

    .line 762
    :goto_217
    iget-object v9, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v9}, Lcom/taobao/accs/net/s;->h(Lcom/taobao/accs/net/s;)Lorg/android/spdy/SpdySession;

    move-result-object v15

    const/16 v17, 0xc8

    const/16 v18, 0x0

    if-nez v7, :cond_226

    move/from16 v19, v3

    goto :goto_229

    :cond_226
    array-length v9, v7

    move/from16 v19, v9

    :goto_229
    move/from16 v16, v8

    move-object/from16 v20, v7

    invoke-virtual/range {v15 .. v20}, Lorg/android/spdy/SpdySession;->sendCustomControlFrame(IIII[B)I

    .line 763
    iget-object v9, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const-string v11, "send data"

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const-string v15, "length"

    aput-object v15, v12, v3

    if-nez v7, :cond_23f

    move v15, v3

    goto :goto_240

    :cond_23f
    array-length v15, v7

    :goto_240
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v12, v6

    const-string v15, "dataId"

    aput-object v15, v12, v13

    .line 764
    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    const-string v14, "utdid"

    aput-object v14, v12, v10

    const/4 v10, 0x5

    iget-object v14, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    iget-object v14, v14, Lcom/taobao/accs/net/s;->j:Ljava/lang/String;

    aput-object v14, v12, v10

    .line 763
    invoke-static {v9, v11, v12}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    iget-object v9, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    iget-object v9, v9, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    invoke-virtual {v9, v2}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;)V

    .line 767
    iget-boolean v9, v2, Lcom/taobao/accs/data/Message;->c:Z

    if-eqz v9, :cond_287

    .line 768
    iget-object v9, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const-string v10, "sendCFrame end ack"

    new-array v11, v13, [Ljava/lang/Object;

    const-string v12, "dataId"

    aput-object v12, v11, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v9, v10, v11}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    iget-object v9, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    iget-object v9, v9, Lcom/taobao/accs/net/s;->l:Ljava/util/LinkedHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v8, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    :cond_287
    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v8

    if-eqz v8, :cond_294

    .line 773
    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSendData()V

    .line 775
    :cond_294
    iget-object v8, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    iget-object v10, v10, Lcom/taobao/accs/net/s;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v10}, Lcom/taobao/accs/AccsClientConfig;->isQuickReconnect()Z

    move-result v10

    iget v11, v2, Lcom/taobao/accs/data/Message;->S:I

    int-to-long v11, v11

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/taobao/accs/net/s;->a(Ljava/lang/String;ZJ)V

    .line 777
    iget-object v8, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    iget-object v8, v8, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    new-instance v15, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    iget-object v10, v2, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v11

    iget-object v9, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-virtual {v9}, Lcom/taobao/accs/net/s;->m()Ljava/lang/String;

    move-result-object v12

    array-length v7, v7

    int-to-long v13, v7

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    invoke-virtual {v8, v15}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    goto :goto_2dc

    :cond_2c4
    move v7, v3

    goto :goto_2dd

    .line 784
    :cond_2c6
    invoke-direct {v1, v3}, Lcom/taobao/accs/net/s$a;->a(Z)V

    .line 786
    iget-object v8, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const-string v9, "skip msg"

    new-array v10, v13, [Ljava/lang/Object;

    const-string v11, "type"

    aput-object v11, v10, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v6

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2dc
    .catch Ljava/lang/Throwable; {:try_start_ff .. :try_end_2dc} :catch_39a
    .catchall {:try_start_ff .. :try_end_2dc} :catchall_395

    :cond_2dc
    :goto_2dc
    move v7, v6

    .line 788
    :goto_2dd
    :try_start_2dd
    iget-object v8, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v8}, Lcom/taobao/accs/net/s;->i(Lcom/taobao/accs/net/s;)V
    :try_end_2e2
    .catch Ljava/lang/Throwable; {:try_start_2dd .. :try_end_2e2} :catch_391
    .catchall {:try_start_2dd .. :try_end_2e2} :catchall_38d

    if-nez v7, :cond_360

    .line 797
    :try_start_2e4
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-virtual {v7}, Lcom/taobao/accs/net/s;->l()V

    .line 798
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v7}, Lcom/taobao/accs/net/s;->c(Lcom/taobao/accs/net/s;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v7

    if-eqz v7, :cond_2fc

    .line 799
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v7}, Lcom/taobao/accs/net/s;->c(Lcom/taobao/accs/net/s;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v7

    const-string v8, "send fail"

    invoke-virtual {v7, v8}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 801
    :cond_2fc
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v7}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v7

    monitor-enter v7
    :try_end_303
    .catch Ljava/lang/Throwable; {:try_start_2e4 .. :try_end_303} :catch_380

    .line 802
    :try_start_303
    iget-object v8, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v8}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_30e
    if-ltz v8, :cond_347

    .line 803
    iget-object v6, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v6}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/accs/data/Message;

    if-eqz v6, :cond_344

    .line 804
    iget-object v9, v6, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v9, :cond_344

    iget-object v9, v6, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 805
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v5, :cond_332

    iget-object v9, v6, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v4, :cond_344

    .line 806
    :cond_332
    iget-object v9, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    iget-object v9, v9, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    sget-object v10, Lcom/taobao/accs/a;->NETWORK_FAIL:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v9, v6, v10}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 807
    iget-object v6, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v6}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_344
    add-int/lit8 v8, v8, -0x1

    goto :goto_30e

    .line 810
    :cond_347
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const-string v5, "network disconnected, wait"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v4}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 812
    monitor-exit v7

    goto/16 :goto_f

    :catchall_35c
    move-exception v0

    move-object v4, v0

    monitor-exit v7
    :try_end_35f
    .catchall {:try_start_303 .. :try_end_35f} :catchall_35c

    :try_start_35f
    throw v4

    .line 814
    :cond_360
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const-string v5, "send succ, remove it"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 815
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v4}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4
    :try_end_370
    .catch Ljava/lang/Throwable; {:try_start_35f .. :try_end_370} :catch_380

    .line 816
    :try_start_370
    iget-object v5, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v5}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 817
    monitor-exit v4

    goto/16 :goto_f

    :catchall_37c
    move-exception v0

    move-object v5, v0

    monitor-exit v4
    :try_end_37f
    .catchall {:try_start_370 .. :try_end_37f} :catchall_37c

    :try_start_37f
    throw v5
    :try_end_380
    .catch Ljava/lang/Throwable; {:try_start_37f .. :try_end_380} :catch_380

    :catch_380
    move-exception v0

    move-object v4, v0

    .line 820
    iget-object v5, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, " run finally error"

    invoke-static {v5, v7, v4, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_f

    :catchall_38d
    move-exception v0

    move v8, v7

    goto/16 :goto_477

    :catch_391
    move-exception v0

    move v8, v7

    move-object v7, v0

    goto :goto_39d

    :catchall_395
    move-exception v0

    move-object v7, v0

    move v8, v6

    goto/16 :goto_478

    :catch_39a
    move-exception v0

    move-object v7, v0

    move v8, v6

    :goto_39d
    :try_start_39d
    const-string v9, "accs"

    const-string v10, "send_fail"

    .line 791
    iget-object v11, v2, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    const-string v12, "1"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    iget v14, v14, Lcom/taobao/accs/net/s;->c:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v10, v11, v12, v13}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 793
    iget-object v9, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const-string v10, "service connection run"

    new-array v11, v3, [Ljava/lang/Object;

    invoke-static {v9, v10, v7, v11}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3cb
    .catchall {:try_start_39d .. :try_end_3cb} :catchall_476

    if-nez v8, :cond_449

    .line 797
    :try_start_3cd
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-virtual {v7}, Lcom/taobao/accs/net/s;->l()V

    .line 798
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v7}, Lcom/taobao/accs/net/s;->c(Lcom/taobao/accs/net/s;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v7

    if-eqz v7, :cond_3e5

    .line 799
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v7}, Lcom/taobao/accs/net/s;->c(Lcom/taobao/accs/net/s;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v7

    const-string v8, "send fail"

    invoke-virtual {v7, v8}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 801
    :cond_3e5
    iget-object v7, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v7}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v7

    monitor-enter v7
    :try_end_3ec
    .catch Ljava/lang/Throwable; {:try_start_3cd .. :try_end_3ec} :catch_469

    .line 802
    :try_start_3ec
    iget-object v8, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v8}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_3f7
    if-ltz v8, :cond_430

    .line 803
    iget-object v6, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v6}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/accs/data/Message;

    if-eqz v6, :cond_42d

    .line 804
    iget-object v9, v6, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v9, :cond_42d

    iget-object v9, v6, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 805
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v5, :cond_41b

    iget-object v9, v6, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v4, :cond_42d

    .line 806
    :cond_41b
    iget-object v9, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    iget-object v9, v9, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    sget-object v10, Lcom/taobao/accs/a;->NETWORK_FAIL:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v9, v6, v10}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 807
    iget-object v6, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v6}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_42d
    add-int/lit8 v8, v8, -0x1

    goto :goto_3f7

    .line 810
    :cond_430
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const-string v5, "network disconnected, wait"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v4}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 812
    monitor-exit v7

    goto/16 :goto_f

    :catchall_445
    move-exception v0

    move-object v4, v0

    monitor-exit v7
    :try_end_448
    .catchall {:try_start_3ec .. :try_end_448} :catchall_445

    :try_start_448
    throw v4

    .line 814
    :cond_449
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const-string v5, "send succ, remove it"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 815
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v4}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4
    :try_end_459
    .catch Ljava/lang/Throwable; {:try_start_448 .. :try_end_459} :catch_469

    .line 816
    :try_start_459
    iget-object v5, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v5}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 817
    monitor-exit v4

    goto/16 :goto_f

    :catchall_465
    move-exception v0

    move-object v5, v0

    monitor-exit v4
    :try_end_468
    .catchall {:try_start_459 .. :try_end_468} :catchall_465

    :try_start_468
    throw v5
    :try_end_469
    .catch Ljava/lang/Throwable; {:try_start_468 .. :try_end_469} :catch_469

    :catch_469
    move-exception v0

    move-object v4, v0

    .line 820
    iget-object v5, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, " run finally error"

    invoke-static {v5, v7, v4, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_f

    :catchall_476
    move-exception v0

    :goto_477
    move-object v7, v0

    :goto_478
    if-nez v8, :cond_4f5

    .line 797
    :try_start_47a
    iget-object v2, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-virtual {v2}, Lcom/taobao/accs/net/s;->l()V

    .line 798
    iget-object v2, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v2}, Lcom/taobao/accs/net/s;->c(Lcom/taobao/accs/net/s;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v2

    if-eqz v2, :cond_492

    .line 799
    iget-object v2, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v2}, Lcom/taobao/accs/net/s;->c(Lcom/taobao/accs/net/s;)Lcom/taobao/accs/ut/monitor/SessionMonitor;

    move-result-object v2

    const-string v8, "send fail"

    invoke-virtual {v2, v8}, Lcom/taobao/accs/ut/monitor/SessionMonitor;->setCloseReason(Ljava/lang/String;)V

    .line 801
    :cond_492
    iget-object v2, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v2}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2
    :try_end_499
    .catch Ljava/lang/Throwable; {:try_start_47a .. :try_end_499} :catch_514

    .line 802
    :try_start_499
    iget-object v8, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v8}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_4a4
    if-ltz v8, :cond_4dd

    .line 803
    iget-object v6, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v6}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/taobao/accs/data/Message;

    if-eqz v6, :cond_4da

    .line 804
    iget-object v9, v6, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    if-eqz v9, :cond_4da

    iget-object v9, v6, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 805
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v5, :cond_4c8

    iget-object v9, v6, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v4, :cond_4da

    .line 806
    :cond_4c8
    iget-object v9, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    iget-object v9, v9, Lcom/taobao/accs/net/s;->e:Lcom/taobao/accs/data/d;

    sget-object v10, Lcom/taobao/accs/a;->NETWORK_FAIL:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v9, v6, v10}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 807
    iget-object v6, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v6}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_4da
    add-int/lit8 v8, v8, -0x1

    goto :goto_4a4

    .line 810
    :cond_4dd
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const-string v5, "network disconnected, wait"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v4}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 812
    monitor-exit v2

    goto :goto_51f

    :catchall_4f1
    move-exception v0

    move-object v4, v0

    monitor-exit v2
    :try_end_4f4
    .catchall {:try_start_499 .. :try_end_4f4} :catchall_4f1

    :try_start_4f4
    throw v4

    .line 814
    :cond_4f5
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    const-string v5, "send succ, remove it"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 815
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v4}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v4

    monitor-enter v4
    :try_end_505
    .catch Ljava/lang/Throwable; {:try_start_4f4 .. :try_end_505} :catch_514

    .line 816
    :try_start_505
    iget-object v5, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-static {v5}, Lcom/taobao/accs/net/s;->a(Lcom/taobao/accs/net/s;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 817
    monitor-exit v4

    goto :goto_51f

    :catchall_510
    move-exception v0

    move-object v2, v0

    monitor-exit v4
    :try_end_513
    .catchall {:try_start_505 .. :try_end_513} :catchall_510

    :try_start_513
    throw v2
    :try_end_514
    .catch Ljava/lang/Throwable; {:try_start_513 .. :try_end_514} :catch_514

    :catch_514
    move-exception v0

    move-object v2, v0

    .line 820
    iget-object v4, v1, Lcom/taobao/accs/net/s$a;->d:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, " run finally error"

    invoke-static {v4, v5, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 823
    :goto_51f
    throw v7

    :catchall_520
    move-exception v0

    move-object v2, v0

    .line 718
    :try_start_522
    monitor-exit v4
    :try_end_523
    .catchall {:try_start_522 .. :try_end_523} :catchall_520

    throw v2

    .line 826
    :cond_524
    :goto_524
    iget-object v2, v1, Lcom/taobao/accs/net/s$a;->c:Lcom/taobao/accs/net/s;

    invoke-virtual {v2}, Lcom/taobao/accs/net/s;->l()V

    return-void
.end method
