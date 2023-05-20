.class public interface abstract Lcom/stripe/android/view/CardWidget;
.super Ljava/lang/Object;
.source "CardWidget.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/view/CardWidget$DefaultImpls;,
        Lcom/stripe/android/view/CardWidget$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008`\u0018\u0000 52\u00020\u0001:\u00015J\u0008\u0010\u0019\u001a\u00020\u001aH&J\u0010\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u001dH&J\u0012\u0010\u001e\u001a\u00020\u001a2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H&J\u0012\u0010!\u001a\u00020\u001a2\u0008\u0010\"\u001a\u0004\u0018\u00010\u001dH&J\u0012\u0010#\u001a\u00020\u001a2\u0008\u0010$\u001a\u0004\u0018\u00010%H&J\u0012\u0010&\u001a\u00020\u001a2\u0008\u0010\'\u001a\u0004\u0018\u00010(H&J\u0012\u0010)\u001a\u00020\u001a2\u0008\u0010*\u001a\u0004\u0018\u00010\u001dH&J\u0012\u0010+\u001a\u00020\u001a2\u0008\u0010,\u001a\u0004\u0018\u00010%H&J\u001c\u0010-\u001a\u00020\u001a2\u0008\u0008\u0001\u0010.\u001a\u00020/2\u0008\u0008\u0001\u00100\u001a\u00020/H&J\u0012\u00101\u001a\u00020\u001a2\u0008\u00102\u001a\u0004\u0018\u00010%H&J\u0012\u00103\u001a\u00020\u001a2\u0008\u00104\u001a\u0004\u0018\u00010%H&R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u00038&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\t8&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\n\u0010\u0005\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u0004\u0018\u00010\u000eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u00066"
    }
    d2 = {
        "Lcom/stripe/android/view/CardWidget;",
        "",
        "card",
        "Lcom/stripe/android/model/Card;",
        "getCard$annotations",
        "()V",
        "getCard",
        "()Lcom/stripe/android/model/Card;",
        "cardBuilder",
        "Lcom/stripe/android/model/Card$Builder;",
        "getCardBuilder$annotations",
        "getCardBuilder",
        "()Lcom/stripe/android/model/Card$Builder;",
        "cardParams",
        "Lcom/stripe/android/model/CardParams;",
        "getCardParams",
        "()Lcom/stripe/android/model/CardParams;",
        "paymentMethodCard",
        "Lcom/stripe/android/model/PaymentMethodCreateParams$Card;",
        "getPaymentMethodCard",
        "()Lcom/stripe/android/model/PaymentMethodCreateParams$Card;",
        "paymentMethodCreateParams",
        "Lcom/stripe/android/model/PaymentMethodCreateParams;",
        "getPaymentMethodCreateParams",
        "()Lcom/stripe/android/model/PaymentMethodCreateParams;",
        "clear",
        "",
        "setCardHint",
        "cardHint",
        "",
        "setCardInputListener",
        "listener",
        "Lcom/stripe/android/view/CardInputListener;",
        "setCardNumber",
        "cardNumber",
        "setCardNumberTextWatcher",
        "cardNumberTextWatcher",
        "Landroid/text/TextWatcher;",
        "setCardValidCallback",
        "callback",
        "Lcom/stripe/android/view/CardValidCallback;",
        "setCvcCode",
        "cvcCode",
        "setCvcNumberTextWatcher",
        "cvcNumberTextWatcher",
        "setExpiryDate",
        "month",
        "",
        "year",
        "setExpiryDateTextWatcher",
        "expiryDateTextWatcher",
        "setPostalCodeTextWatcher",
        "postalCodeTextWatcher",
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
.field public static final Companion:Lcom/stripe/android/view/CardWidget$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEFAULT_POSTAL_CODE_ENABLED:Z = true

.field public static final DEFAULT_POSTAL_CODE_REQUIRED:Z = false

.field public static final DEFAULT_US_ZIP_CODE_REQUIRED:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/stripe/android/view/CardWidget$Companion;->$$INSTANCE:Lcom/stripe/android/view/CardWidget$Companion;

    sput-object v0, Lcom/stripe/android/view/CardWidget;->Companion:Lcom/stripe/android/view/CardWidget$Companion;

    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getCard()Lcom/stripe/android/model/Card;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getCardBuilder()Lcom/stripe/android/model/Card$Builder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getCardParams()Lcom/stripe/android/model/CardParams;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getPaymentMethodCard()Lcom/stripe/android/model/PaymentMethodCreateParams$Card;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getPaymentMethodCreateParams()Lcom/stripe/android/model/PaymentMethodCreateParams;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract setCardHint(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setCardInputListener(Lcom/stripe/android/view/CardInputListener;)V
    .param p1    # Lcom/stripe/android/view/CardInputListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setCardNumber(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setCardNumberTextWatcher(Landroid/text/TextWatcher;)V
    .param p1    # Landroid/text/TextWatcher;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setCardValidCallback(Lcom/stripe/android/view/CardValidCallback;)V
    .param p1    # Lcom/stripe/android/view/CardValidCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setCvcCode(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setCvcNumberTextWatcher(Landroid/text/TextWatcher;)V
    .param p1    # Landroid/text/TextWatcher;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setExpiryDate(II)V
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0xcL
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0x270fL
        .end annotation
    .end param
.end method

.method public abstract setExpiryDateTextWatcher(Landroid/text/TextWatcher;)V
    .param p1    # Landroid/text/TextWatcher;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setPostalCodeTextWatcher(Landroid/text/TextWatcher;)V
    .param p1    # Landroid/text/TextWatcher;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
