.class Lcom/pilotlab/rollereye/RollerEyeApplication$4;
.super Ljava/lang/Object;
.source "RollerEyeApplication.java"

# interfaces
.implements Lcom/pilotlab/rollereye/MyInterface/AppFrontBackHelper$OnAppStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/RollerEyeApplication;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/RollerEyeApplication;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/pilotlab/rollereye/RollerEyeApplication$4;->this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .registers 3

    .line 203
    invoke-static {}, Lcom/pilotlab/rollereye/RollerEyeApplication;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP\u5207\u5230\u540e\u53f0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/pilotlab/rollereye/RollerEyeApplication$4;->this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-static {v0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->access$300(Lcom/pilotlab/rollereye/RollerEyeApplication;)V

    return-void
.end method

.method public onFront()V
    .registers 3

    .line 192
    invoke-static {}, Lcom/pilotlab/rollereye/RollerEyeApplication;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP\u56de\u5230\u524d\u53f0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/pilotlab/rollereye/RollerEyeApplication$4;->this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-static {v0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->access$100(Lcom/pilotlab/rollereye/RollerEyeApplication;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 194
    iget-object v0, p0, Lcom/pilotlab/rollereye/RollerEyeApplication$4;->this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-static {v0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->access$100(Lcom/pilotlab/rollereye/RollerEyeApplication;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 195
    iget-object v0, p0, Lcom/pilotlab/rollereye/RollerEyeApplication$4;->this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/RollerEyeApplication;->access$102(Lcom/pilotlab/rollereye/RollerEyeApplication;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    .line 197
    :cond_20
    iget-object v0, p0, Lcom/pilotlab/rollereye/RollerEyeApplication$4;->this$0:Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-static {v0}, Lcom/pilotlab/rollereye/RollerEyeApplication;->access$200(Lcom/pilotlab/rollereye/RollerEyeApplication;)V

    return-void
.end method
