.class public final Lcom/google/android/gms/wallet/wobs/LoyaltyPoints$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field private final synthetic zzfv:Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPoints$Builder;->zzfv:Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;Lcom/google/android/gms/wallet/wobs/zzf;)V
    .registers 3

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/wallet/wobs/LoyaltyPoints$Builder;-><init>(Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPoints$Builder;->zzfv:Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;

    return-object v0
.end method

.method public final setBalance(Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;)Lcom/google/android/gms/wallet/wobs/LoyaltyPoints$Builder;
    .registers 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPoints$Builder;->zzfv:Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;

    iput-object p1, v0, Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;->zzfu:Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;

    return-object p0
.end method

.method public final setLabel(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/LoyaltyPoints$Builder;
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPoints$Builder;->zzfv:Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;

    iput-object p1, v0, Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;->label:Ljava/lang/String;

    return-object p0
.end method

.method public final setType(Ljava/lang/String;)Lcom/google/android/gms/wallet/wobs/LoyaltyPoints$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final setValidTimeInterval(Lcom/google/android/gms/wallet/wobs/TimeInterval;)Lcom/google/android/gms/wallet/wobs/LoyaltyPoints$Builder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPoints$Builder;->zzfv:Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;

    iput-object p1, v0, Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;->zzcp:Lcom/google/android/gms/wallet/wobs/TimeInterval;

    return-object p0
.end method
