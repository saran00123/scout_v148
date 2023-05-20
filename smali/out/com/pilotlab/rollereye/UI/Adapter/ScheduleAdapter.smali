.class public Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ScheduleAdapter.java"

# interfaces
.implements Lcom/pilotlab/rollereye/Controller/AdapterInterface;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;,
        Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$onItemCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;",
        ">;",
        "Lcom/pilotlab/rollereye/Controller/AdapterInterface;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$onItemCallback;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$onItemCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;",
            ">;",
            "Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$onItemCallback;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->list:Ljava/util/List;

    .line 35
    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$onItemCallback;

    return-void
.end method


# virtual methods
.method public addData(ILjava/lang/Object;)V
    .registers 4

    .line 141
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->list:Ljava/util/List;

    check-cast p2, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 142
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->notifyItemInserted(I)V

    .line 143
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->notifyItemRangeChanged(II)V

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

    .line 87
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 88
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getRepeatText(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 93
    new-instance v0, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;-><init>(I)V

    const/4 v2, 0x1

    if-eqz p1, :cond_24

    const/4 v3, 0x7

    .line 95
    new-array v4, v3, [Ljava/lang/String;

    const-string v4, ","

    .line 96
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_12
    if-ge v1, v3, :cond_24

    .line 98
    aget-object v4, p1, v1

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->set(IZ)V

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 103
    :cond_24
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v2}, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;I)V
    .registers 6
    .param p1    # Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;->item_adapter_schudule_time:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;->item_adapter_schudule_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getParamBean()Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->getRoute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;->item_adapter_schudule_week:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getRepeat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->getRepeatText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;->item_adapter_schudule_switch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getActive()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v2, 0x0

    :goto_4e
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 59
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;->item_adapter_schudule_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;->item_adapter_schudule_switch:Landroid/widget/Switch;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0423

    if-eq v0, v1, :cond_1f

    const v1, 0x7f0a0425

    if-eq v0, v1, :cond_f

    goto :goto_2e

    .line 73
    :cond_f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$onItemCallback;->onCheckClick(Landroid/view/View;I)V

    goto :goto_2e

    .line 70
    :cond_1f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$onItemCallback;->onItemClick(Landroid/view/View;I)V

    :goto_2e
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;
    .registers 5

    .line 41
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00af

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 43
    new-instance p2, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;Landroid/view/View;)V

    .line 44
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    const v0, 0x7f0a0426

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;->item_adapter_schudule_time:Landroid/widget/TextView;

    const v0, 0x7f0a0427

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;->item_adapter_schudule_week:Landroid/widget/TextView;

    const v0, 0x7f0a0424

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;->item_adapter_schudule_name:Landroid/widget/TextView;

    const v0, 0x7f0a0425

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p2, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter$MyViewHolder;->item_adapter_schudule_switch:Landroid/widget/Switch;

    return-object p2
.end method

.method public removeData(I)V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 149
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->notifyItemRemoved(I)V

    .line 150
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->notifyItemRangeChanged(II)V

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

    .line 130
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->list:Ljava/util/List;

    .line 131
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateUI()V
    .registers 1

    .line 108
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/ScheduleAdapter;->notifyDataSetChanged()V

    return-void
.end method
