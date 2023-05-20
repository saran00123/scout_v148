.class public Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeTwo;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WayPointListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HolderTypeTwo"
.end annotation


# instance fields
.field private content:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;Landroid/view/View;)V
    .registers 3

    .line 154
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeTwo;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    .line 155
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 156
    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeTwo;->content:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeTwo;)Landroid/view/ViewGroup;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeTwo;->content:Landroid/view/ViewGroup;

    return-object p0
.end method
