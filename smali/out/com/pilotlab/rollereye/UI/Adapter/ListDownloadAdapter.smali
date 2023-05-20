.class public Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ListDownloadAdapter.java"

# interfaces
.implements Lcom/pilotlab/rollereye/Controller/AdapterInterface;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;,
        Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$onItemCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;",
        ">;",
        "Lcom/pilotlab/rollereye/Controller/AdapterInterface;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$onItemCallback;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$onItemCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;",
            ">;",
            "Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$onItemCallback;",
            ")V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->dataList:Ljava/util/List;

    .line 80
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->mContext:Landroid/content/Context;

    .line 81
    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$onItemCallback;

    return-void
.end method


# virtual methods
.method public addData(ILjava/lang/Object;)V
    .registers 3

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

    .line 86
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->dataList:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 87
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 18
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;I)V
    .registers 5

    .line 108
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;->item_adapter_scratch_download_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;->item_adapter_scratch_download_time:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudScratchBean$DataBean;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;->item_adapter_scratch_delete_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;->item_adapter_scratch_delete_btn:Landroid/widget/ImageButton;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;->item_adapter_scratch_download_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;->item_adapter_scratch_download_btn:Landroid/widget/ImageButton;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    goto :goto_27

    .line 60
    :pswitch_8
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$onItemCallback;->downloadCloudItem(Landroid/view/View;I)V

    goto :goto_27

    .line 64
    :pswitch_18
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$onItemCallback;->deleteCloudItem(Landroid/view/View;I)V

    :goto_27
    return-void

    :pswitch_data_28
    .packed-switch 0x7f0a042d
        :pswitch_18
        :pswitch_8
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;
    .registers 5

    .line 94
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00b1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 96
    new-instance p2, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;Landroid/view/View;)V

    .line 97
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    const v0, 0x7f0a042f

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;->item_adapter_scratch_download_name:Landroid/widget/TextView;

    const v0, 0x7f0a0430

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;->item_adapter_scratch_download_time:Landroid/widget/TextView;

    const v0, 0x7f0a042d

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;->item_adapter_scratch_delete_btn:Landroid/widget/ImageButton;

    const v0, 0x7f0a042e

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p2, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter$MyViewHolder;->item_adapter_scratch_download_btn:Landroid/widget/ImageButton;

    return-object p2
.end method

.method public removeData(I)V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 52
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->notifyItemRemoved(I)V

    .line 53
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->notifyItemRangeChanged(II)V

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

    return-void
.end method

.method public updateUI()V
    .registers 1

    .line 28
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->notifyDataSetChanged()V

    return-void
.end method
