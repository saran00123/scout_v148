.class public final enum Lcom/stripe/android/model/wallets/Wallet$Type;
.super Ljava/lang/Enum;
.source "Wallet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/wallets/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/wallets/Wallet$Type$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/model/wallets/Wallet$Type;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0080\u0001\u0018\u0000 \r2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/android/model/wallets/Wallet$Type;",
        "",
        "code",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getCode",
        "()Ljava/lang/String;",
        "AmexExpressCheckout",
        "ApplePay",
        "GooglePay",
        "Masterpass",
        "SamsungPay",
        "VisaCheckout",
        "Companion",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stripe/android/model/wallets/Wallet$Type;

.field public static final enum AmexExpressCheckout:Lcom/stripe/android/model/wallets/Wallet$Type;

.field public static final enum ApplePay:Lcom/stripe/android/model/wallets/Wallet$Type;

.field public static final Companion:Lcom/stripe/android/model/wallets/Wallet$Type$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum GooglePay:Lcom/stripe/android/model/wallets/Wallet$Type;

.field public static final enum Masterpass:Lcom/stripe/android/model/wallets/Wallet$Type;

.field public static final enum SamsungPay:Lcom/stripe/android/model/wallets/Wallet$Type;

.field public static final enum VisaCheckout:Lcom/stripe/android/model/wallets/Wallet$Type;


# instance fields
.field private final code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/stripe/android/model/wallets/Wallet$Type;

    new-instance v1, Lcom/stripe/android/model/wallets/Wallet$Type;

    const/4 v2, 0x0

    const-string v3, "AmexExpressCheckout"

    const-string v4, "amex_express_checkout"

    .line 55
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/wallets/Wallet$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/wallets/Wallet$Type;->AmexExpressCheckout:Lcom/stripe/android/model/wallets/Wallet$Type;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/wallets/Wallet$Type;

    const/4 v2, 0x1

    const-string v3, "ApplePay"

    const-string v4, "apple_pay"

    .line 56
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/wallets/Wallet$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/wallets/Wallet$Type;->ApplePay:Lcom/stripe/android/model/wallets/Wallet$Type;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/wallets/Wallet$Type;

    const/4 v2, 0x2

    const-string v3, "GooglePay"

    const-string v4, "google_pay"

    .line 57
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/wallets/Wallet$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/wallets/Wallet$Type;->GooglePay:Lcom/stripe/android/model/wallets/Wallet$Type;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/wallets/Wallet$Type;

    const/4 v2, 0x3

    const-string v3, "Masterpass"

    const-string v4, "master_pass"

    .line 58
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/wallets/Wallet$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/wallets/Wallet$Type;->Masterpass:Lcom/stripe/android/model/wallets/Wallet$Type;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/wallets/Wallet$Type;

    const/4 v2, 0x4

    const-string v3, "SamsungPay"

    const-string v4, "samsung_pay"

    .line 59
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/wallets/Wallet$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/wallets/Wallet$Type;->SamsungPay:Lcom/stripe/android/model/wallets/Wallet$Type;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/wallets/Wallet$Type;

    const/4 v2, 0x5

    const-string v3, "VisaCheckout"

    const-string v4, "visa_checkout"

    .line 60
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/wallets/Wallet$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/wallets/Wallet$Type;->VisaCheckout:Lcom/stripe/android/model/wallets/Wallet$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/android/model/wallets/Wallet$Type;->$VALUES:[Lcom/stripe/android/model/wallets/Wallet$Type;

    new-instance v0, Lcom/stripe/android/model/wallets/Wallet$Type$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/model/wallets/Wallet$Type$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/model/wallets/Wallet$Type;->Companion:Lcom/stripe/android/model/wallets/Wallet$Type$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/android/model/wallets/Wallet$Type;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/model/wallets/Wallet$Type;
    .registers 2

    const-class v0, Lcom/stripe/android/model/wallets/Wallet$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/model/wallets/Wallet$Type;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/model/wallets/Wallet$Type;
    .registers 1

    sget-object v0, Lcom/stripe/android/model/wallets/Wallet$Type;->$VALUES:[Lcom/stripe/android/model/wallets/Wallet$Type;

    invoke-virtual {v0}, [Lcom/stripe/android/model/wallets/Wallet$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/model/wallets/Wallet$Type;

    return-object v0
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/stripe/android/model/wallets/Wallet$Type;->code:Ljava/lang/String;

    return-object v0
.end method
