.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;
.super Ljava/lang/Object;
.source "CloudPreViewActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->createDownloadMission(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lzlc/season/rxdownload3/core/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$needShare:Z

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 247
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->val$filename:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->val$needShare:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 247
    check-cast p1, Lzlc/season/rxdownload3/core/Status;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->accept(Lzlc/season/rxdownload3/core/Status;)V

    return-void
.end method

.method public accept(Lzlc/season/rxdownload3/core/Status;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$102(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;Lzlc/season/rxdownload3/core/Status;)Lzlc/season/rxdownload3/core/Status;

    .line 252
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

    move-result-object v0

    const v1, 0x7f0a0459

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;

    .line 254
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Status;->getDownloadSize()J

    move-result-wide v1

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Status;->getTotalSize()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3b

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Status;->getTotalSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3b

    .line 255
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Status;->getDownloadSize()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Status;->getTotalSize()J

    move-result-wide v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->setProgress(I)V

    goto :goto_3f

    :cond_3b
    const/4 v1, 0x0

    .line 256
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->setProgress(I)V

    .line 258
    :goto_3f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Status;->getDownloadSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", total:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Status;->getTotalSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    instance-of v0, p1, Lzlc/season/rxdownload3/core/Failed;

    const v1, 0x7f11003e

    if-eqz v0, :cond_93

    .line 260
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->dismiss()V

    .line 261
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    const p1, 0x7f11021c

    invoke-virtual {v2, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4$1;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_111

    .line 267
    :cond_93
    instance-of p1, p1, Lzlc/season/rxdownload3/core/Succeed;

    if-eqz p1, :cond_111

    .line 268
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->dismiss()V

    .line 269
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->val$filename:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setLocal_path(Ljava/lang/String;)V

    .line 270
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/pilotlab/rollereye/Common/CommonConstant;->RECORD_CLOUD_DATA_DOWNLOAD:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getId()J

    move-result-wide v2

    const-string v0, "download_record_id"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 272
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 273
    iget-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->val$needShare:Z

    if-eqz p1, :cond_e6

    .line 274
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)V

    goto :goto_104

    .line 276
    :cond_e6
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    const p1, 0x7f11021d

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-virtual {v2, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4$2;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    .line 283
    :goto_104
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getLocal_path()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/Utils/FileUtil;->saveMediaGallay(Landroid/content/Context;Ljava/lang/String;)I

    :cond_111
    :goto_111
    return-void
.end method
