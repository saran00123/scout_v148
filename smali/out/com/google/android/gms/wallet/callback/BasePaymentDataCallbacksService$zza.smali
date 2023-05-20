.class final Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService$zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@18.1.2"

# interfaces
.implements Lcom/google/android/gms/wallet/callback/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/wallet/callback/OnCompleteListener<",
        "Lcom/google/android/gms/wallet/callback/PaymentAuthorizationResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzew:Lcom/google/android/gms/wallet/callback/OnCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/wallet/callback/OnCompleteListener<",
            "Lcom/google/android/gms/wallet/callback/CallbackOutput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wallet/callback/OnCompleteListener<",
            "Lcom/google/android/gms/wallet/callback/CallbackOutput;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService$zza;->zzew:Lcom/google/android/gms/wallet/callback/OnCompleteListener;

    return-void
.end method

.method private final declared-synchronized zza(Lcom/google/android/gms/wallet/callback/PaymentAuthorizationResult;)V
    .registers 5

    monitor-enter p0

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService$zza;->zzew:Lcom/google/android/gms/wallet/callback/OnCompleteListener;

    .line 5
    invoke-static {}, Lcom/google/android/gms/wallet/callback/CallbackOutput;->zze()Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;

    move-result-object v1

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;->zzb(I)Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;->zzc(I)Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;

    move-result-object v1

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->serializeToBytes(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)[B

    move-result-object p1

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;->zza([B)Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;

    move-result-object p1

    .line 10
    iget-object p1, p1, Lcom/google/android/gms/wallet/callback/CallbackOutput$zza;->zzfd:Lcom/google/android/gms/wallet/callback/CallbackOutput;

    .line 11
    invoke-interface {v0, p1}, Lcom/google/android/gms/wallet/callback/OnCompleteListener;->complete(Ljava/lang/Object;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 12
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final synthetic complete(Ljava/lang/Object;)V
    .registers 2

    .line 13
    check-cast p1, Lcom/google/android/gms/wallet/callback/PaymentAuthorizationResult;

    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService$zza;->zza(Lcom/google/android/gms/wallet/callback/PaymentAuthorizationResult;)V

    return-void
.end method
