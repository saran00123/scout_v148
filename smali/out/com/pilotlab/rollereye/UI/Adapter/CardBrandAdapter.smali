.class public Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CardBrandAdapter.java"

# interfaces
.implements Lcom/pilotlab/rollereye/Controller/AdapterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter$MyViewHolder;",
        ">;",
        "Lcom/pilotlab/rollereye/Controller/AdapterInterface;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/android/model/CardBrand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/stripe/android/model/CardBrand;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addData(ILjava/lang/Object;)V
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->list:Ljava/util/List;

    check-cast p2, Lcom/stripe/android/model/CardBrand;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->notifyItemInserted(I)V

    .line 100
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public addDataAndUpdateUI(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearDataAndUpdateUI()V
    .registers 1

    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 69
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 24
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter$MyViewHolder;I)V
    .registers 5

    .line 51
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter$MyViewHolder;->item_adapter_cardbrand_img:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/stripe/android/model/CardBrand;

    invoke-virtual {p2}, Lcom/stripe/android/model/CardBrand;->getIcon()I

    move-result p2

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter$MyViewHolder;
    .registers 5

    .line 41
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00a1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter$MyViewHolder;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;Landroid/view/View;)V

    const v0, 0x7f0a03e1

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    const v0, 0x7f0a03e0

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p2, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter$MyViewHolder;->item_adapter_cardbrand_img:Landroid/widget/ImageView;

    return-object p2
.end method

.method public removeData(I)V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 106
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->notifyItemRemoved(I)V

    .line 107
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->notifyItemRangeChanged(II)V

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

    .line 87
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->list:Ljava/util/List;

    .line 88
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateUI()V
    .registers 1

    .line 76
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;->notifyDataSetChanged()V

    return-void
.end method
