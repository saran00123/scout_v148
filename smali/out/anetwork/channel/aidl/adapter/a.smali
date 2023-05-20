.class public Lanetwork/channel/aidl/adapter/a;
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
.field private a:Lanetwork/channel/aidl/ParcelableFuture;

.field private b:Lanetwork/channel/Response;


# direct methods
.method public constructor <init>(Lanetwork/channel/Response;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/a;->b:Lanetwork/channel/Response;

    return-void
.end method

.method public constructor <init>(Lanetwork/channel/aidl/ParcelableFuture;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/a;->a:Lanetwork/channel/aidl/ParcelableFuture;

    return-void
.end method


# virtual methods
.method public a()Lanetwork/channel/Response;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/a;->b:Lanetwork/channel/Response;

    if-eqz v0, :cond_5

    return-object v0

    .line 72
    :cond_5
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/a;->a:Lanetwork/channel/aidl/ParcelableFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    const-wide/16 v2, 0x4e20

    .line 74
    :try_start_c
    invoke-interface {v0, v2, v3}, Lanetwork/channel/aidl/ParcelableFuture;->get(J)Lanetwork/channel/aidl/NetworkResponse;

    move-result-object v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    const/4 v2, 0x0

    .line 76
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "anet.FutureResponse"

    const-string v4, "[get]"

    invoke-static {v3, v4, v1, v0, v2}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1c
    return-object v1
.end method

.method public a(J)Lanetwork/channel/Response;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/a;->b:Lanetwork/channel/Response;

    if-eqz v0, :cond_5

    return-object v0

    .line 88
    :cond_5
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/a;->a:Lanetwork/channel/aidl/ParcelableFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 90
    :try_start_a
    invoke-interface {v0, p1, p2}, Lanetwork/channel/aidl/ParcelableFuture;->get(J)Lanetwork/channel/aidl/NetworkResponse;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    const/4 p2, 0x0

    .line 92
    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "anet.FutureResponse"

    const-string v2, "[get(long timeout, TimeUnit unit)]"

    invoke-static {v0, v2, v1, p1, p2}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1a
    return-object v1
.end method

.method public cancel(Z)Z
    .registers 7

    .line 34
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/a;->a:Lanetwork/channel/aidl/ParcelableFuture;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 38
    :cond_6
    :try_start_6
    invoke-interface {v0, p1}, Lanetwork/channel/aidl/ParcelableFuture;->cancel(Z)Z

    move-result p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return p1

    :catch_b
    move-exception p1

    const/4 v0, 0x0

    .line 40
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "anet.FutureResponse"

    const-string v4, "[cancel]"

    invoke-static {v3, v4, v0, p1, v2}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return v1
.end method

.method public synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lanetwork/channel/aidl/adapter/a;->a()Lanetwork/channel/Response;

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

    .line 18
    invoke-virtual {p0, p1, p2}, Lanetwork/channel/aidl/adapter/a;->a(J)Lanetwork/channel/Response;

    move-result-object p1

    return-object p1
.end method

.method public isCancelled()Z
    .registers 7

    .line 48
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/a;->a:Lanetwork/channel/aidl/ParcelableFuture;

    invoke-interface {v0}, Lanetwork/channel/aidl/ParcelableFuture;->isCancelled()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 50
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "anet.FutureResponse"

    const-string v5, "[isCancelled]"

    invoke-static {v4, v5, v1, v0, v3}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return v2
.end method

.method public isDone()Z
    .registers 6

    .line 60
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/a;->a:Lanetwork/channel/aidl/ParcelableFuture;

    invoke-interface {v0}, Lanetwork/channel/aidl/ParcelableFuture;->isDone()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 62
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "anet.FutureResponse"

    const-string v4, "[isDone]"

    invoke-static {v3, v4, v1, v0, v2}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method
