.class Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;
.super Ljava/lang/Object;
.source "JdkFutureAdapters.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;->this$0:Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;->this$0:Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;

    invoke-static {v0}, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->access$000(Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_9

    .line 163
    :catch_9
    iget-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter$1;->this$0:Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;

    invoke-static {v0}, Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;->access$100(Lcom/google/common/util/concurrent/JdkFutureAdapters$ListenableFutureAdapter;)Lcom/google/common/util/concurrent/ExecutionList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ExecutionList;->execute()V

    return-void
.end method
