.class public final enum Lcom/stripe/android/model/PaymentIntent$CaptureMethod;
.super Ljava/lang/Enum;
.source "PaymentIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/PaymentIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureMethod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/PaymentIntent$CaptureMethod$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/model/PaymentIntent$CaptureMethod;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u0000 \u00072\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/android/model/PaymentIntent$CaptureMethod;",
        "",
        "code",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Automatic",
        "Manual",
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
.field private static final synthetic $VALUES:[Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

.field public static final enum Automatic:Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

.field public static final Companion:Lcom/stripe/android/model/PaymentIntent$CaptureMethod$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum Manual:Lcom/stripe/android/model/PaymentIntent$CaptureMethod;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    new-instance v1, Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    const/4 v2, 0x0

    const-string v3, "Automatic"

    const-string v4, "automatic"

    .line 314
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/PaymentIntent$CaptureMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/PaymentIntent$CaptureMethod;->Automatic:Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    const/4 v2, 0x1

    const-string v3, "Manual"

    const-string v4, "manual"

    .line 320
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/PaymentIntent$CaptureMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/PaymentIntent$CaptureMethod;->Manual:Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/android/model/PaymentIntent$CaptureMethod;->$VALUES:[Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    new-instance v0, Lcom/stripe/android/model/PaymentIntent$CaptureMethod$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/model/PaymentIntent$CaptureMethod$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/model/PaymentIntent$CaptureMethod;->Companion:Lcom/stripe/android/model/PaymentIntent$CaptureMethod$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 310
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/android/model/PaymentIntent$CaptureMethod;->code:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCode$p(Lcom/stripe/android/model/PaymentIntent$CaptureMethod;)Ljava/lang/String;
    .registers 1

    .line 310
    iget-object p0, p0, Lcom/stripe/android/model/PaymentIntent$CaptureMethod;->code:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/model/PaymentIntent$CaptureMethod;
    .registers 2

    const-class v0, Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/model/PaymentIntent$CaptureMethod;
    .registers 1

    sget-object v0, Lcom/stripe/android/model/PaymentIntent$CaptureMethod;->$VALUES:[Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    invoke-virtual {v0}, [Lcom/stripe/android/model/PaymentIntent$CaptureMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/model/PaymentIntent$CaptureMethod;

    return-object v0
.end method
