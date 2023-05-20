.class public Lcom/pilotlab/rollereye/UI/Adapter/ScanWiFiResultAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ScanWiFiResultAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/ScanWiFiResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field public content:Landroid/view/ViewGroup;

.field public item_adapter_scan__wifi_level:Landroid/widget/ImageView;

.field public item_adapter_scan__wifi_ssid:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/ScanWiFiResultAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/ScanWiFiResultAdapter;Landroid/view/View;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScanWiFiResultAdapter$MyViewHolder;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/ScanWiFiResultAdapter;

    .line 103
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
