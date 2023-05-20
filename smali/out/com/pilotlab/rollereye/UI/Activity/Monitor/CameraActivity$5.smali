.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->initControlCommand()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V
    .registers 2

    .line 660
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

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
    .registers 10

    .line 668
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p1

    if-eqz p1, :cond_f6

    .line 671
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    const-string v0, "V "

    const/4 v1, 0x0

    const-string v4, " "

    if-nez p1, :cond_7a

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)D

    move-result-wide v5

    cmpl-double p1, v5, v2

    if-nez p1, :cond_7a

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)D

    move-result-wide v5

    cmpl-double p1, v5, v2

    if-eqz p1, :cond_2e

    goto :goto_7a

    .line 679
    :cond_2e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2708(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I

    .line 680
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_f6

    .line 681
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p1

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_f6

    .line 675
    :cond_7a
    :goto_7a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send speed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p1

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, v1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 677
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2702(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;I)I

    :cond_f6
    :goto_f6
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 660
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 663
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2402(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
