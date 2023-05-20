.class Lanetwork/channel/unified/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "Lanetwork/channel/Response;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lanetwork/channel/unified/k;

.field private b:Z


# direct methods
.method public constructor <init>(Lanetwork/channel/unified/k;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lanetwork/channel/unified/d;->a:Lanetwork/channel/unified/k;

    return-void
.end method


# virtual methods
.method public a()Lanetwork/channel/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT SUPPORT!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lanetwork/channel/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT SUPPORT!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel(Z)Z
    .registers 3

    .line 25
    iget-boolean p1, p0, Lanetwork/channel/unified/d;->b:Z

    const/4 v0, 0x1

    if-nez p1, :cond_c

    .line 26
    iget-object p1, p0, Lanetwork/channel/unified/d;->a:Lanetwork/channel/unified/k;

    invoke-virtual {p1}, Lanetwork/channel/unified/k;->b()V

    .line 27
    iput-boolean v0, p0, Lanetwork/channel/unified/d;->b:Z

    :cond_c
    return v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lanetwork/channel/unified/d;->a()Lanetwork/channel/Response;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lanetwork/channel/unified/d;->b()Lanetwork/channel/Response;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .registers 2

    .line 34
    iget-boolean v0, p0, Lanetwork/channel/unified/d;->b:Z

    return v0
.end method

.method public isDone()Z
    .registers 3

    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NOT SUPPORT!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
