.class Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$3;
.super Ljava/lang/Object;
.source "GuideConDevActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getInitState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V
    .registers 2

    .line 255
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .registers 8

    .line 263
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getSocketServices()Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->isConnect()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 264
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEVICE_SN:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 265
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_15
    const-string v1, "userID"

    .line 267
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Global;->getUser_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception v1

    .line 269
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 271
    :goto_27
    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getSocketServices()Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    .line 273
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_7a

    .line 274
    :cond_40
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x5

    cmp-long p1, v0, v2

    if-lez p1, :cond_7a

    .line 275
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 276
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    const p1, 0x7f11023d

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    const v2, 0x7f11003e

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$3$1;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$3$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$3;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    .line 282
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_7a
    :goto_7a
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 255
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$3;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 258
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->access$202(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
