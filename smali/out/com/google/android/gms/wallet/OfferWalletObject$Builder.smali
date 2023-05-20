.class public final Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/OfferWalletObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field private zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

.field private final synthetic zzdd:Lcom/google/android/gms/wallet/OfferWalletObject;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/OfferWalletObject;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzdd:Lcom/google/android/gms/wallet/OfferWalletObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzg()Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/OfferWalletObject;Lcom/google/android/gms/wallet/zzr;)V
    .registers 3

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;-><init>(Lcom/google/android/gms/wallet/OfferWalletObject;)V

    return-void
.end method


# virtual methods
.method public final addImageModuleDataMainImageUri(Lcom/google/android/gms/wallet/wobs/UriData;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zza(Lcom/google/android/gms/wallet/wobs/UriData;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final addImageModuleDataMainImageUris(Ljava/util/Collection;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/wallet/wobs/UriData;",
            ">;)",
            "Lcom/google/android/gms/wallet/OfferWalletObject$Builder;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zzd(Ljava/util/Collection;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final addInfoModuleDataLabelValueRow(Lcom/google/android/gms/wallet/wobs/LabelValueRow;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zza(Lcom/google/android/gms/wallet/wobs/LabelValueRow;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final addInfoModuleDataLabelValueRows(Ljava/util/Collection;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/wallet/wobs/LabelValueRow;",
            ">;)",
            "Lcom/google/android/gms/wallet/OfferWalletObject$Builder;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zzc(Ljava/util/Collection;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final addLinksModuleDataUri(Lcom/google/android/gms/wallet/wobs/UriData;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zzb(Lcom/google/android/gms/wallet/wobs/UriData;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final addLinksModuleDataUris(Ljava/util/Collection;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/wallet/wobs/UriData;",
            ">;)",
            "Lcom/google/android/gms/wallet/OfferWalletObject$Builder;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zzf(Ljava/util/Collection;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final addLocation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zza(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final addLocations(Ljava/util/Collection;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/wallet/OfferWalletObject$Builder;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zzb(Ljava/util/Collection;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final addMessage(Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zza(Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final addMessages(Ljava/util/Collection;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;",
            ">;)",
            "Lcom/google/android/gms/wallet/OfferWalletObject$Builder;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zza(Ljava/util/Collection;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final addTextModuleData(Lcom/google/android/gms/wallet/wobs/TextModuleData;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zza(Lcom/google/android/gms/wallet/wobs/TextModuleData;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final addTextModulesData(Ljava/util/Collection;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/wallet/wobs/TextModuleData;",
            ">;)",
            "Lcom/google/android/gms/wallet/OfferWalletObject$Builder;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zze(Ljava/util/Collection;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final build()Lcom/google/android/gms/wallet/OfferWalletObject;
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzdd:Lcom/google/android/gms/wallet/OfferWalletObject;

    iget-object v1, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zzh()Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzbn:Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzdd:Lcom/google/android/gms/wallet/OfferWalletObject;

    return-object v0
.end method

.method public final setBarcodeAlternateText(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zze(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final setBarcodeLabel(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zzh(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final setBarcodeType(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zzf(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final setBarcodeValue(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zzg(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final setClassId(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zzb(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzdd:Lcom/google/android/gms/wallet/OfferWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzce:Ljava/lang/String;

    return-object p0
.end method

.method public final setInfoModuleDataHexBackgroundColor(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zzj(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final setInfoModuleDataHexFontColor(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zzi(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final setInfoModuleDataShowLastUpdateTime(Z)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zza(Z)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final setIssuerName(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zzd(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final setRedemptionCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzdd:Lcom/google/android/gms/wallet/OfferWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/OfferWalletObject;->zzdc:Ljava/lang/String;

    return-object p0
.end method

.method public final setState(I)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zzd(I)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zzc(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method

.method public final setValidTimeInterval(Lcom/google/android/gms/wallet/wobs/TimeInterval;)Lcom/google/android/gms/wallet/OfferWalletObject$Builder;
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/wallet/OfferWalletObject$Builder;->zzbu:Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;->zza(Lcom/google/android/gms/wallet/wobs/TimeInterval;)Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    return-object p0
.end method
