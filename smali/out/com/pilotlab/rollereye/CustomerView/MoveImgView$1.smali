.class Lcom/pilotlab/rollereye/CustomerView/MoveImgView$1;
.super Landroid/os/Handler;
.source "MoveImgView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/CustomerView/MoveImgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/CustomerView/MoveImgView;

.field final synthetic val$screenHeight:I


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/CustomerView/MoveImgView;I)V
    .registers 3

    .line 42
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/MoveImgView;

    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView$1;->val$screenHeight:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 45
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4b

    .line 57
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/MoveImgView;

    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->access$000(Lcom/pilotlab/rollereye/CustomerView/MoveImgView;)I

    move-result p1

    const-wide/high16 v1, 0x4004000000000000L    # 2.5

    if-nez p1, :cond_2f

    .line 58
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/MoveImgView;

    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->access$100(Lcom/pilotlab/rollereye/CustomerView/MoveImgView;)D

    move-result-wide v3

    sub-double/2addr v3, v1

    invoke-static {p1, v3, v4}, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->access$102(Lcom/pilotlab/rollereye/CustomerView/MoveImgView;D)D

    .line 59
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/MoveImgView;

    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->access$100(Lcom/pilotlab/rollereye/CustomerView/MoveImgView;)D

    move-result-wide v1

    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView$1;->val$screenHeight:I

    add-int/lit16 p1, p1, -0xc8

    neg-int p1, p1

    int-to-double v3, p1

    cmpg-double p1, v1, v3

    if-gez p1, :cond_4b

    .line 60
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/MoveImgView;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->access$002(Lcom/pilotlab/rollereye/CustomerView/MoveImgView;I)I

    goto :goto_4b

    .line 62
    :cond_2f
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/MoveImgView;

    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->access$100(Lcom/pilotlab/rollereye/CustomerView/MoveImgView;)D

    move-result-wide v3

    add-double/2addr v3, v1

    invoke-static {p1, v3, v4}, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->access$102(Lcom/pilotlab/rollereye/CustomerView/MoveImgView;D)D

    .line 63
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/MoveImgView;

    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->access$100(Lcom/pilotlab/rollereye/CustomerView/MoveImgView;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-ltz p1, :cond_4b

    .line 64
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/MoveImgView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->access$002(Lcom/pilotlab/rollereye/CustomerView/MoveImgView;I)I

    .line 67
    :cond_4b
    :goto_4b
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/MoveImgView;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->invalidate()V

    .line 68
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/MoveImgView;

    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->access$200(Lcom/pilotlab/rollereye/CustomerView/MoveImgView;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
