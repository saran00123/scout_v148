.class final Landroidx/viewpager2/widget/FakeDrag;
.super Ljava/lang/Object;
.source "FakeDrag.java"


# instance fields
.field private mActualDraggedDistance:I

.field private mFakeDragBeginTime:J

.field private mMaximumVelocity:I

.field private final mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRequestedDragDistance:F

.field private final mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/ScrollEventAdapter;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    .line 46
    iput-object p2, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    .line 47
    iput-object p3, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private addFakeMotionEvent(JIFF)V
    .registers 14

    .line 134
    iget-wide v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mFakeDragBeginTime:J

    const/4 v7, 0x0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 135
    iget-object p2, p0, Landroidx/viewpager2/widget/FakeDrag;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private beginFakeVelocityTracker()V
    .registers 2

    .line 124
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1b

    .line 125
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 126
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mMaximumVelocity:I

    goto :goto_1e

    .line 129
    :cond_1b
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_1e
    return-void
.end method


# virtual methods
.method beginFakeDrag()Z
    .registers 8
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 56
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 59
    :cond_a
    iput v1, p0, Landroidx/viewpager2/widget/FakeDrag;->mActualDraggedDistance:I

    int-to-float v0, v1

    iput v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mRequestedDragDistance:F

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mFakeDragBeginTime:J

    .line 61
    invoke-direct {p0}, Landroidx/viewpager2/widget/FakeDrag;->beginFakeVelocityTracker()V

    .line 63
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->notifyBeginFakeDrag()V

    .line 64
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 66
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 68
    :cond_2a
    iget-wide v2, p0, Landroidx/viewpager2/widget/FakeDrag;->mFakeDragBeginTime:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroidx/viewpager2/widget/FakeDrag;->addFakeMotionEvent(JIFF)V

    const/4 v0, 0x1

    return v0
.end method

.method endFakeDrag()Z
    .registers 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 102
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isFakeDragging()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 107
    :cond_a
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->notifyEndFakeDrag()V

    .line 111
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 112
    iget v2, p0, Landroidx/viewpager2/widget/FakeDrag;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 113
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    .line 114
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 116
    iget-object v2, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result v0

    if-nez v0, :cond_30

    .line 118
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->snapToPage()V

    :cond_30
    const/4 v0, 0x1

    return v0
.end method

.method fakeDragBy(F)Z
    .registers 11
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 74
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isFakeDragging()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 80
    :cond_a
    iget v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mRequestedDragDistance:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mRequestedDragDistance:F

    .line 82
    iget p1, p0, Landroidx/viewpager2/widget/FakeDrag;->mRequestedDragDistance:F

    iget v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mActualDraggedDistance:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 84
    iget v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mActualDraggedDistance:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mActualDraggedDistance:I

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 87
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mViewPager:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_2d

    move v0, v8

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    if-eqz v0, :cond_32

    move v2, p1

    goto :goto_33

    :cond_32
    move v2, v1

    :goto_33
    if-eqz v0, :cond_36

    move p1, v1

    :cond_36
    const/4 v1, 0x0

    if-eqz v0, :cond_3d

    .line 92
    iget v5, p0, Landroidx/viewpager2/widget/FakeDrag;->mRequestedDragDistance:F

    move v6, v5

    goto :goto_3e

    :cond_3d
    move v6, v1

    :goto_3e
    if-eqz v0, :cond_42

    move v7, v1

    goto :goto_45

    .line 93
    :cond_42
    iget v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mRequestedDragDistance:F

    move v7, v0

    .line 95
    :goto_45
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    const/4 v5, 0x2

    move-object v2, p0

    .line 96
    invoke-direct/range {v2 .. v7}, Landroidx/viewpager2/widget/FakeDrag;->addFakeMotionEvent(JIFF)V

    return v8
.end method

.method isFakeDragging()Z
    .registers 2

    .line 51
    iget-object v0, p0, Landroidx/viewpager2/widget/FakeDrag;->mScrollEventAdapter:Landroidx/viewpager2/widget/ScrollEventAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ScrollEventAdapter;->isFakeDragging()Z

    move-result v0

    return v0
.end method
