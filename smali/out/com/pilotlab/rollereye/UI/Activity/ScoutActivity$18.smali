.class Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$18;
.super Ljava/lang/Object;
.source "ScoutActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->QueryAnnouncement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V
    .registers 2

    .line 522
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$18;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

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

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;)V
    .registers 11

    .line 530
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$18;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_50

    .line 532
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;->getData()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 533
    :goto_1f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 534
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;

    .line 535
    new-instance v2, Lcom/pilotlab/rollereye/DataBase/MessageHelper;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$18;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-direct {v2, v3}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getContent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getDate()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    const-string v7, ""

    invoke-virtual/range {v2 .. v8}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->InsertUnreadMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 537
    :cond_4b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$18;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V

    :cond_50
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 522
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$18;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 525
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$18;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->access$202(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
