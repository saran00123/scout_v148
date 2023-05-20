.class public Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeTwo;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ScratchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HolderTypeTwo"
.end annotation


# instance fields
.field private content:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;Landroid/view/View;)V
    .registers 3

    .line 151
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeTwo;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;

    .line 152
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 153
    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeTwo;->content:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeTwo;)Landroid/view/ViewGroup;
    .registers 1

    .line 148
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeTwo;->content:Landroid/view/ViewGroup;

    return-object p0
.end method
