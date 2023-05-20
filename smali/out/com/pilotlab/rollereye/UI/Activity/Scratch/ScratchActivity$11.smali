.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$11;
.super Ljava/lang/Object;
.source "ScratchActivity.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;


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


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)V
    .registers 2

    .line 582
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$11;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 6
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 586
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$11;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$11;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1400(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)I

    move-result v0

    const-wide/16 v1, 0x0

    const/16 v3, 0x14

    if-ne p1, v0, :cond_45

    .line 587
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$11;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3f

    .line 588
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$11;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$11;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1, v3}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;JI)V

    goto :goto_77

    .line 589
    :cond_3f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$11;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1, v1, v2, v3}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;JI)V

    goto :goto_77

    .line 591
    :cond_45
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$11;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_72

    .line 592
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$11;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$11;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/RecommendScratchBean$DataBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/RecommendScratchBean$DataBean;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1, v3}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1300(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;JI)V

    goto :goto_77

    .line 593
    :cond_72
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$11;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1, v1, v2, v3}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1300(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;JI)V

    :goto_77
    return-void
.end method
