.class public final Lcom/stripe/android/paymentsheet/model/ViewState$Completed;
.super Lcom/stripe/android/paymentsheet/model/ViewState;
.source "ViewState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/paymentsheet/model/ViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Completed"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/android/paymentsheet/model/ViewState$Completed;",
        "Lcom/stripe/android/paymentsheet/model/ViewState;",
        "paymentIntentResult",
        "Lcom/stripe/android/PaymentIntentResult;",
        "(Lcom/stripe/android/PaymentIntentResult;)V",
        "getPaymentIntentResult",
        "()Lcom/stripe/android/PaymentIntentResult;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "stripe_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final paymentIntentResult:Lcom/stripe/android/PaymentIntentResult;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/android/PaymentIntentResult;)V
    .registers 3
    .param p1    # Lcom/stripe/android/PaymentIntentResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "paymentIntentResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lcom/stripe/android/paymentsheet/model/ViewState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/stripe/android/paymentsheet/model/ViewState$Completed;->paymentIntentResult:Lcom/stripe/android/PaymentIntentResult;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/android/paymentsheet/model/ViewState$Completed;Lcom/stripe/android/PaymentIntentResult;ILjava/lang/Object;)Lcom/stripe/android/paymentsheet/model/ViewState$Completed;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/stripe/android/paymentsheet/model/ViewState$Completed;->paymentIntentResult:Lcom/stripe/android/PaymentIntentResult;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/stripe/android/paymentsheet/model/ViewState$Completed;->copy(Lcom/stripe/android/PaymentIntentResult;)Lcom/stripe/android/paymentsheet/model/ViewState$Completed;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/android/PaymentIntentResult;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/stripe/android/paymentsheet/model/ViewState$Completed;->paymentIntentResult:Lcom/stripe/android/PaymentIntentResult;

    return-object v0
.end method

.method public final copy(Lcom/stripe/android/PaymentIntentResult;)Lcom/stripe/android/paymentsheet/model/ViewState$Completed;
    .registers 3
    .param p1    # Lcom/stripe/android/PaymentIntentResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "paymentIntentResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/android/paymentsheet/model/ViewState$Completed;

    invoke-direct {v0, p1}, Lcom/stripe/android/paymentsheet/model/ViewState$Completed;-><init>(Lcom/stripe/android/PaymentIntentResult;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p0, p1, :cond_15

    instance-of v0, p1, Lcom/stripe/android/paymentsheet/model/ViewState$Completed;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/stripe/android/paymentsheet/model/ViewState$Completed;

    iget-object v0, p0, Lcom/stripe/android/paymentsheet/model/ViewState$Completed;->paymentIntentResult:Lcom/stripe/android/PaymentIntentResult;

    iget-object p1, p1, Lcom/stripe/android/paymentsheet/model/ViewState$Completed;->paymentIntentResult:Lcom/stripe/android/PaymentIntentResult;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1
.end method

.method public final getPaymentIntentResult()Lcom/stripe/android/PaymentIntentResult;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/stripe/android/paymentsheet/model/ViewState$Completed;->paymentIntentResult:Lcom/stripe/android/PaymentIntentResult;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/stripe/android/paymentsheet/model/ViewState$Completed;->paymentIntentResult:Lcom/stripe/android/PaymentIntentResult;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Completed(paymentIntentResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/android/paymentsheet/model/ViewState$Completed;->paymentIntentResult:Lcom/stripe/android/PaymentIntentResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
