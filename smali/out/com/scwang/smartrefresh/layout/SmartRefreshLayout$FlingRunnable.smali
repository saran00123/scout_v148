.class public Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FlingRunnable"
.end annotation


# instance fields
.field mDamping:F

.field mFrame:I

.field mFrameDelay:I

.field mLastTime:J

.field mOffset:I

.field mStartTime:J

.field mVelocity:F

.field final synthetic this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;F)V
    .registers 5

    .line 1392
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1385
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mFrame:I

    const/16 v0, 0xa

    .line 1386
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mFrameDelay:I

    const v0, 0x3f7ae148    # 0.98f

    .line 1388
    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mDamping:F

    const-wide/16 v0, 0x0

    .line 1389
    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mStartTime:J

    .line 1390
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mLastTime:J

    .line 1393
    iput p2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mVelocity:F

    .line 1394
    iget p1, p1, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iput p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mOffset:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1429
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    if-ne v0, p0, :cond_97

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    if-nez v0, :cond_97

    .line 1431
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 1432
    iget-wide v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mLastTime:J

    sub-long v2, v0, v2

    .line 1433
    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mVelocity:F

    float-to-double v4, v4

    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mDamping:F

    float-to-double v6, v6

    iget-wide v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mStartTime:J

    sub-long v8, v0, v8

    long-to-float v8, v8

    iget v9, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mFrameDelay:I

    int-to-float v9, v9

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float v9, v10, v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    iput v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mVelocity:F

    .line 1434
    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mVelocity:F

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    div-float/2addr v2, v10

    mul-float/2addr v4, v2

    .line 1435
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-lez v2, :cond_93

    .line 1436
    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mLastTime:J

    .line 1437
    iget v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mOffset:I

    int-to-float v0, v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mOffset:I

    .line 1438
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mOffset:I

    mul-int/2addr v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_6a

    .line 1439
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    iget v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mOffset:I

    invoke-interface {v0, v2, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 1440
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mFrameDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_97

    .line 1442
    :cond_6a
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    .line 1443
    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mKernel:Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshKernel;->moveSpinner(IZ)Lcom/scwang/smartrefresh/layout/api/RefreshKernel;

    .line 1444
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mRefreshContent:Lcom/scwang/smartrefresh/layout/api/RefreshContent;

    invoke-interface {v0}, Lcom/scwang/smartrefresh/layout/api/RefreshContent;->getScrollableView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mVelocity:F

    neg-float v1, v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->fling(Landroid/view/View;I)V

    .line 1445
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    if-eqz v0, :cond_97

    const/4 v0, 0x0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_97

    .line 1446
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    goto :goto_97

    .line 1450
    :cond_93
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v3, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->animationRunnable:Ljava/lang/Runnable;

    :cond_97
    :goto_97
    return-void
.end method

.method public start()Ljava/lang/Runnable;
    .registers 11

    .line 1398
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isFinishing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 1401
    :cond_a
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_75

    :cond_34
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Loading:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v2, :cond_58

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreData:Z

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableFooterFollowWhenNoMoreData:Z

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterNoMoreDataEffective:Z

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-boolean v2, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mEnableLoadMore:Z

    .line 1402
    invoke-virtual {v0, v2}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->isEnableRefreshOrLoadMore(Z)Z

    move-result v0

    if-eqz v0, :cond_63

    :cond_58
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v2, v2

    if-lt v0, v2, :cond_75

    :cond_63
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v2, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v2, :cond_d4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    if-le v0, v2, :cond_d4

    :cond_75
    const/4 v0, 0x0

    .line 1405
    iget-object v2, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v2, v2, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    .line 1406
    iget-object v3, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v3, v3, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mSpinner:I

    .line 1407
    iget v4, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mVelocity:F

    :goto_80
    mul-int v5, v3, v2

    if-lez v5, :cond_d4

    float-to-double v4, v4

    .line 1409
    iget v6, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mDamping:F

    float-to-double v6, v6

    add-int/lit8 v0, v0, 0x1

    iget v8, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mFrameDelay:I

    mul-int/2addr v8, v0

    int-to-float v8, v8

    const/high16 v9, 0x41200000    # 10.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    .line 1410
    iget v5, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mFrameDelay:I

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v5, v7

    mul-float/2addr v5, v4

    .line 1411
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v6, v7, v6

    if-gez v6, :cond_d0

    .line 1412
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    iget-boolean v0, v0, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->isOpening:Z

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-ne v0, v3, :cond_c0

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHeaderHeight:I

    if-gt v2, v0, :cond_cf

    :cond_c0
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    sget-object v3, Lcom/scwang/smartrefresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smartrefresh/layout/constant/RefreshState;

    if-eq v0, v3, :cond_d4

    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mFooterHeight:I

    neg-int v0, v0

    if-ge v2, v0, :cond_d4

    :cond_cf
    return-object v1

    :cond_d0
    int-to-float v2, v2

    add-float/2addr v2, v5

    float-to-int v2, v2

    goto :goto_80

    .line 1422
    :cond_d4
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mStartTime:J

    .line 1423
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iget-object v0, v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$FlingRunnable;->mFrameDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object p0
.end method
