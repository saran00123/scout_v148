.class public Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WayPointListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HolderTypeThree"
.end annotation


# instance fields
.field private content:Landroid/view/ViewGroup;

.field private item_adapter_waypoint_content_close:Landroid/widget/ImageButton;

.field public name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;Landroid/view/View;)V
    .registers 3

    .line 165
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    .line 166
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 167
    move-object p1, p2

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;->content:Landroid/view/ViewGroup;

    const p1, 0x7f0a0439

    .line 168
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;->name:Landroid/widget/TextView;

    const p1, 0x7f0a0438

    .line 169
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;->item_adapter_waypoint_content_close:Landroid/widget/ImageButton;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;)Landroid/widget/ImageButton;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;->item_adapter_waypoint_content_close:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;)Landroid/view/ViewGroup;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;->content:Landroid/view/ViewGroup;

    return-object p0
.end method
