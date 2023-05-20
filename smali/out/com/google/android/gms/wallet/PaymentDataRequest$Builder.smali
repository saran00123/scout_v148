.class public final Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/PaymentDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final synthetic zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/PaymentDataRequest;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/PaymentDataRequest;Lcom/google/android/gms/wallet/zzv;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;-><init>(Lcom/google/android/gms/wallet/PaymentDataRequest;)V

    return-void
.end method


# virtual methods
.method public final addAllowedPaymentMethod(I)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .registers 4

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzca:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzca:Ljava/util/ArrayList;

    .line 14
    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzca:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addAllowedPaymentMethods(Ljava/util/Collection;)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
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
            "Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 17
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v1, "allowedPaymentMethods can\'t be null or empty!"

    .line 18
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzca:Ljava/util/ArrayList;

    if-nez v0, :cond_1f

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzca:Ljava/util/ArrayList;

    .line 21
    :cond_1f
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzca:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public final build()Lcom/google/android/gms/wallet/PaymentDataRequest;
    .registers 3

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzcc:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzca:Ljava/util/ArrayList;

    const-string v1, "Allowed payment methods must be set! You can set it through addAllowedPaymentMethod() or addAllowedPaymentMethods() in the PaymentDataRequest Builder."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzdl:Lcom/google/android/gms/wallet/CardRequirements;

    const-string v1, "Card requirements must be set!"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzdo:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    if-eqz v0, :cond_27

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iget-object v0, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzdp:Lcom/google/android/gms/wallet/TransactionInfo;

    const-string v1, "Transaction info must be set if paymentMethodTokenizationParameters is set!"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    return-object v0
.end method

.method public final setCardRequirements(Lcom/google/android/gms/wallet/CardRequirements;)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .registers 3
    .param p1    # Lcom/google/android/gms/wallet/CardRequirements;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzdl:Lcom/google/android/gms/wallet/CardRequirements;

    return-object p0
.end method

.method public final setEmailRequired(Z)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzdj:Z

    return-object p0
.end method

.method public final setPaymentMethodTokenizationParameters(Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .registers 3

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzdo:Lcom/google/android/gms/wallet/PaymentMethodTokenizationParameters;

    return-object p0
.end method

.method public final setPhoneNumberRequired(Z)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzdk:Z

    return-object p0
.end method

.method public final setShippingAddressRequired(Z)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .registers 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzdm:Z

    return-object p0
.end method

.method public final setShippingAddressRequirements(Lcom/google/android/gms/wallet/ShippingAddressRequirements;)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .registers 3
    .param p1    # Lcom/google/android/gms/wallet/ShippingAddressRequirements;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzdn:Lcom/google/android/gms/wallet/ShippingAddressRequirements;

    return-object p0
.end method

.method public final setTransactionInfo(Lcom/google/android/gms/wallet/TransactionInfo;)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .registers 3
    .param p1    # Lcom/google/android/gms/wallet/TransactionInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iput-object p1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzdp:Lcom/google/android/gms/wallet/TransactionInfo;

    return-object p0
.end method

.method public final setUiRequired(Z)Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/wallet/PaymentDataRequest$Builder;->zzdr:Lcom/google/android/gms/wallet/PaymentDataRequest;

    iput-boolean p1, v0, Lcom/google/android/gms/wallet/PaymentDataRequest;->zzdq:Z

    return-object p0
.end method
