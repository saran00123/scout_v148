.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$2;
.super Ljava/lang/Object;
.source "RecordActivity.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;


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

    .line 122
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 5
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 125
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2d

    .line 126
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;Ljava/lang/String;I)V

    goto :goto_3a

    .line 127
    :cond_2d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;I)V

    :goto_3a
    const/16 v0, 0x7d0

    .line 128
    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh(I)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method
