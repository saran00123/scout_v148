.class public final enum Lcom/stripe/android/model/PaymentMethod$Type;
.super Ljava/lang/Enum;
.source "PaymentMethod.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/PaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/PaymentMethod$Type$Creator;,
        Lcom/stripe/android/model/PaymentMethod$Type$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/model/PaymentMethod$Type;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\u0008\u0087\u0001\u0018\u0000 #2\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001#B\u0017\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\u0008\u001a\u00020\tH\u00d6\u0001J\u0008\u0010\n\u001a\u00020\u0004H\u0016J\u0019\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tH\u00d6\u0001R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"\u00a8\u0006$"
    }
    d2 = {
        "Lcom/stripe/android/model/PaymentMethod$Type;",
        "",
        "Landroid/os/Parcelable;",
        "code",
        "",
        "isReusable",
        "",
        "(Ljava/lang/String;ILjava/lang/String;Z)V",
        "describeContents",
        "",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Card",
        "CardPresent",
        "Fpx",
        "Ideal",
        "SepaDebit",
        "AuBecsDebit",
        "BacsDebit",
        "Sofort",
        "Upi",
        "P24",
        "Bancontact",
        "Giropay",
        "Eps",
        "Oxxo",
        "Alipay",
        "GrabPay",
        "PayPal",
        "AfterpayClearpay",
        "Netbanking",
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

.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final enum AfterpayClearpay:Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final enum Alipay:Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final enum AuBecsDebit:Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final enum BacsDebit:Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final enum Bancontact:Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/stripe/android/model/PaymentMethod$Type;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Card:Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final enum CardPresent:Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final Companion:Lcom/stripe/android/model/PaymentMethod$Type$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum Eps:Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final enum Fpx:Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final enum Giropay:Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final enum GrabPay:Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final enum Ideal:Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final enum Netbanking:Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final enum Oxxo:Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final enum P24:Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final enum PayPal:Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final enum SepaDebit:Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final enum Sofort:Lcom/stripe/android/model/PaymentMethod$Type;

.field public static final enum Upi:Lcom/stripe/android/model/PaymentMethod$Type;


# instance fields
.field public final code:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final isReusable:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/stripe/android/model/PaymentMethod$Type;

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "Card"

    const-string v5, "card"

    .line 126
    invoke-direct {v1, v4, v3, v5, v2}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Card:Lcom/stripe/android/model/PaymentMethod$Type;

    aput-object v1, v0, v3

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const-string v4, "CardPresent"

    const-string v5, "card_present"

    .line 127
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->CardPresent:Lcom/stripe/android/model/PaymentMethod$Type;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const/4 v4, 0x2

    const-string v5, "Fpx"

    const-string v6, "fpx"

    .line 128
    invoke-direct {v1, v5, v4, v6, v3}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Fpx:Lcom/stripe/android/model/PaymentMethod$Type;

    aput-object v1, v0, v4

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const/4 v4, 0x3

    const-string v5, "Ideal"

    const-string v6, "ideal"

    .line 129
    invoke-direct {v1, v5, v4, v6, v3}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Ideal:Lcom/stripe/android/model/PaymentMethod$Type;

    aput-object v1, v0, v4

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const/4 v4, 0x4

    const-string v5, "SepaDebit"

    const-string v6, "sepa_debit"

    .line 130
    invoke-direct {v1, v5, v4, v6, v3}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->SepaDebit:Lcom/stripe/android/model/PaymentMethod$Type;

    aput-object v1, v0, v4

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const/4 v4, 0x5

    const-string v5, "AuBecsDebit"

    const-string v6, "au_becs_debit"

    .line 131
    invoke-direct {v1, v5, v4, v6, v2}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->AuBecsDebit:Lcom/stripe/android/model/PaymentMethod$Type;

    aput-object v1, v0, v4

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const/4 v4, 0x6

    const-string v5, "BacsDebit"

    const-string v6, "bacs_debit"

    .line 132
    invoke-direct {v1, v5, v4, v6, v2}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->BacsDebit:Lcom/stripe/android/model/PaymentMethod$Type;

    aput-object v1, v0, v4

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const/4 v2, 0x7

    const-string v4, "Sofort"

    const-string v5, "sofort"

    .line 133
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Sofort:Lcom/stripe/android/model/PaymentMethod$Type;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const/16 v2, 0x8

    const-string v4, "Upi"

    const-string v5, "upi"

    .line 134
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Upi:Lcom/stripe/android/model/PaymentMethod$Type;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const/16 v2, 0x9

    const-string v4, "P24"

    const-string v5, "p24"

    .line 135
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->P24:Lcom/stripe/android/model/PaymentMethod$Type;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const/16 v2, 0xa

    const-string v4, "Bancontact"

    const-string v5, "bancontact"

    .line 136
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Bancontact:Lcom/stripe/android/model/PaymentMethod$Type;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const/16 v2, 0xb

    const-string v4, "Giropay"

    const-string v5, "giropay"

    .line 137
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Giropay:Lcom/stripe/android/model/PaymentMethod$Type;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const/16 v2, 0xc

    const-string v4, "Eps"

    const-string v5, "eps"

    .line 138
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Eps:Lcom/stripe/android/model/PaymentMethod$Type;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const/16 v2, 0xd

    const-string v4, "Oxxo"

    const-string v5, "oxxo"

    .line 139
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Oxxo:Lcom/stripe/android/model/PaymentMethod$Type;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const/16 v2, 0xe

    const-string v4, "Alipay"

    const-string v5, "alipay"

    .line 140
    invoke-direct {v1, v4, v2, v5, v3}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Alipay:Lcom/stripe/android/model/PaymentMethod$Type;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const-string v2, "GrabPay"

    const/16 v4, 0xf

    const-string v5, "grabpay"

    .line 141
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->GrabPay:Lcom/stripe/android/model/PaymentMethod$Type;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const-string v2, "PayPal"

    const/16 v4, 0x10

    const-string v5, "paypal"

    .line 142
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->PayPal:Lcom/stripe/android/model/PaymentMethod$Type;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const-string v2, "AfterpayClearpay"

    const/16 v4, 0x11

    const-string v5, "afterpay_clearpay"

    .line 143
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->AfterpayClearpay:Lcom/stripe/android/model/PaymentMethod$Type;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentMethod$Type;

    const-string v2, "Netbanking"

    const/16 v4, 0x12

    const-string v5, "netbanking"

    .line 144
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/stripe/android/model/PaymentMethod$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Netbanking:Lcom/stripe/android/model/PaymentMethod$Type;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/android/model/PaymentMethod$Type;->$VALUES:[Lcom/stripe/android/model/PaymentMethod$Type;

    new-instance v0, Lcom/stripe/android/model/PaymentMethod$Type$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/model/PaymentMethod$Type$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/model/PaymentMethod$Type;->Companion:Lcom/stripe/android/model/PaymentMethod$Type$Companion;

    new-instance v0, Lcom/stripe/android/model/PaymentMethod$Type$Creator;

    invoke-direct {v0}, Lcom/stripe/android/model/PaymentMethod$Type$Creator;-><init>()V

    sput-object v0, Lcom/stripe/android/model/PaymentMethod$Type;->CREATOR:Landroid/os/Parcelable$Creator;

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

    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/android/model/PaymentMethod$Type;->code:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/stripe/android/model/PaymentMethod$Type;->isReusable:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/model/PaymentMethod$Type;
    .registers 2

    const-class v0, Lcom/stripe/android/model/PaymentMethod$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/model/PaymentMethod$Type;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/model/PaymentMethod$Type;
    .registers 1

    sget-object v0, Lcom/stripe/android/model/PaymentMethod$Type;->$VALUES:[Lcom/stripe/android/model/PaymentMethod$Type;

    invoke-virtual {v0}, [Lcom/stripe/android/model/PaymentMethod$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/model/PaymentMethod$Type;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/stripe/android/model/PaymentMethod$Type;->code:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
