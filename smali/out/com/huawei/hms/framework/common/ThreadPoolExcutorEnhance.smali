.class public Lcom/huawei/hms/framework/common/ThreadPoolExcutorEnhance;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ThreadPoolExcutorEnhance.java"


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method


# virtual methods
.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 8

    .line 32
    instance-of v0, p2, Lcom/huawei/hms/framework/common/RunnableEnhance;

    if-eqz v0, :cond_3f

    .line 33
    move-object v0, p2

    check-cast v0, Lcom/huawei/hms/framework/common/RunnableEnhance;

    invoke-virtual {v0}, Lcom/huawei/hms/framework/common/RunnableEnhance;->getParentName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " -->"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    add-int/lit8 v2, v2, 0x4

    .line 36
    invoke-static {v0, v2}, Lcom/huawei/hms/framework/common/StringUtils;->substring(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_2a

    add-int/lit8 v4, v4, 0x4

    .line 41
    invoke-static {v2, v4}, Lcom/huawei/hms/framework/common/StringUtils;->substring(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 43
    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 45
    :cond_3f
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 26
    new-instance v0, Lcom/huawei/hms/framework/common/RunnableEnhance;

    invoke-direct {v0, p1}, Lcom/huawei/hms/framework/common/RunnableEnhance;-><init>(Ljava/lang/Runnable;)V

    .line 27
    invoke-super {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
