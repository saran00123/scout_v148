.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$1;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/SwipeMenuCreator;


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

    .line 107
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateMenu(Lcom/yanzhenjie/recyclerview/SwipeMenu;Lcom/yanzhenjie/recyclerview/SwipeMenu;I)V
    .registers 8

    .line 110
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

    const/high16 p3, 0x42700000    # 60.0f

    invoke-static {p1, p3}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p1

    .line 111
    iget-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

    const/high16 v0, 0x428c0000    # 70.0f

    invoke-static {p3, v0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p3

    .line 114
    new-instance v0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

    const v3, 0x7f06006f

    .line 115
    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;

    move-result-object v0

    const v1, 0x7f08016b

    .line 116
    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->setImage(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;

    move-result-object v0

    const/4 v1, -0x1

    .line 117
    invoke-virtual {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->setTextColor(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->setWidth(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;

    move-result-object p1

    .line 119
    invoke-virtual {p1, p3}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->setHeight(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;

    move-result-object p1

    .line 120
    invoke-virtual {p2, p1}, Lcom/yanzhenjie/recyclerview/SwipeMenu;->addMenuItem(Lcom/yanzhenjie/recyclerview/SwipeMenuItem;)V

    return-void
.end method
