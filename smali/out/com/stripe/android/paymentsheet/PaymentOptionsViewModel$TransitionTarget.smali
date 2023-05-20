.class public final enum Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;
.super Ljava/lang/Enum;
.source "PaymentOptionsViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransitionTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;",
        "",
        "sheetMode",
        "Lcom/stripe/android/paymentsheet/ui/SheetMode;",
        "(Ljava/lang/String;ILcom/stripe/android/paymentsheet/ui/SheetMode;)V",
        "getSheetMode",
        "()Lcom/stripe/android/paymentsheet/ui/SheetMode;",
        "SelectSavedPaymentMethod",
        "AddPaymentMethodFull",
        "AddPaymentMethodSheet",
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
.field private static final synthetic $VALUES:[Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

.field public static final enum AddPaymentMethodFull:Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

.field public static final enum AddPaymentMethodSheet:Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

.field public static final enum SelectSavedPaymentMethod:Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;


# instance fields
.field private final sheetMode:Lcom/stripe/android/paymentsheet/ui/SheetMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

    new-instance v1, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

    .line 32
    sget-object v2, Lcom/stripe/android/paymentsheet/ui/SheetMode;->Wrapped:Lcom/stripe/android/paymentsheet/ui/SheetMode;

    const/4 v3, 0x0

    const-string v4, "SelectSavedPaymentMethod"

    invoke-direct {v1, v4, v3, v2}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;-><init>(Ljava/lang/String;ILcom/stripe/android/paymentsheet/ui/SheetMode;)V

    sput-object v1, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->SelectSavedPaymentMethod:Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

    aput-object v1, v0, v3

    new-instance v1, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

    .line 35
    sget-object v2, Lcom/stripe/android/paymentsheet/ui/SheetMode;->Full:Lcom/stripe/android/paymentsheet/ui/SheetMode;

    const/4 v3, 0x1

    const-string v4, "AddPaymentMethodFull"

    invoke-direct {v1, v4, v3, v2}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;-><init>(Ljava/lang/String;ILcom/stripe/android/paymentsheet/ui/SheetMode;)V

    sput-object v1, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->AddPaymentMethodFull:Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

    aput-object v1, v0, v3

    new-instance v1, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

    .line 38
    sget-object v2, Lcom/stripe/android/paymentsheet/ui/SheetMode;->FullCollapsed:Lcom/stripe/android/paymentsheet/ui/SheetMode;

    const/4 v3, 0x2

    const-string v4, "AddPaymentMethodSheet"

    invoke-direct {v1, v4, v3, v2}, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;-><init>(Ljava/lang/String;ILcom/stripe/android/paymentsheet/ui/SheetMode;)V

    sput-object v1, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->AddPaymentMethodSheet:Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

    aput-object v1, v0, v3

    sput-object v0, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->$VALUES:[Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/stripe/android/paymentsheet/ui/SheetMode;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/android/paymentsheet/ui/SheetMode;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->sheetMode:Lcom/stripe/android/paymentsheet/ui/SheetMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;
    .registers 2

    const-class v0, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;
    .registers 1

    sget-object v0, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->$VALUES:[Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

    invoke-virtual {v0}, [Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;

    return-object v0
.end method


# virtual methods
.method public final getSheetMode()Lcom/stripe/android/paymentsheet/ui/SheetMode;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentOptionsViewModel$TransitionTarget;->sheetMode:Lcom/stripe/android/paymentsheet/ui/SheetMode;

    return-object v0
.end method
