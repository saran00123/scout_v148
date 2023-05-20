.class public Lcom/pilotlab/rollereye/CustomerView/CustomViewPager;
.super Landroidx/viewpager/widget/ViewPager;
.source "CustomViewPager.java"


# instance fields
.field private isScrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomViewPager;->isScrollable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomViewPager;->isScrollable:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 37
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomViewPager;->isScrollable:Z

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 40
    :cond_6
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 27
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomViewPager;->isScrollable:Z

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 30
    :cond_6
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setScrollable(Z)V
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomViewPager;->isScrollable:Z

    return-void
.end method
