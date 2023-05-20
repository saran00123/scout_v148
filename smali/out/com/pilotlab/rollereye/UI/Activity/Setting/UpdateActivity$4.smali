.class Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$4;
.super Ljava/lang/Object;
.source "UpdateActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->update()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)V
    .registers 2

    .line 410
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .registers 8

    .line 418
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x43340000    # 180.0f

    div-float/2addr v1, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 419
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-float p1, v4

    div-float/2addr p1, v2

    mul-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 410
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$4;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 413
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->access$402(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
