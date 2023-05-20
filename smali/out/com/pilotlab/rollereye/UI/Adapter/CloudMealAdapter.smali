.class public Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CloudMealAdapter.java"

# interfaces
.implements Lcom/pilotlab/rollereye/Controller/AdapterInterface;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$onItemCallback;,
        Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;",
        ">;",
        "Lcom/pilotlab/rollereye/Controller/AdapterInterface;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$onItemCallback;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$onItemCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;",
            ">;",
            "Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$onItemCallback;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->list:Ljava/util/List;

    .line 37
    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$onItemCallback;

    return-void
.end method


# virtual methods
.method public addData(ILjava/lang/Object;)V
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->list:Ljava/util/List;

    check-cast p2, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->notifyItemInserted(I)V

    .line 126
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->notifyItemRangeChanged(II)V

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

    .line 107
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearDataAndUpdateUI()V
    .registers 1

    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 95
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
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;I)V
    .registers 7

    .line 57
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;->item_adapter_meal_title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;->item_adapter_meal_tips:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;->item_adapter_meal_number:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->getPrice()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;->item_adapter_meal_order:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;->item_adapter_meal_order:Landroid/widget/Button;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a03f6

    if-eq v0, v1, :cond_a

    goto :goto_19

    .line 81
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$onItemCallback;->onItemClick(Landroid/view/View;I)V

    :goto_19
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;
    .registers 5

    .line 44
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00a7

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;Landroid/view/View;)V

    const v0, 0x7f0a03f7

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    const v0, 0x7f0a03f9

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;->item_adapter_meal_title:Landroid/widget/TextView;

    const v0, 0x7f0a03f8

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;->item_adapter_meal_tips:Landroid/widget/TextView;

    const v0, 0x7f0a03f6

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;->item_adapter_meal_order:Landroid/widget/Button;

    const v0, 0x7f0a03f5

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$MyViewHolder;->item_adapter_meal_number:Landroid/widget/TextView;

    return-object p2
.end method

.method public removeData(I)V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 132
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->notifyItemRemoved(I)V

    .line 133
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->notifyItemRangeChanged(II)V

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
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->list:Ljava/util/List;

    .line 114
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateUI()V
    .registers 1

    .line 102
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;->notifyDataSetChanged()V

    return-void
.end method
