.class public Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WayPointListAdapter.java"

# interfaces
.implements Lcom/pilotlab/rollereye/Controller/AdapterInterface;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;,
        Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeTwo;,
        Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$onItemCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;",
        "Lcom/pilotlab/rollereye/Controller/AdapterInterface;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnLongClickListener;"
    }
.end annotation


# instance fields
.field public final CONTENT:I

.field public final HEAD:I

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private isEdit:Z

.field private itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$onItemCallback;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/WayPointBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$onItemCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/WayPointBean;",
            ">;",
            "Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$onItemCallback;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->isEdit:Z

    const/16 v0, 0x123

    .line 36
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->HEAD:I

    const/16 v0, 0x124

    .line 37
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->CONTENT:I

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->handler:Landroid/os/Handler;

    .line 51
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->context:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->list:Ljava/util/List;

    .line 53
    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$onItemCallback;

    return-void
.end method

.method private addAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 179
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_20

    const-string v1, "translationX"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 180
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x12c

    .line 181
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_20
    .array-data 4
        0x42c80000    # 100.0f
        0x0
    .end array-data
.end method

.method private bindTypeThree(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;I)V
    .registers 5

    .line 95
    iget-object v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->isEdit:Z

    if-eqz v0, :cond_1e

    .line 98
    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;->access$000(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_26

    .line 99
    :cond_1e
    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;->access$000(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 101
    :goto_26
    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;->access$100(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;->access$100(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 103
    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;->access$100(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 104
    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;->access$000(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;->access$000(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;)Landroid/widget/ImageButton;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method private bindTypeTwo(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeTwo;I)V
    .registers 4

    .line 110
    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeTwo;->access$200(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeTwo;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeTwo;->access$200(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeTwo;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addData(ILjava/lang/Object;)V
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->list:Ljava/util/List;

    check-cast p2, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->notifyItemInserted(I)V

    .line 216
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->notifyItemRangeChanged(II)V

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

    .line 186
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 187
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    .line 86
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    const/16 p1, 0x123

    return p1

    .line 88
    :cond_11
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x124

    if-eqz p1, :cond_19

    :cond_19
    return v0
.end method

.method public isEdit()Z
    .registers 2

    .line 43
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->isEdit:Z

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 4

    .line 75
    instance-of v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeTwo;

    if-eqz v0, :cond_a

    .line 76
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeTwo;

    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->bindTypeTwo(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeTwo;I)V

    goto :goto_13

    .line 77
    :cond_a
    instance-of v0, p1, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;

    if-eqz v0, :cond_13

    .line 78
    check-cast p1, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;

    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->bindTypeThree(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;I)V

    :cond_13
    :goto_13
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0438

    if-eq v0, v1, :cond_34

    const v1, 0x7f0a043a

    if-eq v0, v1, :cond_24

    const v1, 0x7f0a043c

    if-eq v0, v1, :cond_14

    goto :goto_43

    .line 121
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$onItemCallback;->onItemAdd(Landroid/view/View;I)V

    goto :goto_43

    .line 118
    :cond_24
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$onItemCallback;->onItemClick(Landroid/view/View;I)V

    goto :goto_43

    .line 124
    :cond_34
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$onItemCallback;->onItemDelete(Landroid/view/View;I)V

    :goto_43
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->inflater:Landroid/view/LayoutInflater;

    const/16 v0, 0x123

    const/4 v1, 0x0

    if-eq p2, v0, :cond_22

    const/16 v0, 0x124

    if-eq p2, v0, :cond_13

    const/4 p1, 0x0

    return-object p1

    .line 66
    :cond_13
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00b4

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    new-instance p2, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;

    invoke-direct {p2, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeThree;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;Landroid/view/View;)V

    return-object p2

    .line 63
    :cond_22
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00b5

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 64
    new-instance p2, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeTwo;

    invoke-direct {p2, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$HolderTypeTwo;-><init>(Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a043a

    if-eq v0, v1, :cond_a

    goto :goto_20

    :cond_a
    const-string v0, "CameraActivity"

    const-string v1, "OnLongClick"

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->itemCallback:Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$onItemCallback;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter$onItemCallback;->OnLongClick(Landroid/view/View;I)V

    :goto_20
    const/4 p1, 0x1

    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 175
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public removeData(I)V
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 222
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->notifyItemRemoved(I)V

    .line 223
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->notifyItemRangeChanged(II)V

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

    .line 203
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->list:Ljava/util/List;

    .line 204
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setEdit(Z)V
    .registers 2

    .line 47
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->isEdit:Z

    return-void
.end method

.method public updateUI()V
    .registers 1

    .line 194
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->notifyDataSetChanged()V

    return-void
.end method
