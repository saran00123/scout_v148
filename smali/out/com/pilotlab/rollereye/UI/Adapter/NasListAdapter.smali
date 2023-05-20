.class public Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NasListAdapter.java"

# interfaces
.implements Lcom/pilotlab/rollereye/Controller/AdapterInterface;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;,
        Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$onItemCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;",
        ">;",
        "Lcom/pilotlab/rollereye/Controller/AdapterInterface;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$onItemCallback;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$onItemCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$onItemCallback;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->list:Ljava/util/List;

    .line 33
    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$onItemCallback;

    return-void
.end method


# virtual methods
.method public addData(ILjava/lang/Object;)V
    .registers 4

    .line 116
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->list:Ljava/util/List;

    check-cast p2, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->notifyItemInserted(I)V

    .line 118
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->notifyItemRangeChanged(II)V

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

    .line 77
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;I)V
    .registers 6
    .param p1    # Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 53
    iget-object v1, p1, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;->item_adapter_scan_nas_name:Landroid/widget/TextView;

    const-string v2, "name"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p1, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;->item_adapter_scan_nas_ip:Landroid/widget/TextView;

    const-string v2, "ip"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0420

    if-eq v0, v1, :cond_a

    goto :goto_19

    .line 64
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$onItemCallback;->onItemClick(Landroid/view/View;I)V

    :goto_19
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;
    .registers 5

    .line 39
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00ad

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    new-instance p2, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;Landroid/view/View;)V

    .line 42
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    const v0, 0x7f0a0421

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;->item_adapter_scan_nas_name:Landroid/widget/TextView;

    const v0, 0x7f0a041f

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p2, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter$MyViewHolder;->item_adapter_scan_nas_ip:Landroid/widget/TextView;

    return-object p2
.end method

.method public removeData(I)V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 124
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->notifyItemRemoved(I)V

    .line 125
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->notifyItemRangeChanged(II)V

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

    .line 105
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->list:Ljava/util/List;

    .line 106
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateUI()V
    .registers 1

    .line 85
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/NasListAdapter;->notifyDataSetChanged()V

    return-void
.end method
