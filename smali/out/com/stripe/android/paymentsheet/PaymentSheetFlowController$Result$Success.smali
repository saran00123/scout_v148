.class public final Lcom/stripe/android/paymentsheet/PaymentSheetFlowController$Result$Success;
.super Lcom/stripe/android/paymentsheet/PaymentSheetFlowController$Result;
.source "PaymentSheetFlowController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/paymentsheet/PaymentSheetFlowController$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/PaymentSheetFlowController$Result$Success;",
        "Lcom/stripe/android/paymentsheet/PaymentSheetFlowController$Result;",
        "paymentSheetFlowController",
        "Lcom/stripe/android/paymentsheet/PaymentSheetFlowController;",
        "(Lcom/stripe/android/paymentsheet/PaymentSheetFlowController;)V",
        "getPaymentSheetFlowController",
        "()Lcom/stripe/android/paymentsheet/PaymentSheetFlowController;",
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
.field private final paymentSheetFlowController:Lcom/stripe/android/paymentsheet/PaymentSheetFlowController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/android/paymentsheet/PaymentSheetFlowController;)V
    .registers 3
    .param p1    # Lcom/stripe/android/paymentsheet/PaymentSheetFlowController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "paymentSheetFlowController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Lcom/stripe/android/paymentsheet/PaymentSheetFlowController$Result;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowController$Result$Success;->paymentSheetFlowController:Lcom/stripe/android/paymentsheet/PaymentSheetFlowController;

    return-void
.end method


# virtual methods
.method public final getPaymentSheetFlowController()Lcom/stripe/android/paymentsheet/PaymentSheetFlowController;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowController$Result$Success;->paymentSheetFlowController:Lcom/stripe/android/paymentsheet/PaymentSheetFlowController;

    return-object v0
.end method
