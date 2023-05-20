.class public abstract Lcom/stripe/android/paymentsheet/ui/BasePaymentSheetActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BasePaymentSheetActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/paymentsheet/ui/BasePaymentSheetActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/appcompat/app/AppCompatActivity;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\u0008 \u0018\u0000 \r*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0000H\u0004\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0008\u001a\u00020\u0005H\u0016J\u0008\u0010\t\u001a\u00020\u0005H&J\u0008\u0010\n\u001a\u00020\u0005H\u0016J\u0008\u0010\u000b\u001a\u00020\u0005H&J\u0015\u0010\u000c\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/ui/BasePaymentSheetActivity;",
        "ResultType",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "animateOut",
        "",
        "result",
        "(Ljava/lang/Object;)V",
        "finish",
        "hideSheet",
        "onBackPressed",
        "onUserCancel",
        "setActivityResult",
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
.field protected static final Companion:Lcom/stripe/android/paymentsheet/ui/BasePaymentSheetActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final EXTRA_STARTER_ARGS:Ljava/lang/String; = "com.stripe.android.paymentsheet.extra_starter_args"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/paymentsheet/ui/BasePaymentSheetActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/paymentsheet/ui/BasePaymentSheetActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/paymentsheet/ui/BasePaymentSheetActivity;->Companion:Lcom/stripe/android/paymentsheet/ui/BasePaymentSheetActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final animateOut(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lcom/stripe/android/paymentsheet/ui/BasePaymentSheetActivity;->setActivityResult(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/ui/BasePaymentSheetActivity;->hideSheet()V

    return-void
.end method

.method public finish()V
    .registers 2

    .line 11
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, v0}, Lcom/stripe/android/paymentsheet/ui/BasePaymentSheetActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public abstract hideSheet()V
.end method

.method public onBackPressed()V
    .registers 3

    .line 16
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/ui/BasePaymentSheetActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "supportFragmentManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_13

    .line 17
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    goto :goto_16

    .line 19
    :cond_13
    invoke-virtual {p0}, Lcom/stripe/android/paymentsheet/ui/BasePaymentSheetActivity;->onUserCancel()V

    :goto_16
    return-void
.end method

.method public abstract onUserCancel()V
.end method

.method public abstract setActivityResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation
.end method
