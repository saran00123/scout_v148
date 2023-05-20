.class Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->checkSystemDownloadStatus(Ljava/util/List;ILjava/util/List;)V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

.field final synthetic val$donwloadFileName:Ljava/util/List;

.field final synthetic val$fileCounts:I

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;Ljava/util/List;ILjava/util/List;)V
    .registers 5

    .line 283
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->val$list:Ljava/util/List;

    iput p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->val$fileCounts:I

    iput-object p4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->val$donwloadFileName:Ljava/util/List;

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

    .line 291
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->val$list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 292
    :cond_6
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 293
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    .line 294
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->getDownloadStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_20

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->getDownloadStatus()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 295
    :cond_20
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 298
    :cond_24
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

    move-result-object p1

    const v0, 0x7f0a0459

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;

    .line 300
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download system log progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->val$fileCounts:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->val$list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->val$fileCounts:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->val$fileCounts:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->val$list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->val$fileCounts:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->setProgress(I)V

    .line 305
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->val$list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_ac

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)I

    move-result v0

    if-ne p1, v0, :cond_ac

    .line 306
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$602(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;I)I

    .line 307
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->dismiss()V

    .line 308
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 309
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->val$donwloadFileName:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->sendMailByIntent(Ljava/util/List;)V

    :cond_ac
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 283
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$302(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
