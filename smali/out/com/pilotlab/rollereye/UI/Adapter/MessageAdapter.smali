.class public Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MessageAdapter.java"

# interfaces
.implements Lcom/pilotlab/rollereye/Controller/AdapterInterface;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$onItemCallback;,
        Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;",
        ">;",
        "Lcom/pilotlab/rollereye/Controller/AdapterInterface;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private checkiPosition:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$onItemCallback;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$onItemCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;",
            ">;",
            "Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$onItemCallback;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->checkiPosition:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->list:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$onItemCallback;

    return-void
.end method


# virtual methods
.method public addData(ILjava/lang/Object;)V
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->list:Ljava/util/List;

    check-cast p2, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->notifyItemInserted(I)V

    .line 141
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->notifyItemRangeChanged(II)V

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

    .line 122
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearDataAndUpdateUI()V
    .registers 1

    return-void
.end method

.method public getCheckPositio()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->checkiPosition:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 110
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

    .line 26
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;I)V
    .registers 6
    .param p1    # Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    new-instance v0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->checkMessageIsRead(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 63
    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->access$000(Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2b

    .line 64
    :cond_24
    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->access$000(Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    :goto_2b
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->checkiPosition:Ljava/lang/String;

    if-eqz v0, :cond_48

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 67
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    goto :goto_4d

    .line 69
    :cond_48
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 71
    :goto_4d
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 73
    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->access$100(Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->access$200(Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/MessageBean$DataBean;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a03fb

    if-eq v0, v1, :cond_a

    goto :goto_19

    .line 96
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$onItemCallback;->onItemClick(Landroid/view/View;I)V

    :goto_19
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;
    .registers 5

    .line 49
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00a8

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 51
    new-instance p2, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;Landroid/view/View;)V

    const v0, 0x7f0a03fb

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    const v0, 0x7f0a03fc

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->access$002(Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    const v0, 0x7f0a03fd

    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->access$102(Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0a03fa

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;->access$202(Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter$MyViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    return-object p2
.end method

.method public removeData(I)V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 147
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->notifyItemRemoved(I)V

    .line 148
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public setCheckPositio(Ljava/lang/String;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->checkiPosition:Ljava/lang/String;

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

    .line 128
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->list:Ljava/util/List;

    .line 129
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateUI()V
    .registers 1

    .line 117
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/MessageAdapter;->notifyDataSetChanged()V

    return-void
.end method
