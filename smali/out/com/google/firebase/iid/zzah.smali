.class final synthetic Lcom/google/firebase/iid/zzah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcj:Lcom/google/firebase/iid/zzac;


# direct methods
.method constructor <init>(Lcom/google/firebase/iid/zzac;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/iid/zzah;->zzcj:Lcom/google/firebase/iid/zzac;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/google/firebase/iid/zzah;->zzcj:Lcom/google/firebase/iid/zzac;

    .line 2
    :goto_2
    monitor-enter v0

    .line 3
    :try_start_3
    iget v1, v0, Lcom/google/firebase/iid/zzac;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_a
    iget-object v1, v0, Lcom/google/firebase/iid/zzac;->zzcg:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 6
    invoke-virtual {v0}, Lcom/google/firebase/iid/zzac;->zzz()V

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_17
    iget-object v1, v0, Lcom/google/firebase/iid/zzac;->zzcg:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/iid/zzal;

    .line 9
    iget-object v3, v0, Lcom/google/firebase/iid/zzac;->zzch:Landroid/util/SparseArray;

    iget v4, v1, Lcom/google/firebase/iid/zzal;->zzcm:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v3, v0, Lcom/google/firebase/iid/zzac;->zzci:Lcom/google/firebase/iid/zzab;

    .line 11
    invoke-static {v3}, Lcom/google/firebase/iid/zzab;->zzb(Lcom/google/firebase/iid/zzab;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v4, Lcom/google/firebase/iid/zzag;

    invoke-direct {v4, v0, v1}, Lcom/google/firebase/iid/zzag;-><init>(Lcom/google/firebase/iid/zzac;Lcom/google/firebase/iid/zzal;)V

    const-wide/16 v5, 0x1e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 12
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_ae

    const/4 v3, 0x3

    const-string v4, "MessengerIpcClient"

    .line 14
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Sending "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MessengerIpcClient"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_66
    iget-object v3, v0, Lcom/google/firebase/iid/zzac;->zzci:Lcom/google/firebase/iid/zzab;

    invoke-static {v3}, Lcom/google/firebase/iid/zzab;->zza(Lcom/google/firebase/iid/zzab;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcom/google/firebase/iid/zzac;->zzce:Landroid/os/Messenger;

    .line 17
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 18
    iget v6, v1, Lcom/google/firebase/iid/zzal;->what:I

    iput v6, v5, Landroid/os/Message;->what:I

    .line 19
    iget v6, v1, Lcom/google/firebase/iid/zzal;->zzcm:I

    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 20
    iput-object v4, v5, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 21
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 22
    invoke-virtual {v1}, Lcom/google/firebase/iid/zzal;->zzab()Z

    move-result v6

    const-string v7, "oneWay"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "pkg"

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v1, v1, Lcom/google/firebase/iid/zzal;->zzco:Landroid/os/Bundle;

    const-string v3, "data"

    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {v5, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 28
    :try_start_9d
    iget-object v1, v0, Lcom/google/firebase/iid/zzac;->zzcf:Lcom/google/firebase/iid/zzaj;

    invoke-virtual {v1, v5}, Lcom/google/firebase/iid/zzaj;->send(Landroid/os/Message;)V
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_a2} :catch_a4

    goto/16 :goto_2

    :catch_a4
    move-exception v1

    .line 31
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/iid/zzac;->zza(ILjava/lang/String;)V

    goto/16 :goto_2

    :catchall_ae
    move-exception v1

    .line 12
    :try_start_af
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw v1
.end method
