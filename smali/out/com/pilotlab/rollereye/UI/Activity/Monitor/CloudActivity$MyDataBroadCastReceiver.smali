.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$MyDataBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloudActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;


# direct methods
.method private constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V
    .registers 2

    .line 739
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$1;)V
    .registers 3

    .line 739
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$MyDataBroadCastReceiver;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 743
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Common/CommonConstant;->RECORD_CLOUD_DATA_CHANGE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    if-eqz p1, :cond_48

    const-string p1, "remove_record_id"

    .line 744
    invoke-virtual {p2, p1, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 745
    :goto_15
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 746
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_3f

    .line 747
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->removeData(I)V

    goto :goto_42

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 751
    :cond_42
    :goto_42
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V

    goto :goto_b6

    .line 752
    :cond_48
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v3, Lcom/pilotlab/rollereye/Common/CommonConstant;->RECORD_CLOUD_DATA_DOWNLOAD:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b6

    const-string p1, "download_record_id"

    .line 753
    invoke-virtual {p2, p1, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 754
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_record_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 755
    :goto_70
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_b6

    .line 756
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_b3

    .line 757
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 758
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-static {v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;)V

    :cond_b3
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    :cond_b6
    :goto_b6
    return-void
.end method
