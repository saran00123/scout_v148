.class public Lcom/meizu/cloud/pushsdk/b/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/b/c/c$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v0, Lcom/meizu/cloud/pushsdk/b/c/d;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/b/c/d;-><init>()V

    const-string v1, "single-pool-%d"

    invoke-virtual {v0, v1}, Lcom/meizu/cloud/pushsdk/b/c/d;->a(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/b/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/b/c/d;->a()Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/meizu/cloud/pushsdk/b/c/c;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/cloud/pushsdk/b/c/c$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/b/c/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/meizu/cloud/pushsdk/b/c/c;
    .registers 1

    invoke-static {}, Lcom/meizu/cloud/pushsdk/b/c/c$a;->a()Lcom/meizu/cloud/pushsdk/b/c/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/b/c/c;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
