.class public abstract Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args;
.super Ljava/lang/Object;
.source "DefaultPaymentSheetFlowController.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Args"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Default;,
        Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Guest;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u0007\u0008B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0002\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args;",
        "Landroid/os/Parcelable;",
        "()V",
        "clientSecret",
        "",
        "getClientSecret",
        "()Ljava/lang/String;",
        "Default",
        "Guest",
        "Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Default;",
        "Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args$Guest;",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 90
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/DefaultPaymentSheetFlowController$Args;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getClientSecret()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
