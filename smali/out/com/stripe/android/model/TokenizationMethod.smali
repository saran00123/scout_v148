.class public final enum Lcom/stripe/android/model/TokenizationMethod;
.super Ljava/lang/Enum;
.source "TokenizationMethod.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/TokenizationMethod$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/model/TokenizationMethod;",
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
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0015\u0008\u0002\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/android/model/TokenizationMethod;",
        "",
        "code",
        "",
        "",
        "(Ljava/lang/String;ILjava/util/Set;)V",
        "ApplePay",
        "GooglePay",
        "Masterpass",
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
.field private static final synthetic $VALUES:[Lcom/stripe/android/model/TokenizationMethod;

.field public static final enum ApplePay:Lcom/stripe/android/model/TokenizationMethod;

.field public static final Companion:Lcom/stripe/android/model/TokenizationMethod$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum GooglePay:Lcom/stripe/android/model/TokenizationMethod;

.field public static final enum Masterpass:Lcom/stripe/android/model/TokenizationMethod;

.field public static final enum VisaCheckout:Lcom/stripe/android/model/TokenizationMethod;


# instance fields
.field private final code:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/stripe/android/model/TokenizationMethod;

    new-instance v1, Lcom/stripe/android/model/TokenizationMethod;

    const-string v2, "apple_pay"

    .line 12
    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "ApplePay"

    .line 11
    invoke-direct {v1, v4, v3, v2}, Lcom/stripe/android/model/TokenizationMethod;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v1, Lcom/stripe/android/model/TokenizationMethod;->ApplePay:Lcom/stripe/android/model/TokenizationMethod;

    aput-object v1, v0, v3

    new-instance v1, Lcom/stripe/android/model/TokenizationMethod;

    const-string v2, "android_pay"

    const-string v3, "google"

    .line 15
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "GooglePay"

    .line 14
    invoke-direct {v1, v4, v3, v2}, Lcom/stripe/android/model/TokenizationMethod;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v1, Lcom/stripe/android/model/TokenizationMethod;->GooglePay:Lcom/stripe/android/model/TokenizationMethod;

    aput-object v1, v0, v3

    new-instance v1, Lcom/stripe/android/model/TokenizationMethod;

    const-string v2, "masterpass"

    .line 18
    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "Masterpass"

    .line 17
    invoke-direct {v1, v4, v3, v2}, Lcom/stripe/android/model/TokenizationMethod;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v1, Lcom/stripe/android/model/TokenizationMethod;->Masterpass:Lcom/stripe/android/model/TokenizationMethod;

    aput-object v1, v0, v3

    new-instance v1, Lcom/stripe/android/model/TokenizationMethod;

    const-string v2, "visa_checkout"

    .line 21
    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x3

    const-string v4, "VisaCheckout"

    .line 20
    invoke-direct {v1, v4, v3, v2}, Lcom/stripe/android/model/TokenizationMethod;-><init>(Ljava/lang/String;ILjava/util/Set;)V

    sput-object v1, Lcom/stripe/android/model/TokenizationMethod;->VisaCheckout:Lcom/stripe/android/model/TokenizationMethod;

    aput-object v1, v0, v3

    sput-object v0, Lcom/stripe/android/model/TokenizationMethod;->$VALUES:[Lcom/stripe/android/model/TokenizationMethod;

    new-instance v0, Lcom/stripe/android/model/TokenizationMethod$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/model/TokenizationMethod$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/model/TokenizationMethod;->Companion:Lcom/stripe/android/model/TokenizationMethod$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/android/model/TokenizationMethod;->code:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$getCode$p(Lcom/stripe/android/model/TokenizationMethod;)Ljava/util/Set;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/stripe/android/model/TokenizationMethod;->code:Ljava/util/Set;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/model/TokenizationMethod;
    .registers 2

    const-class v0, Lcom/stripe/android/model/TokenizationMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/model/TokenizationMethod;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/model/TokenizationMethod;
    .registers 1

    sget-object v0, Lcom/stripe/android/model/TokenizationMethod;->$VALUES:[Lcom/stripe/android/model/TokenizationMethod;

    invoke-virtual {v0}, [Lcom/stripe/android/model/TokenizationMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/model/TokenizationMethod;

    return-object v0
.end method
