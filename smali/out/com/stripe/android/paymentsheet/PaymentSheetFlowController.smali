.class public interface abstract Lcom/stripe/android/paymentsheet/PaymentSheetFlowController;
.super Ljava/lang/Object;
.source "PaymentSheetFlowController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/paymentsheet/PaymentSheetFlowController$Result;,
        Lcom/stripe/android/paymentsheet/PaymentSheetFlowController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008`\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000e\u000fJ$\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00030\u0007H&J\u0014\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH&J&\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0014\u0010\u0006\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\u00030\u0007H&\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/PaymentSheetFlowController;",
        "",
        "confirmPayment",
        "",
        "activity",
        "Landroidx/activity/ComponentActivity;",
        "onComplete",
        "Lkotlin/Function1;",
        "Lcom/stripe/android/paymentsheet/PaymentResult;",
        "onPaymentOptionResult",
        "Lcom/stripe/android/paymentsheet/model/PaymentOption;",
        "intent",
        "Landroid/content/Intent;",
        "presentPaymentOptions",
        "Companion",
        "Result",
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
.field public static final Companion:Lcom/stripe/android/paymentsheet/PaymentSheetFlowController$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowController$Companion;->$$INSTANCE:Lcom/stripe/android/paymentsheet/PaymentSheetFlowController$Companion;

    sput-object v0, Lcom/stripe/android/paymentsheet/PaymentSheetFlowController;->Companion:Lcom/stripe/android/paymentsheet/PaymentSheetFlowController$Companion;

    return-void
.end method


# virtual methods
.method public abstract confirmPayment(Landroidx/activity/ComponentActivity;Lkotlin/jvm/functions/Function1;)V
    .param p1    # Landroidx/activity/ComponentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/ComponentActivity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/android/paymentsheet/PaymentResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPaymentOptionResult(Landroid/content/Intent;)Lcom/stripe/android/paymentsheet/model/PaymentOption;
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract presentPaymentOptions(Landroidx/activity/ComponentActivity;Lkotlin/jvm/functions/Function1;)V
    .param p1    # Landroidx/activity/ComponentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/ComponentActivity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/android/paymentsheet/model/PaymentOption;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
