.class public final Lcom/stripe/android/paymentsheet/model/ViewState$Confirming;
.super Lcom/stripe/android/paymentsheet/model/ViewState;
.source "ViewState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/paymentsheet/model/ViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Confirming"
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
        "Lcom/stripe/android/paymentsheet/model/ViewState$Confirming;",
        "Lcom/stripe/android/paymentsheet/model/ViewState;",
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
.field public static final INSTANCE:Lcom/stripe/android/paymentsheet/model/ViewState$Confirming;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Lcom/stripe/android/paymentsheet/model/ViewState$Confirming;

    invoke-direct {v0}, Lcom/stripe/android/paymentsheet/model/ViewState$Confirming;-><init>()V

    sput-object v0, Lcom/stripe/android/paymentsheet/model/ViewState$Confirming;->INSTANCE:Lcom/stripe/android/paymentsheet/model/ViewState$Confirming;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/stripe/android/paymentsheet/model/ViewState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
