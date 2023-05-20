.class Lcom/yanzhenjie/recyclerview/widget/Drawer;
.super Ljava/lang/Object;
.source "Drawer.java"


# instance fields
.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .registers 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 33
    iput p2, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mWidth:I

    .line 34
    iput p3, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mHeight:I

    return-void
.end method


# virtual methods
.method public drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 7

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mWidth:I

    sub-int/2addr v0, v1

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    iget v2, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mWidth:I

    add-int/2addr p1, v2

    .line 80
    iget v2, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mHeight:I

    add-int/2addr v2, v1

    .line 81
    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0, v1, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 7

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mWidth:I

    sub-int/2addr v0, v1

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mHeight:I

    sub-int/2addr v1, v2

    .line 43
    iget v2, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mWidth:I

    add-int/2addr v2, v0

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v3, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mHeight:I

    add-int/2addr p1, v3

    .line 45
    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0, v1, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 7

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mHeight:I

    sub-int/2addr v1, v2

    .line 67
    iget v2, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mWidth:I

    add-int/2addr v2, v0

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget v3, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mHeight:I

    add-int/2addr p1, v3

    .line 69
    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0, v1, v2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 70
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V
    .registers 7

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mWidth:I

    sub-int/2addr v0, v1

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mHeight:I

    sub-int/2addr v1, v2

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    iget v2, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mWidth:I

    add-int/2addr p1, v2

    .line 56
    iget v2, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mHeight:I

    add-int/2addr v2, v1

    .line 57
    iget-object v3, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0, v1, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/widget/Drawer;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
