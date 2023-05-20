.class public final synthetic Lcom/stripe/android/view/AddPaymentMethodActivity$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/stripe/android/model/PaymentMethod$Type;->values()[Lcom/stripe/android/model/PaymentMethod$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/stripe/android/view/AddPaymentMethodActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lcom/stripe/android/view/AddPaymentMethodActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Card:Lcom/stripe/android/model/PaymentMethod$Type;

    invoke-virtual {v1}, Lcom/stripe/android/model/PaymentMethod$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/stripe/android/view/AddPaymentMethodActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Fpx:Lcom/stripe/android/model/PaymentMethod$Type;

    invoke-virtual {v1}, Lcom/stripe/android/model/PaymentMethod$Type;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    invoke-static {}, Lcom/stripe/android/model/PaymentMethod$Type;->values()[Lcom/stripe/android/model/PaymentMethod$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/stripe/android/view/AddPaymentMethodActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v0, Lcom/stripe/android/view/AddPaymentMethodActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Card:Lcom/stripe/android/model/PaymentMethod$Type;

    invoke-virtual {v1}, Lcom/stripe/android/model/PaymentMethod$Type;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/stripe/android/view/AddPaymentMethodActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Fpx:Lcom/stripe/android/model/PaymentMethod$Type;

    invoke-virtual {v1}, Lcom/stripe/android/model/PaymentMethod$Type;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
