.class final Lcom/google/android/gms/internal/wallet/zzah;
.super Lcom/google/android/gms/wallet/Wallet$zzb;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# instance fields
.field private final synthetic val$requestCode:I

.field private final synthetic zzep:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/wallet/zzaf;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;I)V
    .registers 5

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/wallet/zzah;->zzep:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    iput p4, p0, Lcom/google/android/gms/internal/wallet/zzah;->val$requestCode:I

    invoke-direct {p0, p2}, Lcom/google/android/gms/wallet/Wallet$zzb;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/wallet/zzaa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wallet/Wallet$zza;->zza(Lcom/google/android/gms/internal/wallet/zzaa;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/wallet/zzaa;)V
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/wallet/zzah;->zzep:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    iget v1, p0, Lcom/google/android/gms/internal/wallet/zzah;->val$requestCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/wallet/zzaa;->zza(Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;I)V

    .line 3
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/wallet/zzah;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
