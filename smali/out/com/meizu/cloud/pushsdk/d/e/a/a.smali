.class public Lcom/meizu/cloud/pushsdk/d/e/a/a;
.super Lcom/meizu/cloud/pushsdk/d/e/a;


# static fields
.field private static final n:Ljava/lang/String; = "a"

.field private static o:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/meizu/cloud/pushsdk/d/e/a$a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/d/e/a;-><init>(Lcom/meizu/cloud/pushsdk/d/e/a$a;)V

    iget p1, p0, Lcom/meizu/cloud/pushsdk/d/e/a/a;->k:I

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/d/b/a/b;->a(I)V

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/d/e/a/a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/meizu/cloud/pushsdk/d/e/a/a;Lcom/meizu/cloud/pushsdk/d/c/b;Z)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/d/e/a;->a(Lcom/meizu/cloud/pushsdk/d/c/b;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/meizu/cloud/pushsdk/d/c/b;Z)V
    .registers 4

    new-instance v0, Lcom/meizu/cloud/pushsdk/d/e/a/a$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/cloud/pushsdk/d/e/a/a$2;-><init>(Lcom/meizu/cloud/pushsdk/d/e/a/a;Lcom/meizu/cloud/pushsdk/d/c/b;Z)V

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/d/b/a/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .registers 10

    sget-object v0, Lcom/meizu/cloud/pushsdk/d/e/a/a;->o:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/d/e/a/a;->i:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/meizu/cloud/pushsdk/d/e/a/a;->n:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Session checking has been resumed."

    invoke-static {v0, v2, v1}, Lcom/meizu/cloud/pushsdk/d/f/c;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/d/e/a/a;->d:Lcom/meizu/cloud/pushsdk/d/e/b;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    sput-object v1, Lcom/meizu/cloud/pushsdk/d/e/a/a;->o:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v2, Lcom/meizu/cloud/pushsdk/d/e/a/a;->o:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/meizu/cloud/pushsdk/d/e/a/a$1;

    invoke-direct {v3, p0, v0}, Lcom/meizu/cloud/pushsdk/d/e/a/a$1;-><init>(Lcom/meizu/cloud/pushsdk/d/e/a/a;Lcom/meizu/cloud/pushsdk/d/e/b;)V

    iget-wide v4, p0, Lcom/meizu/cloud/pushsdk/d/e/a/a;->j:J

    iget-wide v6, p0, Lcom/meizu/cloud/pushsdk/d/e/a/a;->j:J

    iget-object v8, p0, Lcom/meizu/cloud/pushsdk/d/e/a/a;->l:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_2a
    return-void
.end method
