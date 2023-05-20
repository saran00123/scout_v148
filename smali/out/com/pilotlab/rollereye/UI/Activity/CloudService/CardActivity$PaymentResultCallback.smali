.class final Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$PaymentResultCallback;
.super Ljava/lang/Object;
.source "CardActivity.java"

# interfaces
.implements Lcom/stripe/android/ApiResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PaymentResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/android/ApiResultCallback<",
        "Lcom/stripe/android/PaymentIntentResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityRef:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)V
    .registers 3
    .param p1    # Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$PaymentResultCallback;->activityRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 3
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 317
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$PaymentResultCallback;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    if-nez v0, :cond_b

    return-void

    .line 321
    :cond_b
    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)V

    .line 323
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/stripe/android/PaymentIntentResult;)V
    .registers 5
    .param p1    # Lcom/stripe/android/PaymentIntentResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 295
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$PaymentResultCallback;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    if-nez v0, :cond_b

    return-void

    .line 300
    :cond_b
    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)V

    .line 302
    invoke-virtual {p1}, Lcom/stripe/android/PaymentIntentResult;->getIntent()Lcom/stripe/android/model/PaymentIntent;

    move-result-object p1

    .line 303
    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentIntent;->getStatus()Lcom/stripe/android/model/StripeIntent$Status;

    move-result-object v1

    .line 304
    sget-object v2, Lcom/stripe/android/model/StripeIntent$Status;->Succeeded:Lcom/stripe/android/model/StripeIntent$Status;

    if-ne v1, v2, :cond_1e

    .line 306
    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)V

    goto :goto_33

    .line 307
    :cond_1e
    sget-object v2, Lcom/stripe/android/model/StripeIntent$Status;->RequiresPaymentMethod:Lcom/stripe/android/model/StripeIntent$Status;

    if-ne v1, v2, :cond_33

    .line 309
    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentIntent;->getLastPaymentError()Lcom/stripe/android/model/PaymentIntent$Error;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/android/model/PaymentIntent$Error;

    invoke-virtual {p1}, Lcom/stripe/android/model/PaymentIntent$Error;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;Ljava/lang/String;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/stripe/android/model/StripeModel;)V
    .registers 2
    .param p1    # Lcom/stripe/android/model/StripeModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 282
    check-cast p1, Lcom/stripe/android/PaymentIntentResult;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$PaymentResultCallback;->onSuccess(Lcom/stripe/android/PaymentIntentResult;)V

    return-void
.end method
