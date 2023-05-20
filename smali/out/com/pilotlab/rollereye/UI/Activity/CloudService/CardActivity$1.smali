.class Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1;
.super Ljava/lang/Object;
.source "CardActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->startCheckOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 9

    .line 208
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)V

    .line 209
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    const v3, 0x7f11003e

    invoke-virtual {v0, v3}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1$1;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 215
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean;)V
    .registers 5

    .line 188
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_55

    .line 192
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean$DataBean;->getClientSecret()Ljava/lang/String;

    move-result-object p1

    .line 193
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)Lcom/stripe/android/view/CardMultilineWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/view/CardMultilineWidget;->getPaymentMethodCreateParams()Lcom/stripe/android/model/PaymentMethodCreateParams;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 196
    invoke-static {v0, p1}, Lcom/stripe/android/model/ConfirmPaymentIntentParams;->createWithPaymentMethodCreateParams(Lcom/stripe/android/model/PaymentMethodCreateParams;Ljava/lang/String;)Lcom/stripe/android/model/ConfirmPaymentIntentParams;

    move-result-object p1

    .line 197
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)Lcom/stripe/android/Stripe;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-virtual {v0, v1, p1}, Lcom/stripe/android/Stripe;->confirmPayment(Landroid/app/Activity;Lcom/stripe/android/model/ConfirmPaymentIntentParams;)V

    goto :goto_63

    .line 199
    :cond_4f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)V

    goto :goto_63

    .line 201
    :cond_55
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)V

    .line 202
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;Ljava/lang/String;)V

    :goto_63
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 178
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/CheckOutBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->access$002(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
