.class public Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecordAdapter.java"

# interfaces
.implements Lcom/pilotlab/rollereye/Controller/AdapterInterface;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$onItemCallback;,
        Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;",
        ">;",
        "Lcom/pilotlab/rollereye/Controller/AdapterInterface;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# static fields
.field public static final MYLIVE_MODE_EDIT:I = 0x1

.field public static final MYLIVE_MODE_TOUCH:I


# instance fields
.field private context:Landroid/content/Context;

.field private itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$onItemCallback;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEditMode:I

.field private mSeleted:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$onItemCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;",
            ">;>;",
            "Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$onItemCallback;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->mSeleted:Ljava/util/Set;

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->mEditMode:I

    .line 48
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    .line 50
    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$onItemCallback;

    return-void
.end method


# virtual methods
.method public addData(ILjava/lang/Object;)V
    .registers 4

    .line 271
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->notifyItemInserted(I)V

    .line 273
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->notifyItemRangeChanged(II)V

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

    .line 254
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 255
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearDataAndUpdateUI()V
    .registers 1

    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 242
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getmSeleted()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->mSeleted:Ljava/util/Set;

    return-object v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 176
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 178
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 179
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_d

    .line 180
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    :cond_d
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .registers 4

    .line 34
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;I)V
    .registers 11
    .param p1    # Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 107
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_filename:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_createtime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_filesize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->sizeFromLong2Text(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_check_box:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 113
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_check_box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 115
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->mEditMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_80

    .line 116
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_check_box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->mSeleted:Ljava/util/Set;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    .line 118
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_check_box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_85

    .line 121
    :cond_80
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_check_box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 124
    :cond_85
    :goto_85
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_cover_status:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_duration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_download_layout:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adpter_record_download_progress:Landroid/widget/ProgressBar;

    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getProcess()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 132
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_cover:Landroid/widget/ImageView;

    const v5, 0x7f060021

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileType()Ljava/lang/String;

    move-result-object v0

    const-string v5, "snapshot"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_12d

    .line 136
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_duration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getType()I

    move-result v0

    if-eq v0, v3, :cond_10a

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v0

    if-ne v0, v5, :cond_247

    .line 138
    :cond_10a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    .line 139
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getLocal_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_cover:Landroid/widget/ImageView;

    .line 140
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto/16 :goto_247

    .line 142
    :cond_12d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "record"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_247

    .line 143
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_cover_status:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_duration:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_duration:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDuration()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->durationFormLong2Text(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1c4

    .line 147
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getType()I

    move-result v0

    if-eq v0, v3, :cond_1a2

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v0

    if-ne v0, v5, :cond_20d

    .line 148
    :cond_1a2
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    .line 149
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getLocal_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_cover:Landroid/widget/ImageView;

    .line 150
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_20d

    .line 153
    :cond_1c4
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getType()I

    move-result v0

    if-eq v0, v3, :cond_1ec

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v0

    if-ne v0, v5, :cond_20d

    .line 154
    :cond_1ec
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    .line 155
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getLocal_path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_cover:Landroid/widget/ImageView;

    .line 156
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 160
    :cond_20d
    :goto_20d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getType()I

    move-result v0

    if-eq v0, v3, :cond_23f

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v0

    if-ne v0, v5, :cond_236

    goto :goto_23f

    .line 163
    :cond_236
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_cover_status:Landroid/widget/ImageView;

    const v1, 0x7f080186

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_247

    .line 161
    :cond_23f
    :goto_23f
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_cover_status:Landroid/widget/ImageView;

    const v1, 0x7f080188

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    :cond_247
    :goto_247
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result p2

    if-ne p2, v3, :cond_261

    .line 168
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_download_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_266

    .line 169
    :cond_261
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_download_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_266
    return-void
.end method

.method public onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 87
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;I)V

    goto/16 :goto_83

    :cond_b
    const/4 v0, 0x0

    .line 89
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v1, 0x2

    if-ne p3, v1, :cond_83

    .line 90
    iget-object p3, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-eqz p3, :cond_83

    .line 92
    iget-object p3, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {p3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_7d

    .line 93
    iget-object p3, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_download_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    iget-object p3, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adpter_record_download_progress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getProcess()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 95
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_download_percent:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getProcess()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "%"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_83

    .line 97
    :cond_7d
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_download_layout:Landroid/widget/LinearLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_83
    :goto_83
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0419

    if-eq v0, v1, :cond_a

    goto :goto_6a

    .line 212
    :cond_a
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->mEditMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5b

    .line 213
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->mSeleted:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 215
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->mSeleted:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$onItemCallback;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->mSeleted:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$onItemCallback;->selectSet(Ljava/util/Set;)V

    goto :goto_4d

    .line 218
    :cond_41
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->mSeleted:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$onItemCallback;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->mSeleted:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$onItemCallback;->selectSet(Ljava/util/Set;)V

    .line 221
    :goto_4d
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->notifyItemChanged(I)V

    goto :goto_6a

    .line 223
    :cond_5b
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$onItemCallback;->onItemClick(Landroid/view/View;I)V

    :goto_6a
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;
    .registers 5

    .line 65
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00ab

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    new-instance p2, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;Landroid/view/View;)V

    .line 68
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->content:Landroid/view/ViewGroup;

    const v0, 0x7f0a0410

    .line 69
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_cover:Landroid/widget/ImageView;

    const v0, 0x7f0a040f

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_check_box:Landroid/widget/CheckBox;

    const v0, 0x7f0a0412

    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_cover_status:Landroid/widget/ImageView;

    const v0, 0x7f0a0417

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_filename:Landroid/widget/TextView;

    const v0, 0x7f0a0413

    .line 73
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_createtime:Landroid/widget/TextView;

    const v0, 0x7f0a0418

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_filesize:Landroid/widget/TextView;

    const v0, 0x7f0a0416

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_duration:Landroid/widget/TextView;

    const v0, 0x7f0a0414

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_download_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0415

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adapter_record_download_percent:Landroid/widget/TextView;

    const v0, 0x7f0a043d

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p2, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$MyViewHolder;->item_adpter_record_download_progress:Landroid/widget/ProgressBar;

    return-object p2
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public removeData(I)V
    .registers 3

    .line 278
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 279
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->notifyItemRemoved(I)V

    .line 280
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->notifyItemRangeChanged(II)V

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

    .line 260
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->list:Ljava/util/List;

    .line 261
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEditMode(I)V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->mSeleted:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 59
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->mEditMode:I

    .line 60
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateUI()V
    .registers 1

    .line 249
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->notifyDataSetChanged()V

    return-void
.end method
