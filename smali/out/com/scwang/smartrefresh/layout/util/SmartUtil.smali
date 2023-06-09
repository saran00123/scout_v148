.class public Lcom/scwang/smartrefresh/layout/util/SmartUtil;
.super Ljava/lang/Object;
.source "SmartUtil.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field public static INTERPOLATOR_DECELERATE:I = 0x1

.field public static INTERPOLATOR_VISCOUS_FLUID:I = 0x0

.field private static final VISCOUS_FLUID_NORMALIZE:F

.field private static final VISCOUS_FLUID_OFFSET:F

.field private static final VISCOUS_FLUID_SCALE:F = 8.0f

.field private static density:F


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 225
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->density:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 255
    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->viscousFluid(F)F

    move-result v1

    div-float v1, v0, v1

    sput v1, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->VISCOUS_FLUID_NORMALIZE:F

    .line 257
    sget v1, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->VISCOUS_FLUID_NORMALIZE:F

    invoke-static {v0}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->viscousFluid(F)F

    move-result v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    sput v0, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->VISCOUS_FLUID_OFFSET:F

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->type:I

    return-void
.end method

.method public static canLoadMore(Landroid/view/View;Landroid/graphics/PointF;Z)Z
    .registers 11
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 152
    invoke-static {p0, v0}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->canScrollVertically(Landroid/view/View;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 156
    :cond_f
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6b

    if-eqz p1, :cond_6b

    invoke-static {p0}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->isScrollableView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 157
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    .line 158
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 159
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    :goto_27
    if-lez v3, :cond_6b

    add-int/lit8 v5, v3, -0x1

    .line 161
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 162
    iget v6, p1, Landroid/graphics/PointF;->x:F

    iget v7, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v5, v6, v7, v4}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->isTransformedTouchPointInView(Landroid/view/View;Landroid/view/View;FFLandroid/graphics/PointF;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 163
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "fixed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_67

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "fixed-top"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_52

    goto :goto_67

    .line 166
    :cond_52
    iget p0, v4, Landroid/graphics/PointF;->x:F

    iget v0, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p0, v0}, Landroid/graphics/PointF;->offset(FF)V

    .line 167
    invoke-static {v5, p1, p2}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->canLoadMore(Landroid/view/View;Landroid/graphics/PointF;Z)Z

    move-result p0

    .line 168
    iget p2, v4, Landroid/graphics/PointF;->x:F

    neg-float p2, p2

    iget v0, v4, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/PointF;->offset(FF)V

    return p0

    :cond_67
    :goto_67
    return v2

    :cond_68
    add-int/lit8 v3, v3, -0x1

    goto :goto_27

    :cond_6b
    if-nez p2, :cond_76

    const/4 p1, -0x1

    .line 173
    invoke-static {p0, p1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->canScrollVertically(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_75

    goto :goto_76

    :cond_75
    move v0, v2

    :cond_76
    :goto_76
    return v0
.end method

.method public static canRefresh(Landroid/view/View;Landroid/graphics/PointF;)Z
    .registers 8
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    .line 120
    invoke-static {p0, v0}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 124
    :cond_f
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_64

    if-eqz p1, :cond_64

    .line 125
    check-cast p0, Landroid/view/ViewGroup;

    .line 126
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 127
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    :goto_20
    if-lez v0, :cond_64

    add-int/lit8 v3, v0, -0x1

    .line 129
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 130
    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    invoke-static {p0, v3, v4, v5, v2}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->isTransformedTouchPointInView(Landroid/view/View;Landroid/view/View;FFLandroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 131
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "fixed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "fixed-bottom"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4b

    goto :goto_60

    .line 134
    :cond_4b
    iget p0, v2, Landroid/graphics/PointF;->x:F

    iget v0, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p0, v0}, Landroid/graphics/PointF;->offset(FF)V

    .line 135
    invoke-static {v3, p1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->canRefresh(Landroid/view/View;Landroid/graphics/PointF;)Z

    move-result p0

    .line 136
    iget v0, v2, Landroid/graphics/PointF;->x:F

    neg-float v0, v0

    iget v1, v2, Landroid/graphics/PointF;->y:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->offset(FF)V

    return p0

    :cond_60
    :goto_60
    return v1

    :cond_61
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    :cond_64
    const/4 p0, 0x1

    return p0
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .registers 7
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_5f

    .line 178
    instance-of v0, p0, Landroid/widget/AbsListView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4b

    .line 179
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 180
    move-object v3, p0

    check-cast v3, Landroid/widget/AbsListView;

    .line 181
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez p1, :cond_32

    if-lez v4, :cond_30

    .line 183
    invoke-virtual {v3}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result p1

    sub-int/2addr v4, v1

    if-lt p1, v4, :cond_31

    .line 184
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    if-le p1, p0, :cond_30

    goto :goto_31

    :cond_30
    move v1, v2

    :cond_31
    :goto_31
    return v1

    :cond_32
    if-lez v4, :cond_49

    .line 186
    invoke-virtual {v3}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result p1

    if-gtz p1, :cond_4a

    .line 187
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    if-ge p1, p0, :cond_49

    goto :goto_4a

    :cond_49
    move v1, v2

    :cond_4a
    :goto_4a
    return v1

    :cond_4b
    if-lez p1, :cond_56

    .line 191
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    if-gez p0, :cond_54

    goto :goto_55

    :cond_54
    move v1, v2

    :goto_55
    return v1

    .line 193
    :cond_56
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    if-lez p0, :cond_5d

    goto :goto_5e

    :cond_5d
    move v1, v2

    :goto_5e
    return v1

    .line 197
    :cond_5f
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    return p0
.end method

.method public static dp2px(F)I
    .registers 2

    .line 233
    sget v0, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->density:F

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static fling(Landroid/view/View;I)V
    .registers 4

    .line 96
    instance-of v0, p0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_a

    .line 97
    check-cast p0, Landroid/widget/ScrollView;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    goto :goto_38

    .line 98
    :cond_a
    instance-of v0, p0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_1a

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_38

    .line 100
    check-cast p0, Landroid/widget/AbsListView;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->fling(I)V

    goto :goto_38

    .line 102
    :cond_1a
    instance-of v0, p0, Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 103
    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p0, v1, p1}, Landroid/webkit/WebView;->flingScroll(II)V

    goto :goto_38

    .line 104
    :cond_25
    instance-of v0, p0, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_2f

    .line 105
    check-cast p0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    goto :goto_38

    .line 106
    :cond_2f
    instance-of v0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_38

    .line 107
    check-cast p0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    :cond_38
    :goto_38
    return-void
.end method

.method public static isContentView(Landroid/view/View;)Z
    .registers 2

    .line 90
    invoke-static {p0}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->isScrollableView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_11

    instance-of v0, p0, Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_11

    instance-of p0, p0, Landroidx/core/view/NestedScrollingParent;

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public static isScrollableView(Landroid/view/View;)Z
    .registers 2

    .line 82
    instance-of v0, p0, Landroid/widget/AbsListView;

    if-nez v0, :cond_17

    instance-of v0, p0, Landroid/widget/ScrollView;

    if-nez v0, :cond_17

    instance-of v0, p0, Landroidx/core/view/ScrollingView;

    if-nez v0, :cond_17

    instance-of v0, p0, Landroid/webkit/WebView;

    if-nez v0, :cond_17

    instance-of p0, p0, Landroidx/core/view/NestedScrollingChild;

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public static isTransformedTouchPointInView(Landroid/view/View;Landroid/view/View;FFLandroid/graphics/PointF;)Z
    .registers 11
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x2

    .line 207
    new-array v0, v0, [F

    aput p2, v0, v1

    const/4 v2, 0x1

    aput p3, v0, v2

    .line 211
    aget v3, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, v0, v1

    .line 212
    aget v3, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr p0, v4

    int-to-float p0, p0

    add-float/2addr v3, p0

    aput v3, v0, v2

    .line 214
    aget p0, v0, v1

    const/4 v3, 0x0

    cmpl-float p0, p0, v3

    if-ltz p0, :cond_53

    aget p0, v0, v2

    cmpl-float p0, p0, v3

    if-ltz p0, :cond_53

    aget p0, v0, v1

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float p0, p0, v3

    if-gez p0, :cond_53

    aget p0, v0, v2

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_53

    move p0, v2

    goto :goto_54

    :cond_53
    move p0, v1

    :goto_54
    if-eqz p0, :cond_61

    if-eqz p4, :cond_61

    .line 218
    aget p1, v0, v1

    sub-float/2addr p1, p2

    aget p2, v0, v2

    sub-float/2addr p2, p3

    invoke-virtual {p4, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    :cond_61
    return p0
.end method

.method public static measureViewHeight(Landroid/view/View;)I
    .registers 5

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_d

    .line 43
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 46
    :cond_d
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 47
    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_21

    .line 48
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_25

    .line 50
    :cond_21
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 52
    :goto_25
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public static px2dp(I)F
    .registers 2

    int-to-float p0, p0

    .line 242
    sget v0, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->density:F

    div-float/2addr p0, v0

    return p0
.end method

.method public static scrollListBy(Landroid/widget/AbsListView;I)V
    .registers 5
    .param p0    # Landroid/widget/AbsListView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_a

    .line 59
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->scrollListBy(I)V

    goto :goto_2c

    .line 60
    :cond_a
    instance-of v0, p0, Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 62
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_17

    return-void

    .line 69
    :cond_17
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1e

    return-void

    .line 74
    :cond_1e
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, p1

    .line 75
    check-cast p0, Landroid/widget/ListView;

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_2c

    .line 77
    :cond_29
    invoke-virtual {p0, p1, v1}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    :goto_2c
    return-void
.end method

.method private static viscousFluid(F)F
    .registers 5

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v0

    if-gez v1, :cond_13

    neg-float v1, p0

    float-to-double v1, v1

    .line 263
    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    sub-float/2addr p0, v0

    goto :goto_25

    :cond_13
    const v1, 0x3ebc5ab2

    sub-float p0, v0, p0

    float-to-double v2, p0

    .line 266
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float p0, v2

    sub-float/2addr v0, p0

    const p0, 0x3f21d2a7

    mul-float/2addr v0, p0

    add-float p0, v0, v1

    :goto_25
    return p0
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4

    .line 274
    iget v0, p0, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->type:I

    sget v1, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->INTERPOLATOR_DECELERATE:I

    if-ne v0, v1, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    mul-float/2addr p1, p1

    sub-float/2addr v0, p1

    return v0

    .line 277
    :cond_d
    sget v0, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->VISCOUS_FLUID_NORMALIZE:F

    invoke-static {p1}, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->viscousFluid(F)F

    move-result p1

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1c

    .line 279
    sget p1, Lcom/scwang/smartrefresh/layout/util/SmartUtil;->VISCOUS_FLUID_OFFSET:F

    add-float/2addr v0, p1

    :cond_1c
    return v0
.end method
