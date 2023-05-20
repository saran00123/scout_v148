.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$5;
.super Ljava/lang/Object;
.source "NewSchedulerActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    if-eqz p2, :cond_11

    .line 196
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getParamBean()Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->setNotice(I)V

    goto :goto_1f

    .line 197
    :cond_11
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getParamBean()Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->setNotice(I)V

    :goto_1f
    return-void
.end method
