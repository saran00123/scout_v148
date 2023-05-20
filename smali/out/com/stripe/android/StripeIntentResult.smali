.class public abstract Lcom/stripe/android/StripeIntentResult;
.super Ljava/lang/Object;
.source "StripeIntentResult.kt"

# interfaces
.implements Lcom/stripe/android/model/StripeModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/StripeIntentResult$Outcome;,
        Lcom/stripe/android/StripeIntentResult$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/stripe/android/model/StripeIntent;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/stripe/android/model/StripeModel;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u0000 \u0012*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0002\u0012\u0013B\u000f\u0008\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001a\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\n\u001a\u00020\u0005H\u0002R\u0012\u0010\u0007\u001a\u00028\u0000X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\n\u001a\u00020\u00058F\u00a2\u0006\u000c\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/android/StripeIntentResult;",
        "T",
        "Lcom/stripe/android/model/StripeIntent;",
        "Lcom/stripe/android/model/StripeModel;",
        "outcomeFromFlow",
        "",
        "(I)V",
        "intent",
        "getIntent",
        "()Lcom/stripe/android/model/StripeIntent;",
        "outcome",
        "getOutcome$annotations",
        "()V",
        "getOutcome",
        "()I",
        "determineOutcome",
        "stripeIntentStatus",
        "Lcom/stripe/android/model/StripeIntent$Status;",
        "Companion",
        "Outcome",
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
.field private static final Companion:Lcom/stripe/android/StripeIntentResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PROCESSING_IS_SUCCESS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/android/model/PaymentMethod$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final outcomeFromFlow:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/stripe/android/StripeIntentResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/StripeIntentResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/StripeIntentResult;->Companion:Lcom/stripe/android/StripeIntentResult$Companion;

    const/4 v0, 0x4

    .line 90
    new-array v0, v0, [Lcom/stripe/android/model/PaymentMethod$Type;

    .line 91
    sget-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->SepaDebit:Lcom/stripe/android/model/PaymentMethod$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 92
    sget-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->BacsDebit:Lcom/stripe/android/model/PaymentMethod$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 93
    sget-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->AuBecsDebit:Lcom/stripe/android/model/PaymentMethod$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 94
    sget-object v1, Lcom/stripe/android/model/PaymentMethod$Type;->Sofort:Lcom/stripe/android/model/PaymentMethod$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 90
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/stripe/android/StripeIntentResult;->PROCESSING_IS_SUCCESS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/stripe/android/StripeIntentResult;->outcomeFromFlow:I

    return-void
.end method

.method private final determineOutcome(Lcom/stripe/android/model/StripeIntent$Status;I)I
    .registers 3

    if-eqz p2, :cond_3

    return p2

    :cond_3
    if-nez p1, :cond_6

    goto :goto_2f

    .line 33
    :cond_6
    sget-object p2, Lcom/stripe/android/StripeIntentResult$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/android/model/StripeIntent$Status;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_32

    goto :goto_2f

    .line 46
    :pswitch_12
    sget-object p1, Lcom/stripe/android/StripeIntentResult;->PROCESSING_IS_SUCCESS:Ljava/util/Set;

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0}, Lcom/stripe/android/StripeIntentResult;->getIntent()Lcom/stripe/android/model/StripeIntent;

    move-result-object p2

    invoke-interface {p2}, Lcom/stripe/android/model/StripeIntent;->getPaymentMethod()Lcom/stripe/android/model/PaymentMethod;

    move-result-object p2

    if-eqz p2, :cond_23

    iget-object p2, p2, Lcom/stripe/android/model/PaymentMethod;->type:Lcom/stripe/android/model/PaymentMethod$Type;

    goto :goto_24

    :cond_23
    const/4 p2, 0x0

    :goto_24
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_29
    const/4 p1, 0x1

    return p1

    :pswitch_2b
    const/4 p1, 0x2

    return p1

    :pswitch_2d
    const/4 p1, 0x3

    return p1

    :goto_2f
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2d
        :pswitch_2b
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_12
    .end packed-switch
.end method

.method public static synthetic getOutcome$annotations()V
    .registers 0

    return-void
.end method


# virtual methods
.method public abstract getIntent()Lcom/stripe/android/model/StripeIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getOutcome()I
    .registers 3

    .line 22
    invoke-virtual {p0}, Lcom/stripe/android/StripeIntentResult;->getIntent()Lcom/stripe/android/model/StripeIntent;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/android/model/StripeIntent;->getStatus()Lcom/stripe/android/model/StripeIntent$Status;

    move-result-object v0

    iget v1, p0, Lcom/stripe/android/StripeIntentResult;->outcomeFromFlow:I

    invoke-direct {p0, v0, v1}, Lcom/stripe/android/StripeIntentResult;->determineOutcome(Lcom/stripe/android/model/StripeIntent$Status;I)I

    move-result v0

    return v0
.end method
