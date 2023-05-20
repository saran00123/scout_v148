.class public final enum Lcom/stripe/android/model/AccountRange$BrandInfo;
.super Ljava/lang/Enum;
.source "AccountRange.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/AccountRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrandInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/model/AccountRange$BrandInfo;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/android/model/AccountRange$BrandInfo;",
        "",
        "brandName",
        "",
        "brand",
        "Lcom/stripe/android/model/CardBrand;",
        "(Ljava/lang/String;ILjava/lang/String;Lcom/stripe/android/model/CardBrand;)V",
        "getBrand",
        "()Lcom/stripe/android/model/CardBrand;",
        "getBrandName",
        "()Ljava/lang/String;",
        "Visa",
        "Mastercard",
        "AmericanExpress",
        "JCB",
        "DinersClub",
        "Discover",
        "UnionPay",
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
.field private static final synthetic $VALUES:[Lcom/stripe/android/model/AccountRange$BrandInfo;

.field public static final enum AmericanExpress:Lcom/stripe/android/model/AccountRange$BrandInfo;

.field public static final enum DinersClub:Lcom/stripe/android/model/AccountRange$BrandInfo;

.field public static final enum Discover:Lcom/stripe/android/model/AccountRange$BrandInfo;

.field public static final enum JCB:Lcom/stripe/android/model/AccountRange$BrandInfo;

.field public static final enum Mastercard:Lcom/stripe/android/model/AccountRange$BrandInfo;

.field public static final enum UnionPay:Lcom/stripe/android/model/AccountRange$BrandInfo;

.field public static final enum Visa:Lcom/stripe/android/model/AccountRange$BrandInfo;


# instance fields
.field private final brand:Lcom/stripe/android/model/CardBrand;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final brandName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/stripe/android/model/AccountRange$BrandInfo;

    new-instance v1, Lcom/stripe/android/model/AccountRange$BrandInfo;

    .line 19
    sget-object v2, Lcom/stripe/android/model/CardBrand;->Visa:Lcom/stripe/android/model/CardBrand;

    const/4 v3, 0x0

    const-string v4, "Visa"

    const-string v5, "VISA"

    invoke-direct {v1, v4, v3, v5, v2}, Lcom/stripe/android/model/AccountRange$BrandInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/stripe/android/model/CardBrand;)V

    sput-object v1, Lcom/stripe/android/model/AccountRange$BrandInfo;->Visa:Lcom/stripe/android/model/AccountRange$BrandInfo;

    aput-object v1, v0, v3

    new-instance v1, Lcom/stripe/android/model/AccountRange$BrandInfo;

    .line 20
    sget-object v2, Lcom/stripe/android/model/CardBrand;->MasterCard:Lcom/stripe/android/model/CardBrand;

    const/4 v3, 0x1

    const-string v4, "Mastercard"

    const-string v5, "MASTERCARD"

    invoke-direct {v1, v4, v3, v5, v2}, Lcom/stripe/android/model/AccountRange$BrandInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/stripe/android/model/CardBrand;)V

    sput-object v1, Lcom/stripe/android/model/AccountRange$BrandInfo;->Mastercard:Lcom/stripe/android/model/AccountRange$BrandInfo;

    aput-object v1, v0, v3

    new-instance v1, Lcom/stripe/android/model/AccountRange$BrandInfo;

    .line 21
    sget-object v2, Lcom/stripe/android/model/CardBrand;->AmericanExpress:Lcom/stripe/android/model/CardBrand;

    const/4 v3, 0x2

    const-string v4, "AmericanExpress"

    const-string v5, "AMERICAN_EXPRESS"

    invoke-direct {v1, v4, v3, v5, v2}, Lcom/stripe/android/model/AccountRange$BrandInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/stripe/android/model/CardBrand;)V

    sput-object v1, Lcom/stripe/android/model/AccountRange$BrandInfo;->AmericanExpress:Lcom/stripe/android/model/AccountRange$BrandInfo;

    aput-object v1, v0, v3

    new-instance v1, Lcom/stripe/android/model/AccountRange$BrandInfo;

    .line 22
    sget-object v2, Lcom/stripe/android/model/CardBrand;->JCB:Lcom/stripe/android/model/CardBrand;

    const-string v3, "JCB"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v3, v2}, Lcom/stripe/android/model/AccountRange$BrandInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/stripe/android/model/CardBrand;)V

    sput-object v1, Lcom/stripe/android/model/AccountRange$BrandInfo;->JCB:Lcom/stripe/android/model/AccountRange$BrandInfo;

    aput-object v1, v0, v4

    new-instance v1, Lcom/stripe/android/model/AccountRange$BrandInfo;

    .line 23
    sget-object v2, Lcom/stripe/android/model/CardBrand;->DinersClub:Lcom/stripe/android/model/CardBrand;

    const/4 v3, 0x4

    const-string v4, "DinersClub"

    const-string v5, "DINERS_CLUB"

    invoke-direct {v1, v4, v3, v5, v2}, Lcom/stripe/android/model/AccountRange$BrandInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/stripe/android/model/CardBrand;)V

    sput-object v1, Lcom/stripe/android/model/AccountRange$BrandInfo;->DinersClub:Lcom/stripe/android/model/AccountRange$BrandInfo;

    aput-object v1, v0, v3

    new-instance v1, Lcom/stripe/android/model/AccountRange$BrandInfo;

    .line 24
    sget-object v2, Lcom/stripe/android/model/CardBrand;->Discover:Lcom/stripe/android/model/CardBrand;

    const/4 v3, 0x5

    const-string v4, "Discover"

    const-string v5, "DISCOVER"

    invoke-direct {v1, v4, v3, v5, v2}, Lcom/stripe/android/model/AccountRange$BrandInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/stripe/android/model/CardBrand;)V

    sput-object v1, Lcom/stripe/android/model/AccountRange$BrandInfo;->Discover:Lcom/stripe/android/model/AccountRange$BrandInfo;

    aput-object v1, v0, v3

    new-instance v1, Lcom/stripe/android/model/AccountRange$BrandInfo;

    .line 25
    sget-object v2, Lcom/stripe/android/model/CardBrand;->UnionPay:Lcom/stripe/android/model/CardBrand;

    const/4 v3, 0x6

    const-string v4, "UnionPay"

    const-string v5, "UNIONPAY"

    invoke-direct {v1, v4, v3, v5, v2}, Lcom/stripe/android/model/AccountRange$BrandInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/stripe/android/model/CardBrand;)V

    sput-object v1, Lcom/stripe/android/model/AccountRange$BrandInfo;->UnionPay:Lcom/stripe/android/model/AccountRange$BrandInfo;

    aput-object v1, v0, v3

    sput-object v0, Lcom/stripe/android/model/AccountRange$BrandInfo;->$VALUES:[Lcom/stripe/android/model/AccountRange$BrandInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/stripe/android/model/CardBrand;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/android/model/CardBrand;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/android/model/AccountRange$BrandInfo;->brandName:Ljava/lang/String;

    iput-object p4, p0, Lcom/stripe/android/model/AccountRange$BrandInfo;->brand:Lcom/stripe/android/model/CardBrand;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/model/AccountRange$BrandInfo;
    .registers 2

    const-class v0, Lcom/stripe/android/model/AccountRange$BrandInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/model/AccountRange$BrandInfo;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/model/AccountRange$BrandInfo;
    .registers 1

    sget-object v0, Lcom/stripe/android/model/AccountRange$BrandInfo;->$VALUES:[Lcom/stripe/android/model/AccountRange$BrandInfo;

    invoke-virtual {v0}, [Lcom/stripe/android/model/AccountRange$BrandInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/model/AccountRange$BrandInfo;

    return-object v0
.end method


# virtual methods
.method public final getBrand()Lcom/stripe/android/model/CardBrand;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/stripe/android/model/AccountRange$BrandInfo;->brand:Lcom/stripe/android/model/CardBrand;

    return-object v0
.end method

.method public final getBrandName()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/stripe/android/model/AccountRange$BrandInfo;->brandName:Ljava/lang/String;

    return-object v0
.end method
