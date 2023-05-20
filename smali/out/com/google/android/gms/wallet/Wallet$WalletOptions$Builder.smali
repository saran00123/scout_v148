.class public final Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wallet/Wallet$WalletOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private environment:I

.field private theme:I

.field private zzem:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->environment:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->theme:I

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->zzem:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)I
    .registers 1

    .line 18
    iget p0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->environment:I

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)I
    .registers 1

    .line 19
    iget p0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->theme:I

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;)Z
    .registers 1

    .line 20
    iget-boolean p0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->zzem:Z

    return p0
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/wallet/Wallet$WalletOptions;
    .registers 3

    .line 17
    new-instance v0, Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions;-><init>(Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;Lcom/google/android/gms/wallet/zzaj;)V

    return-object v0
.end method

.method public final setEnvironment(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;
    .registers 5

    if-eqz p1, :cond_29

    if-eqz p1, :cond_29

    const/4 v0, 0x2

    if-eq p1, v0, :cond_29

    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/16 v1, 0x17

    if-eq p1, v1, :cond_29

    const/4 v1, 0x3

    if-ne p1, v1, :cond_12

    goto :goto_29

    .line 7
    :cond_12
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Invalid environment value %d"

    invoke-static {v1, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_29
    :goto_29
    iput p1, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->environment:I

    return-object p0
.end method

.method public final setTheme(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;
    .registers 5

    if-eqz p1, :cond_23

    const/4 v0, 0x1

    if-eq p1, v0, :cond_23

    const/4 v1, 0x2

    if-eq p1, v1, :cond_23

    const/4 v1, 0x3

    if-ne p1, v1, :cond_c

    goto :goto_23

    .line 12
    :cond_c
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "Invalid theme value %d"

    invoke-static {v1, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_23
    :goto_23
    iput p1, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->theme:I

    return-object p0
.end method

.method public final useGoogleWallet()Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->zzem:Z

    return-object p0
.end method
