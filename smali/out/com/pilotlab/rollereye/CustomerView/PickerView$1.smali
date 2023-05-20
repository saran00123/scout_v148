.class Lcom/pilotlab/rollereye/CustomerView/PickerView$1;
.super Landroid/os/Handler;
.source "PickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/CustomerView/PickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/CustomerView/PickerView;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/CustomerView/PickerView;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 68
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->access$000(Lcom/pilotlab/rollereye/CustomerView/PickerView;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_33

    .line 69
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->access$002(Lcom/pilotlab/rollereye/CustomerView/PickerView;F)F

    .line 70
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->access$100(Lcom/pilotlab/rollereye/CustomerView/PickerView;)Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 71
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->access$100(Lcom/pilotlab/rollereye/CustomerView/PickerView;)Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;->cancel()Z

    .line 72
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->access$102(Lcom/pilotlab/rollereye/CustomerView/PickerView;Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;)Lcom/pilotlab/rollereye/CustomerView/PickerView$MyTimerTask;

    .line 73
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->access$200(Lcom/pilotlab/rollereye/CustomerView/PickerView;)V

    goto :goto_4f

    .line 77
    :cond_33
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->access$000(Lcom/pilotlab/rollereye/CustomerView/PickerView;)F

    move-result v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    invoke-static {v2}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->access$000(Lcom/pilotlab/rollereye/CustomerView/PickerView;)F

    move-result v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    invoke-static {v3}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->access$000(Lcom/pilotlab/rollereye/CustomerView/PickerView;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    invoke-static {p1, v1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->access$002(Lcom/pilotlab/rollereye/CustomerView/PickerView;F)F

    .line 78
    :cond_4f
    :goto_4f
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/PickerView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/PickerView;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/PickerView;->invalidate()V

    return-void
.end method
