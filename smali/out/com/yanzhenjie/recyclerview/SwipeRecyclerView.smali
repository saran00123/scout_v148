.class public Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SwipeRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreListener;,
        Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreView;,
        Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemMenuClickListener;,
        Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemLongClickListener;,
        Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemClickListener;,
        Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$DirectionMode;
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field public static final LEFT_DIRECTION:I = 0x1

.field public static final RIGHT_DIRECTION:I = -0x1


# instance fields
.field private allowSwipeDelete:Z

.field private isAutoLoadMore:Z

.field private isLoadError:Z

.field private isLoadMore:Z

.field private mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

.field private mDataEmpty:Z

.field private mDisableSwipeItemMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDownX:I

.field private mDownY:I

.field private mFooterViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHasMore:Z

.field private mHeaderViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mItemTouchHelper:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

.field private mLoadMoreListener:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreListener;

.field private mLoadMoreView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreView;

.field protected mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

.field protected mOldTouchedPosition:I

.field private mOnItemClickListener:Lcom/yanzhenjie/recyclerview/OnItemClickListener;

.field private mOnItemLongClickListener:Lcom/yanzhenjie/recyclerview/OnItemLongClickListener;

.field private mOnItemMenuClickListener:Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;

.field protected mScaleTouchSlop:I

.field private mScrollState:I

.field private mSwipeItemMenuEnable:Z

.field private mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/SwipeMenuCreator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, p2, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 68
    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldTouchedPosition:I

    const/4 p2, 0x1

    .line 83
    iput-boolean p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mSwipeItemMenuEnable:Z

    .line 84
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mDisableSwipeItemMenuList:Ljava/util/List;

    .line 398
    new-instance p3, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$2;

    invoke-direct {p3, p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$2;-><init>(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)V

    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 436
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mHeaderViewList:Ljava/util/List;

    .line 437
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mFooterViewList:Ljava/util/List;

    .line 698
    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mScrollState:I

    const/4 p1, 0x0

    .line 700
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->isLoadMore:Z

    .line 701
    iput-boolean p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->isAutoLoadMore:Z

    .line 702
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->isLoadError:Z

    .line 704
    iput-boolean p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mDataEmpty:Z

    .line 705
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mHasMore:Z

    .line 96
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mScaleTouchSlop:I

    return-void
.end method

.method static synthetic access$000(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Lcom/yanzhenjie/recyclerview/AdapterWrapper;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    return-object p0
.end method

.method private checkAdapterExist(Ljava/lang/String;)V
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private dispatchLoadMore()V
    .registers 3

    .line 747
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->isLoadError:Z

    if-eqz v0, :cond_5

    return-void

    .line 749
    :cond_5
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->isAutoLoadMore:Z

    if-nez v0, :cond_13

    .line 750
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mLoadMoreView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreView;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mLoadMoreListener:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreListener;

    invoke-interface {v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreView;->onWaitToLoadMore(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreListener;)V

    goto :goto_31

    .line 752
    :cond_13
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->isLoadMore:Z

    if-nez v0, :cond_31

    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mDataEmpty:Z

    if-nez v0, :cond_31

    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mHasMore:Z

    if-nez v0, :cond_20

    goto :goto_31

    :cond_20
    const/4 v0, 0x1

    .line 754
    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->isLoadMore:Z

    .line 756
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mLoadMoreView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreView;

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreView;->onLoading()V

    .line 758
    :cond_2a
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mLoadMoreListener:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreListener;

    if-eqz v0, :cond_31

    invoke-interface {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreListener;->onLoadMore()V

    :cond_31
    :goto_31
    return-void
.end method

.method private getSwipeMenuView(Landroid/view/View;)Landroid/view/View;
    .registers 7

    .line 682
    instance-of v0, p1, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-eqz v0, :cond_5

    return-object p1

    .line 683
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 684
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    const/4 v1, 0x0

    .line 686
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 687
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-nez v3, :cond_1f

    goto :goto_d

    .line 690
    :cond_1f
    instance-of v3, v2, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-eqz v3, :cond_24

    return-object v2

    .line 691
    :cond_24
    check-cast v2, Landroid/view/ViewGroup;

    .line 692
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_2a
    if-ge v1, v3, :cond_d

    .line 693
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_36
    return-object p1
.end method

.method private handleUnDown(IIZ)Z
    .registers 7

    .line 652
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mDownX:I

    sub-int/2addr v0, p1

    .line 653
    iget p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mDownY:I

    sub-int/2addr p1, p2

    .line 656
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mScaleTouchSlop:I

    const/4 v2, 0x0

    if-le p2, v1, :cond_1a

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p2, v1, :cond_1a

    return v2

    .line 658
    :cond_1a
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mScaleTouchSlop:I

    if-ge p1, p2, :cond_2b

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mScaleTouchSlop:I

    if-ge p1, p2, :cond_2b

    return v2

    :cond_2b
    return p3
.end method

.method private initializeItemTouchHelper()V
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mItemTouchHelper:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    if-nez v0, :cond_10

    .line 101
    new-instance v0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-direct {v0}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mItemTouchHelper:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    .line 102
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mItemTouchHelper:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p0}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    :cond_10
    return-void
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .registers 3

    .line 463
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mFooterViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    if-eqz v0, :cond_c

    .line 465
    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->addFooterViewAndNotify(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 3

    .line 443
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mHeaderViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    if-eqz v0, :cond_c

    .line 445
    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->addHeaderViewAndNotify(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method public getFooterCount()I
    .registers 2

    .line 488
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 489
    :cond_6
    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getFooterCount()I

    move-result v0

    return v0
.end method

.method public getHeaderCount()I
    .registers 2

    .line 480
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 481
    :cond_6
    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getHeaderCount()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 496
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 497
    :cond_6
    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getOriginAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2

    .line 363
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 364
    :cond_6
    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getOriginAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public isItemViewSwipeEnabled()Z
    .registers 2

    .line 217
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->initializeItemTouchHelper()V

    .line 218
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mItemTouchHelper:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->isItemViewSwipeEnabled()Z

    move-result v0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .registers 2

    .line 195
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->initializeItemTouchHelper()V

    .line 196
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mItemTouchHelper:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->isLongPressDragEnabled()Z

    move-result v0

    return v0
.end method

.method public isSwipeItemMenuEnabled()Z
    .registers 2

    .line 149
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mSwipeItemMenuEnable:Z

    return v0
.end method

.method public isSwipeItemMenuEnabled(I)Z
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mDisableSwipeItemMenuList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public loadMoreError(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 825
    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->isLoadMore:Z

    const/4 v0, 0x1

    .line 826
    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->isLoadError:Z

    .line 828
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mLoadMoreView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreView;

    if-eqz v0, :cond_d

    .line 829
    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreView;->onLoadError(ILjava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final loadMoreFinish(ZZ)V
    .registers 4

    const/4 v0, 0x0

    .line 806
    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->isLoadMore:Z

    .line 807
    iput-boolean v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->isLoadError:Z

    .line 809
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mDataEmpty:Z

    .line 810
    iput-boolean p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mHasMore:Z

    .line 812
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mLoadMoreView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreView;

    if-eqz v0, :cond_10

    .line 813
    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreView;->onLoadFinish(ZZ)V

    :cond_10
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    .line 579
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 580
    iget-boolean v1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->allowSwipeDelete:Z

    if-nez v1, :cond_e0

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/SwipeMenuCreator;

    if-nez v1, :cond_e

    goto/16 :goto_e0

    .line 583
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_16

    return v2

    .line 584
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 586
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float v4, v3

    int-to-float v5, p1

    .line 588
    invoke-virtual {p0, v4, v5}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    .line 589
    invoke-virtual {p0, v4}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_42

    .line 592
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getSwipeMenuView(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    .line 593
    instance-of v7, v5, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-eqz v7, :cond_42

    .line 594
    check-cast v5, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    goto :goto_43

    :cond_42
    move-object v5, v6

    .line 598
    :goto_43
    iget-boolean v7, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mSwipeItemMenuEnable:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_56

    iget-object v7, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mDisableSwipeItemMenuList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_56

    move v7, v2

    goto :goto_57

    :cond_56
    move v7, v8

    :goto_57
    if-eqz v5, :cond_5c

    .line 600
    invoke-virtual {v5, v7}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->setSwipeEnable(Z)V

    :cond_5c
    if-nez v7, :cond_5f

    return v0

    :cond_5f
    if-eqz v1, :cond_b8

    if-eq v1, v2, :cond_b3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_6b

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b3

    goto/16 :goto_e0

    .line 627
    :cond_6b
    invoke-direct {p0, v3, p1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->handleUnDown(IIZ)Z

    move-result v0

    .line 628
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-nez v1, :cond_75

    goto/16 :goto_e0

    .line 629
    :cond_75
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_7d

    goto/16 :goto_e0

    .line 632
    :cond_7d
    iget v4, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mDownX:I

    sub-int/2addr v4, v3

    if-lez v4, :cond_94

    .line 634
    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    .line 635
    invoke-virtual {v5}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->hasRightMenu()Z

    move-result v5

    if-nez v5, :cond_92

    iget-object v5, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    invoke-virtual {v5}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isLeftCompleteOpen()Z

    move-result v5

    if-eqz v5, :cond_94

    :cond_92
    move v5, v2

    goto :goto_95

    :cond_94
    move v5, v8

    :goto_95
    if-gez v4, :cond_a9

    .line 637
    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    .line 638
    invoke-virtual {v4}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->hasLeftMenu()Z

    move-result v4

    if-nez v4, :cond_a7

    iget-object v4, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    invoke-virtual {v4}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isRightCompleteOpen()Z

    move-result v4

    if-eqz v4, :cond_a9

    :cond_a7
    move v4, v2

    goto :goto_aa

    :cond_a9
    move v4, v8

    :goto_aa
    if-nez v5, :cond_b0

    if-eqz v4, :cond_af

    goto :goto_b0

    :cond_af
    move v2, v8

    .line 639
    :cond_b0
    :goto_b0
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 643
    :cond_b3
    invoke-direct {p0, v3, p1, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->handleUnDown(IIZ)Z

    move-result v0

    goto :goto_e0

    .line 606
    :cond_b8
    iput v3, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mDownX:I

    .line 607
    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mDownY:I

    .line 610
    iget p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldTouchedPosition:I

    if-eq v4, p1, :cond_d1

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-eqz p1, :cond_d1

    .line 611
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isMenuOpen()Z

    move-result p1

    if-eqz p1, :cond_d1

    .line 612
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    move v0, v2

    goto :goto_d2

    :cond_d1
    move v0, v8

    :goto_d2
    if-eqz v0, :cond_da

    .line 617
    iput-object v6, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    const/4 p1, -0x1

    .line 618
    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldTouchedPosition:I

    goto :goto_e0

    :cond_da
    if-eqz v5, :cond_e0

    .line 620
    iput-object v5, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    .line 621
    iput v4, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldTouchedPosition:I

    :cond_e0
    :goto_e0
    return v0
.end method

.method public onScrollStateChanged(I)V
    .registers 2

    .line 712
    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mScrollState:I

    return-void
.end method

.method public onScrolled(II)V
    .registers 6

    .line 717
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 718
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_25

    .line 719
    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 721
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_14

    return-void

    .line 724
    :cond_14
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    add-int/2addr p2, v1

    if-ne p1, p2, :cond_48

    .line 726
    iget p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mScrollState:I

    if-eq p1, v1, :cond_21

    if-ne p1, v0, :cond_48

    .line 728
    :cond_21
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->dispatchLoadMore()V

    goto :goto_48

    .line 730
    :cond_25
    instance-of p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_48

    .line 731
    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 733
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p1

    if-gtz p1, :cond_33

    return-void

    :cond_33
    const/4 v2, 0x0

    .line 736
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    move-result-object p2

    .line 737
    array-length v2, p2

    sub-int/2addr v2, v1

    aget p2, p2, v2

    add-int/2addr p2, v1

    if-ne p1, p2, :cond_48

    .line 739
    iget p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mScrollState:I

    if-eq p1, v1, :cond_45

    if-ne p1, v0, :cond_48

    .line 741
    :cond_45
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->dispatchLoadMore()V

    :cond_48
    :goto_48
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 664
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    goto :goto_1c

    .line 669
    :cond_d
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 670
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    .line 678
    :cond_1c
    :goto_1c
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public removeFooterView(Landroid/view/View;)V
    .registers 3

    .line 470
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mFooterViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 471
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    if-eqz v0, :cond_c

    .line 472
    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->removeFooterViewAndNotify(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .registers 3

    .line 453
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mHeaderViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 454
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    if-eqz v0, :cond_c

    .line 455
    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->removeHeaderViewAndNotify(Landroid/view/View;)V

    :cond_c
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 4

    .line 369
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    if-eqz v0, :cond_d

    .line 370
    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getOriginAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_d
    if-nez p1, :cond_13

    const/4 p1, 0x0

    .line 374
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    goto :goto_7f

    .line 376
    :cond_13
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 378
    new-instance v0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    .line 379
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOnItemClickListener:Lcom/yanzhenjie/recyclerview/OnItemClickListener;

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->setOnItemClickListener(Lcom/yanzhenjie/recyclerview/OnItemClickListener;)V

    .line 380
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOnItemLongClickListener:Lcom/yanzhenjie/recyclerview/OnItemLongClickListener;

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->setOnItemLongClickListener(Lcom/yanzhenjie/recyclerview/OnItemLongClickListener;)V

    .line 381
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/SwipeMenuCreator;

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/SwipeMenuCreator;)V

    .line 382
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOnItemMenuClickListener:Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;

    invoke-virtual {p1, v0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->setOnItemMenuClickListener(Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;)V

    .line 384
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mHeaderViewList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5f

    .line 385
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mHeaderViewList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 386
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->addHeaderView(Landroid/view/View;)V

    goto :goto_4d

    .line 389
    :cond_5f
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mFooterViewList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7f

    .line 390
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mFooterViewList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 391
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    invoke-virtual {v1, v0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->addFooterView(Landroid/view/View;)V

    goto :goto_6d

    .line 395
    :cond_7f
    :goto_7f
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mAdapterWrapper:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setAutoLoadMore(Z)V
    .registers 2

    .line 796
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->isAutoLoadMore:Z

    return-void
.end method

.method public setItemViewSwipeEnabled(Z)V
    .registers 3

    .line 206
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->initializeItemTouchHelper()V

    .line 207
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->allowSwipeDelete:Z

    .line 208
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mItemTouchHelper:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->setItemViewSwipeEnabled(Z)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 5

    .line 339
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_13

    .line 340
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 341
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    .line 343
    new-instance v2, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$1;-><init>(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 356
    :cond_13
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setLoadMoreListener(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreListener;)V
    .registers 2

    .line 782
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mLoadMoreListener:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreListener;

    return-void
.end method

.method public setLoadMoreView(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreView;)V
    .registers 2

    .line 775
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mLoadMoreView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreView;

    return-void
.end method

.method public setLongPressDragEnabled(Z)V
    .registers 3

    .line 185
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->initializeItemTouchHelper()V

    .line 186
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mItemTouchHelper:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->setLongPressDragEnabled(Z)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/yanzhenjie/recyclerview/OnItemClickListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "Cannot set item click listener, setAdapter has already been called."

    .line 253
    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->checkAdapterExist(Ljava/lang/String;)V

    .line 254
    new-instance v0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemClickListener;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemClickListener;-><init>(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;Lcom/yanzhenjie/recyclerview/OnItemClickListener;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOnItemClickListener:Lcom/yanzhenjie/recyclerview/OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/yanzhenjie/recyclerview/OnItemLongClickListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "Cannot set item long click listener, setAdapter has already been called."

    .line 279
    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->checkAdapterExist(Ljava/lang/String;)V

    .line 280
    new-instance v0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemLongClickListener;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemLongClickListener;-><init>(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;Lcom/yanzhenjie/recyclerview/OnItemLongClickListener;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOnItemLongClickListener:Lcom/yanzhenjie/recyclerview/OnItemLongClickListener;

    return-void
.end method

.method public setOnItemMenuClickListener(Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "Cannot set menu item click listener, setAdapter has already been called."

    .line 314
    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->checkAdapterExist(Ljava/lang/String;)V

    .line 315
    new-instance v0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemMenuClickListener;

    invoke-direct {v0, p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemMenuClickListener;-><init>(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOnItemMenuClickListener:Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;

    return-void
.end method

.method public setOnItemMoveListener(Lcom/yanzhenjie/recyclerview/touch/OnItemMoveListener;)V
    .registers 3

    .line 112
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->initializeItemTouchHelper()V

    .line 113
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mItemTouchHelper:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->setOnItemMoveListener(Lcom/yanzhenjie/recyclerview/touch/OnItemMoveListener;)V

    return-void
.end method

.method public setOnItemMovementListener(Lcom/yanzhenjie/recyclerview/touch/OnItemMovementListener;)V
    .registers 3

    .line 122
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->initializeItemTouchHelper()V

    .line 123
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mItemTouchHelper:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->setOnItemMovementListener(Lcom/yanzhenjie/recyclerview/touch/OnItemMovementListener;)V

    return-void
.end method

.method public setOnItemStateChangedListener(Lcom/yanzhenjie/recyclerview/touch/OnItemStateChangedListener;)V
    .registers 3

    .line 132
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->initializeItemTouchHelper()V

    .line 133
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mItemTouchHelper:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->setOnItemStateChangedListener(Lcom/yanzhenjie/recyclerview/touch/OnItemStateChangedListener;)V

    return-void
.end method

.method public setSwipeItemMenuEnabled(IZ)V
    .registers 4

    if-eqz p2, :cond_18

    .line 160
    iget-object p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mDisableSwipeItemMenuList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    .line 161
    iget-object p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mDisableSwipeItemMenuList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 164
    :cond_18
    iget-object p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mDisableSwipeItemMenuList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2d

    .line 165
    iget-object p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mDisableSwipeItemMenuList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    :goto_2d
    return-void
.end method

.method public setSwipeItemMenuEnabled(Z)V
    .registers 2

    .line 142
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mSwipeItemMenuEnable:Z

    return-void
.end method

.method public setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/SwipeMenuCreator;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "Cannot set menu creator, setAdapter has already been called."

    .line 305
    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->checkAdapterExist(Ljava/lang/String;)V

    .line 306
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/SwipeMenuCreator;

    return-void
.end method

.method public smoothCloseMenu()V
    .registers 2

    .line 572
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 573
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    :cond_f
    return-void
.end method

.method public smoothOpenLeftMenu(I)V
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0xc8

    .line 506
    invoke-virtual {p0, p1, v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->smoothOpenMenu(III)V

    return-void
.end method

.method public smoothOpenLeftMenu(II)V
    .registers 4

    const/4 v0, 0x1

    .line 516
    invoke-virtual {p0, p1, v0, p2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->smoothOpenMenu(III)V

    return-void
.end method

.method public smoothOpenMenu(III)V
    .registers 6

    .line 546
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-eqz v0, :cond_f

    .line 547
    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 548
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothCloseMenu()V

    .line 551
    :cond_f
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 552
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 554
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getSwipeMenuView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 555
    instance-of v1, v0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-eqz v1, :cond_3d

    .line 556
    check-cast v0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_33

    .line 558
    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldTouchedPosition:I

    .line 559
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    invoke-virtual {p1, p3}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothOpenRightMenu(I)V

    goto :goto_3d

    :cond_33
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3d

    .line 561
    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldTouchedPosition:I

    .line 562
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mOldSwipedLayout:Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    invoke-virtual {p1, p3}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->smoothOpenLeftMenu(I)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public smoothOpenRightMenu(I)V
    .registers 4

    const/4 v0, -0x1

    const/16 v1, 0xc8

    .line 525
    invoke-virtual {p0, p1, v0, v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->smoothOpenMenu(III)V

    return-void
.end method

.method public smoothOpenRightMenu(II)V
    .registers 4

    const/4 v0, -0x1

    .line 535
    invoke-virtual {p0, p1, v0, p2}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->smoothOpenMenu(III)V

    return-void
.end method

.method public startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 227
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->initializeItemTouchHelper()V

    .line 228
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mItemTouchHelper:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public startSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 237
    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->initializeItemTouchHelper()V

    .line 238
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->mItemTouchHelper:Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->startSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public useDefaultLoadMore()V
    .registers 3

    .line 766
    new-instance v0, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yanzhenjie/recyclerview/widget/DefaultLoadMoreView;-><init>(Landroid/content/Context;)V

    .line 767
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->addFooterView(Landroid/view/View;)V

    .line 768
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setLoadMoreView(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$LoadMoreView;)V

    return-void
.end method
