.class Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$1;
.super Ljava/lang/Object;
.source "NasConfigActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->checkStatus()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

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

    .line 182
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 183
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->GET_NAS_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 184
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_2b
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 174
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$1;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->access$002(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
