.class final Lcom/google/android/gms/wallet/zzal;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/wallet/zzaa;",
        "Lcom/google/android/gms/wallet/AutoResolvableVoidResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzep:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wallet/WalletObjectsClient;Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/wallet/zzal;->zzep:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/wallet/zzaa;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/wallet/zzal;->zzep:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/wallet/zzaa;->zza(Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
