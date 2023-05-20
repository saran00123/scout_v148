.class Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$6;
.super Ljava/lang/Object;
.source "WiFiConfigActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->getWiFiList()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

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
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .registers 7
    .param p1    # Ljava/lang/Long;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 294
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aLong:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->WIFI_LIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 297
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Services/SocketServices;->isConnect()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 298
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_3a

    .line 299
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    goto :goto_44

    .line 300
    :cond_3a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 301
    :goto_44
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    :cond_52
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 285
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$6;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 288
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$102(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
