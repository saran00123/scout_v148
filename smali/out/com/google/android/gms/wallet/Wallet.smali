.class public final Lcom/google/android/gms/wallet/Wallet;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-wallet@@18.1.2"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/Wallet$zzb;,
        Lcom/google/android/gms/wallet/Wallet$zza;,
        Lcom/google/android/gms/wallet/Wallet$WalletOptions;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/wallet/Wallet$WalletOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$ClientKey<",
            "Lcom/google/android/gms/internal/wallet/zzaa;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzei:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$AbstractClientBuilder<",
            "Lcom/google/android/gms/internal/wallet/zzaa;",
            "Lcom/google/android/gms/wallet/Wallet$WalletOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzej:Lcom/google/android/gms/wallet/zzaa;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzek:Lcom/google/android/gms/wallet/wobs/WalletObjects;

.field private static final zzel:Lcom/google/android/gms/internal/wallet/zzm;
    .annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 5
    new-instance v0, Lcom/google/android/gms/common/api/Api$ClientKey;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$ClientKey;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/Wallet;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    .line 6
    new-instance v0, Lcom/google/android/gms/wallet/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/Wallet;->zzei:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    .line 7
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/wallet/Wallet;->zzei:Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;

    sget-object v2, Lcom/google/android/gms/wallet/Wallet;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$ClientKey;

    const-string v3, "Wallet.API"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$AbstractClientBuilder;Lcom/google/android/gms/common/api/Api$ClientKey;)V

    sput-object v0, Lcom/google/android/gms/wallet/Wallet;->API:Lcom/google/android/gms/common/api/Api;

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/wallet/zzx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wallet/zzx;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/Wallet;->zzej:Lcom/google/android/gms/wallet/zzaa;

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/wallet/zzaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wallet/zzaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/Wallet;->zzek:Lcom/google/android/gms/wallet/wobs/WalletObjects;

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/wallet/zzag;

    invoke-direct {v0}, Lcom/google/android/gms/internal/wallet/zzag;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/Wallet;->zzel:Lcom/google/android/gms/internal/wallet/zzm;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPaymentsClient(Landroid/app/Activity;Lcom/google/android/gms/wallet/Wallet$WalletOptions;)Lcom/google/android/gms/wallet/PaymentsClient;
    .registers 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/wallet/Wallet$WalletOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/google/android/gms/wallet/PaymentsClient;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wallet/PaymentsClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/wallet/Wallet$WalletOptions;)V

    return-object v0
.end method

.method public static getPaymentsClient(Landroid/content/Context;Lcom/google/android/gms/wallet/Wallet$WalletOptions;)Lcom/google/android/gms/wallet/PaymentsClient;
    .registers 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/wallet/Wallet$WalletOptions;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lcom/google/android/gms/wallet/PaymentsClient;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wallet/PaymentsClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/wallet/Wallet$WalletOptions;)V

    return-object v0
.end method

.method public static getWalletObjectsClient(Landroid/app/Activity;Lcom/google/android/gms/wallet/Wallet$WalletOptions;)Lcom/google/android/gms/wallet/WalletObjectsClient;
    .registers 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/wallet/Wallet$WalletOptions;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    new-instance v0, Lcom/google/android/gms/wallet/WalletObjectsClient;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/wallet/WalletObjectsClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/wallet/Wallet$WalletOptions;)V

    return-object v0
.end method
