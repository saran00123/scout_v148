.class public final Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field private final synthetic zzax:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;->zzax:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;Lcom/google/android/gms/wallet/zzf;)V
    .registers 3

    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;-><init>(Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;
    .registers 5

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;->zzax:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->zzav:Lcom/google/android/gms/wallet/GiftCardWalletObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 11
    :goto_b
    iget-object v3, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;->zzax:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    iget-object v3, v3, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->zzat:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    if-nez v3, :cond_13

    move v3, v1

    goto :goto_14

    :cond_13
    move v3, v2

    :goto_14
    add-int/2addr v0, v3

    .line 12
    iget-object v3, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;->zzax:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    iget-object v3, v3, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->zzau:Lcom/google/android/gms/wallet/OfferWalletObject;

    if-nez v3, :cond_1d

    move v3, v1

    goto :goto_1e

    :cond_1d
    move v3, v2

    :goto_1e
    add-int/2addr v0, v3

    if-ne v0, v2, :cond_22

    move v1, v2

    :cond_22
    const-string v0, "CreateWalletObjectsRequest must have exactly one Wallet Object"

    .line 13
    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;->zzax:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    return-object v0
.end method

.method public final setCreateMode(I)Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;->zzax:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    iput p1, v0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->zzaw:I

    return-object p0
.end method

.method public final setGiftCardWalletObject(Lcom/google/android/gms/wallet/GiftCardWalletObject;)Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;
    .registers 3

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;->zzax:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->zzav:Lcom/google/android/gms/wallet/GiftCardWalletObject;

    return-object p0
.end method

.method public final setLoyaltyWalletObject(Lcom/google/android/gms/wallet/LoyaltyWalletObject;)Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;->zzax:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->zzat:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    return-object p0
.end method

.method public final setOfferWalletObject(Lcom/google/android/gms/wallet/OfferWalletObject;)Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest$Builder;->zzax:Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->zzau:Lcom/google/android/gms/wallet/OfferWalletObject;

    return-object p0
.end method
