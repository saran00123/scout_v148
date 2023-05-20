.class public abstract Lcom/stripe/android/paymentsheet/PaymentResult;
.super Ljava/lang/Object;
.source "PaymentResult.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/paymentsheet/PaymentResult$Succeeded;,
        Lcom/stripe/android/paymentsheet/PaymentResult$Failed;,
        Lcom/stripe/android/paymentsheet/PaymentResult$Cancelled;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00020\u0001:\u0003\u0007\u0008\tB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0003\n\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/PaymentResult;",
        "Landroid/os/Parcelable;",
        "resultCode",
        "",
        "(I)V",
        "getResultCode",
        "()I",
        "Cancelled",
        "Failed",
        "Succeeded",
        "Lcom/stripe/android/paymentsheet/PaymentResult$Succeeded;",
        "Lcom/stripe/android/paymentsheet/PaymentResult$Failed;",
        "Lcom/stripe/android/paymentsheet/PaymentResult$Cancelled;",
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
.field private final resultCode:I


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/stripe/android/paymentsheet/PaymentResult;->resultCode:I

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 8
    invoke-direct {p0, p1}, Lcom/stripe/android/paymentsheet/PaymentResult;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getResultCode()I
    .registers 2

    .line 9
    iget v0, p0, Lcom/stripe/android/paymentsheet/PaymentResult;->resultCode:I

    return v0
.end method
