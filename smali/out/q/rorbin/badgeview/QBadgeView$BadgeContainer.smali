.class Lq/rorbin/badgeview/QBadgeView$BadgeContainer;
.super Landroid/view/ViewGroup;
.source "QBadgeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/rorbin/badgeview/QBadgeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BadgeContainer"
.end annotation


# instance fields
.field final synthetic this$0:Lq/rorbin/badgeview/QBadgeView;


# direct methods
.method public constructor <init>(Lq/rorbin/badgeview/QBadgeView;Landroid/content/Context;)V
    .registers 3

    .line 840
    iput-object p1, p0, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->this$0:Lq/rorbin/badgeview/QBadgeView;

    .line 841
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 835
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_b

    .line 836
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    :cond_b
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    const/4 p1, 0x0

    move p2, p1

    .line 846
    :goto_2
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_1a

    .line 847
    invoke-virtual {p0, p2}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 848
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    invoke-virtual {p3, p1, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_1a
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    .line 855
    :goto_3
    invoke-virtual {p0}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_17

    .line 856
    invoke-virtual {p0, v1}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 857
    instance-of v4, v3, Lq/rorbin/badgeview/QBadgeView;

    if-nez v4, :cond_13

    move-object v0, v3

    goto :goto_14

    :cond_13
    move-object v2, v3

    :goto_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_17
    if-nez v0, :cond_1d

    .line 864
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_42

    .line 866
    :cond_1d
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    if-eqz v2, :cond_37

    .line 868
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 869
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 868
    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    .line 871
    :cond_37
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lq/rorbin/badgeview/QBadgeView$BadgeContainer;->setMeasuredDimension(II)V

    :goto_42
    return-void
.end method
