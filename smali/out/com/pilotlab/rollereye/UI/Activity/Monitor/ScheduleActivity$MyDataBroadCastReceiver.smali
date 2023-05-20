.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$MyDataBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;


# direct methods
.method private constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;)V
    .registers 2

    .line 391
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$1;)V
    .registers 3

    .line 391
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$MyDataBroadCastReceiver;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 395
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Common/CommonConstant;->PATROL_SAVE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 p1, 0x0

    const-string v0, "id"

    .line 396
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 397
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 398
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;)I

    move-result v0

    invoke-static {p2, p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;II)V

    .line 399
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ScheduleActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    :cond_2b
    return-void
.end method
