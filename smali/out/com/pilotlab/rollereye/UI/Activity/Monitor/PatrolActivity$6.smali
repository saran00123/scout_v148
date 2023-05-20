.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;
.super Ljava/lang/Object;
.source "PatrolActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->checkStauts()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V
    .registers 2

    .line 345
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

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
    .registers 4

    .line 353
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$1800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p1

    if-eqz p1, :cond_a2

    .line 354
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$1900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_a2

    .line 355
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$2000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/Bean/SystemStatus;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_87

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$2100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/Bean/SystemStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    if-eqz p1, :cond_87

    .line 356
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$2200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/Bean/SystemStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getPatrolName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 358
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->getPatrolName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 359
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->setPatrolName(Ljava/lang/String;)V

    .line 360
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->updateUI()V

    .line 363
    :cond_5f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$2300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/Bean/SystemStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getNavigate()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$NavigateBean;->getPatrol()I

    move-result p1

    if-ne p1, v0, :cond_7e

    .line 364
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$2400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_87

    .line 366
    :cond_7e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$2400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 370
    :cond_87
    :goto_87
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$2500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)I

    move-result p1

    if-lez p1, :cond_9d

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$2500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)I

    move-result p1

    rem-int/2addr p1, v0

    if-nez p1, :cond_9d

    .line 371
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$2600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)V

    .line 372
    :cond_9d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$2508(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)I

    :cond_a2
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 345
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$1702(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
