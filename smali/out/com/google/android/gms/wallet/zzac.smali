.class final synthetic Lcom/google/android/gms/wallet/zzac;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@18.1.2"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zzdx:Lcom/google/android/gms/wallet/PaymentDataRequest;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wallet/PaymentDataRequest;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/zzac;->zzdx:Lcom/google/android/gms/wallet/PaymentDataRequest;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/wallet/zzac;->zzdx:Lcom/google/android/gms/wallet/PaymentDataRequest;

    check-cast p1, Lcom/google/android/gms/internal/wallet/zzaa;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/wallet/zzaa;->zza(Lcom/google/android/gms/wallet/PaymentDataRequest;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
