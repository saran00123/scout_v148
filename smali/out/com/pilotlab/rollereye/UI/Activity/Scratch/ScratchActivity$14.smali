.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;
.super Ljava/lang/Object;
.source "ScratchActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->downloadCloudItem(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

.field final synthetic val$circularProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

.field final synthetic val$imageButton:Landroid/widget/ImageButton;

.field final synthetic val$position:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroid/widget/ImageButton;Landroid/view/View;I)V
    .registers 6

    .line 754
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;->val$circularProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;->val$imageButton:Landroid/widget/ImageButton;

    iput-object p4, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;->val$v:Landroid/view/View;

    iput p5, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;->val$position:I

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

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean;)V
    .registers 7

    .line 762
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;->val$circularProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->stop()V

    .line 763
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean;->getCode()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_bd

    .line 764
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;->val$imageButton:Landroid/widget/ImageButton;

    const v2, 0x7f08019e

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 765
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;->val$imageButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 766
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;->val$v:Landroid/view/View;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    const v4, 0x7f110258

    invoke-virtual {v3, v4}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 768
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean$DataBean;->getScratch()Ljava/lang/String;

    move-result-object p1

    .line 770
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getScratchPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;->val$position:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".scout"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 771
    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/FileUtil;->createFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 773
    :try_start_72
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 774
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7d} :catch_7e

    goto :goto_82

    :catch_7e
    move-exception p1

    .line 777
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 780
    :goto_82
    new-instance p1, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    invoke-direct {p1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;-><init>()V

    .line 781
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 784
    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setCreateTime(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getFileNameNoEx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setName(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 787
    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setFlag(I)V

    .line 788
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->addData(ILjava/lang/Object;)V

    goto :goto_d7

    .line 791
    :cond_bd
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;->val$imageButton:Landroid/widget/ImageButton;

    const v0, 0x7f080186

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 792
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;->val$v:Landroid/view/View;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    const v2, 0x7f110257

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_d7
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 754
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/CloudDownloadScratchBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 757
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$14;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$302(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
