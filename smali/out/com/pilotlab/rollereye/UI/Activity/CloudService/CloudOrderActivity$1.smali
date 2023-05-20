.class Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$1;
.super Ljava/lang/Object;
.source "CloudOrderActivity.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 5

    .line 77
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-lez p1, :cond_2e

    .line 78
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;Ljava/lang/String;I)V

    goto :goto_35

    .line 79
    :cond_2e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    const-string v1, "0"

    invoke-static {p1, v1, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;Ljava/lang/String;I)V

    :goto_35
    return-void
.end method
