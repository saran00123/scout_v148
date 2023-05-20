.class Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$2;
.super Ljava/lang/Object;
.source "CloudOrderActivity.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;


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

    .line 83
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 4
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_23

    .line 87
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0xa

    invoke-static {p1, v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;Ljava/lang/String;I)V

    goto :goto_2c

    .line 88
    :cond_23
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$2;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    const/16 v0, 0xa

    const-string v1, "0"

    invoke-static {p1, v1, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;Ljava/lang/String;I)V

    :goto_2c
    return-void
.end method
