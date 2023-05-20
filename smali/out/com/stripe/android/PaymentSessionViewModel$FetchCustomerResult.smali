.class public abstract Lcom/stripe/android/PaymentSessionViewModel$FetchCustomerResult;
.super Ljava/lang/Object;
.source "PaymentSessionViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/PaymentSessionViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FetchCustomerResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/PaymentSessionViewModel$FetchCustomerResult$Success;,
        Lcom/stripe/android/PaymentSessionViewModel$FetchCustomerResult$Error;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0005\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/android/PaymentSessionViewModel$FetchCustomerResult;",
        "",
        "()V",
        "Error",
        "Success",
        "Lcom/stripe/android/PaymentSessionViewModel$FetchCustomerResult$Success;",
        "Lcom/stripe/android/PaymentSessionViewModel$FetchCustomerResult$Error;",
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

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 198
    invoke-direct {p0}, Lcom/stripe/android/PaymentSessionViewModel$FetchCustomerResult;-><init>()V

    return-void
.end method
