.class public Lcom/huawei/updatesdk/b/g/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/huawei/updatesdk/b/g/b;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Lcom/huawei/updatesdk/b/b/c;Lcom/huawei/updatesdk/a/b/c/c/a;)Lcom/huawei/updatesdk/a/b/c/b;
    .registers 3

    new-instance v0, Lcom/huawei/updatesdk/a/b/c/b;

    invoke-direct {v0, p0, p1}, Lcom/huawei/updatesdk/a/b/c/b;-><init>(Lcom/huawei/updatesdk/a/b/c/c/c;Lcom/huawei/updatesdk/a/b/c/c/a;)V

    invoke-static {v0, p0}, Lcom/huawei/updatesdk/b/g/b;->a(Lcom/huawei/updatesdk/a/b/c/b;Lcom/huawei/updatesdk/b/b/c;)V

    return-object v0
.end method

.method public static a()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/AsyncTask;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/huawei/updatesdk/b/g/b;->a:Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/os/AsyncTask;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget-object v0, Lcom/huawei/updatesdk/b/g/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_25

    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_25
    sget-object v1, Lcom/huawei/updatesdk/b/g/b;->a:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_2b
    sget-object v0, Lcom/huawei/updatesdk/b/g/b;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(Lcom/huawei/updatesdk/a/b/c/b;Lcom/huawei/updatesdk/b/b/c;)V
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "executeTask, ActiveCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/huawei/updatesdk/b/g/c;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", TaskCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/huawei/updatesdk/b/g/c;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StoreAgent"

    invoke-static {v0, p1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/huawei/updatesdk/b/g/c;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, p1}, Lcom/huawei/updatesdk/a/b/c/b;->a(Ljava/util/concurrent/Executor;)V

    return-void
.end method
