.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6$1;
.super Ljava/lang/Object;
.source "ScratchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6;)V
    .registers 2

    .line 497
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 500
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 501
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6;

    iget p2, p2, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6;->val$position:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    .line 502
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 504
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 505
    :cond_27
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->clearScratchReadName(Landroid/content/Context;Ljava/lang/String;)V

    .line 506
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6;

    iget p2, p2, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$6;->val$position:I

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->removeData(I)V

    return-void
.end method
