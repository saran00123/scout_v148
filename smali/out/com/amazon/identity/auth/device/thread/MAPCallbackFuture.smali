.class public Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;
.super Ljava/lang/Object;
.source "MAPCallbackFuture.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Lcom/amazon/identity/auth/device/shared/APIListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "Landroid/os/Bundle;",
        ">;",
        "Lcom/amazon/identity/auth/device/shared/APIListener;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.thread.MAPCallbackFuture"

.field private static final MAIN_THREAD_ERROR_MSG:Ljava/lang/String; = "Cannot call get on the main thread, unless you want ANRs"


# instance fields
.field protected mError:Lcom/amazon/identity/auth/device/AuthError;

.field protected final mLatch:Ljava/util/concurrent/CountDownLatch;

.field protected final mListener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

.field protected mSuccessResult:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;-><init>(Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    .line 37
    new-instance p1, Lcom/amazon/identity/auth/device/thread/DefaultAuthorizationListener;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/thread/DefaultAuthorizationListener;-><init>()V

    :cond_a
    iput-object p1, p0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->mListener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    .line 38
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private throwOnMainThread()V
    .registers 3

    .line 111
    invoke-static {}, Lcom/amazon/identity/auth/device/thread/ThreadUtils;->isRunningOnMainThread()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 113
    :cond_7
    sget-object v0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Cannot call get on the main thread, unless you want ANRs"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public get()Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->throwOnMainThread()V

    .line 51
    sget-object v0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Running get on Future"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 53
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->getResultHelper()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->throwOnMainThread()V

    .line 61
    sget-object v0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running get on Future with timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/concurrent/TimeUnit;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 63
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->getResultHelper()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->get()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->get(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method protected getResultHelper()Landroid/os/Bundle;
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->mError:Lcom/amazon/identity/auth/device/AuthError;

    if-eqz v0, :cond_12

    .line 102
    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthError;->getErrorBundle(Lcom/amazon/identity/auth/device/AuthError;)Landroid/os/Bundle;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->FUTURE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;->ERROR:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0

    .line 106
    :cond_12
    iget-object v0, p0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->mSuccessResult:Landroid/os/Bundle;

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .registers 5

    .line 75
    iget-object v0, p0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public onError(Lcom/amazon/identity/auth/device/AuthError;)V
    .registers 3

    .line 93
    iput-object p1, p0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->mError:Lcom/amazon/identity/auth/device/AuthError;

    .line 94
    iget-object v0, p0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 95
    iget-object v0, p0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->mListener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .registers 2

    .line 18
    check-cast p1, Lcom/amazon/identity/auth/device/AuthError;

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->onError(Lcom/amazon/identity/auth/device/AuthError;)V

    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 5

    .line 80
    iput-object p1, p0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->mSuccessResult:Landroid/os/Bundle;

    .line 81
    iget-object v0, p0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->mSuccessResult:Landroid/os/Bundle;

    if-nez v0, :cond_14

    .line 83
    sget-object v0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Null Response"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->mSuccessResult:Landroid/os/Bundle;

    .line 86
    :cond_14
    iget-object v0, p0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->mSuccessResult:Landroid/os/Bundle;

    sget-object v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->FUTURE:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object v1, v1, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    sget-object v2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;->SUCCESS:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$FUTURE_TYPE;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 87
    iget-object v0, p0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 88
    iget-object v0, p0, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->mListener:Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/authorization/api/AuthorizationListener;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .line 18
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/thread/MAPCallbackFuture;->onSuccess(Landroid/os/Bundle;)V

    return-void
.end method
