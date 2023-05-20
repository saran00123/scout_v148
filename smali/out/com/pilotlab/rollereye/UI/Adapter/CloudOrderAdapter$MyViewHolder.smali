.class public Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CloudOrderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public content:Landroid/view/ViewGroup;

.field public item_adapter_order_cancel:Landroid/widget/Button;

.field public item_adapter_order_expiration_tv:Landroid/widget/TextView;

.field public item_adapter_order_id_tv:Landroid/widget/TextView;

.field public item_adapter_order_number:Landroid/widget/TextView;

.field public item_adapter_order_paid:Landroid/widget/Button;

.field public item_adapter_order_status_tv:Landroid/widget/TextView;

.field public item_adapter_order_title:Landroid/widget/TextView;

.field public item_adapter_order_validity_period_tv:Landroid/widget/TextView;

.field public item_adapter_orfer_purchase_tv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;Landroid/view/View;)V
    .registers 3

    .line 119
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;

    .line 120
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
