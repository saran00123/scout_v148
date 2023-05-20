.class public final Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/LoyaltyWalletObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field private final synthetic zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/LoyaltyWalletObject;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/LoyaltyWalletObject;Lcom/google/android/gms/wallet/zzo;)V
    .registers 3

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;-><init>(Lcom/google/android/gms/wallet/LoyaltyWalletObject;)V

    return-void
.end method


# virtual methods
.method public final addImageModuleDataMainImageUri(Lcom/google/android/gms/wallet/wobs/UriData;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iget-object v0, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcv:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addImageModuleDataMainImageUris(Ljava/util/Collection;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/wallet/wobs/UriData;",
            ">;)",
            "Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iget-object v0, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcv:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final addInfoModuleDataLabeValueRow(Lcom/google/android/gms/wallet/wobs/LabelValueRow;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iget-object v0, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzct:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addInfoModuleDataLabelValueRows(Ljava/util/Collection;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/wallet/wobs/LabelValueRow;",
            ">;)",
            "Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iget-object v0, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzct:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final addLinksModuleDataUri(Lcom/google/android/gms/wallet/wobs/UriData;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iget-object v0, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcx:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addLinksModuleDataUris(Ljava/util/Collection;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/wallet/wobs/UriData;",
            ">;)",
            "Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iget-object v0, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcx:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final addLocation(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iget-object v0, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addLocations(Ljava/util/Collection;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iget-object v0, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final addMessage(Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iget-object v0, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzco:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addMessages(Ljava/util/Collection;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/wallet/wobs/WalletObjectMessage;",
            ">;)",
            "Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iget-object v0, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzco:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final addTextModuleData(Lcom/google/android/gms/wallet/wobs/TextModuleData;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iget-object v0, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addTextModulesData(Ljava/util/Collection;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/wallet/wobs/TextModuleData;",
            ">;)",
            "Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iget-object v0, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final build()Lcom/google/android/gms/wallet/LoyaltyWalletObject;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    return-object v0
.end method

.method public final setAccountId(Ljava/lang/String;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcf:Ljava/lang/String;

    return-object p0
.end method

.method public final setAccountName(Ljava/lang/String;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzci:Ljava/lang/String;

    return-object p0
.end method

.method public final setBarcodeAlternateText(Ljava/lang/String;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcj:Ljava/lang/String;

    return-object p0
.end method

.method public final setBarcodeLabel(Ljava/lang/String;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcm:Ljava/lang/String;

    return-object p0
.end method

.method public final setBarcodeType(Ljava/lang/String;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzck:Ljava/lang/String;

    return-object p0
.end method

.method public final setBarcodeValue(Ljava/lang/String;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcl:Ljava/lang/String;

    return-object p0
.end method

.method public final setClassId(Ljava/lang/String;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcn:Ljava/lang/String;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzce:Ljava/lang/String;

    return-object p0
.end method

.method public final setInfoModuleDataHexBackgroundColor(Ljava/lang/String;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcs:Ljava/lang/String;

    return-object p0
.end method

.method public final setInfoModuleDataHexFontColor(Ljava/lang/String;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcr:Ljava/lang/String;

    return-object p0
.end method

.method public final setInfoModuleDataShowLastUpdateTime(Z)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcu:Z

    return-object p0
.end method

.method public final setIssuerName(Ljava/lang/String;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcg:Ljava/lang/String;

    return-object p0
.end method

.method public final setLoyaltyPoints(Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcy:Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;

    return-object p0
.end method

.method public final setProgramName(Ljava/lang/String;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzch:Ljava/lang/String;

    return-object p0
.end method

.method public final setState(I)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput p1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->state:I

    return-object p0
.end method

.method public final setValidTimeInterval(Lcom/google/android/gms/wallet/wobs/TimeInterval;)Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject$Builder;->zzcz:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p1, v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzcp:Lcom/google/android/gms/wallet/wobs/TimeInterval;

    return-object p0
.end method
