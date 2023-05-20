.class final Lcom/stripe/android/StripePaymentController$ConfirmStripeIntentCallback;
.super Ljava/lang/Object;
.source "StripePaymentController.kt"

# interfaces
.implements Lcom/stripe/android/ApiResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/StripePaymentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConfirmStripeIntentCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/ApiResultCallback<",
        "Lcom/stripe/android/model/StripeIntent;",
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0014\u0010\u000c\u001a\u00020\r2\n\u0010\u000e\u001a\u00060\u000fj\u0002`\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0002H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/android/StripePaymentController$ConfirmStripeIntentCallback;",
        "Lcom/stripe/android/ApiResultCallback;",
        "Lcom/stripe/android/model/StripeIntent;",
        "host",
        "Lcom/stripe/android/view/AuthActivityStarter$Host;",
        "requestOptions",
        "Lcom/stripe/android/networking/ApiRequest$Options;",
        "paymentController",
        "Lcom/stripe/android/PaymentController;",
        "requestCode",
        "",
        "(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/PaymentController;I)V",
        "onError",
        "",
        "e",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "onSuccess",
        "result",
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
.field private final host:Lcom/stripe/android/view/AuthActivityStarter$Host;

.field private final paymentController:Lcom/stripe/android/PaymentController;

.field private final requestCode:I

.field private final requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;


# direct methods
.method public constructor <init>(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/networking/ApiRequest$Options;Lcom/stripe/android/PaymentController;I)V
    .registers 6
    .param p1    # Lcom/stripe/android/view/AuthActivityStarter$Host;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/networking/ApiRequest$Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/PaymentController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestOptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/StripePaymentController$ConfirmStripeIntentCallback;->host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    iput-object p2, p0, Lcom/stripe/android/StripePaymentController$ConfirmStripeIntentCallback;->requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    iput-object p3, p0, Lcom/stripe/android/StripePaymentController$ConfirmStripeIntentCallback;->paymentController:Lcom/stripe/android/PaymentController;

    iput p4, p0, Lcom/stripe/android/StripePaymentController$ConfirmStripeIntentCallback;->requestCode:I

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 5
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1050
    sget-object v0, Lcom/stripe/android/StripePaymentController;->Companion:Lcom/stripe/android/StripePaymentController$Companion;

    iget-object v1, p0, Lcom/stripe/android/StripePaymentController$ConfirmStripeIntentCallback;->host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    iget v2, p0, Lcom/stripe/android/StripePaymentController$ConfirmStripeIntentCallback;->requestCode:I

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p1}, Lcom/stripe/android/StripePaymentController$Companion;->access$handleError(Lcom/stripe/android/StripePaymentController$Companion;Lcom/stripe/android/view/AuthActivityStarter$Host;ILjava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Lcom/stripe/android/model/StripeIntent;)V
    .registers 5
    .param p1    # Lcom/stripe/android/model/StripeIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1046
    iget-object v0, p0, Lcom/stripe/android/StripePaymentController$ConfirmStripeIntentCallback;->paymentController:Lcom/stripe/android/PaymentController;

    iget-object v1, p0, Lcom/stripe/android/StripePaymentController$ConfirmStripeIntentCallback;->host:Lcom/stripe/android/view/AuthActivityStarter$Host;

    iget-object v2, p0, Lcom/stripe/android/StripePaymentController$ConfirmStripeIntentCallback;->requestOptions:Lcom/stripe/android/networking/ApiRequest$Options;

    invoke-interface {v0, v1, p1, v2}, Lcom/stripe/android/PaymentController;->handleNextAction(Lcom/stripe/android/view/AuthActivityStarter$Host;Lcom/stripe/android/model/StripeIntent;Lcom/stripe/android/networking/ApiRequest$Options;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/stripe/android/model/StripeModel;)V
    .registers 2

    .line 1038
    check-cast p1, Lcom/stripe/android/model/StripeIntent;

    invoke-virtual {p0, p1}, Lcom/stripe/android/StripePaymentController$ConfirmStripeIntentCallback;->onSuccess(Lcom/stripe/android/model/StripeIntent;)V

    return-void
.end method
