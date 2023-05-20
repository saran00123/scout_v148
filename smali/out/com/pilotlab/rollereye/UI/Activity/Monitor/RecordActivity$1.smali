.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$1;
.super Ljava/lang/Object;
.source "RecordActivity.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 4

    .line 114
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_39

    .line 115
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;Ljava/lang/String;I)V

    goto :goto_46

    .line 116
    :cond_39
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;I)V

    .line 118
    :goto_46
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    const/16 v0, 0x7d0

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishLoadMore(I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method
