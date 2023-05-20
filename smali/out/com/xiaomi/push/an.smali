.class public Lcom/xiaomi/push/an;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/an$b;,
        Lcom/xiaomi/push/an$a;
    }
.end annotation


# instance fields
.field private a:I

.field private a:Landroid/os/Handler;

.field private a:Lcom/xiaomi/push/an$a;

.field private volatile a:Lcom/xiaomi/push/an$b;

.field private volatile a:Z

.field private final b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/push/an;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/push/an;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/an;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/an;->a:Z

    iput v0, p0, Lcom/xiaomi/push/an;->a:I

    new-instance v0, Lcom/xiaomi/push/ao;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/push/ao;-><init>(Lcom/xiaomi/push/an;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/push/an;->a:Landroid/os/Handler;

    iput-boolean p1, p0, Lcom/xiaomi/push/an;->b:Z

    iput p2, p0, Lcom/xiaomi/push/an;->a:I

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/an;)I
    .registers 1

    iget p0, p0, Lcom/xiaomi/push/an;->a:I

    return p0
.end method

.method static synthetic a(Lcom/xiaomi/push/an;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/an;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/an;Lcom/xiaomi/push/an$b;)Lcom/xiaomi/push/an$b;
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/an;->a:Lcom/xiaomi/push/an$b;

    return-object p1
.end method

.method private declared-synchronized a()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/xiaomi/push/an;->a:Lcom/xiaomi/push/an$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/an;->a:Z
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/push/an;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/push/an;->a()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/an;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/xiaomi/push/an;->a:Z

    return p0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/xiaomi/push/an$b;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/an;->a:Lcom/xiaomi/push/an$a;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/xiaomi/push/an$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/an$a;-><init>(Lcom/xiaomi/push/an;)V

    iput-object v0, p0, Lcom/xiaomi/push/an;->a:Lcom/xiaomi/push/an$a;

    iget-object v0, p0, Lcom/xiaomi/push/an;->a:Lcom/xiaomi/push/an$a;

    iget-boolean v1, p0, Lcom/xiaomi/push/an;->b:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/an$a;->setDaemon(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/an;->a:Z

    iget-object v0, p0, Lcom/xiaomi/push/an;->a:Lcom/xiaomi/push/an$a;

    invoke-virtual {v0}, Lcom/xiaomi/push/an$a;->start()V

    :cond_1b
    iget-object v0, p0, Lcom/xiaomi/push/an;->a:Lcom/xiaomi/push/an$a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/an$a;->a(Lcom/xiaomi/push/an$b;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lcom/xiaomi/push/an$b;J)V
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/push/an;->a:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/push/ap;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/push/ap;-><init>(Lcom/xiaomi/push/an;Lcom/xiaomi/push/an$b;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
