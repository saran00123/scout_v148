.class public abstract Lcom/stripe/android/model/wallets/Wallet;
.super Ljava/lang/Object;
.source "Wallet.kt"

# interfaces
.implements Lcom/stripe/android/model/StripeModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/wallets/Wallet$AmexExpressCheckoutWallet;,
        Lcom/stripe/android/model/wallets/Wallet$ApplePayWallet;,
        Lcom/stripe/android/model/wallets/Wallet$GooglePayWallet;,
        Lcom/stripe/android/model/wallets/Wallet$MasterpassWallet;,
        Lcom/stripe/android/model/wallets/Wallet$SamsungPayWallet;,
        Lcom/stripe/android/model/wallets/Wallet$VisaCheckoutWallet;,
        Lcom/stripe/android/model/wallets/Wallet$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0007\u0007\u0008\t\n\u000b\u000c\rB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0006\u000e\u000f\u0010\u0011\u0012\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/android/model/wallets/Wallet;",
        "Lcom/stripe/android/model/StripeModel;",
        "walletType",
        "Lcom/stripe/android/model/wallets/Wallet$Type;",
        "(Lcom/stripe/android/model/wallets/Wallet$Type;)V",
        "getWalletType$stripe_release",
        "()Lcom/stripe/android/model/wallets/Wallet$Type;",
        "AmexExpressCheckoutWallet",
        "ApplePayWallet",
        "GooglePayWallet",
        "MasterpassWallet",
        "SamsungPayWallet",
        "Type",
        "VisaCheckoutWallet",
        "Lcom/stripe/android/model/wallets/Wallet$AmexExpressCheckoutWallet;",
        "Lcom/stripe/android/model/wallets/Wallet$ApplePayWallet;",
        "Lcom/stripe/android/model/wallets/Wallet$GooglePayWallet;",
        "Lcom/stripe/android/model/wallets/Wallet$MasterpassWallet;",
        "Lcom/stripe/android/model/wallets/Wallet$SamsungPayWallet;",
        "Lcom/stripe/android/model/wallets/Wallet$VisaCheckoutWallet;",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final walletType:Lcom/stripe/android/model/wallets/Wallet$Type;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/stripe/android/model/wallets/Wallet$Type;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/model/wallets/Wallet;->walletType:Lcom/stripe/android/model/wallets/Wallet$Type;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/android/model/wallets/Wallet$Type;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1}, Lcom/stripe/android/model/wallets/Wallet;-><init>(Lcom/stripe/android/model/wallets/Wallet$Type;)V

    return-void
.end method


# virtual methods
.method public final getWalletType$stripe_release()Lcom/stripe/android/model/wallets/Wallet$Type;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/stripe/android/model/wallets/Wallet;->walletType:Lcom/stripe/android/model/wallets/Wallet$Type;

    return-object v0
.end method
