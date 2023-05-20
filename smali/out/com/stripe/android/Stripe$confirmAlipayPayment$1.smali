.class public final Lcom/stripe/android/Stripe$confirmAlipayPayment$1;
.super Ljava/lang/Object;
.source "Stripe.kt"

# interfaces
.implements Lcom/stripe/android/ApiResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/android/Stripe;->confirmAlipayPayment(Lcom/stripe/android/model/ConfirmPaymentIntentParams;Lcom/stripe/android/AlipayAuthenticator;Ljava/lang/String;Lcom/stripe/android/ApiResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0014\u0010\u0003\u001a\u00020\u00042\n\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/stripe/android/Stripe$confirmAlipayPayment$1",
        "Lcom/stripe/android/ApiResultCallback;",
        "Lcom/stripe/android/model/StripeIntent;",
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
.field final synthetic $authenticator:Lcom/stripe/android/AlipayAuthenticator;

.field final synthetic $callback:Lcom/stripe/android/ApiResultCallback;

.field final synthetic $stripeAccountId:Ljava/lang/String;

.field final synthetic this$0:Lcom/stripe/android/Stripe;


# direct methods
.method constructor <init>(Lcom/stripe/android/Stripe;Ljava/lang/String;Lcom/stripe/android/AlipayAuthenticator;Lcom/stripe/android/ApiResultCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/android/AlipayAuthenticator;",
            "Lcom/stripe/android/ApiResultCallback;",
            ")V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/stripe/android/Stripe$confirmAlipayPayment$1;->this$0:Lcom/stripe/android/Stripe;

    iput-object p2, p0, Lcom/stripe/android/Stripe$confirmAlipayPayment$1;->$stripeAccountId:Ljava/lang/String;

    iput-object p3, p0, Lcom/stripe/android/Stripe$confirmAlipayPayment$1;->$authenticator:Lcom/stripe/android/AlipayAuthenticator;

    iput-object p4, p0, Lcom/stripe/android/Stripe$confirmAlipayPayment$1;->$callback:Lcom/stripe/android/ApiResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/stripe/android/Stripe$confirmAlipayPayment$1;->$callback:Lcom/stripe/android/ApiResultCallback;

    invoke-interface {v0, p1}, Lcom/stripe/android/ApiResultCallback;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Lcom/stripe/android/model/StripeIntent;)V
    .registers 6
    .param p1    # Lcom/stripe/android/model/StripeIntent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/stripe/android/Stripe$confirmAlipayPayment$1;->this$0:Lcom/stripe/android/Stripe;

    invoke-static {v0}, Lcom/stripe/android/Stripe;->access$getPaymentController$p(Lcom/stripe/android/Stripe;)Lcom/stripe/android/PaymentController;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/stripe/android/Stripe$confirmAlipayPayment$1;->$stripeAccountId:Ljava/lang/String;

    .line 190
    iget-object v2, p0, Lcom/stripe/android/Stripe$confirmAlipayPayment$1;->$authenticator:Lcom/stripe/android/AlipayAuthenticator;

    .line 191
    iget-object v3, p0, Lcom/stripe/android/Stripe$confirmAlipayPayment$1;->$callback:Lcom/stripe/android/ApiResultCallback;

    .line 187
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/stripe/android/PaymentController;->authenticateAlipay(Lcom/stripe/android/model/StripeIntent;Ljava/lang/String;Lcom/stripe/android/AlipayAuthenticator;Lcom/stripe/android/ApiResultCallback;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/stripe/android/model/StripeModel;)V
    .registers 2

    .line 185
    check-cast p1, Lcom/stripe/android/model/StripeIntent;

    invoke-virtual {p0, p1}, Lcom/stripe/android/Stripe$confirmAlipayPayment$1;->onSuccess(Lcom/stripe/android/model/StripeIntent;)V

    return-void
.end method
