.class public Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ScratchListAdapter.java"

# interfaces
.implements Lcom/pilotlab/rollereye/Controller/AdapterInterface;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;,
        Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeTwo;,
        Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$onItemCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/pilotlab/rollereye/Controller/AdapterInterface;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field public final CONTENT:I

.field public final HEAD:I

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$onItemCallback;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ScratchBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$onItemCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ScratchBean;",
            ">;",
            "Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$onItemCallback;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, 0x123

    .line 34
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->HEAD:I

    const/16 v0, 0x124

    .line 35
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->CONTENT:I

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->handler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->list:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$onItemCallback;

    return-void
.end method

.method private bindTypeThree(Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;I)V
    .registers 8

    .line 96
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;->time:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getScratchReadName(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 102
    :goto_2a
    array-length v3, v0

    if-ge v2, v3, :cond_4f

    .line 103
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 104
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    invoke-virtual {v3, v1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->setFlag(I)V

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 106
    :cond_4f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getFlag()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_64

    .line 107
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;->flag:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6b

    .line 108
    :cond_64
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;->flag:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    :goto_6b
    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;->access$000(Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;->access$000(Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;->customer:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;->customer:Landroid/widget/Button;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private bindTypeTwo(Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeTwo;I)V
    .registers 4

    .line 118
    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeTwo;->access$100(Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeTwo;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeTwo;->access$100(Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeTwo;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addData(ILjava/lang/Object;)V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->list:Ljava/util/List;

    check-cast p2, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 206
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->notifyItemInserted(I)V

    .line 207
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->notifyItemRangeChanged(II)V

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

    .line 177
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 178
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    .line 76
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    const/16 p1, 0x123

    return p1

    .line 78
    :cond_11
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x124

    if-eqz p1, :cond_19

    :cond_19
    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 86
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 88
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 89
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_d

    .line 90
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    :cond_d
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 4

    .line 65
    instance-of v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeTwo;

    if-eqz v0, :cond_a

    .line 66
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeTwo;

    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->bindTypeTwo(Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeTwo;I)V

    goto :goto_13

    .line 67
    :cond_a
    instance-of v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;

    if-eqz v0, :cond_13

    .line 68
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;

    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->bindTypeThree(Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;I)V

    :cond_13
    :goto_13
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0428

    if-eq v0, v1, :cond_34

    const v1, 0x7f0a042b

    if-eq v0, v1, :cond_24

    const v1, 0x7f0a0432

    if-eq v0, v1, :cond_14

    goto :goto_43

    .line 133
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$onItemCallback;->onItemAdd(Landroid/view/View;I)V

    goto :goto_43

    .line 127
    :cond_24
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$onItemCallback;->onItemClick(Landroid/view/View;I)V

    goto :goto_43

    .line 130
    :cond_34
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$onItemCallback;->onItemCustomer(Landroid/view/View;I)V

    :goto_43
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 49
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->inflater:Landroid/view/LayoutInflater;

    const/16 v0, 0x123

    const/4 v1, 0x0

    if-eq p2, v0, :cond_22

    const/16 v0, 0x124

    if-eq p2, v0, :cond_13

    const/4 p1, 0x0

    return-object p1

    .line 56
    :cond_13
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00b0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    new-instance p2, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;

    invoke-direct {p2, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeThree;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;Landroid/view/View;)V

    return-object p2

    .line 53
    :cond_22
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00b2

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    new-instance p2, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeTwo;

    invoke-direct {p2, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter$HolderTypeTwo;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public removeData(I)V
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 213
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->notifyItemRemoved(I)V

    .line 214
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->notifyItemRangeChanged(II)V

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

    .line 194
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->list:Ljava/util/List;

    .line 195
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateUI()V
    .registers 1

    .line 185
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/ScratchListAdapter;->notifyDataSetChanged()V

    return-void
.end method
