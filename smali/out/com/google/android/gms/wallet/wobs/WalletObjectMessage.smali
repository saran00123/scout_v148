.class public final Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "WalletObjectMessageCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/wobs/WalletObjectMessage$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzgc:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field

.field zzgd:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x3
    .end annotation
.end field

.field zzgh:Lcom/google/android/gms/wallet/wobs/TimeInterval;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x4
    .end annotation
.end field

.field zzgi:Lcom/google/android/gms/wallet/wobs/UriData;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x5
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field zzgj:Lcom/google/android/gms/wallet/wobs/UriData;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x6
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lcom/google/android/gms/wallet/wobs/zzn;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/zzn;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/wobs/TimeInterval;Lcom/google/android/gms/wallet/wobs/UriData;Lcom/google/android/gms/wallet/wobs/UriData;)V
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/wallet/wobs/TimeInterval;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/wallet/wobs/UriData;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/wallet/wobs/UriData;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;->zzgc:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;->zzgd:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;->zzgh:Lcom/google/android/gms/wallet/wobs/TimeInterval;

    .line 15
    iput-object p4, p0, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;->zzgi:Lcom/google/android/gms/wallet/wobs/UriData;

    .line 16
    iput-object p5, p0, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;->zzgj:Lcom/google/android/gms/wallet/wobs/UriData;

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/wobs/WalletObjectMessage$Builder;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage$Builder;-><init>(Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;Lcom/google/android/gms/wallet/wobs/zzm;)V

    return-object v0
.end method


# virtual methods
.method public final getActionUri()Lcom/google/android/gms/wallet/wobs/UriData;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;->zzgi:Lcom/google/android/gms/wallet/wobs/UriData;

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;->zzgd:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayInterval()Lcom/google/android/gms/wallet/wobs/TimeInterval;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;->zzgh:Lcom/google/android/gms/wallet/wobs/TimeInterval;

    return-object v0
.end method

.method public final getHeader()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;->zzgc:Ljava/lang/String;

    return-object v0
.end method

.method public final getImageUri()Lcom/google/android/gms/wallet/wobs/UriData;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;->zzgj:Lcom/google/android/gms/wallet/wobs/UriData;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;->zzgc:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;->zzgd:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;->zzgh:Lcom/google/android/gms/wallet/wobs/TimeInterval;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;->zzgi:Lcom/google/android/gms/wallet/wobs/UriData;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;->zzgj:Lcom/google/android/gms/wallet/wobs/UriData;

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
