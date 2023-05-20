.class public Lcom/scwang/smartrefresh/layout/listener/SimpleMultiPurposeListener;
.super Ljava/lang/Object;
.source "SimpleMultiPurposeListener.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnMultiPurposeListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFooterFinish(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;Z)V
    .registers 3

    return-void
.end method

.method public onFooterMoving(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;ZFIII)V
    .registers 7

    return-void
.end method

.method public onFooterReleased(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)V
    .registers 4

    return-void
.end method

.method public onFooterStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshFooter;II)V
    .registers 4

    return-void
.end method

.method public onHeaderFinish(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;Z)V
    .registers 3

    return-void
.end method

.method public onHeaderMoving(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;ZFIII)V
    .registers 7

    return-void
.end method

.method public onHeaderReleased(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)V
    .registers 4

    return-void
.end method

.method public onHeaderStartAnimator(Lcom/scwang/smartrefresh/layout/api/RefreshHeader;II)V
    .registers 4

    return-void
.end method

.method public onLoadMore(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 2
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 2
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onStateChanged(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/constant/RefreshState;Lcom/scwang/smartrefresh/layout/constant/RefreshState;)V
    .registers 4
    .param p1    # Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/scwang/smartrefresh/layout/constant/RefreshState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
