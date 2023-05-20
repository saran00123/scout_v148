.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$2;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->initSwipeRecycleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;I)V
    .registers 4

    .line 129
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;->closeMenu()V

    .line 131
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;->getDirection()I

    move-result v0

    .line 133
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;->getPosition()I

    const/4 p1, -0x1

    if-ne v0, p1, :cond_1b

    .line 136
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;I)V

    .line 137
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;)Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->removeData(I)V

    .line 140
    :cond_1b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_33

    .line 141
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3d

    .line 142
    :cond_33
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_3d
    return-void
.end method
