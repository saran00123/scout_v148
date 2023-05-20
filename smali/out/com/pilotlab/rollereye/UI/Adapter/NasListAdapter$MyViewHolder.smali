.class public Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NasListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public content:Landroid/view/ViewGroup;

.field public item_adapter_scan_nas_ip:Landroid/widget/TextView;

.field public item_adapter_scan_nas_name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;Landroid/view/View;)V
    .registers 3

    .line 94
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;

    .line 95
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
