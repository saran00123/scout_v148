.class public Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WiFiListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public content:Landroid/view/ViewGroup;

.field public item_adapter_scan__wifi_level:Landroid/widget/ImageView;

.field public item_adapter_scan__wifi_ssid:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;Landroid/view/View;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;

    .line 103
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
