.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;
.super Ljava/lang/Object;
.source "ScratchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->dialogCloudScratch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

.field final synthetic val$contentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;Landroid/view/View;)V
    .registers 3

    .line 563
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;->val$contentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 566
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1400(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)I

    move-result v0

    if-eq p1, v0, :cond_76

    .line 567
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1400(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$802(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;I)I

    .line 568
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;->val$contentView:Landroid/view/View;

    const v0, 0x7f0a0243

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 569
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;->val$contentView:Landroid/view/View;

    const v0, 0x7f0a0244

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06013f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 570
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 571
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 572
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1200(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 573
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    const-wide/16 v0, 0x0

    const/16 v2, 0x14

    invoke-static {p1, v0, v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;JI)V

    .line 575
    :cond_76
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "======"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
