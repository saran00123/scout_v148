.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SmartRefreshLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;)V
    .registers 2

    .line 3259
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$2;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 3262
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$2;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_31

    .line 3263
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$2;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    .line 3264
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$2;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_24

    .line 3265
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$2;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    sget-object v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->ReleaseToLoad:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->setState(Lcom/scwang/smartrefresh/layout/constant/RefreshState;)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 3267
    :cond_24
    iget-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$2;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iget-object p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9$2;->this$1:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$9;->val$animationOnly:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setStateLoading(Z)V

    :cond_31
    return-void
.end method
