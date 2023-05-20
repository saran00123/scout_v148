.class public Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "IntermediatePaymentDataCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzdh:Landroid/os/Bundle;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field

.field private zzfe:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Lcom/google/android/gms/wallet/callback/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/callback/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;->zzfe:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;->zzdh:Landroid/os/Bundle;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;
    .registers 3

    .line 11
    new-instance v0, Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;

    const-string v1, "JSON cannot be null!"

    .line 12
    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getLastSavedState()Landroid/os/Bundle;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;->zzdh:Landroid/os/Bundle;

    return-object v0
.end method

.method public toJson()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;->zzfe:Ljava/lang/String;

    return-object v0
.end method

.method public withLastSavedState(Landroid/os/Bundle;)Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;
    .registers 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;->zzdh:Landroid/os/Bundle;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;->zzfe:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/wallet/callback/IntermediatePaymentData;->zzdh:Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 9
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
