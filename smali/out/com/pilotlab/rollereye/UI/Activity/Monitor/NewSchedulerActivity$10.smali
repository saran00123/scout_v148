.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$10;
.super Ljava/lang/Object;
.source "NewSchedulerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->dialogChoice(Ljava/util/List;Ljava/lang/String;)V
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

    .line 383
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$10;->val$datalist:Ljava/util/List;

    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$10;->val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    const/4 p2, 0x0

    const-string v0, ""

    move v1, p2

    move-object v2, v0

    .line 386
    :goto_5
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$10;->val$datalist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_43

    .line 387
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$10;->val$datalist:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "value"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$10;->val$listChoiseAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-virtual {v6}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 388
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$10;->val$datalist:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 391
    :cond_43
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6b

    .line 392
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setName(Ljava/lang/String;)V

    .line 393
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getParamBean()Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->setRoute(Ljava/lang/String;)V

    .line 394
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_6b
    return-void
.end method
