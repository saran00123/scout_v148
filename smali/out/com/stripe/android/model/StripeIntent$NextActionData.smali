.class public abstract Lcom/stripe/android/model/StripeIntent$NextActionData;
.super Ljava/lang/Object;
.source "StripeIntent.kt"

# interfaces
.implements Lcom/stripe/android/model/StripeModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/StripeIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NextActionData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/StripeIntent$NextActionData$DisplayOxxoDetails;,
        Lcom/stripe/android/model/StripeIntent$NextActionData$RedirectToUrl;,
        Lcom/stripe/android/model/StripeIntent$NextActionData$AlipayRedirect;,
        Lcom/stripe/android/model/StripeIntent$NextActionData$SdkData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0007\u0008\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/android/model/StripeIntent$NextActionData;",
        "Lcom/stripe/android/model/StripeModel;",
        "()V",
        "AlipayRedirect",
        "DisplayOxxoDetails",
        "RedirectToUrl",
        "SdkData",
        "Lcom/stripe/android/model/StripeIntent$NextActionData$DisplayOxxoDetails;",
        "Lcom/stripe/android/model/StripeIntent$NextActionData$RedirectToUrl;",
        "Lcom/stripe/android/model/StripeIntent$NextActionData$AlipayRedirect;",
        "Lcom/stripe/android/model/StripeIntent$NextActionData$SdkData;",
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

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 133
    invoke-direct {p0}, Lcom/stripe/android/model/StripeIntent$NextActionData;-><init>()V

    return-void
.end method
