.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;
.super Ljava/lang/Object;
.source "CloudActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->deleteRecords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V
    .registers 2

    .line 575
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    .line 610
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V
    .registers 9

    .line 583
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 584
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_fc

    .line 585
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 586
    :goto_2e
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 587
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_bc

    .line 588
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getLocal_path()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 589
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v4}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getLocal_path()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 591
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 594
    :cond_84
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->removeData(I)V

    :cond_bc
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2e

    .line 599
    :cond_c0
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$2100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 600
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 601
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V

    .line 602
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_f3

    .line 603
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_fc

    .line 604
    :cond_f3
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_fc
    :goto_fc
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 575
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 578
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$402(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
