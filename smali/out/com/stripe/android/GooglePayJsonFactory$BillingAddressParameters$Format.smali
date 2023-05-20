.class public final enum Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;
.super Ljava/lang/Enum;
.source "GooglePayJsonFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;",
        "",
        "code",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getCode$stripe_release",
        "()Ljava/lang/String;",
        "Min",
        "Full",
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
.field private static final synthetic $VALUES:[Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;

.field public static final enum Full:Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;

.field public static final enum Min:Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;


# instance fields
.field private final code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;

    new-instance v1, Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;

    const/4 v2, 0x0

    const-string v3, "Min"

    const-string v4, "MIN"

    .line 248
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;->Min:Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;

    const/4 v2, 0x1

    const-string v3, "Full"

    const-string v4, "FULL"

    .line 253
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;->Full:Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;->$VALUES:[Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;

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

    .line 244
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;
    .registers 2

    const-class v0, Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;
    .registers 1

    sget-object v0, Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;->$VALUES:[Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;

    invoke-virtual {v0}, [Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;

    return-object v0
.end method


# virtual methods
.method public final getCode$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/stripe/android/GooglePayJsonFactory$BillingAddressParameters$Format;->code:Ljava/lang/String;

    return-object v0
.end method
