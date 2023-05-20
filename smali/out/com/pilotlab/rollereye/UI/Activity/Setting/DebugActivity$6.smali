.class Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$6;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V
    .registers 2

    .line 536
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    if-eqz p2, :cond_8

    .line 540
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$1300(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V

    goto :goto_19

    .line 541
    :cond_8
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 542
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_19
    :goto_19
    return-void
.end method
