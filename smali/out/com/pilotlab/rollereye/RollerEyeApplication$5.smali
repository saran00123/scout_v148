.class Lcom/pilotlab/rollereye/RollerEyeApplication$5;
.super Ljava/lang/Object;
.source "RollerEyeApplication.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/RollerEyeApplication;->releaseService()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/RollerEyeApplication;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/pilotlab/rollereye/RollerEyeApplication$5;->this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;

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

    .line 232
    iget-object p1, p0, Lcom/pilotlab/rollereye/RollerEyeApplication$5;->this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->access$402(Lcom/pilotlab/rollereye/RollerEyeApplication;Z)Z

    .line 233
    iget-object p1, p0, Lcom/pilotlab/rollereye/RollerEyeApplication$5;->this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 235
    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p1

    .line 236
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 237
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.pilotlab.rollereye.Services.NetWorkBacService"

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 239
    iget-object v0, p0, Lcom/pilotlab/rollereye/RollerEyeApplication$5;->this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/RollerEyeApplication;->access$402(Lcom/pilotlab/rollereye/RollerEyeApplication;Z)Z

    goto :goto_1b

    .line 242
    :cond_3c
    iget-object p1, p0, Lcom/pilotlab/rollereye/RollerEyeApplication$5;->this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-static {p1}, Lcom/pilotlab/rollereye/RollerEyeApplication;->access$400(Lcom/pilotlab/rollereye/RollerEyeApplication;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 243
    invoke-static {}, Lcom/pilotlab/rollereye/RollerEyeApplication;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "releaseService"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object p1, p0, Lcom/pilotlab/rollereye/RollerEyeApplication$5;->this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->stopService(Landroid/content/Intent;)Z

    :cond_59
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 224
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/RollerEyeApplication$5;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 227
    iget-object v0, p0, Lcom/pilotlab/rollereye/RollerEyeApplication$5;->this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/RollerEyeApplication;->access$102(Lcom/pilotlab/rollereye/RollerEyeApplication;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
