.class public abstract Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;
.super Ljava/lang/Object;
.source "PaymentSheetActivityStarter.kt"

# interfaces
.implements Lcom/stripe/android/view/ActivityStarter$Args;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Args"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args$Default;,
        Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args$Guest;,
        Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u00072\u00020\u0001:\u0003\u0007\u0008\tB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\u0002\n\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;",
        "Lcom/stripe/android/view/ActivityStarter$Args;",
        "()V",
        "clientSecret",
        "",
        "getClientSecret",
        "()Ljava/lang/String;",
        "Companion",
        "Default",
        "Guest",
        "Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args$Default;",
        "Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args$Guest;",
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
.field public static final Companion:Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;->Companion:Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/stripe/android/paymentsheet/PaymentSheetActivityStarter$Args;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getClientSecret()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
