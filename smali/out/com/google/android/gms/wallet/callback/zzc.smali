.class final Lcom/google/android/gms/wallet/callback/zzc;
.super Lcom/google/android/gms/internal/wallet/zzi;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# instance fields
.field private final synthetic zzet:Lcom/google/android/gms/wallet/callback/zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wallet/callback/zza;Landroid/os/Looper;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wallet/callback/zzc;->zzet:Lcom/google/android/gms/wallet/callback/zza;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/wallet/zzi;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 4
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_5

    return-void

    .line 7
    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_callback_input"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 8
    sget-object v1, Lcom/google/android/gms/wallet/callback/CallbackInput;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromBytes([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/wallet/callback/CallbackInput;

    .line 10
    new-instance v0, Lcom/google/android/gms/wallet/callback/zzd;

    iget-object v2, p0, Lcom/google/android/gms/wallet/callback/zzc;->zzet:Lcom/google/android/gms/wallet/callback/zza;

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 11
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "message_task_tag"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/wallet/callback/zzd;-><init>(Lcom/google/android/gms/wallet/callback/zza;Lcom/google/android/gms/wallet/callback/CallbackInput;Landroid/os/Messenger;Ljava/lang/String;I)V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/wallet/callback/zzc;->zzet:Lcom/google/android/gms/wallet/callback/zza;

    invoke-static {p1, v0}, Lcom/google/android/gms/wallet/callback/zza;->zza(Lcom/google/android/gms/wallet/callback/zza;Lcom/google/android/gms/wallet/callback/zzd;)V

    return-void
.end method
