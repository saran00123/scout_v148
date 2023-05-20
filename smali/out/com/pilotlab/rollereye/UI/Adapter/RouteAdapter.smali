.class public Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RouteAdapter.java"

# interfaces
.implements Lcom/pilotlab/rollereye/Controller/AdapterInterface;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;,
        Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$onItemCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;",
        ">;",
        "Lcom/pilotlab/rollereye/Controller/AdapterInterface;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$onItemCallback;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/WayPointBean;",
            ">;"
        }
    .end annotation
.end field

.field private patrolName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$onItemCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/WayPointBean;",
            ">;",
            "Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$onItemCallback;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->patrolName:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->list:Ljava/util/List;

    .line 35
    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$onItemCallback;

    return-void
.end method


# virtual methods
.method public addData(ILjava/lang/Object;)V
    .registers 4

    .line 145
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->list:Ljava/util/List;

    check-cast p2, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->notifyItemInserted(I)V

    .line 147
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public addDataAndUpdateUI(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public clearDataAndUpdateUI()V
    .registers 1

    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getPatrolName()Ljava/lang/String;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->patrolName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;I)V
    .registers 6
    .param p1    # Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 60
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;->item_adapter_route_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;->item_adapter_route_video:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;->item_adapter_route_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->context:Landroid/content/Context;

    const v2, 0x7f06007f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->patrolName:Ljava/lang/String;

    if-eqz v0, :cond_65

    .line 64
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f06013f

    if-eqz v0, :cond_50

    .line 65
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;->item_adapter_route_video:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;->item_adapter_route_title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_65

    .line 67
    :cond_50
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->patrolName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 68
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;->item_adapter_route_title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    :cond_65
    :goto_65
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object p2, p1, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a041a

    if-eq v0, v1, :cond_a

    goto :goto_19

    .line 81
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$onItemCallback;->onItemClick(Landroid/view/View;I)V

    :goto_19
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;
    .registers 5

    .line 49
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00ac

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 51
    new-instance p2, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;Landroid/view/View;)V

    .line 52
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    const v0, 0x7f0a041b

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;->item_adapter_route_title:Landroid/widget/TextView;

    const v0, 0x7f0a041c

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p2, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$MyViewHolder;->item_adapter_route_video:Landroid/widget/ImageView;

    return-object p2
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a041a

    if-eq v0, v1, :cond_a

    goto :goto_19

    .line 90
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter$onItemCallback;->onItemLongClick(Landroid/view/View;I)V

    :goto_19
    const/4 p1, 0x1

    return p1
.end method

.method public removeData(I)V
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 153
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->notifyItemRemoved(I)V

    .line 154
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public setDataAndUpdateUI(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->list:Ljava/util/List;

    .line 135
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setPatrolName(Ljava/lang/String;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->patrolName:Ljava/lang/String;

    return-void
.end method

.method public updateUI()V
    .registers 1

    .line 114
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->notifyDataSetChanged()V

    return-void
.end method
