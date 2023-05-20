.class public Lanet/channel/SessionRequest$c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/SessionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation


# instance fields
.field a:Lanet/channel/SessionGetCallback;

.field b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic c:Lanet/channel/SessionRequest;


# direct methods
.method protected constructor <init>(Lanet/channel/SessionRequest;Lanet/channel/SessionGetCallback;)V
    .registers 4

    .line 130
    iput-object p1, p0, Lanet/channel/SessionRequest$c;->c:Lanet/channel/SessionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lanet/channel/SessionRequest$c;->a:Lanet/channel/SessionGetCallback;

    .line 128
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lanet/channel/SessionRequest$c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    iput-object p2, p0, Lanet/channel/SessionRequest$c;->a:Lanet/channel/SessionGetCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 136
    iget-object v0, p0, Lanet/channel/SessionRequest$c;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    .line 137
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "awcn.SessionRequest"

    const-string v3, "get session timeout"

    invoke-static {v2, v3, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lanet/channel/SessionRequest$c;->c:Lanet/channel/SessionRequest;

    .line 1060
    iget-object v0, v0, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    .line 138
    monitor-enter v0

    .line 139
    :try_start_19
    iget-object v1, p0, Lanet/channel/SessionRequest$c;->c:Lanet/channel/SessionRequest;

    .line 2060
    iget-object v1, v1, Lanet/channel/SessionRequest;->g:Ljava/util/HashMap;

    .line 139
    iget-object v2, p0, Lanet/channel/SessionRequest$c;->a:Lanet/channel/SessionGetCallback;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_29

    .line 141
    iget-object v0, p0, Lanet/channel/SessionRequest$c;->a:Lanet/channel/SessionGetCallback;

    invoke-interface {v0}, Lanet/channel/SessionGetCallback;->onSessionGetFail()V

    goto :goto_2c

    :catchall_29
    move-exception v1

    .line 140
    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1

    :cond_2c
    :goto_2c
    return-void
.end method
