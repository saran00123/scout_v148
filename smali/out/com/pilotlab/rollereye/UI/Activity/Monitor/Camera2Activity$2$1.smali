.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2$1;
.super Ljava/lang/Object;
.source "Camera2Activity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->onActionUp()V
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
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;)V
    .registers 2

    .line 526
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;

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
    .registers 4
    .param p1    # Ljava/lang/Long;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 534
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onActionUp: clear"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1502(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;D)D

    .line 536
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {p1, v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1602(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;D)D

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 526
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2$1;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 529
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$1802(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
