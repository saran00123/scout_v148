.class public final Lcom/google/android/gms/wallet/CardRequirements$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/CardRequirements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field private final synthetic zzas:Lcom/google/android/gms/wallet/CardRequirements;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/CardRequirements;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zzas:Lcom/google/android/gms/wallet/CardRequirements;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/CardRequirements;Lcom/google/android/gms/wallet/zzd;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/CardRequirements$Builder;-><init>(Lcom/google/android/gms/wallet/CardRequirements;)V

    return-void
.end method


# virtual methods
.method public final addAllowedCardNetwork(I)Lcom/google/android/gms/wallet/CardRequirements$Builder;
    .registers 4

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zzas:Lcom/google/android/gms/wallet/CardRequirements;

    iget-object v0, v0, Lcom/google/android/gms/wallet/CardRequirements;->zzao:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zzas:Lcom/google/android/gms/wallet/CardRequirements;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/CardRequirements;->zzao:Ljava/util/ArrayList;

    .line 4
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zzas:Lcom/google/android/gms/wallet/CardRequirements;

    iget-object v0, v0, Lcom/google/android/gms/wallet/CardRequirements;->zzao:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addAllowedCardNetworks(Ljava/util/Collection;)Lcom/google/android/gms/wallet/CardRequirements$Builder;
    .registers 4
    .param p1    # Ljava/util/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/wallet/CardRequirements$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 7
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v1, "allowedCardNetworks can\'t be null or empty! You must provide a valid value from WalletConstants.CardNetwork."

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zzas:Lcom/google/android/gms/wallet/CardRequirements;

    iget-object v0, v0, Lcom/google/android/gms/wallet/CardRequirements;->zzao:Ljava/util/ArrayList;

    if-nez v0, :cond_1f

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zzas:Lcom/google/android/gms/wallet/CardRequirements;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/CardRequirements;->zzao:Ljava/util/ArrayList;

    .line 11
    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zzas:Lcom/google/android/gms/wallet/CardRequirements;

    iget-object v0, v0, Lcom/google/android/gms/wallet/CardRequirements;->zzao:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final build()Lcom/google/android/gms/wallet/CardRequirements;
    .registers 3

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zzas:Lcom/google/android/gms/wallet/CardRequirements;

    iget-object v0, v0, Lcom/google/android/gms/wallet/CardRequirements;->zzao:Ljava/util/ArrayList;

    const-string v1, "Allowed card networks must be non-empty! You can set it through addAllowedCardNetwork() or addAllowedCardNetworks() in the CardRequirements Builder."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zzas:Lcom/google/android/gms/wallet/CardRequirements;

    return-object v0
.end method

.method public final setAllowPrepaidCards(Z)Lcom/google/android/gms/wallet/CardRequirements$Builder;
    .registers 3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zzas:Lcom/google/android/gms/wallet/CardRequirements;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/CardRequirements;->zzap:Z

    return-object p0
.end method

.method public final setBillingAddressFormat(I)Lcom/google/android/gms/wallet/CardRequirements$Builder;
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zzas:Lcom/google/android/gms/wallet/CardRequirements;

    iput p1, v0, Lcom/google/android/gms/wallet/CardRequirements;->zzar:I

    return-object p0
.end method

.method public final setBillingAddressRequired(Z)Lcom/google/android/gms/wallet/CardRequirements$Builder;
    .registers 3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/wallet/CardRequirements$Builder;->zzas:Lcom/google/android/gms/wallet/CardRequirements;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/CardRequirements;->zzaq:Z

    return-object p0
.end method
