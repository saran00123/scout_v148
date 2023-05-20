.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$MyDataBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;


# direct methods
.method private constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V
    .registers 2

    .line 735
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$1;)V
    .registers 3

    .line 735
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$MyDataBroadCastReceiver;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 739
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Common/CommonConstant;->RECORD_LOCAL_DATA_CHANGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    const-string p1, "remove_record_id"

    .line 740
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    .line 742
    :goto_14
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_49

    .line 743
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 744
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->removeData(I)V

    goto :goto_49

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_49
    :goto_49
    return-void
.end method
