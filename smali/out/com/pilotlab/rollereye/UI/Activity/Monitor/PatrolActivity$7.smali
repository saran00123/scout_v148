.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$7;
.super Ljava/lang/Object;
.source "PatrolActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->checkDownloadProgress()V
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

    .line 391
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

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

    .line 399
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$2800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 400
    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 401
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    .line 402
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->getDownloadStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_24

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->getDownloadStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 403
    :cond_24
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_28
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 391
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$7;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 394
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$2702(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
