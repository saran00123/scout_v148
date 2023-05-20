.class public Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CloudOrderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pilotlab/rollereye/Controller/AdapterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$onItemCallback;,
        Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/pilotlab/rollereye/Controller/AdapterInterface;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$onItemCallback;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$onItemCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;",
            ">;",
            "Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$onItemCallback;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->list:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$onItemCallback;

    return-void
.end method


# virtual methods
.method public addData(ILjava/lang/Object;)V
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->list:Ljava/util/List;

    check-cast p2, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 165
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->notifyItemInserted(I)V

    .line 166
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->notifyItemRangeChanged(II)V

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

    .line 147
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearDataAndUpdateUI()V
    .registers 1

    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 128
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
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;I)V
    .registers 8

    .line 61
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;

    .line 62
    iget-object v1, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_orfer_purchase_tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_id_tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_expiration_tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->getExpireDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_validity_period_tv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->context:Landroid/content/Context;

    const v4, 0x7f110019

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_number:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->getAmount()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_paid:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    iget-object v1, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_cancel:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->getStatus()I

    move-result v1

    const v2, 0x7f0600ea

    const/4 v3, 0x4

    if-ge v1, v3, :cond_a0

    .line 71
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_status_tv:Landroid/widget/TextView;

    const v1, 0x7f11006b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 72
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_status_tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_paid:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 74
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_cancel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_eb

    .line 75
    :cond_a0
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->getStatus()I

    move-result v1

    const v4, 0x7f060023

    if-ne v1, v3, :cond_bd

    .line 76
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_status_tv:Landroid/widget/TextView;

    const v1, 0x7f110043

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_status_tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_eb

    .line 78
    :cond_bd
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->getStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d8

    .line 79
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_status_tv:Landroid/widget/TextView;

    const v1, 0x7f11004b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_status_tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_eb

    .line 82
    :cond_d8
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_status_tv:Landroid/widget/TextView;

    const v1, 0x7f110049

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_status_tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    :goto_eb
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_paid:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_paid:Landroid/widget/Button;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_cancel:Landroid/widget/Button;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0400

    if-eq v0, v1, :cond_1f

    const v1, 0x7f0a0406

    if-eq v0, v1, :cond_f

    goto :goto_2e

    .line 97
    :cond_f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$onItemCallback;->onItemPayClick(Landroid/view/View;I)V

    goto :goto_2e

    .line 100
    :cond_1f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$onItemCallback;->onItemCancelClick(Landroid/view/View;I)V

    :goto_2e
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;
    .registers 5

    .line 43
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00aa

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 45
    new-instance p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;Landroid/view/View;)V

    const v0, 0x7f0a03f7

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    const v0, 0x7f0a040b

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_title:Landroid/widget/TextView;

    const v0, 0x7f0a040e

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_orfer_purchase_tv:Landroid/widget/TextView;

    const v0, 0x7f0a0404

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_id_tv:Landroid/widget/TextView;

    const v0, 0x7f0a0402

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_expiration_tv:Landroid/widget/TextView;

    const v0, 0x7f0a040a

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_status_tv:Landroid/widget/TextView;

    const v0, 0x7f0a040d

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_validity_period_tv:Landroid/widget/TextView;

    const v0, 0x7f0a0405

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_number:Landroid/widget/TextView;

    const v0, 0x7f0a0406

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_paid:Landroid/widget/Button;

    const v0, 0x7f0a0400

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter$MyViewHolder;->item_adapter_order_cancel:Landroid/widget/Button;

    return-object p2
.end method

.method public removeData(I)V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 172
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->notifyItemRemoved(I)V

    .line 173
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->notifyItemRangeChanged(II)V

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

    .line 153
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->list:Ljava/util/List;

    .line 154
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateUI()V
    .registers 1

    .line 142
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->notifyDataSetChanged()V

    return-void
.end method
