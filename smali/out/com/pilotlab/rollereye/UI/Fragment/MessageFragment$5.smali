.class Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$5;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)V
    .registers 2

    .line 381
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 3
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 384
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$600(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    .line 385
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    const/16 v0, -0x14

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$700(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;I)V

    goto :goto_16

    .line 386
    :cond_11
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->access$800(Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;)V

    :goto_16
    return-void
.end method
