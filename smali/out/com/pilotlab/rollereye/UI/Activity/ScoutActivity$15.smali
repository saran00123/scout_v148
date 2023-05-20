.class Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$15;
.super Ljava/lang/Object;
.source "ScoutActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->QueryEarliestPushMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/SimpleDataBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$15;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

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

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/SimpleDataBean;)V
    .registers 4

    .line 450
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$15;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/SimpleDataBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_4a

    .line 453
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/SimpleDataBean;->getData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/SimpleDataBean;->getData()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 454
    new-instance v0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$15;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/SimpleDataBean;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->deleteNotificationAfterMid(Ljava/lang/String;)V

    goto :goto_45

    .line 456
    :cond_3b
    new-instance p1, Lcom/pilotlab/rollereye/DataBase/MessageHelper;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$15;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-direct {p1, v0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->deleteAllUserNotification()V

    .line 458
    :goto_45
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$15;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    :cond_4a
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 441
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/SimpleDataBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$15;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/SimpleDataBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 444
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$15;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->access$202(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
