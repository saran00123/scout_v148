.class public Lcom/yanzhenjie/recyclerview/widget/BorderItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "BorderItemDecoration.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    const/4 v0, 0x4

    .line 39
    invoke-direct {p0, p1, v0, v0}, Lcom/yanzhenjie/recyclerview/widget/BorderItemDecoration;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    .line 48
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/widget/BorderItemDecoration;->mWidth:I

    int-to-float p2, p3

    div-float/2addr p2, v0

    .line 49
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lcom/yanzhenjie/recyclerview/widget/BorderItemDecoration;->mHeight:I

    .line 50
    new-instance p2, Lcom/yanzhenjie/recyclerview/widget/ColorDrawer;

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/BorderItemDecoration;->mWidth:I

    iget v0, p0, Lcom/yanzhenjie/recyclerview/widget/BorderItemDecoration;->mHeight:I

    invoke-direct {p2, p1, p3, v0}, Lcom/yanzhenjie/recyclerview/widget/ColorDrawer;-><init>(III)V

    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/widget/BorderItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    iget p2, p0, Lcom/yanzhenjie/recyclerview/widget/BorderItemDecoration;->mWidth:I

    iget p3, p0, Lcom/yanzhenjie/recyclerview/widget/BorderItemDecoration;->mHeight:I

    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 62
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    .line 64
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_c
    if-ge v0, p3, :cond_29

    .line 66
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 67
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/widget/BorderItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {v2, v1, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawLeft(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 68
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/widget/BorderItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {v2, v1, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawTop(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 69
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/widget/BorderItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {v2, v1, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawRight(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 70
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/widget/BorderItemDecoration;->mDrawer:Lcom/yanzhenjie/recyclerview/widget/Drawer;

    invoke-virtual {v2, v1, p1}, Lcom/yanzhenjie/recyclerview/widget/Drawer;->drawBottom(Landroid/view/View;Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 72
    :cond_29
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
