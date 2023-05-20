.class public final enum Lcom/stripe/android/model/PaymentIntent$CancellationReason;
.super Ljava/lang/Enum;
.source "PaymentIntent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/model/PaymentIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CancellationReason"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/model/PaymentIntent$CancellationReason$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/android/model/PaymentIntent$CancellationReason;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0001\u0018\u0000 \u000c2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000cB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/android/model/PaymentIntent$CancellationReason;",
        "",
        "code",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Duplicate",
        "Fraudulent",
        "RequestedByCustomer",
        "Abandoned",
        "FailedInvoice",
        "VoidInvoice",
        "Automatic",
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
.field private static final synthetic $VALUES:[Lcom/stripe/android/model/PaymentIntent$CancellationReason;

.field public static final enum Abandoned:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

.field public static final enum Automatic:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

.field public static final Companion:Lcom/stripe/android/model/PaymentIntent$CancellationReason$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum Duplicate:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

.field public static final enum FailedInvoice:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

.field public static final enum Fraudulent:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

.field public static final enum RequestedByCustomer:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

.field public static final enum VoidInvoice:Lcom/stripe/android/model/PaymentIntent$CancellationReason;


# instance fields
.field private final code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    new-instance v1, Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    const/4 v2, 0x0

    const-string v3, "Duplicate"

    const-string v4, "duplicate"

    .line 294
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/PaymentIntent$CancellationReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/PaymentIntent$CancellationReason;->Duplicate:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    const/4 v2, 0x1

    const-string v3, "Fraudulent"

    const-string v4, "fraudulent"

    .line 295
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/PaymentIntent$CancellationReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/PaymentIntent$CancellationReason;->Fraudulent:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    const/4 v2, 0x2

    const-string v3, "RequestedByCustomer"

    const-string v4, "requested_by_customer"

    .line 296
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/PaymentIntent$CancellationReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/PaymentIntent$CancellationReason;->RequestedByCustomer:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    const/4 v2, 0x3

    const-string v3, "Abandoned"

    const-string v4, "abandoned"

    .line 297
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/PaymentIntent$CancellationReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/PaymentIntent$CancellationReason;->Abandoned:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    const/4 v2, 0x4

    const-string v3, "FailedInvoice"

    const-string v4, "failed_invoice"

    .line 298
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/PaymentIntent$CancellationReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/PaymentIntent$CancellationReason;->FailedInvoice:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    const/4 v2, 0x5

    const-string v3, "VoidInvoice"

    const-string v4, "void_invoice"

    .line 299
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/PaymentIntent$CancellationReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/PaymentIntent$CancellationReason;->VoidInvoice:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    aput-object v1, v0, v2

    new-instance v1, Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    const/4 v2, 0x6

    const-string v3, "Automatic"

    const-string v4, "automatic"

    .line 300
    invoke-direct {v1, v3, v2, v4}, Lcom/stripe/android/model/PaymentIntent$CancellationReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/stripe/android/model/PaymentIntent$CancellationReason;->Automatic:Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/android/model/PaymentIntent$CancellationReason;->$VALUES:[Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    new-instance v0, Lcom/stripe/android/model/PaymentIntent$CancellationReason$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/android/model/PaymentIntent$CancellationReason$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/android/model/PaymentIntent$CancellationReason;->Companion:Lcom/stripe/android/model/PaymentIntent$CancellationReason$Companion;

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

    .line 293
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/stripe/android/model/PaymentIntent$CancellationReason;->code:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCode$p(Lcom/stripe/android/model/PaymentIntent$CancellationReason;)Ljava/lang/String;
    .registers 1

    .line 293
    iget-object p0, p0, Lcom/stripe/android/model/PaymentIntent$CancellationReason;->code:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/android/model/PaymentIntent$CancellationReason;
    .registers 2

    const-class v0, Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    return-object p0
.end method

.method public static values()[Lcom/stripe/android/model/PaymentIntent$CancellationReason;
    .registers 1

    sget-object v0, Lcom/stripe/android/model/PaymentIntent$CancellationReason;->$VALUES:[Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    invoke-virtual {v0}, [Lcom/stripe/android/model/PaymentIntent$CancellationReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/android/model/PaymentIntent$CancellationReason;

    return-object v0
.end method
