.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V
    .registers 2

    .line 540
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 547
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    if-eqz p1, :cond_11d

    const/4 v1, 0x0

    if-eq p1, v0, :cond_117

    const/4 v2, 0x2

    if-eq p1, v2, :cond_33

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1e

    const/4 p2, 0x6

    if-eq p1, p2, :cond_17

    goto/16 :goto_134

    .line 558
    :cond_17
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1902(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;I)I

    goto/16 :goto_134

    .line 561
    :cond_1e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Landroid/view/MotionEvent;)F

    move-result p2

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2002(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;F)F

    .line 562
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I

    move-result p2

    add-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1902(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;I)I

    goto/16 :goto_134

    .line 566
    :cond_33
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I

    move-result p1

    if-lt p1, v2, :cond_7b

    .line 567
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;Landroid/view/MotionEvent;)F

    move-result p1

    .line 568
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)F

    move-result p2

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p2, v1

    cmpl-float p2, p1, p2

    if-lez p2, :cond_5e

    .line 569
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)F

    move-result v2

    div-float v2, p1, v2

    invoke-static {p2, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;F)V

    .line 570
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p2, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2002(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;F)F

    .line 572
    :cond_5e
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)F

    move-result p2

    sub-float/2addr p2, v1

    cmpg-float p2, p1, p2

    if-gez p2, :cond_134

    .line 573
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)F

    move-result v1

    div-float v1, p1, v1

    invoke-static {p2, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;F)V

    .line 574
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p2, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2002(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;F)F

    goto/16 :goto_134

    .line 576
    :cond_7b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)I

    move-result p1

    if-ne p1, v0, :cond_134

    const-string p1, "MotionEvent"

    const-string v1, "ACTION_MOVE"

    .line 577
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 579
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 580
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    if-lez v3, :cond_e2

    .line 581
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    div-float/2addr v1, v2

    .line 582
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->translatefX(F)V

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5de6\u53f3\u79fb\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1702(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;F)F

    goto :goto_134

    .line 586
    :cond_e2
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    div-float/2addr v2, v1

    .line 587
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$2300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/CustomerView/WayPointView;

    move-result-object v1

    neg-float v3, v2

    invoke-virtual {v1, v3}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->translatefY(F)V

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0a\u4e0b\u79fb:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1802(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;F)F

    goto :goto_134

    .line 554
    :cond_117
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1902(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;I)I

    goto :goto_134

    .line 549
    :cond_11d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {p1, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1702(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;F)F

    .line 550
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1802(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;F)F

    .line 551
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$1902(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;I)I

    :cond_134
    :goto_134
    return v0
.end method
