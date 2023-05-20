.class Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;
.super Ljava/lang/Object;
.source "WiFiConfigActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->sendBind2Server()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)V
    .registers 2

    .line 448
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    .line 482
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$608(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)I

    .line 484
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Time Out"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 486
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 487
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_49
    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;)V
    .registers 12

    .line 457
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$608(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)I

    .line 458
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b2c "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " \u6b21\u8f6e\u8be2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " msg result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_12a

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_12a

    .line 461
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 462
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    .line 463
    :cond_73
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v2, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-direct {v2, v0}, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->getPasswd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->InsertDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    new-instance v0, Lcom/pilotlab/rollereye/DataBase/UserHelper;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/DataBase/UserHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Global;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Global;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/pilotlab/rollereye/DataBase/UserHelper;->InsertUpdataUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    new-instance v0, Lcom/pilotlab/rollereye/P2P/P2PClient;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->getUser()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->getPasswd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean$DataBean;->getKey()Ljava/lang/String;

    move-result-object v9

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/pilotlab/rollereye/P2P/P2PClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getP2PService()Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PService;->refreshClient(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 468
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setDefaultP2PClient(Landroid/content/Context;Ljava/lang/String;)V

    .line 469
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 470
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto :goto_153

    .line 471
    :cond_12a
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;->getCode()I

    move-result p1

    if-ne p1, v1, :cond_153

    .line 472
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    if-eqz p1, :cond_141

    .line 473
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    .line 474
    :cond_141
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 475
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_153
    :goto_153
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 448
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/BindBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 451
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->access$502(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
