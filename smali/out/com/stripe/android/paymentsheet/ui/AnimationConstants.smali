.class public final Lcom/stripe/android/paymentsheet/ui/AnimationConstants;
.super Ljava/lang/Object;
.source "AnimationConstants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/ui/AnimationConstants;",
        "",
        "()V",
        "FADE_IN",
        "",
        "getFADE_IN",
        "()I",
        "FADE_OUT",
        "getFADE_OUT",
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
.field private static final FADE_IN:I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation
.end field

.field private static final FADE_OUT:I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation
.end field

.field public static final INSTANCE:Lcom/stripe/android/paymentsheet/ui/AnimationConstants;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 6
    new-instance v0, Lcom/stripe/android/paymentsheet/ui/AnimationConstants;

    invoke-direct {v0}, Lcom/stripe/android/paymentsheet/ui/AnimationConstants;-><init>()V

    sput-object v0, Lcom/stripe/android/paymentsheet/ui/AnimationConstants;->INSTANCE:Lcom/stripe/android/paymentsheet/ui/AnimationConstants;

    .line 8
    sget v0, Lcom/stripe/android/R$anim;->stripe_paymentsheet_transition_fade_in:I

    sput v0, Lcom/stripe/android/paymentsheet/ui/AnimationConstants;->FADE_IN:I

    .line 11
    sget v0, Lcom/stripe/android/R$anim;->stripe_paymentsheet_transition_fade_out:I

    sput v0, Lcom/stripe/android/paymentsheet/ui/AnimationConstants;->FADE_OUT:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFADE_IN()I
    .registers 2

    .line 8
    sget v0, Lcom/stripe/android/paymentsheet/ui/AnimationConstants;->FADE_IN:I

    return v0
.end method

.method public final getFADE_OUT()I
    .registers 2

    .line 11
    sget v0, Lcom/stripe/android/paymentsheet/ui/AnimationConstants;->FADE_OUT:I

    return v0
.end method
