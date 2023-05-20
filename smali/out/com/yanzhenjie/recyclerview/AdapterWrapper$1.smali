.class Lcom/yanzhenjie/recyclerview/AdapterWrapper$1;
.super Ljava/lang/Object;
.source "AdapterWrapper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yanzhenjie/recyclerview/AdapterWrapper;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

.field final synthetic val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/recyclerview/AdapterWrapper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 125
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper$1;->this$0:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper$1;->val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper$1;->this$0:Lcom/yanzhenjie/recyclerview/AdapterWrapper;

    invoke-static {v0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->access$000(Lcom/yanzhenjie/recyclerview/AdapterWrapper;)Lcom/yanzhenjie/recyclerview/OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper$1;->val$viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/yanzhenjie/recyclerview/OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method
