.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->checkVideoAutoAdjust(I)V
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

.field final synthetic val$gap:I


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;I)V
    .registers 3

    .line 1053
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    iput p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;->val$gap:I

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
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .registers 10
    .param p1    # Ljava/lang/Long;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 1061
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$3300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 1062
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$3400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I

    move-result p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_89

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$3500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_89

    .line 1063
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveFrameCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$3500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",defaultFrames:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$3400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$3500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)J

    move-result-wide v2

    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;->val$gap:I

    int-to-long v4, p1

    div-long/2addr v2, v4

    long-to-double v2, v2

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$3400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I

    move-result p1

    int-to-double v4, p1

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    cmpg-double p1, v2, v4

    if-gez p1, :cond_89

    .line 1066
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$3600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I

    move-result p1

    if-eqz p1, :cond_89

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$3700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I

    move-result p1

    if-eqz p1, :cond_89

    .line 1067
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$3600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I

    move-result p1

    const/16 v2, 0x780

    if-ne p1, v2, :cond_89

    .line 1068
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-static {p1, v2, v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$3800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;II)V

    .line 1073
    :cond_89
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1, v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$3502(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;J)J

    :cond_8e
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 1053
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 1056
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$3202(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
