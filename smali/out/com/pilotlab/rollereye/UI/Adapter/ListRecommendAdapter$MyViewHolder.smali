.class public Lcom/pilotlab/rollereye/UI/Adapter/ListRecommendAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ListRecommendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/ListRecommendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public content:Landroid/view/ViewGroup;

.field item_adapter_scratch_recommend_author:Landroid/widget/TextView;

.field item_adapter_scratch_recommend_btn:Landroid/widget/ImageButton;

.field item_adapter_scratch_recommend_description:Landroid/widget/TextView;

.field item_adapter_scratch_recommend_name:Landroid/widget/TextView;

.field item_adapter_scratch_recommend_time:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/ListRecommendAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/ListRecommendAdapter;Landroid/view/View;)V
    .registers 3

    .line 119
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListRecommendAdapter$MyViewHolder;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/ListRecommendAdapter;

    .line 120
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
