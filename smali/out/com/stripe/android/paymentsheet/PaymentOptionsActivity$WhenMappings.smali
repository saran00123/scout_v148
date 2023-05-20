.class public final synthetic Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$WhenMappings;
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

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 5

    invoke-static {}, Lcom/stripe/android/paymentsheet/ui/SheetMode;->values()[Lcom/stripe/android/paymentsheet/ui/SheetMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/stripe/android/paymentsheet/ui/SheetMode;->Full:Lcom/stripe/android/paymentsheet/ui/SheetMode;

    invoke-virtual {v1}, Lcom/stripe/android/paymentsheet/ui/SheetMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/stripe/android/paymentsheet/ui/SheetMode;->FullCollapsed:Lcom/stripe/android/paymentsheet/ui/SheetMode;

    invoke-virtual {v1}, Lcom/stripe/android/paymentsheet/ui/SheetMode;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/stripe/android/paymentsheet/ui/SheetMode;->Wrapped:Lcom/stripe/android/paymentsheet/ui/SheetMode;

    invoke-virtual {v1}, Lcom/stripe/android/paymentsheet/ui/SheetMode;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    invoke-static {}, Lcom/stripe/android/paymentsheet/ui/Toolbar$Action;->values()[Lcom/stripe/android/paymentsheet/ui/Toolbar$Action;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/stripe/android/paymentsheet/ui/Toolbar$Action;->Close:Lcom/stripe/android/paymentsheet/ui/Toolbar$Action;

    invoke-virtual {v1}, Lcom/stripe/android/paymentsheet/ui/Toolbar$Action;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/stripe/android/paymentsheet/ui/Toolbar$Action;->Back:Lcom/stripe/android/paymentsheet/ui/Toolbar$Action;

    invoke-virtual {v1}, Lcom/stripe/android/paymentsheet/ui/Toolbar$Action;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->values()[Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->AddPaymentMethodFull:Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

    invoke-virtual {v1}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->SelectSavedPaymentMethod:Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

    invoke-virtual {v1}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivity$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->AddPaymentMethodSheet:Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

    invoke-virtual {v1}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method
