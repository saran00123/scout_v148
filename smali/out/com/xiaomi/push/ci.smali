.class public Lcom/xiaomi/push/ci;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/ci$a;,
        Lcom/xiaomi/push/ci$c;,
        Lcom/xiaomi/push/ci$d;,
        Lcom/xiaomi/push/ci$e;,
        Lcom/xiaomi/push/ci$b;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/xiaomi/push/ci;


# instance fields
.field private a:Landroid/content/Context;

.field private a:Lcom/xiaomi/push/ch;

.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/push/ci$a;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/push/cg;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0xf

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/xiaomi/push/ci;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/xiaomi/push/cg;
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/cg;

    if-nez v0, :cond_21

    iget-object v1, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/HashMap;

    monitor-enter v1

    if-nez v0, :cond_1c

    :try_start_f
    iget-object v0, p0, Lcom/xiaomi/push/ci;->a:Lcom/xiaomi/push/ch;

    iget-object v2, p0, Lcom/xiaomi/push/ci;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, p1}, Lcom/xiaomi/push/ch;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/cg;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    monitor-exit v1

    goto :goto_21

    :catchall_1e
    move-exception p1

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_1e

    throw p1

    :cond_21
    :goto_21
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/ci;
    .registers 3

    sget-object v0, Lcom/xiaomi/push/ci;->a:Lcom/xiaomi/push/ci;

    if-nez v0, :cond_17

    const-class v0, Lcom/xiaomi/push/ci;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/push/ci;->a:Lcom/xiaomi/push/ci;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/push/ci;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/ci;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/push/ci;->a:Lcom/xiaomi/push/ci;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/xiaomi/push/ci;->a:Lcom/xiaomi/push/ci;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/ci;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a()V
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/push/ci;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/cj;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/cj;-><init>(Lcom/xiaomi/push/ci;)V

    iget-object v2, p0, Lcom/xiaomi/push/ci;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/push/ia;->bm:Lcom/xiaomi/push/ia;

    invoke-virtual {v3}, Lcom/xiaomi/push/ia;->a()I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/push/service/ax;->a(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/ak;->b(Lcom/xiaomi/push/ak$a;I)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/push/ci;->a(Ljava/lang/String;)Lcom/xiaomi/push/cg;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/push/cg;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/xiaomi/push/ci$a;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/push/ci;->a:Lcom/xiaomi/push/ch;

    if-eqz v0, :cond_47

    invoke-virtual {p1}, Lcom/xiaomi/push/ci$a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_e
    iget-object v2, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/cg;

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/xiaomi/push/ci;->a:Lcom/xiaomi/push/ch;

    iget-object v3, p0, Lcom/xiaomi/push/ci;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/push/ch;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/cg;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_44

    iget-object v0, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/xiaomi/push/ci;->a:Landroid/content/Context;

    invoke-virtual {p1, v2, v0}, Lcom/xiaomi/push/ci$a;->a(Lcom/xiaomi/push/cg;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_36
    iget-object v1, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/xiaomi/push/ci;->a()V

    monitor-exit v0

    goto :goto_43

    :catchall_40
    move-exception p1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_40

    throw p1

    :cond_43
    :goto_43
    return-void

    :catchall_44
    move-exception p1

    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p1

    :cond_47
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "should exec init method first!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_d
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/push/ci$a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/push/ci;->a:Lcom/xiaomi/push/ch;

    if-eqz v0, :cond_8c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_8b

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/ci$a;

    invoke-virtual {v1}, Lcom/xiaomi/push/ci$a;->a()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v1}, Lcom/xiaomi/push/ci$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaomi/push/ci;->a(Ljava/lang/String;)Lcom/xiaomi/push/cg;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/ci;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/ci$a;->a(Lcom/xiaomi/push/cg;Landroid/content/Context;)V

    :cond_34
    invoke-virtual {v1}, Lcom/xiaomi/push/ci$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_4c

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/xiaomi/push/ci$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_50
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_58
    :goto_58
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_58

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_58

    new-instance v3, Lcom/xiaomi/push/ci$c;

    invoke-direct {v3, v1, v2}, Lcom/xiaomi/push/ci$c;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/push/ci$a;

    iget-object v1, v1, Lcom/xiaomi/push/ci$a;->a:Lcom/xiaomi/push/cg;

    iget-object v2, p0, Lcom/xiaomi/push/ci;->a:Landroid/content/Context;

    invoke-virtual {v3, v1, v2}, Lcom/xiaomi/push/ci$c;->a(Lcom/xiaomi/push/cg;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_58

    :cond_8b
    return-void

    :cond_8c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "should exec setDbHelperFactory method first!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/xiaomi/push/ci$a;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/push/ci;->a:Lcom/xiaomi/push/ch;

    if-eqz v0, :cond_3a

    invoke-virtual {p1}, Lcom/xiaomi/push/ci$a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_e
    iget-object v2, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/cg;

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/xiaomi/push/ci;->a:Lcom/xiaomi/push/ch;

    iget-object v3, p0, Lcom/xiaomi/push/ci;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/push/ch;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/cg;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_37

    iget-object v0, p0, Lcom/xiaomi/push/ci;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/xiaomi/push/ci;->a:Landroid/content/Context;

    invoke-virtual {p1, v2, v0}, Lcom/xiaomi/push/ci$a;->a(Lcom/xiaomi/push/cg;Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ci;->a(Ljava/lang/Runnable;)V

    :cond_36
    return-void

    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1

    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "should exec init method first!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
