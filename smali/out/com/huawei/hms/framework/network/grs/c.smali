.class public Lcom/huawei/hms/framework/network/grs/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final k:Ljava/lang/String; = "c"

.field private static l:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

.field private b:Z

.field private final c:Ljava/lang/Object;

.field private d:Landroid/content/Context;

.field private e:Lcom/huawei/hms/framework/network/grs/g/i;

.field private f:Lcom/huawei/hms/framework/network/grs/e/a;

.field private g:Lcom/huawei/hms/framework/network/grs/e/c;

.field private h:Lcom/huawei/hms/framework/network/grs/e/c;

.field private i:Lcom/huawei/hms/framework/network/grs/a;

.field private j:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "GRS_GrsClient-Init"

    invoke-static {v0}, Lcom/huawei/hms/framework/common/ExecutorsUtils;->newCachedThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/framework/network/grs/c;->l:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/framework/network/grs/c;->b:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_15

    move-object v0, p1

    goto :goto_19

    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_19
    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/huawei/hms/framework/network/grs/c;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    iget-boolean p2, p0, Lcom/huawei/hms/framework/network/grs/c;->b:Z

    if-nez p2, :cond_3f

    iget-object p2, p0, Lcom/huawei/hms/framework/network/grs/c;->c:Ljava/lang/Object;

    monitor-enter p2

    :try_start_25
    iget-boolean v0, p0, Lcom/huawei/hms/framework/network/grs/c;->b:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Landroid/content/Context;

    sget-object v2, Lcom/huawei/hms/framework/network/grs/c;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/huawei/hms/framework/network/grs/c$a;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/huawei/hms/framework/network/grs/c$a;-><init>(Lcom/huawei/hms/framework/network/grs/c;Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c;->j:Ljava/util/concurrent/Future;

    :cond_3a
    monitor-exit p2

    goto :goto_3f

    :catchall_3c
    move-exception p1

    monitor-exit p2
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_3c

    throw p1

    :cond_3f
    :goto_3f
    return-void
.end method

.method constructor <init>(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/framework/network/grs/c;->b:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->c:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/huawei/hms/framework/network/grs/c;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/framework/network/grs/c;Lcom/huawei/hms/framework/network/grs/a;)Lcom/huawei/hms/framework/network/grs/a;
    .registers 2

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c;->i:Lcom/huawei/hms/framework/network/grs/a;

    return-object p1
.end method

.method static synthetic a(Lcom/huawei/hms/framework/network/grs/c;Lcom/huawei/hms/framework/network/grs/e/a;)Lcom/huawei/hms/framework/network/grs/e/a;
    .registers 2

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c;->f:Lcom/huawei/hms/framework/network/grs/e/a;

    return-object p1
.end method

.method static synthetic a(Lcom/huawei/hms/framework/network/grs/c;Lcom/huawei/hms/framework/network/grs/e/c;)Lcom/huawei/hms/framework/network/grs/e/c;
    .registers 2

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c;->g:Lcom/huawei/hms/framework/network/grs/e/c;

    return-object p1
.end method

.method static synthetic a(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/g/i;
    .registers 1

    iget-object p0, p0, Lcom/huawei/hms/framework/network/grs/c;->e:Lcom/huawei/hms/framework/network/grs/g/i;

    return-object p0
.end method

.method static synthetic a(Lcom/huawei/hms/framework/network/grs/c;Lcom/huawei/hms/framework/network/grs/g/i;)Lcom/huawei/hms/framework/network/grs/g/i;
    .registers 2

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c;->e:Lcom/huawei/hms/framework/network/grs/g/i;

    return-object p1
.end method

.method private a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->clone()Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_15

    :catch_7
    move-exception v0

    sget-object v1, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/lang/String;

    const-string v2, "GrsClient catch CloneNotSupportedException"

    invoke-static {v1, v2, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->copy()Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    :goto_15
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/framework/network/grs/c;Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/huawei/hms/framework/network/grs/c;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_6e

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6e

    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->g:Lcom/huawei/hms/framework/network/grs/e/c;

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/huawei/hms/framework/network/grs/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_4a

    const-string v2, "\\d+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    :try_start_3d
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_41} :catch_42

    goto :goto_4a

    :catch_42
    move-exception v1

    sget-object v2, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/lang/String;

    const-string v5, "convert expire time from String to Long catch NumberFormatException."

    invoke-static {v2, v5, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4a
    :goto_4a
    invoke-direct {p0, v3, v4}, Lcom/huawei/hms/framework/network/grs/c;->a(J)Z

    move-result v1

    if-nez v1, :cond_11

    sget-object v1, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/lang/String;

    const-string v2, "init interface auto clear some invalid sp\'s data."

    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c;->g:Lcom/huawei/hms/framework/network/grs/e/c;

    invoke-virtual {v2, v1}, Lcom/huawei/hms/framework/network/grs/e/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->g:Lcom/huawei/hms/framework/network/grs/e/c;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/framework/network/grs/e/c;->a(Ljava/lang/String;)V

    goto :goto_11

    :cond_6d
    return-void

    :cond_6e
    :goto_6e
    sget-object p1, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/lang/String;

    const-string v0, "sp\'s content is empty."

    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(J)Z
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/32 p1, 0x240c8400

    cmp-long p1, v0, p1

    if-gtz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method static synthetic a(Lcom/huawei/hms/framework/network/grs/c;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/huawei/hms/framework/network/grs/c;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/e/c;
    .registers 1

    iget-object p0, p0, Lcom/huawei/hms/framework/network/grs/c;->g:Lcom/huawei/hms/framework/network/grs/e/c;

    return-object p0
.end method

.method static synthetic b(Lcom/huawei/hms/framework/network/grs/c;Lcom/huawei/hms/framework/network/grs/e/c;)Lcom/huawei/hms/framework/network/grs/e/c;
    .registers 2

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/c;->h:Lcom/huawei/hms/framework/network/grs/e/c;

    return-object p1
.end method

.method static synthetic c(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/e/c;
    .registers 1

    iget-object p0, p0, Lcom/huawei/hms/framework/network/grs/c;->h:Lcom/huawei/hms/framework/network/grs/e/c;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/e/a;
    .registers 1

    iget-object p0, p0, Lcom/huawei/hms/framework/network/grs/c;->f:Lcom/huawei/hms/framework/network/grs/e/a;

    return-object p0
.end method

.method private d()Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->j:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->j:Ljava/util/concurrent/Future;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_15
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_15} :catch_39
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_15} :catch_30
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_15} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_15} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_16

    :cond_15
    return v0

    :catch_16
    move-exception v1

    sget-object v2, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/lang/String;

    const-string v3, "init compute task occur unknown Exception"

    invoke-static {v2, v3, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catch_1f
    sget-object v1, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/lang/String;

    const-string v2, "init compute task timed out"

    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :catch_27
    move-exception v1

    sget-object v2, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/lang/String;

    const-string v3, "init compute task interrupted."

    invoke-static {v2, v3, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catch_30
    move-exception v1

    sget-object v2, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/lang/String;

    const-string v3, "init compute task failed."

    invoke-static {v2, v3, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :catch_39
    sget-object v1, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/lang/String;

    const-string v2, "init compute task canceled."

    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method static synthetic e(Lcom/huawei/hms/framework/network/grs/c;)Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;
    .registers 1

    iget-object p0, p0, Lcom/huawei/hms/framework/network/grs/c;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    if-eqz p1, :cond_1a

    if-nez p2, :cond_a

    goto :goto_1a

    :cond_a
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/c;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->i:Lcom/huawei/hms/framework/network/grs/a;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, v1}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_19
    return-object v1

    :cond_1a
    :goto_1a
    sget-object p1, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/lang/String;

    const-string p2, "invalid para!"

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method a(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    if-eqz v0, :cond_1c

    if-nez p1, :cond_7

    goto :goto_1c

    :cond_7
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/c;->d()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->i:Lcom/huawei/hms/framework/network/grs/a;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_16
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :cond_1c
    :goto_1c
    sget-object p1, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/lang/String;

    const-string v0, "invalid para!"

    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method a()V
    .registers 5

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/c;->d()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getGrsParasKey(ZZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->g:Lcom/huawei/hms/framework/network/grs/e/c;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/framework/network/grs/e/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->g:Lcom/huawei/hms/framework/network/grs/e/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hms/framework/network/grs/e/c;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->e:Lcom/huawei/hms/framework/network/grs/g/i;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/framework/network/grs/g/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;)V
    .registers 5

    if-nez p2, :cond_a

    sget-object p1, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/lang/String;

    const-string p2, "IQueryUrlsCallBack is must not null for process continue."

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    if-eqz v0, :cond_2b

    if-nez p1, :cond_11

    goto :goto_2b

    :cond_11
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->i:Lcom/huawei/hms/framework/network/grs/a;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, v1}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;Landroid/content/Context;)V

    return-void

    :cond_1f
    sget-object p1, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/lang/String;

    const-string v0, "grs init task has not completed."

    invoke-static {p1, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, -0x7

    invoke-interface {p2, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackFail(I)V

    return-void

    :cond_2b
    :goto_2b
    const/4 p1, -0x6

    invoke-interface {p2, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlsCallBack;->onCallBackFail(I)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;)V
    .registers 6

    if-nez p3, :cond_a

    sget-object p1, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/lang/String;

    const-string p2, "IQueryUrlCallBack is must not null for process continue."

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    if-eqz v0, :cond_2d

    if-eqz p1, :cond_2d

    if-nez p2, :cond_13

    goto :goto_2d

    :cond_13
    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/c;->d()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->i:Lcom/huawei/hms/framework/network/grs/a;

    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/huawei/hms/framework/network/grs/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;Landroid/content/Context;)V

    return-void

    :cond_21
    sget-object p1, Lcom/huawei/hms/framework/network/grs/c;->k:Ljava/lang/String;

    const-string p2, "grs init task has not completed."

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, -0x7

    invoke-interface {p3, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;->onCallBackFail(I)V

    return-void

    :cond_2d
    :goto_2d
    const/4 p1, -0x6

    invoke-interface {p3, p1}, Lcom/huawei/hms/framework/network/grs/IQueryUrlCallBack;->onCallBackFail(I)V

    return-void
.end method

.method a(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/huawei/hms/framework/network/grs/c;

    if-eq v2, v1, :cond_10

    goto :goto_1f

    :cond_10
    instance-of v1, p1, Lcom/huawei/hms/framework/network/grs/c;

    if-eqz v1, :cond_1f

    check-cast p1, Lcom/huawei/hms/framework/network/grs/c;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    iget-object p1, p1, Lcom/huawei/hms/framework/network/grs/c;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->compare(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1f
    :goto_1f
    return v0
.end method

.method b()Z
    .registers 4

    invoke-direct {p0}, Lcom/huawei/hms/framework/network/grs/c;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/c;->a:Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;

    if-eqz v0, :cond_18

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/c;->d:Landroid/content/Context;

    if-nez v2, :cond_11

    goto :goto_18

    :cond_11
    iget-object v1, p0, Lcom/huawei/hms/framework/network/grs/c;->f:Lcom/huawei/hms/framework/network/grs/e/a;

    invoke-virtual {v1, v0, v2}, Lcom/huawei/hms/framework/network/grs/e/a;->a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0

    :cond_18
    :goto_18
    return v1
.end method
