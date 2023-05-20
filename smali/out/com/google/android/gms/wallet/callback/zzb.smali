.class final Lcom/google/android/gms/wallet/callback/zzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@18.1.2"

# interfaces
.implements Lcom/google/android/gms/wallet/callback/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/wallet/callback/OnCompleteListener<",
        "Lcom/google/android/gms/wallet/callback/CallbackOutput;",
        ">;"
    }
.end annotation


# instance fields
.field private replyTo:Landroid/os/Messenger;

.field private final zzes:I


# direct methods
.method constructor <init>(Landroid/os/Messenger;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/wallet/callback/zzb;->replyTo:Landroid/os/Messenger;

    .line 3
    iput p2, p0, Lcom/google/android/gms/wallet/callback/zzb;->zzes:I

    return-void
.end method


# virtual methods
.method public final synthetic complete(Ljava/lang/Object;)V
    .registers 2

    .line 24
    check-cast p1, Lcom/google/android/gms/wallet/callback/CallbackOutput;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/callback/zzb;->zza(Lcom/google/android/gms/wallet/callback/CallbackOutput;)V

    return-void
.end method

.method public final declared-synchronized zza(Lcom/google/android/gms/wallet/callback/CallbackOutput;)V
    .registers 5

    monitor-enter p0

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/zzb;->replyTo:Landroid/os/Messenger;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_41

    if-eqz v0, :cond_3f

    .line 7
    :try_start_5
    iget v0, p1, Lcom/google/android/gms/wallet/callback/CallbackOutput;->zzfa:I

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const-string v2, "Callback Response Status must be set - status value must be non-zero."

    .line 9
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 10
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 11
    iput v1, v0, Landroid/os/Message;->what:I

    .line 12
    iget v1, p0, Lcom/google/android/gms/wallet/callback/zzb;->zzes:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_callback_output"

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToBytes(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object p1

    .line 16
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 18
    iget-object p1, p0, Lcom/google/android/gms/wallet/callback/zzb;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/wallet/callback/zzb;->replyTo:Landroid/os/Messenger;
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_35} :catch_37
    .catchall {:try_start_5 .. :try_end_35} :catchall_41

    .line 20
    monitor-exit p0

    return-void

    :catch_37
    move-exception p1

    :try_start_38
    const-string v0, "BaseCallbackTaskService"

    const-string v1, "Error sending result of task to the callback service client for BaseCallbackTaskService"

    .line 22
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_41

    .line 23
    :cond_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method
