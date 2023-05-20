.class public final enum Lcom/stripe/android/model/PaymentMethodCreateParams$Type;
.super Ljava/lang/Enum;
.source "PaymentMethodCreateParams.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/PaymentMethodCreateParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/model/PaymentMethodCreateParams$Type;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0018\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/android/model/PaymentMethodCreateParams$Type;",
        "",
        "code",
        "",
        "hasMandate",
        "",
        "(Ljava/lang/String;ILjava/lang/String;Z)V",
        "getCode$stripe_release",
        "()Ljava/lang/String;",
        "getHasMandate",
        "()Z",
        "Card",
        "Ideal",
        "Fpx",
        "SepaDebit",
        "AuBecsDebit",
        "BacsDebit",
        "Sofort",
        "P24",
        "Bancontact",
        "Giropay",
        "Eps",
        "Oxxo",
        "Alipay",
        "GrabPay",
        "PayPal",
        "AfterpayClearpay",
        "Upi",
        "Netbanking",
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
.field private static final synthetic $VALUES:[Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

.field public static final enum AfterpayClearpay:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

.field public static final enum Alipay:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

.field public static final enum AuBecsDebit:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

.field public static final enum BacsDebit:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

.field public static final enum Bancontact:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

.field public static final enum Card:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

.field public static final enum Eps:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

.field public static final enum Fpx:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

.field public static final enum Giropay:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

.field public static final enum GrabPay:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

.field public static final enum Ideal:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

.field public static final enum Netbanking:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

.field public static final enum Oxxo:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

.field public static final enum P24:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

.field public static final enum PayPal:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

.field public static final enum SepaDebit:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

.field public static final enum Sofort:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

.field public static final enum Upi:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;


# instance fields
.field private final code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hasMandate:Z


# direct methods
.method static constructor <clinit>()V
    .registers 16

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    new-instance v8, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const-string v2, "Card"

    const/4 v3, 0x0

    const-string v4, "card"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v8

    .line 184
    invoke-direct/range {v1 .. v7}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v8, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->Card:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const-string v10, "Ideal"

    const/4 v11, 0x1

    const-string v12, "ideal"

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object v9, v1

    .line 185
    invoke-direct/range {v9 .. v15}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->Ideal:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const-string v4, "Fpx"

    const/4 v5, 0x2

    const-string v6, "fpx"

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v3, v1

    .line 186
    invoke-direct/range {v3 .. v9}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->Fpx:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const/4 v3, 0x3

    const-string v4, "SepaDebit"

    const-string v5, "sepa_debit"

    .line 187
    invoke-direct {v1, v4, v3, v5, v2}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->SepaDebit:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const/4 v3, 0x4

    const-string v4, "AuBecsDebit"

    const-string v5, "au_becs_debit"

    .line 188
    invoke-direct {v1, v4, v3, v5, v2}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->AuBecsDebit:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const/4 v3, 0x5

    const-string v4, "BacsDebit"

    const-string v5, "bacs_debit"

    .line 189
    invoke-direct {v1, v4, v3, v5, v2}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->BacsDebit:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const-string v7, "Sofort"

    const/4 v8, 0x6

    const-string v9, "sofort"

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v6, v1

    .line 190
    invoke-direct/range {v6 .. v12}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->Sofort:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const-string v4, "P24"

    const/4 v5, 0x7

    const-string v6, "p24"

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v3, v1

    .line 191
    invoke-direct/range {v3 .. v9}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->P24:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const-string v4, "Bancontact"

    const/16 v5, 0x8

    const-string v6, "bancontact"

    move-object v3, v1

    .line 192
    invoke-direct/range {v3 .. v9}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->Bancontact:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const-string v4, "Giropay"

    const/16 v5, 0x9

    const-string v6, "giropay"

    move-object v3, v1

    .line 193
    invoke-direct/range {v3 .. v9}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->Giropay:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const-string v4, "Eps"

    const/16 v5, 0xa

    const-string v6, "eps"

    move-object v3, v1

    .line 194
    invoke-direct/range {v3 .. v9}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->Eps:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const-string v4, "Oxxo"

    const/16 v5, 0xb

    const-string v6, "oxxo"

    move-object v3, v1

    .line 195
    invoke-direct/range {v3 .. v9}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->Oxxo:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const-string v4, "Alipay"

    const/16 v5, 0xc

    const-string v6, "alipay"

    move-object v3, v1

    .line 196
    invoke-direct/range {v3 .. v9}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->Alipay:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const-string v4, "GrabPay"

    const/16 v5, 0xd

    const-string v6, "grabpay"

    move-object v3, v1

    .line 197
    invoke-direct/range {v3 .. v9}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->GrabPay:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const-string v4, "PayPal"

    const/16 v5, 0xe

    const-string v6, "paypal"

    move-object v3, v1

    .line 198
    invoke-direct/range {v3 .. v9}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->PayPal:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const-string v4, "AfterpayClearpay"

    const/16 v5, 0xf

    const-string v6, "afterpay_clearpay"

    move-object v3, v1

    .line 199
    invoke-direct/range {v3 .. v9}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->AfterpayClearpay:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const-string v4, "Upi"

    const/16 v5, 0x10

    const-string v6, "upi"

    move-object v3, v1

    .line 200
    invoke-direct/range {v3 .. v9}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->Upi:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const-string v4, "Netbanking"

    const/16 v5, 0x11

    const-string v6, "netbanking"

    move-object v3, v1

    .line 201
    invoke-direct/range {v3 .. v9}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->Netbanking:Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->$VALUES:[Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->code:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->hasMandate:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    .line 183
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/model/PaymentMethodCreateParams$Type;
    .registers 2

    const-class v0, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/model/PaymentMethodCreateParams$Type;
    .registers 1

    sget-object v0, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->$VALUES:[Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    invoke-virtual {v0}, [Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/model/PaymentMethodCreateParams$Type;

    return-object v0
.end method


# virtual methods
.method public final getCode$stripe_release()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasMandate()Z
    .registers 2

    .line 183
    iget-boolean v0, p0, Lcom/stripe/android/model/PaymentMethodCreateParams$Type;->hasMandate:Z

    return v0
.end method
