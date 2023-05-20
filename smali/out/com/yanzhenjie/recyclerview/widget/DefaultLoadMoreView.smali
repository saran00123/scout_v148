.class public Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;
.super Landroid/widget/LinearLayout;
.source "DefaultLoadMoreView.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreView;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mLoadMoreListener:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTvMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x11

    .line 51
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->setGravity(I)V

    const/16 p1, 0x8

    .line 52
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->setVisibility(I)V

    .line 54
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 56
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42700000    # 60.0f

    mul-float/2addr p1, p2

    float-to-double p1, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int p1, p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->setMinimumHeight(I)V

    .line 59
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/yanzhenjie/recyclerview/x/R$layout;->x_recycler_view_load_more:I

    invoke-static {p1, p2, p0}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    sget p1, Lcom/yanzhenjie/recyclerview/x/R$id;->progress_bar:I

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 61
    sget p1, Lcom/yanzhenjie/recyclerview/x/R$id;->tv_load_more_message:I

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    .line 62
    invoke-virtual {p0, p0}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 113
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mLoadMoreListener:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreListener;->onLoadMore()V

    :cond_7
    return-void
.end method

.method public onLoadError(ILjava/lang/String;)V
    .registers 5

    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    .line 108
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/yanzhenjie/recyclerview/x/R$string;->x_recycler_load_error:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 107
    :cond_22
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLoadFinish(ZZ)V
    .registers 4

    if-nez p2, :cond_2e

    const/4 p2, 0x0

    .line 76
    invoke-virtual {p0, p2}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->setVisibility(I)V

    const/16 v0, 0x8

    if-eqz p1, :cond_1c

    .line 79
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    sget p2, Lcom/yanzhenjie/recyclerview/x/R$string;->x_recycler_data_empty:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_32

    .line 83
    :cond_1c
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 84
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    sget p2, Lcom/yanzhenjie/recyclerview/x/R$string;->x_recycler_more_not:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_32

    :cond_2e
    const/4 p1, 0x4

    .line 88
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->setVisibility(I)V

    :goto_32
    return-void
.end method

.method public onLoading()V
    .registers 3

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->setVisibility(I)V

    .line 68
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 69
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    sget v1, Lcom/yanzhenjie/recyclerview/x/R$string;->x_recycler_load_more_message:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onWaitToLoadMore(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreListener;)V
    .registers 4

    .line 94
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mLoadMoreListener:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreListener;

    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;->mTvMessage:Landroid/widget/TextView;

    sget v0, Lcom/yanzhenjie/recyclerview/x/R$string;->x_recycler_click_load_more:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
