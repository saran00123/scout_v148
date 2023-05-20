.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$3;
.super Ljava/lang/Object;
.source "NewSchedulerActivity.java"

# interfaces
.implements Lcom/pilotlab/rollereye/CustomerView/TimePicker$ResultHandler;


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

    .line 178
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;)V
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setStartTime(Ljava/lang/String;)V

    return-void
.end method
