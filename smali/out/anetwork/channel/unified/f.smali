.class Lanetwork/channel/unified/f;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanetwork/channel/unified/e;


# direct methods
.method constructor <init>(Lanetwork/channel/unified/e;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lanetwork/channel/unified/f;->a:Lanetwork/channel/unified/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 107
    iget-object v0, p0, Lanetwork/channel/unified/f;->a:Lanetwork/channel/unified/e;

    sget v1, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->HIGH:I

    invoke-static {v0, v1}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    return-void
.end method
