.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;)V
    .registers 2

    .line 3007
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1$1;->this$2:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 3010
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1$1;->this$2:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    .line 3011
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1$1;->this$2:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;

    iget-boolean p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->val$noMoreData:Z

    if-eqz p1, :cond_1b

    .line 3012
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1$1;->this$2:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNoMoreData(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 3014
    :cond_1b
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1$1;->this$2:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne p1, v0, :cond_32

    .line 3015
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1$1;->this$2:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7$1;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->None:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V

    :cond_32
    return-void
.end method
