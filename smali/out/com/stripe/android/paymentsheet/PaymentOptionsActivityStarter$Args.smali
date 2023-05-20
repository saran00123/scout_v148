.class public abstract Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;
.super Ljava/lang/Object;
.source "PaymentOptionsActivityStarter.kt"

# interfaces
.implements Lcom/stripe/android/view/ActivityStarter$Args;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Args"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args$Default;,
        Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args$Guest;,
        Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u00082\u00020\u0001:\u0003\u0008\t\nB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0018\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u0082\u0001\u0002\u000b\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;",
        "Lcom/stripe/android/view/ActivityStarter$Args;",
        "()V",
        "paymentMethods",
        "",
        "Lcom/stripe/android/model/PaymentMethod;",
        "getPaymentMethods",
        "()Ljava/util/List;",
        "Companion",
        "Default",
        "Guest",
        "Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args$Default;",
        "Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args$Guest;",
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
.field public static final Companion:Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;->Companion:Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentOptionsActivityStarter$Args;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPaymentMethods()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/PaymentMethod;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
