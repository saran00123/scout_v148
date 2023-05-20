.class abstract Lcom/google/android/gms/wallet/callback/zza;
.super Landroid/app/Service;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# instance fields
.field private zzeq:Landroid/os/Messenger;

.field private zzer:Ljava/util/concurrent/ExecutorService;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/android/gms/wallet/callback/zzc;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/wallet/callback/zzc;-><init>(Lcom/google/android/gms/wallet/callback/zza;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/wallet/callback/zza;->zzeq:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/wallet/callback/zza;Lcom/google/android/gms/wallet/callback/zzd;)V
    .registers 2

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/callback/zza;->zza(Lcom/google/android/gms/wallet/callback/zzd;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/wallet/callback/zzd;)V
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/zza;->zzer:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/wallet/callback/zza;->zzeq:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .registers 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 3
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 4
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/android/gms/wallet/callback/zzc;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/wallet/callback/zzc;-><init>(Lcom/google/android/gms/wallet/callback/zza;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/wallet/callback/zza;->zzeq:Landroid/os/Messenger;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/wallet/zze;->zza()Lcom/google/android/gms/internal/wallet/zzf;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/wallet/zzj;->zzi:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/wallet/zzf;->zza(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/callback/zza;->zzer:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method protected abstract onRunTask(Ljava/lang/String;Lcom/google/android/gms/wallet/callback/CallbackInput;Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/wallet/callback/CallbackInput;",
            "Lcom/google/android/gms/wallet/callback/OnCompleteListener<",
            "Lcom/google/android/gms/wallet/callback/CallbackOutput;",
            ">;)V"
        }
    .end annotation
.end method
