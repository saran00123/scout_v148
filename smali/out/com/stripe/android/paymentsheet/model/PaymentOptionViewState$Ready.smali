.class public final Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Ready;
.super Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState;
.source "PaymentOptionViewState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ready"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Ready;",
        "Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState;",
        "()V",
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
.field public static final INSTANCE:Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Ready;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 4
    new-instance v0, Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Ready;

    invoke-direct {v0}, Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Ready;-><init>()V

    sput-object v0, Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Ready;->INSTANCE:Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState$Ready;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lcom/stripe/android/paymentsheet/model/PaymentOptionViewState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
