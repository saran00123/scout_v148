.class Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$2;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SwipeRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)V
    .registers 2

    .line 398
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .line 401
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->access$000(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 4

    .line 406
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 407
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->access$000(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .registers 5

    .line 412
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 413
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->access$000(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 4

    .line 418
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 419
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->access$000(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 4

    .line 430
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {p3}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result p3

    add-int/2addr p1, p3

    .line 431
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {p3}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result p3

    add-int/2addr p2, p3

    .line 432
    iget-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-static {p3}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->access$000(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->notifyItemMoved(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 4

    .line 424
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result v0

    add-int/2addr p1, v0

    .line 425
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$2;->this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->access$000(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->notifyItemRangeRemoved(II)V

    return-void
.end method
