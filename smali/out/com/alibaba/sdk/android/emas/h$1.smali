.class Lcom/alibaba/sdk/android/emas/h$1;
.super Ljava/lang/Object;
.source "SendManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/emas/h;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/emas/h;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/emas/h;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/h$1;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h$1;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/emas/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/c;->clear()V

    .line 88
    invoke-static {}, Lcom/alibaba/sdk/android/emas/h;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 89
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/h$1;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v0}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;)Lcom/alibaba/sdk/android/emas/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/emas/c;->a()Lcom/alibaba/sdk/android/emas/d;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 91
    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/h$1;->a:Lcom/alibaba/sdk/android/emas/h;

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/emas/h;->a(Lcom/alibaba/sdk/android/emas/h;Lcom/alibaba/sdk/android/emas/d;)V

    :cond_28
    return-void
.end method
