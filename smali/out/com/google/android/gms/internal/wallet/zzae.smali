.class final Lcom/google/android/gms/internal/wallet/zzae;
.super Lcom/google/android/gms/internal/wallet/zzac;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# instance fields
.field private final zzfo:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/wallet/AutoResolvableVoidResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/wallet/AutoResolvableVoidResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/wallet/zzac;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/wallet/zzae;->zzfo:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/os/Bundle;)V
    .registers 5

    const-string v0, "com.google.android.gms.wallet.EXTRA_PENDING_INTENT"

    .line 4
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    if-eqz p2, :cond_15

    const/4 v0, 0x6

    if-ne p1, v0, :cond_15

    .line 6
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Need to resolve PendingIntent"

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    goto :goto_1a

    .line 7
    :cond_15
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 8
    :goto_1a
    new-instance p1, Lcom/google/android/gms/wallet/AutoResolvableVoidResult;

    invoke-direct {p1}, Lcom/google/android/gms/wallet/AutoResolvableVoidResult;-><init>()V

    iget-object p2, p0, Lcom/google/android/gms/internal/wallet/zzae;->zzfo:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/wallet/AutoResolveHelper;->zza(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
