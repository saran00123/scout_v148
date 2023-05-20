.class public abstract Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService;
.super Lcom/google/android/gms/wallet/callback/zza;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService$zzb;,
        Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/wallet/callback/zza;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract createPaymentDataCallbacks()Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacks;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 14
    invoke-super {p0, p1}, Lcom/google/android/gms/wallet/callback/zza;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .registers 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 15
    invoke-super {p0}, Lcom/google/android/gms/wallet/callback/zza;->onCreate()V

    return-void
.end method

.method protected final onRunTask(Ljava/lang/String;Lcom/google/android/gms/wallet/callback/CallbackInput;Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V
    .registers 6
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

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/wallet/callback/CallbackInput;->getCallbackType()I

    move-result p1

    if-eqz p1, :cond_42

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService;->createPaymentDataCallbacks()Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacks;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/wallet/callback/CallbackInput;->getCallbackType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 5
    sget-object v0, Lcom/google/android/gms/wallet/PaymentData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/wallet/callback/CallbackInput;->deserializeRequest(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/wallet/PaymentData;

    .line 6
    new-instance v0, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService$zza;

    invoke-direct {v0, p3}, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService$zza;-><init>(Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacks;->onPaymentAuthorized(Lcom/google/android/gms/wallet/PaymentData;Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V

    return-void

    .line 7
    :cond_22
    invoke-virtual {p2}, Lcom/google/android/gms/wallet/callback/CallbackInput;->getCallbackType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    .line 8
    sget-object v0, Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    invoke-virtual {p2, v0}, Lcom/google/android/gms/wallet/callback/CallbackInput;->deserializeRequest(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;

    .line 10
    new-instance v0, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService$zzb;

    invoke-direct {v0, p3}, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacksService$zzb;-><init>(Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/wallet/callback/BasePaymentDataCallbacks;->onPaymentDataChanged(Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;Lcom/google/android/gms/wallet/callback/OnCompleteListener;)V

    return-void

    .line 12
    :cond_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown Callback Types"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Callback Types must be set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
