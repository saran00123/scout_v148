.class Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$1;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->checkOtaStatus()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;

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
    .registers 6

    .line 131
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 132
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->OTA_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 133
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 134
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_27
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 123
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$1;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 126
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->access$002(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
