.class Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemLongClickListener;
.super Ljava/lang/Object;
.source "SwipeRecyclerView.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field private mListener:Lcom/yanzhenjie/recyclerview/OnItemLongClickListener;

.field private mRecyclerView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;Lcom/yanzhenjie/recyclerview/OnItemLongClickListener;)V
    .registers 3

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemLongClickListener;->mRecyclerView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    .line 290
    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemLongClickListener;->mListener:Lcom/yanzhenjie/recyclerview/OnItemLongClickListener;

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/view/View;I)V
    .registers 4

    .line 295
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemLongClickListener;->mRecyclerView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result v0

    sub-int/2addr p2, v0

    if-ltz p2, :cond_e

    .line 296
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemLongClickListener;->mListener:Lcom/yanzhenjie/recyclerview/OnItemLongClickListener;

    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/OnItemLongClickListener;->onItemLongClick(Landroid/view/View;I)V

    :cond_e
    return-void
.end method
