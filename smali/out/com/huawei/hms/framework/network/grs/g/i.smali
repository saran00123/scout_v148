.class public Lcom/huawei/hms/framework/network/grs/g/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/framework/network/grs/g/l/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field private d:Lcom/huawei/hms/framework/network/grs/e/a;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GRS_RequestController-Task"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/ExecutorsUtils;->newCachedThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/i;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/i;->b:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/i;->c:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/framework/network/grs/g/i;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/huawei/hms/framework/network/grs/g/i;->a:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private a(Lcom/huawei/hms/framework/network/grs/g/e;Lcom/huawei/hms/framework/network/grs/b;)V
    .registers 5

    if-eqz p2, :cond_17

    const-string v0, "RequestController"

    if-nez p1, :cond_f

    const-string p1, "GrsResponse is null"

    invoke-static {v0, p1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2}, Lcom/huawei/hms/framework/network/grs/b;->a()V

    goto :goto_17

    :cond_f
    const-string v1, "GrsResponse is not null"

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/huawei/hms/framework/network/grs/b;->a(Lcom/huawei/hms/framework/network/grs/g/e;)V

    :cond_17
    :goto_17
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/framework/network/grs/g/i;Lcom/huawei/hms/framework/network/grs/g/e;Lcom/huawei/hms/framework/network/grs/b;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/framework/network/grs/g/i;->a(Lcom/huawei/hms/framework/network/grs/g/e;Lcom/huawei/hms/framework/network/grs/b;)V

    return-void
.end method

.method static synthetic b(Lcom/huawei/hms/framework/network/grs/g/i;)Lcom/huawei/hms/framework/network/grs/e/a;
    .registers 1

    iget-object p0, p0, Lcom/huawei/hms/framework/network/grs/g/i;->d:Lcom/huawei/hms/framework/network/grs/e/a;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/huawei/hms/framework/network/grs/g/l/c;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/e/c;)Lcom/huawei/hms/framework/network/grs/g/e;
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request to server with service name is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestController"

    invoke-static {v1, v0}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/g/l/c;->b()Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/g/l/c;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasTag(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request spUrlKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RequestController"

    invoke-static {v2, v1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/g/i;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3d
    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/g/l/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hms/framework/common/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4a

    monitor-exit v1

    return-object v3

    :cond_4a
    invoke-static {v0}, Lcom/huawei/hms/framework/network/grs/h/d;->a(Ljava/lang/String;)Lcom/huawei/hms/framework/network/grs/h/d$a;

    move-result-object v2

    iget-object v4, p0, Lcom/huawei/hms/framework/network/grs/g/i;->b:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hms/framework/network/grs/g/l/b;

    if-eqz v4, :cond_64

    invoke-virtual {v4}, Lcom/huawei/hms/framework/network/grs/g/l/b;->b()Z

    move-result v5

    if-nez v5, :cond_5f

    goto :goto_64

    :cond_5f
    invoke-virtual {v4}, Lcom/huawei/hms/framework/network/grs/g/l/b;->a()Ljava/util/concurrent/Future;

    move-result-object p1

    goto :goto_8b

    :cond_64
    :goto_64
    if-eqz v2, :cond_6f

    invoke-virtual {v2}, Lcom/huawei/hms/framework/network/grs/h/d$a;->a()Z

    move-result v2

    if-nez v2, :cond_6d

    goto :goto_6f

    :cond_6d
    monitor-exit v1

    return-object v3

    :cond_6f
    :goto_6f
    const-string v2, "RequestController"

    const-string v4, "hitGrsRequestBean == null or request block is released."

    invoke-static {v2, v4}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/g/i;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/huawei/hms/framework/network/grs/g/i$a;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/huawei/hms/framework/network/grs/g/i$a;-><init>(Lcom/huawei/hms/framework/network/grs/g/i;Lcom/huawei/hms/framework/network/grs/g/l/c;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/e/c;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/hms/framework/network/grs/g/i;->b:Ljava/util/Map;

    new-instance p3, Lcom/huawei/hms/framework/network/grs/g/l/b;

    invoke-direct {p3, p1}, Lcom/huawei/hms/framework/network/grs/g/l/b;-><init>(Ljava/util/concurrent/Future;)V

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_3d .. :try_end_8c} :catchall_a8

    :try_start_8c
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/framework/network/grs/g/e;
    :try_end_92
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8c .. :try_end_92} :catch_9f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8c .. :try_end_92} :catch_99
    .catch Ljava/lang/InterruptedException; {:try_start_8c .. :try_end_92} :catch_93

    return-object p1

    :catch_93
    move-exception p1

    const-string p2, "RequestController"

    const-string p3, "when check result, find InterruptedException, check others"

    goto :goto_a4

    :catch_99
    move-exception p1

    const-string p2, "RequestController"

    const-string p3, "when check result, find ExecutionException, check others"

    goto :goto_a4

    :catch_9f
    move-exception p1

    const-string p2, "RequestController"

    const-string p3, "when check result, find CancellationException, check others"

    :goto_a4
    invoke-static {p2, p3, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3

    :catchall_a8
    move-exception p1

    :try_start_a9
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    throw p1
.end method

.method public a(Lcom/huawei/hms/framework/network/grs/e/a;)V
    .registers 2

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/g/i;->d:Lcom/huawei/hms/framework/network/grs/e/a;

    return-void
.end method

.method public a(Lcom/huawei/hms/framework/network/grs/g/l/c;Lcom/huawei/hms/framework/network/grs/b;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/e/c;)V
    .registers 13

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/i;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/huawei/hms/framework/network/grs/g/i$b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/huawei/hms/framework/network/grs/g/i$b;-><init>(Lcom/huawei/hms/framework/network/grs/g/i;Lcom/huawei/hms/framework/network/grs/g/l/c;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/e/c;Lcom/huawei/hms/framework/network/grs/b;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/g/i;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/g/i;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
