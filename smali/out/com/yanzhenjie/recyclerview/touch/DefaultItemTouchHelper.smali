.class public Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;
.super Landroidx/recyclerview/widget/ItemTouchHelper;
.source "DefaultItemTouchHelper.java"


# instance fields
.field private mItemTouchHelperCallback:Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    new-instance v0, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;

    invoke-direct {v0}, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;-><init>()V

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;-><init>(Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;)V

    return-void
.end method

.method private constructor <init>(Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 39
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->mItemTouchHelperCallback:Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;

    return-void
.end method


# virtual methods
.method public getOnItemMoveListener()Lcom/yanzhenjie/recyclerview/touch/OnItemMoveListener;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->mItemTouchHelperCallback:Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->getOnItemMoveListener()Lcom/yanzhenjie/recyclerview/touch/OnItemMoveListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnItemMovementListener()Lcom/yanzhenjie/recyclerview/touch/OnItemMovementListener;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->mItemTouchHelperCallback:Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->getOnItemMovementListener()Lcom/yanzhenjie/recyclerview/touch/OnItemMovementListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnItemStateChangedListener()Lcom/yanzhenjie/recyclerview/touch/OnItemStateChangedListener;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->mItemTouchHelperCallback:Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->getOnItemStateChangedListener()Lcom/yanzhenjie/recyclerview/touch/OnItemStateChangedListener;

    move-result-object v0

    return-object v0
.end method

.method public isItemViewSwipeEnabled()Z
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->mItemTouchHelperCallback:Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->isItemViewSwipeEnabled()Z

    move-result v0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->mItemTouchHelperCallback:Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->isLongPressDragEnabled()Z

    move-result v0

    return v0
.end method

.method public setItemViewSwipeEnabled(Z)V
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->mItemTouchHelperCallback:Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->setItemViewSwipeEnabled(Z)V

    return-void
.end method

.method public setLongPressDragEnabled(Z)V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->mItemTouchHelperCallback:Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->setLongPressDragEnabled(Z)V

    return-void
.end method

.method public setOnItemMoveListener(Lcom/yanzhenjie/recyclerview/touch/OnItemMoveListener;)V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->mItemTouchHelperCallback:Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->setOnItemMoveListener(Lcom/yanzhenjie/recyclerview/touch/OnItemMoveListener;)V

    return-void
.end method

.method public setOnItemMovementListener(Lcom/yanzhenjie/recyclerview/touch/OnItemMovementListener;)V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->mItemTouchHelperCallback:Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->setOnItemMovementListener(Lcom/yanzhenjie/recyclerview/touch/OnItemMovementListener;)V

    return-void
.end method

.method public setOnItemStateChangedListener(Lcom/yanzhenjie/recyclerview/touch/OnItemStateChangedListener;)V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/touch/DefaultItemTouchHelper;->mItemTouchHelperCallback:Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/touch/ItemTouchHelperCallback;->setOnItemStateChangedListener(Lcom/yanzhenjie/recyclerview/touch/OnItemStateChangedListener;)V

    return-void
.end method
