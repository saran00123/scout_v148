.class Lcom/yanzhenjie/recyclerview/RightHorizontal;
.super Lcom/yanzhenjie/recyclerview/Horizontal;
.source "RightHorizontal.java"


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    .line 27
    invoke-direct {p0, v0, p1}, Lcom/yanzhenjie/recyclerview/Horizontal;-><init>(ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public autoCloseMenu(Landroid/widget/OverScroller;II)V
    .registers 11

    .line 48
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    neg-int v2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public autoOpenMenu(Landroid/widget/OverScroller;II)V
    .registers 10

    .line 43
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/RightHorizontal;->getMenuView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    sub-int v3, v0, p2

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public checkXY(II)Lcom/yanzhenjie/recyclerview/Horizontal$Checker;
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/RightHorizontal;->mChecker:Lcom/yanzhenjie/recyclerview/Horizontal$Checker;

    iput p1, v0, Lcom/yanzhenjie/recyclerview/Horizontal$Checker;->x:I

    .line 54
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/RightHorizontal;->mChecker:Lcom/yanzhenjie/recyclerview/Horizontal$Checker;

    iput p2, p1, Lcom/yanzhenjie/recyclerview/Horizontal$Checker;->y:I

    .line 55
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/RightHorizontal;->mChecker:Lcom/yanzhenjie/recyclerview/Horizontal$Checker;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/yanzhenjie/recyclerview/Horizontal$Checker;->shouldResetSwipe:Z

    .line 56
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/RightHorizontal;->mChecker:Lcom/yanzhenjie/recyclerview/Horizontal$Checker;

    iget p1, p1, Lcom/yanzhenjie/recyclerview/Horizontal$Checker;->x:I

    if-nez p1, :cond_18

    .line 57
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/RightHorizontal;->mChecker:Lcom/yanzhenjie/recyclerview/Horizontal$Checker;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/yanzhenjie/recyclerview/Horizontal$Checker;->shouldResetSwipe:Z

    .line 59
    :cond_18
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/RightHorizontal;->mChecker:Lcom/yanzhenjie/recyclerview/Horizontal$Checker;

    iget p1, p1, Lcom/yanzhenjie/recyclerview/Horizontal$Checker;->x:I

    if-gez p1, :cond_22

    .line 60
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/RightHorizontal;->mChecker:Lcom/yanzhenjie/recyclerview/Horizontal$Checker;

    iput p2, p1, Lcom/yanzhenjie/recyclerview/Horizontal$Checker;->x:I

    .line 62
    :cond_22
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/RightHorizontal;->mChecker:Lcom/yanzhenjie/recyclerview/Horizontal$Checker;

    iget p1, p1, Lcom/yanzhenjie/recyclerview/Horizontal$Checker;->x:I

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/RightHorizontal;->getMenuView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    if-le p1, p2, :cond_3c

    .line 63
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/RightHorizontal;->mChecker:Lcom/yanzhenjie/recyclerview/Horizontal$Checker;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/RightHorizontal;->getMenuView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iput p2, p1, Lcom/yanzhenjie/recyclerview/Horizontal$Checker;->x:I

    .line 65
    :cond_3c
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/RightHorizontal;->mChecker:Lcom/yanzhenjie/recyclerview/Horizontal$Checker;

    return-object p1
.end method

.method public isClickOnContentView(IF)Z
    .registers 4

    .line 70
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/RightHorizontal;->getMenuView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public isMenuOpen(I)Z
    .registers 4

    .line 32
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/RightHorizontal;->getMenuView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/RightHorizontal;->getDirection()I

    move-result v1

    mul-int/2addr v0, v1

    if-lt p1, v0, :cond_14

    if-eqz v0, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public isMenuOpenNotEqual(I)Z
    .registers 4

    .line 38
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/RightHorizontal;->getMenuView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/RightHorizontal;->getDirection()I

    move-result v1

    mul-int/2addr v0, v1

    if-le p1, v0, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method
