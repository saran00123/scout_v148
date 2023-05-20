.class public Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ScratchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HolderTypeThree"
.end annotation


# instance fields
.field private content:Landroid/view/ViewGroup;

.field public customer:Landroid/widget/Button;

.field public flag:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;

.field public time:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;Landroid/view/View;)V
    .registers 3

    .line 164
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;->this$0:Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;

    .line 165
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 166
    move-object p1, p2

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;->content:Landroid/view/ViewGroup;

    const p1, 0x7f0a0429

    .line 167
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;->name:Landroid/widget/TextView;

    const p1, 0x7f0a042c

    .line 168
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;->time:Landroid/widget/TextView;

    const p1, 0x7f0a042a

    .line 169
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;->flag:Landroid/widget/ImageView;

    const p1, 0x7f0a0428

    .line 170
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;->customer:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;)Landroid/view/ViewGroup;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;->content:Landroid/view/ViewGroup;

    return-object p0
.end method
