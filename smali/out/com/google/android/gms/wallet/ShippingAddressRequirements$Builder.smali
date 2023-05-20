.class public final Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/ShippingAddressRequirements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field private final synthetic zzed:Lcom/google/android/gms/wallet/ShippingAddressRequirements;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/ShippingAddressRequirements;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;->zzed:Lcom/google/android/gms/wallet/ShippingAddressRequirements;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/ShippingAddressRequirements;Lcom/google/android/gms/wallet/zzaf;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;-><init>(Lcom/google/android/gms/wallet/ShippingAddressRequirements;)V

    return-void
.end method


# virtual methods
.method public final addAllowedCountryCode(Ljava/lang/String;)Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "allowedCountryCode can\'t be null or empty! If you don\'t have restrictions, just leave it unset."

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;->zzed:Lcom/google/android/gms/wallet/ShippingAddressRequirements;

    iget-object v0, v0, Lcom/google/android/gms/wallet/ShippingAddressRequirements;->zzec:Ljava/util/ArrayList;

    if-nez v0, :cond_14

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;->zzed:Lcom/google/android/gms/wallet/ShippingAddressRequirements;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/ShippingAddressRequirements;->zzec:Ljava/util/ArrayList;

    .line 5
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;->zzed:Lcom/google/android/gms/wallet/ShippingAddressRequirements;

    iget-object v0, v0, Lcom/google/android/gms/wallet/ShippingAddressRequirements;->zzec:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addAllowedCountryCodes(Ljava/util/Collection;)Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;
    .registers 4
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1f

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;->zzed:Lcom/google/android/gms/wallet/ShippingAddressRequirements;

    iget-object v0, v0, Lcom/google/android/gms/wallet/ShippingAddressRequirements;->zzec:Ljava/util/ArrayList;

    if-nez v0, :cond_17

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;->zzed:Lcom/google/android/gms/wallet/ShippingAddressRequirements;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/ShippingAddressRequirements;->zzec:Ljava/util/ArrayList;

    .line 11
    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;->zzed:Lcom/google/android/gms/wallet/ShippingAddressRequirements;

    iget-object v0, v0, Lcom/google/android/gms/wallet/ShippingAddressRequirements;->zzec:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0

    .line 8
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "allowedCountryCodes can\'t be null or empty! If you don\'t have restrictions, just leave it unset."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final build()Lcom/google/android/gms/wallet/ShippingAddressRequirements;
    .registers 2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/wallet/ShippingAddressRequirements$Builder;->zzed:Lcom/google/android/gms/wallet/ShippingAddressRequirements;

    return-object v0
.end method
