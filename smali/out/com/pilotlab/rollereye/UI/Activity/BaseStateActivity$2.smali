.class Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$2;
.super Ljava/lang/Object;
.source "BaseStateActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->getConnectStatus()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;

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
    .registers 5

    .line 175
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->customer_connectview:Lcom/pilotlab/rollereye/CustomerView/ConnectView;

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->setWiFiMode(Lcom/pilotlab/rollereye/Bean/ConnectMode;)V

    .line 177
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    const/4 v0, 0x0

    if-eqz p1, :cond_54

    .line 178
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 179
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;

    iget-boolean p1, p1, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->isConnected:Z

    if-nez p1, :cond_32

    .line 180
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->customer_connectview:Lcom/pilotlab/rollereye/CustomerView/ConnectView;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->Connect()V

    .line 181
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->isConnected:Z

    .line 184
    :cond_32
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 186
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-direct {v1, v2, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_5f

    .line 188
    :cond_48
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->customer_connectview:Lcom/pilotlab/rollereye/CustomerView/ConnectView;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->DisConnect()V

    .line 189
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;

    iput-boolean v0, p1, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->isConnected:Z

    goto :goto_5f

    .line 192
    :cond_54
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->customer_connectview:Lcom/pilotlab/rollereye/CustomerView/ConnectView;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->DisConnect()V

    .line 193
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;

    iput-boolean v0, p1, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->isConnected:Z

    :goto_5f
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 166
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$2;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 169
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;

    iput-object p1, v0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->myWiFiDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
