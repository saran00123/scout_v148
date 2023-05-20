.class public Lcom/pilotlab/rollereye/UI/Adapter/DeviceListAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/DeviceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public content:Landroid/view/ViewGroup;

.field public item_adapter_device_sn:Landroid/widget/TextView;

.field public item_adapter_device_status:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/DeviceListAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/DeviceListAdapter;Landroid/view/View;)V
    .registers 3

    .line 100
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/DeviceListAdapter$MyViewHolder;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/DeviceListAdapter;

    .line 101
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
