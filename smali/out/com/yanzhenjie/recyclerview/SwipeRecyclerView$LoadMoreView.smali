.class public interface abstract Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreView;
.super Ljava/lang/Object;
.source "SwipeRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadMoreView"
.end annotation


# virtual methods
.method public abstract onLoadError(ILjava/lang/String;)V
.end method

.method public abstract onLoadFinish(ZZ)V
.end method

.method public abstract onLoading()V
.end method

.method public abstract onWaitToLoadMore(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreListener;)V
.end method
