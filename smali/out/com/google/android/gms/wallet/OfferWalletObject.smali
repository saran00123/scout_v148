.class public final Lcom/google/android/gms/wallet/OfferWalletObject;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "OfferWalletObjectCreator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/wallet/OfferWalletObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final versionCode:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$VersionField;
        getter = "getVersionCode"
        id = 0x1
    .end annotation
.end field

.field zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x4
    .end annotation
.end field

.field zzce:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x2
    .end annotation
.end field

.field zzdc:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        id = 0x3
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Lcom/google/android/gms/wallet/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/OfferWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x3

    .line 21
    iput v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->versionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/wobs/CommonWalletObject;)V
    .registers 5
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/wallet/wobs/CommonWalletObject;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 14
    iput p1, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->versionCode:I

    .line 15
    iput-object p3, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzdc:Ljava/lang/String;

    const/4 p3, 0x3

    if-ge p1, p3, :cond_19

    .line 17
    invoke-static {}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzg()Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zzh()Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    return-void

    .line 18
    :cond_19
    iput-object p4, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;

    new-instance v1, Lcom/google/android/gms/wallet/OfferWalletObject;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/OfferWalletObject;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;-><init>(Lcom/google/android/gms/wallet/OfferWalletObject;Lcom/google/android/gms/wallet/zzr;)V

    return-object v0
.end method


# virtual methods
.method public final getBarcodeAlternateText()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getBarcodeAlternateText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBarcodeLabel()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getBarcodeLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBarcodeType()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getBarcodeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getBarcodeValue()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getBarcodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getClassId()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getClassId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImageModuleDataMainImageUris()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/wallet/wobs/UriData;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getImageModuleDataMainImageUris()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getInfoModuleDataHexBackgroundColor()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getInfoModuleDataHexBackgroundColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInfoModuleDataHexFontColor()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getInfoModuleDataHexFontColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInfoModuleDataLabelValueRows()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/wallet/wobs/LabelValueRow;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getInfoModuleDataLabelValueRows()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getInfoModuleDataShowLastUpdateTime()Z
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getInfoModuleDataShowLastUpdateTime()Z

    move-result v0

    return v0
.end method

.method public final getIssuerName()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getIssuerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getLinksModuleDataUris()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/wallet/wobs/UriData;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getLinksModuleDataUris()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getLocations()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getLocations()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getMessages()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getMessages()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getRedemptionCode()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzdc:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()I
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getState()I

    move-result v0

    return v0
.end method

.method public final getTextModulesData()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/wallet/wobs/TextModuleData;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getTextModulesData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getValidTimeInterval()Lcom/google/android/gms/wallet/wobs/TimeInterval;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->getValidTimeInterval()Lcom/google/android/gms/wallet/wobs/TimeInterval;

    move-result-object v0

    return-object v0
.end method

.method public final getVersionCode()I
    .registers 2

    .line 2
    iget v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->versionCode:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/OfferWalletObject;->getVersionCode()I

    move-result v1

    const/4 v2, 0x1

    .line 7
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzce:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzdc:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    iget-object v1, p0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
