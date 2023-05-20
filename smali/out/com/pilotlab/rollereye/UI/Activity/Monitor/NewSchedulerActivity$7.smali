.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$7;
.super Ljava/lang/Object;
.source "NewSchedulerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->multDialogChoice(Ljava/util/List;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

.field final synthetic val$datalist:Ljava/util/List;

.field final synthetic val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;)V
    .registers 4

    .line 329
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$7;->val$datalist:Ljava/util/List;

    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$7;->val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    .line 331
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 332
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$7;->val$datalist:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Z

    .line 333
    new-instance p2, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;-><init>(I)V

    move v1, v0

    .line 334
    :goto_12
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$7;->val$datalist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_42

    .line 335
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$7;->val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object v2

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$7;->val$datalist:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "value"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 336
    aput-boolean v3, p1, v1

    goto :goto_3a

    .line 337
    :cond_38
    aput-boolean v0, p1, v1

    .line 338
    :goto_3a
    aget-boolean v2, p1, v1

    invoke-virtual {p2, v1, v2}, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->set(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 340
    :cond_42
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    invoke-virtual {p2, v1, v3}, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    move-result-object p2

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->getRepeatDate2String([Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setRepeat(Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getRepeat()Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 344
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setRepeatType(I)V

    goto :goto_86

    .line 346
    :cond_7d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setRepeatType(I)V

    :goto_86
    return-void
.end method
