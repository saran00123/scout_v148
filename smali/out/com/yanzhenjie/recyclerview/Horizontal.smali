.class abstract Lcom/yanzhenjie/recyclerview/Horizontal;
.super Ljava/lang/Object;
.source "Horizontal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/Horizontal$Checker;
    }
.end annotation


# instance fields
.field private direction:I

.field protected mChecker:Lcom/yanzhenjie/recyclerview/Horizontal$Checker;

.field private menuView:Landroid/view/View;


# direct methods
.method public constructor <init>(ILandroid/view/View;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/yanzhenjie/recyclerview/Horizontal;->direction:I

    .line 33
    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/Horizontal;->menuView:Landroid/view/View;

    .line 34
    new-instance p1, Lcom/yanzhenjie/recyclerview/Horizontal$Checker;

    invoke-direct {p1}, Lcom/yanzhenjie/recyclerview/Horizontal$Checker;-><init>()V

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/Horizontal;->mChecker:Lcom/yanzhenjie/recyclerview/Horizontal$Checker;

    return-void
.end method


# virtual methods
.method public abstract autoCloseMenu(Landroid/widget/OverScroller;II)V
.end method

.method public abstract autoOpenMenu(Landroid/widget/OverScroller;II)V
.end method

.method public canSwipe()Z
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/Horizontal;->menuView:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    .line 39
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2
.end method

.method public abstract checkXY(II)Lcom/yanzhenjie/recyclerview/Horizontal$Checker;
.end method

.method public getDirection()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/yanzhenjie/recyclerview/Horizontal;->direction:I

    return v0
.end method

.method public getMenuView()Landroid/view/View;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/Horizontal;->menuView:Landroid/view/View;

    return-object v0
.end method

.method public getMenuWidth()I
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/Horizontal;->menuView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public abstract isClickOnContentView(IF)Z
.end method

.method public isCompleteClose(I)Z
    .registers 4

    .line 45
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/Horizontal;->getMenuView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/Horizontal;->getDirection()I

    move-result v1

    mul-int/2addr v0, v1

    if-nez p1, :cond_14

    if-eqz v0, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public abstract isMenuOpen(I)Z
.end method

.method public abstract isMenuOpenNotEqual(I)Z
.end method
