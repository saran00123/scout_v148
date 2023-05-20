.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$19;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->initBitRate()V
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

    .line 1638
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$19;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

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

    .line 1646
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$19;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$5100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$19;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$5000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1647
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$19;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$5002(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;F)F

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 1638
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$19;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 1641
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$19;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$4902(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
