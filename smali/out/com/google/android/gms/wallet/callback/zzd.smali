.class final Lcom/google/android/gms/wallet/callback/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@18.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final tag:Ljava/lang/String;

.field private final synthetic zzet:Lcom/google/android/gms/wallet/callback/zza;

.field private final zzeu:Lcom/google/android/gms/wallet/callback/CallbackInput;

.field private final zzev:Lcom/google/android/gms/wallet/callback/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wallet/callback/zza;Lcom/google/android/gms/wallet/callback/CallbackInput;Landroid/os/Messenger;Ljava/lang/String;I)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wallet/callback/zzd;->zzet:Lcom/google/android/gms/wallet/callback/zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/wallet/callback/zzd;->zzeu:Lcom/google/android/gms/wallet/callback/CallbackInput;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/wallet/callback/zzd;->tag:Ljava/lang/String;

    .line 4
    new-instance p1, Lcom/google/android/gms/wallet/callback/zzb;

    invoke-direct {p1, p3, p5}, Lcom/google/android/gms/wallet/callback/zzb;-><init>(Landroid/os/Messenger;I)V

    iput-object p1, p0, Lcom/google/android/gms/wallet/callback/zzd;->zzev:Lcom/google/android/gms/wallet/callback/zzb;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const-string v0, "BaseCallbackTaskService"

    const/4 v1, 0x4

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 7
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/wallet/callback/zzd;->tag:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "Running Callback Task w/ tag %s"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/zzd;->zzet:Lcom/google/android/gms/wallet/callback/zza;

    iget-object v1, p0, Lcom/google/android/gms/wallet/callback/zzd;->tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/wallet/callback/zzd;->zzeu:Lcom/google/android/gms/wallet/callback/CallbackInput;

    iget-object v3, p0, Lcom/google/android/gms/wallet/callback/zzd;->zzev:Lcom/google/android/gms/wallet/callback/zzb;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/wallet/callback/zza;->onRunTask(Ljava/lang/String;Lcom/google/android/gms/wallet/callback/CallbackInput;Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception v0

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/wallet/callback/zzd;->zzev:Lcom/google/android/gms/wallet/callback/zzb;

    .line 12
    invoke-static {}, Lcom/google/android/gms/wallet/callback/CallbackOutput;->zze()Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/wallet/callback/zzd;->zzeu:Lcom/google/android/gms/wallet/callback/CallbackInput;

    iget v3, v3, Lcom/google/android/gms/wallet/callback/CallbackInput;->zzex:I

    .line 13
    invoke-virtual {v2, v3}, Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;->zzb(I)Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;

    move-result-object v2

    const/4 v3, 0x5

    .line 14
    invoke-virtual {v2, v3}, Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;->zzc(I)Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;

    move-result-object v2

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 16
    iget-object v4, v2, Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;->zzfd:Lcom/google/android/gms/wallet/callback/CallbackOutput;

    iput-object v3, v4, Lcom/google/android/gms/wallet/callback/CallbackOutput;->zzfc:Ljava/lang/String;

    .line 17
    iget-object v2, v2, Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;->zzfd:Lcom/google/android/gms/wallet/callback/CallbackOutput;

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/callback/zzb;->zza(Lcom/google/android/gms/wallet/callback/CallbackOutput;)V

    .line 19
    throw v0
.end method
