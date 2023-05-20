.class Lcom/yanzhenjie/recyclerview/ExpandableAdapter$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "ExpandableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/recyclerview/ExpandableAdapter;

.field final synthetic val$glm:Landroidx/recyclerview/widget/GridLayoutManager;

.field final synthetic val$originLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/recyclerview/ExpandableAdapter;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V
    .registers 4

    .line 451
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$1;->this$0:Lcom/yanzhenjie/recyclerview/ExpandableAdapter;

    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$1;->val$glm:Landroidx/recyclerview/widget/GridLayoutManager;

    iput-object p3, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$1;->val$originLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3

    .line 454
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$1;->this$0:Lcom/yanzhenjie/recyclerview/ExpandableAdapter;

    invoke-virtual {v0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isParentItem(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p1, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$1;->val$glm:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    .line 455
    :cond_f
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$1;->val$originLookup:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    return p1

    :cond_18
    const/4 p1, 0x1

    return p1
.end method
