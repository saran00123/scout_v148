.class public Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WiFiListAdapter.java"

# interfaces
.implements Lcom/pilotlab/rollereye/Controller/AdapterInterface;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;,
        Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$onItemCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;",
        ">;",
        "Lcom/pilotlab/rollereye/Controller/AdapterInterface;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$onItemCallback;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$onItemCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;",
            ">;",
            "Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$onItemCallback;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->list:Ljava/util/List;

    .line 34
    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$onItemCallback;

    return-void
.end method


# virtual methods
.method public addData(ILjava/lang/Object;)V
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->list:Ljava/util/List;

    check-cast p2, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->notifyItemInserted(I)V

    .line 126
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->notifyItemRangeChanged(II)V

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

    .line 85
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 86
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

    .line 24
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;I)V
    .registers 5
    .param p1    # Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 52
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;->item_adapter_scan__wifi_ssid:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;->getSsid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;->getSignal()I

    move-result p2

    const/16 v0, -0x32

    if-lt p2, v0, :cond_3a

    if-gtz p2, :cond_3a

    .line 57
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;->item_adapter_scan__wifi_level:Landroid/widget/ImageView;

    const p2, 0x7f0801af

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_60

    :cond_3a
    const/16 v1, -0x46

    if-lt p2, v1, :cond_49

    if-ge p2, v0, :cond_49

    .line 59
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;->item_adapter_scan__wifi_level:Landroid/widget/ImageView;

    const p2, 0x7f0801ae

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_60

    :cond_49
    const/16 v0, -0x50

    if-lt p2, v0, :cond_58

    if-ge p2, v1, :cond_58

    .line 61
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;->item_adapter_scan__wifi_level:Landroid/widget/ImageView;

    const p2, 0x7f0801ad

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_60

    .line 63
    :cond_58
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;->item_adapter_scan__wifi_level:Landroid/widget/ImageView;

    const p2, 0x7f0801ac

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_60
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0422

    if-eq v0, v1, :cond_a

    goto :goto_19

    .line 72
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$onItemCallback;->onItemClick(Landroid/view/View;I)V

    :goto_19
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;
    .registers 5

    .line 40
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00ae

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;Landroid/view/View;)V

    .line 43
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    const v0, 0x7f0a041e

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;->item_adapter_scan__wifi_ssid:Landroid/widget/TextView;

    const v0, 0x7f0a041d

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p2, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$MyViewHolder;->item_adapter_scan__wifi_level:Landroid/widget/ImageView;

    return-object p2
.end method

.method public removeData(I)V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 132
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->notifyItemRemoved(I)V

    .line 133
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->notifyItemRangeChanged(II)V

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

    .line 113
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->list:Ljava/util/List;

    .line 114
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateUI()V
    .registers 1

    .line 93
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->notifyDataSetChanged()V

    return-void
.end method
