.class public Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CloudRecordAdapter.java"

# interfaces
.implements Lcom/pilotlab/rollereye/Controller/AdapterInterface;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeTwo;,
        Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;,
        Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$onItemCallback;,
        Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$MyViewHolder;",
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
.field public final CONTENT:I

.field public final DIVIDE:I

.field private context:Landroid/content/Context;

.field private hasDivide:Z

.field private inflater:Landroid/view/LayoutInflater;

.field private itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$onItemCallback;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;",
            ">;"
        }
    .end annotation
.end field

.field private mEditMode:I

.field private mSeleted:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$onItemCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;",
            ">;",
            "Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$onItemCallback;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->mSeleted:Ljava/util/Set;

    const/16 v0, 0x123

    .line 41
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->CONTENT:I

    const/16 v0, 0x124

    .line 42
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->DIVIDE:I

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->hasDivide:Z

    .line 48
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->mEditMode:I

    .line 52
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->context:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    .line 54
    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$onItemCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;)Ljava/util/List;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    return-object p0
.end method

.method private bindTypeOne(Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;I)V
    .registers 9

    .line 107
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_createtime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_filesize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getFile_size()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->sizeFromLong2Text(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_expire_date:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->context:Landroid/content/Context;

    const v3, 0x7f110220

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getExpire_date()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_check_box:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 113
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_check_box:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 115
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->mEditMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_84

    .line 116
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_check_box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->mSeleted:Ljava/util/Set;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 118
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_check_box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_89

    .line 121
    :cond_84
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_check_box:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 124
    :cond_89
    :goto_89
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->content:Landroid/view/ViewGroup;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_cover_status:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_duration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_cover:Landroid/widget/ImageView;

    const v3, 0x7f060021

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getFile_type()I

    move-result v0

    sget v3, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->type_snapshot:I

    if-ne v0, v3, :cond_da

    .line 132
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_duration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    .line 134
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_cover:Landroid/widget/ImageView;

    .line 135
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_129

    .line 136
    :cond_da
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getFile_type()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->type_record:I

    if-ne v0, v1, :cond_129

    .line 137
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_cover_status:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_duration:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_duration:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getDuration()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->durationFormLong2Text(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    .line 141
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getThumb_url()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_cover:Landroid/widget/ImageView;

    .line 142
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 143
    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;->item_adapter_cloud_record_cover_status:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_129
    :goto_129
    return-void
.end method

.method private bindTypeTwo(Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeTwo;I)V
    .registers 3

    return-void
.end method


# virtual methods
.method public addData(ILjava/lang/Object;)V
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    check-cast p2, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 271
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->notifyItemInserted(I)V

    .line 272
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->notifyItemRangeChanged(II)V

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

    .line 253
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 254
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public clearDataAndUpdateUI()V
    .registers 1

    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 241
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    .line 150
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x123

    if-eqz v0, :cond_11

    return v1

    .line 152
    :cond_11
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1a

    const/16 p1, 0x124

    return p1

    :cond_1a
    return v1
.end method

.method public getmSeleted()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->mSeleted:Ljava/util/Set;

    return-object v0
.end method

.method public isHasDivide()Z
    .registers 2

    .line 62
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->hasDivide:Z

    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 161
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 163
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 164
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_15

    .line 165
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 167
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$1;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_15
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 30
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$MyViewHolder;I)V
    .registers 4

    .line 94
    instance-of v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;

    if-eqz v0, :cond_a

    .line 95
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;

    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->bindTypeOne(Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;I)V

    goto :goto_13

    .line 96
    :cond_a
    instance-of v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeTwo;

    if-eqz v0, :cond_13

    .line 97
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeTwo;

    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->bindTypeTwo(Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeTwo;I)V

    :cond_13
    :goto_13
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a03ed

    if-eq v0, v1, :cond_a

    goto :goto_6f

    .line 211
    :cond_a
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->mEditMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_60

    .line 212
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getId()J

    move-result-wide v0

    .line 213
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->mSeleted:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 214
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->mSeleted:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$onItemCallback;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->mSeleted:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$onItemCallback;->selectSet(Ljava/util/Set;)V

    goto :goto_52

    .line 217
    :cond_42
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->mSeleted:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$onItemCallback;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->mSeleted:Ljava/util/Set;

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$onItemCallback;->selectSet(Ljava/util/Set;)V

    .line 220
    :goto_52
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->notifyItemChanged(I)V

    goto :goto_6f

    .line 222
    :cond_60
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$onItemCallback;->onItemClick(Landroid/view/View;I)V

    :goto_6f
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$MyViewHolder;
    .registers 5

    .line 78
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->inflater:Landroid/view/LayoutInflater;

    const/16 v0, 0x123

    const/4 v1, 0x0

    if-eq p2, v0, :cond_22

    const/16 v0, 0x124

    if-eq p2, v0, :cond_13

    const/4 p1, 0x0

    return-object p1

    .line 85
    :cond_13
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00a3

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 86
    new-instance p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeTwo;

    invoke-direct {p2, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeTwo;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;Landroid/view/View;)V

    return-object p2

    .line 82
    :cond_22
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00a4

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 83
    new-instance p2, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;

    invoke-direct {p2, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter$HolderTypeOne;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public removeData(I)V
    .registers 3

    .line 277
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 278
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->notifyItemRemoved(I)V

    .line 279
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->notifyItemRangeChanged(II)V

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

    .line 259
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->list:Ljava/util/List;

    .line 260
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEditMode(I)V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->mSeleted:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 71
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->mEditMode:I

    .line 72
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setHasDivide(Z)V
    .registers 2

    .line 66
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->hasDivide:Z

    return-void
.end method

.method public updateUI()V
    .registers 1

    .line 248
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->notifyDataSetChanged()V

    return-void
.end method
