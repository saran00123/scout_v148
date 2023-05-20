.class public abstract Lcom/yanzhenjie/recyclerview/ExpandableAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ExpandableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# static fields
.field private static final TYPE_CHILD:I = 0x1312d00

.field private static final TYPE_PARENT:I = 0x989680


# instance fields
.field private final mExpandItemArray:Landroid/util/SparseBooleanArray;

.field private final mParentViewType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 38
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->mExpandItemArray:Landroid/util/SparseBooleanArray;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->mParentViewType:Ljava/util/List;

    return-void
.end method

.method private positionFromChildPosition(II)I
    .registers 7

    .line 172
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_3d

    add-int/lit8 v2, v2, 0x1

    if-ne p1, v1, :cond_2f

    .line 177
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemCount(I)I

    move-result p1

    if-ge p2, p1, :cond_18

    add-int/lit8 p2, p2, 0x1

    add-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 183
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The child position is invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_2f
    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isExpanded(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 186
    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemCount(I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 193
    :cond_3d
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The parent position is invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private positionFromParentPosition(I)I
    .registers 6

    .line 151
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_1d

    add-int/lit8 v2, v2, 0x1

    if-ne p1, v1, :cond_f

    add-int/lit8 v2, v2, -0x1

    return v2

    .line 158
    :cond_f
    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isExpanded(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 159
    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemCount(I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 166
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The parent position is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract bindChildHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;II)V
    .param p1    # Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;II)V"
        }
    .end annotation
.end method

.method public bindChildHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;IILjava/util/List;)V
    .registers 5
    .param p1    # Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;II",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 374
    invoke-virtual {p0, p1, p2, p3}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->bindChildHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;II)V

    return-void
.end method

.method public abstract bindParentHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;I)V
    .param p1    # Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public bindParentHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;ILjava/util/List;)V
    .registers 4
    .param p1    # Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 370
    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->bindParentHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;I)V

    return-void
.end method

.method public abstract childItemCount(I)I
.end method

.method public final childItemPosition(I)I
    .registers 6

    .line 312
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_1d

    add-int/lit8 v2, v2, 0x1

    .line 316
    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isExpanded(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 317
    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemCount(I)I

    move-result v3

    add-int/2addr v2, v3

    if-ge p1, v2, :cond_1a

    sub-int/2addr v2, p1

    sub-int/2addr v3, v2

    return v3

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 328
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The adapter position is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public childItemViewType(II)I
    .registers 3

    const p1, 0x1312d00

    return p1
.end method

.method public final collapseParent(I)V
    .registers 4

    .line 73
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 74
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->mExpandItemArray:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 76
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->positionFromParentPosition(I)I

    move-result v0

    .line 77
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemCount(I)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    .line 78
    invoke-virtual {p0, v0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->notifyItemRangeRemoved(II)V

    :cond_19
    return-void
.end method

.method public abstract createChildHolder(Landroid/view/ViewGroup;I)Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public abstract createParentHolder(Landroid/view/ViewGroup;I)Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public final expandParent(I)V
    .registers 4

    .line 58
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isExpanded(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 59
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->mExpandItemArray:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 61
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->positionFromParentPosition(I)I

    move-result v0

    .line 62
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemCount(I)I

    move-result p1

    add-int/2addr v0, v1

    .line 63
    invoke-virtual {p0, v0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->notifyItemRangeInserted(II)V

    :cond_18
    return-void
.end method

.method public final getItemCount()I
    .registers 4

    .line 198
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    .line 200
    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 201
    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemCount(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    return v0
.end method

.method public final getItemViewType(I)I
    .registers 4

    .line 224
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemPosition(I)I

    move-result v0

    .line 225
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isParentItem(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 226
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemViewType(I)I

    move-result p1

    .line 227
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->mParentViewType:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->mParentViewType:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    return p1

    .line 230
    :cond_24
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemPosition(I)I

    move-result p1

    .line 231
    invoke-virtual {p0, v0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemViewType(II)I

    move-result p1

    return p1
.end method

.method public final isExpanded(I)Z
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->mExpandItemArray:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    return p1
.end method

.method public final isParentItem(I)Z
    .registers 7

    .line 264
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    if-ge v2, v0, :cond_1d

    if-ne v3, p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 272
    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isExpanded(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 273
    invoke-virtual {p0, v2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemCount(I)I

    move-result v4

    add-int/2addr v3, v4

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1d
    return v1
.end method

.method public final notifyChildChanged(II)V
    .registers 3

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->positionFromChildPosition(II)I

    move-result p1

    .line 121
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final notifyChildInserted(II)V
    .registers 3

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->positionFromChildPosition(II)I

    move-result p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public final notifyChildRemoved(II)V
    .registers 3

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->positionFromChildPosition(II)I

    move-result p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public final notifyParentChanged(I)V
    .registers 2

    .line 88
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->positionFromParentPosition(I)I

    move-result p1

    .line 89
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public final notifyParentInserted(I)V
    .registers 2

    .line 98
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->positionFromParentPosition(I)I

    move-result p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public final notifyParentRemoved(I)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->positionFromParentPosition(I)I

    move-result p1

    .line 110
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 446
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 447
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_16

    .line 448
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 449
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    .line 451
    new-instance v1, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$1;-><init>(Lcom/yanzhenjie/recyclerview/ExpandableAdapter;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_16
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 33
    check-cast p1, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->onBindViewHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .registers 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    check-cast p1, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->onBindViewHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public final onBindViewHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;I)V
    .registers 3
    .param p1    # Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public final onBindViewHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;ILjava/util/List;)V
    .registers 6
    .param p1    # Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 360
    invoke-virtual {p0, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemPosition(I)I

    move-result v0

    .line 361
    invoke-virtual {p0, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isParentItem(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 362
    invoke-virtual {p0, p1, v0, p3}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->bindParentHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;ILjava/util/List;)V

    goto :goto_15

    .line 364
    :cond_e
    invoke-virtual {p0, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemPosition(I)I

    move-result p2

    .line 365
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->bindChildHolder(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;IILjava/util/List;)V

    :goto_15
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
    .registers 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->mParentViewType:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->createParentHolder(Landroid/view/ViewGroup;I)Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;

    move-result-object p1

    return-object p1

    .line 335
    :cond_11
    invoke-virtual {p0, p1, p2}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->createChildHolder(Landroid/view/ViewGroup;I)Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    check-cast p1, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->onViewAttachedToWindow(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;)V
    .registers 3
    .param p1    # Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 464
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isParentItem(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 465
    iget-object p1, p1, Lcom/yanzhenjie/recyclerview/ExpandableAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 466
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_1a

    .line 467
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v0, 0x1

    .line 468
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_1a
    return-void
.end method

.method public abstract parentItemCount()I
.end method

.method public final parentItemPosition(I)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 289
    :goto_2
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->parentItemCount()I

    move-result v2

    if-ge v0, v2, :cond_1b

    add-int/lit8 v1, v1, 0x1

    .line 292
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->isExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 293
    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/ExpandableAdapter;->childItemCount(I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_15
    if-ge p1, v1, :cond_18

    return v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 301
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The adapter position is not a parent type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parentItemViewType(I)I
    .registers 2

    const p1, 0x989680

    return p1
.end method
