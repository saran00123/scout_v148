.class Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SwipeRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

.field final synthetic val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field final synthetic val$spanSizeLookupHolder:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .registers 4

    .line 343
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$1;->this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$1;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$1;->val$spanSizeLookupHolder:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 4

    .line 346
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$1;->this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->access$000(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->isHeader(I)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$1;->this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->access$000(Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;)Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->isFooter(I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_2b

    .line 349
    :cond_19
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$1;->val$spanSizeLookupHolder:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz v0, :cond_29

    .line 350
    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$1;->this$0:Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;

    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView;->getHeaderCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1

    :cond_29
    const/4 p1, 0x1

    return p1

    .line 347
    :cond_2b
    :goto_2b
    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeRecyclerView$1;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1
.end method
