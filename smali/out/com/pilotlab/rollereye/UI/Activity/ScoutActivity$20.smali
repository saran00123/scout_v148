.class Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$20;
.super Ljava/lang/Object;
.source "ScoutActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->checkNewFirmware()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V
    .registers 2

    .line 671
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$20;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

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

.method public onNext(Ljava/lang/Integer;)V
    .registers 6

    .line 679
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$20;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$20;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 680
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->OTA_QUERY_NEW_VERSION:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 681
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$20;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_25
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 671
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$20;->onNext(Ljava/lang/Integer;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 674
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$20;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->access$802(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
