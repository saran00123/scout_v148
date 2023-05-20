.class public final Lcom/stripe/android/exception/CardException;
.super Lcom/stripe/android/exception/StripeException;
.source "CardException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\tR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/android/exception/CardException;",
        "Lcom/stripe/android/exception/StripeException;",
        "stripeError",
        "Lcom/stripe/android/StripeError;",
        "requestId",
        "",
        "(Lcom/stripe/android/StripeError;Ljava/lang/String;)V",
        "charge",
        "getCharge",
        "()Ljava/lang/String;",
        "code",
        "getCode",
        "declineCode",
        "getDeclineCode",
        "param",
        "getParam",
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
.field private final charge:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final code:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final declineCode:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final param:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/android/StripeError;Ljava/lang/String;)V
    .registers 12
    .param p1    # Lcom/stripe/android/StripeError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "stripeError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x192

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/stripe/android/exception/StripeException;-><init>(Lcom/stripe/android/StripeError;Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 19
    invoke-virtual {p1}, Lcom/stripe/android/StripeError;->getCode()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/android/exception/CardException;->code:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/stripe/android/StripeError;->getParam()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/android/exception/CardException;->param:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lcom/stripe/android/StripeError;->getDeclineCode()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/android/exception/CardException;->declineCode:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/stripe/android/StripeError;->getCharge()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/android/exception/CardException;->charge:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/android/StripeError;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    .line 13
    check-cast p2, Ljava/lang/String;

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/stripe/android/exception/CardException;-><init>(Lcom/stripe/android/StripeError;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCharge()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/stripe/android/exception/CardException;->charge:Ljava/lang/String;

    return-object v0
.end method

.method public final getCode()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/stripe/android/exception/CardException;->code:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeclineCode()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/stripe/android/exception/CardException;->declineCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getParam()Ljava/lang/String;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/stripe/android/exception/CardException;->param:Ljava/lang/String;

    return-object v0
.end method
