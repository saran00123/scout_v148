.class Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "ItemTouchHelperCallback.java"


# instance fields
.field private isItemViewSwipeEnabled:Z

.field private isLongPressDragEnabled:Z

.field private onItemMoveListener:Lcom/yanzhenjie/recyclerview/touch/OnItemMoveListener;

.field private onItemMovementListener:Lcom/yanzhenjie/recyclerview/touch/OnItemMovementListener;

.field private onItemStateChangedListener:Lcom/yanzhenjie/recyclerview/touch/OnItemStateChangedListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 169
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 170
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->onItemStateChangedListener:Lcom/yanzhenjie/recyclerview/touch/OnItemStateChangedListener;

    if-eqz p1, :cond_b

    const/4 v0, 0x0

    .line 171
    invoke-interface {p1, p2, v0}, Lcom/yanzhenjie/recyclerview/touch/OnItemStateChangedListener;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_b
    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->onItemMovementListener:Lcom/yanzhenjie/recyclerview/touch/OnItemMovementListener;

    if-eqz v0, :cond_13

    .line 88
    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/touch/OnItemMovementListener;->onDragFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->onItemMovementListener:Lcom/yanzhenjie/recyclerview/touch/OnItemMovementListener;

    invoke-interface {v1, p1, p2}, Lcom/yanzhenjie/recyclerview/touch/OnItemMovementListener;->onSwipeFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p1

    .line 90
    invoke-static {v0, p1}, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 92
    :cond_13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 93
    instance-of p2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v0, 0x3

    const/16 v1, 0xc

    if-eqz p2, :cond_32

    .line 94
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 95
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    const/16 p2, 0xf

    if-nez p1, :cond_2d

    .line 99
    invoke-static {p2, v0}, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 104
    :cond_2d
    invoke-static {p2, v1}, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 106
    :cond_32
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_48

    .line 107
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 108
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    if-nez p1, :cond_43

    .line 111
    invoke-static {v1, v0}, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 115
    :cond_43
    invoke-static {v0, v1}, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1

    :cond_48
    const/4 p1, 0x0

    .line 119
    invoke-static {p1, p1}, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public getOnItemMoveListener()Lcom/yanzhenjie/recyclerview/touch/OnItemMoveListener;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->onItemMoveListener:Lcom/yanzhenjie/recyclerview/touch/OnItemMoveListener;

    return-object v0
.end method

.method public getOnItemMovementListener()Lcom/yanzhenjie/recyclerview/touch/OnItemMovementListener;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->onItemMovementListener:Lcom/yanzhenjie/recyclerview/touch/OnItemMovementListener;

    return-object v0
.end method

.method public getOnItemStateChangedListener()Lcom/yanzhenjie/recyclerview/touch/OnItemStateChangedListener;
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->onItemStateChangedListener:Lcom/yanzhenjie/recyclerview/touch/OnItemStateChangedListener;

    return-object v0
.end method

.method public isItemViewSwipeEnabled()Z
    .registers 2

    .line 58
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->isItemViewSwipeEnabled:Z

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->isLongPressDragEnabled:Z

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 12

    const/4 v0, 0x1

    if-ne p6, v0, :cond_35

    .line 128
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 130
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_30

    .line 131
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    if-nez v1, :cond_23

    .line 133
    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_1f
    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float/2addr v3, v0

    goto :goto_30

    :cond_23
    if-ne v1, v0, :cond_30

    .line 135
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_1f

    .line 138
    :cond_30
    :goto_30
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 140
    :cond_35
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    .line 146
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->onItemMoveListener:Lcom/yanzhenjie/recyclerview/touch/OnItemMoveListener;

    if-eqz p1, :cond_9

    .line 148
    invoke-interface {p1, p2, p3}, Lcom/yanzhenjie/recyclerview/touch/OnItemMoveListener;->onItemMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 4

    .line 161
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 162
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->onItemStateChangedListener:Lcom/yanzhenjie/recyclerview/touch/OnItemStateChangedListener;

    if-eqz v0, :cond_c

    if-eqz p2, :cond_c

    .line 163
    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/touch/OnItemStateChangedListener;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_c
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 156
    iget-object p2, p0, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->onItemMoveListener:Lcom/yanzhenjie/recyclerview/touch/OnItemMoveListener;

    if-eqz p2, :cond_7

    invoke-interface {p2, p1}, Lcom/yanzhenjie/recyclerview/touch/OnItemMoveListener;->onItemDismiss(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_7
    return-void
.end method

.method public setItemViewSwipeEnabled(Z)V
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->isItemViewSwipeEnabled:Z

    return-void
.end method

.method public setLongPressDragEnabled(Z)V
    .registers 2

    .line 44
    iput-boolean p1, p0, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->isLongPressDragEnabled:Z

    return-void
.end method

.method public setOnItemMoveListener(Lcom/yanzhenjie/recyclerview/touch/OnItemMoveListener;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->onItemMoveListener:Lcom/yanzhenjie/recyclerview/touch/OnItemMoveListener;

    return-void
.end method

.method public setOnItemMovementListener(Lcom/yanzhenjie/recyclerview/touch/OnItemMovementListener;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->onItemMovementListener:Lcom/yanzhenjie/recyclerview/touch/OnItemMovementListener;

    return-void
.end method

.method public setOnItemStateChangedListener(Lcom/yanzhenjie/recyclerview/touch/OnItemStateChangedListener;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->onItemStateChangedListener:Lcom/yanzhenjie/recyclerview/touch/OnItemStateChangedListener;

    return-void
.end method
