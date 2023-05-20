.class Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemClickListener;
.super Ljava/lang/Object;
.source "SwipeRecyclerView.java"

# interfaces
.implements Lcom/yanzhenjie/recyclerview/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemClickListener"
.end annotation


# instance fields
.field private mListener:Lcom/yanzhenjie/recyclerview/OnItemClickListener;

.field private mRecyclerView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;


# direct methods
.method public constructor <init>(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;Lcom/yanzhenjie/recyclerview/OnItemClickListener;)V
    .registers 3

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemClickListener;->mRecyclerView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    .line 264
    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemClickListener;->mListener:Lcom/yanzhenjie/recyclerview/OnItemClickListener;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 4

    .line 269
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemClickListener;->mRecyclerView:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result v0

    sub-int/2addr p2, v0

    if-ltz p2, :cond_e

    .line 270
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$ItemClickListener;->mListener:Lcom/yanzhenjie/recyclerview/OnItemClickListener;

    invoke-interface {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_e
    return-void
.end method
