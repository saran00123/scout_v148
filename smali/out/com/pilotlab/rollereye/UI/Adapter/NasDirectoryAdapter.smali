.class public Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "NasDirectoryAdapter.java"

# interfaces
.implements Lcom/pilotlab/rollereye/Controller/AdapterInterface;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;,
        Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$onItemCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;",
        ">;",
        "Lcom/pilotlab/rollereye/Controller/AdapterInterface;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$onItemCallback;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private savePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$onItemCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$onItemCallback;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->savePath:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->list:Ljava/util/List;

    .line 34
    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$onItemCallback;

    return-void
.end method


# virtual methods
.method public addData(ILjava/lang/Object;)V
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->list:Ljava/util/List;

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->notifyItemInserted(I)V

    .line 126
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->notifyItemRangeChanged(II)V

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
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 86
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getSavePath()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->savePath:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;I)V
    .registers 5
    .param p1    # Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;->item_adapter_nas_directory_img:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;->item_adapter_nas_directory_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->savePath:Ljava/lang/String;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 62
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;->item_adapter_nas_directory_img:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    :cond_2d
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0420

    if-eq v0, v1, :cond_a

    goto :goto_19

    .line 72
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$onItemCallback;->onItemClick(Landroid/view/View;I)V

    :goto_19
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;
    .registers 5

    .line 48
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00a9

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;Landroid/view/View;)V

    .line 51
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    const v0, 0x7f0a03ff

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;->item_adapter_nas_directory_name:Landroid/widget/TextView;

    const v0, 0x7f0a03fe

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p2, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter$MyViewHolder;->item_adapter_nas_directory_img:Landroid/widget/ImageView;

    return-object p2
.end method

.method public removeData(I)V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 132
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->notifyItemRemoved(I)V

    .line 133
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->notifyItemRangeChanged(II)V

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
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->list:Ljava/util/List;

    .line 114
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSavePath(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->savePath:Ljava/lang/String;

    return-void
.end method

.method public updateUI()V
    .registers 1

    .line 93
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/NasDirectoryAdapter;->notifyDataSetChanged()V

    return-void
.end method
