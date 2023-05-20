.class Lcom/yanzhenjie/recyclerview/AdapterWrapper;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yanzhenjie/recyclerview/AdapterWrapper$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_ITEM_TYPE_FOOTER:I = 0x30d40

.field private static final BASE_ITEM_TYPE_HEADER:I = 0x186a0


# instance fields
.field private mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private mFootViews:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnItemClickListener:Lcom/yanzhenjie/recyclerview/OnItemClickListener;

.field private mOnItemLongClickListener:Lcom/yanzhenjie/recyclerview/OnItemLongClickListener;

.field private mOnItemMenuClickListener:Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;

.field private mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/SwipeMenuCreator;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    .line 46
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mFootViews:Landroidx/collection/SparseArrayCompat;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 58
    iput-object p2, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method static synthetic access$000(Lcom/yanzhenjie/recyclerview/AdapterWrapper;)Lcom/yanzhenjie/recyclerview/OnItemClickListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mOnItemClickListener:Lcom/yanzhenjie/recyclerview/OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yanzhenjie/recyclerview/AdapterWrapper;)Lcom/yanzhenjie/recyclerview/OnItemLongClickListener;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mOnItemLongClickListener:Lcom/yanzhenjie/recyclerview/OnItemLongClickListener;

    return-object p0
.end method

.method private getContentItemCount()I
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method private getSupperClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 158
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 159
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 160
    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getSupperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    :cond_12
    return-object p1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .registers 5

    .line 272
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mFootViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getFooterCount()I

    move-result v1

    const v2, 0x30d40

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public addFooterViewAndNotify(Landroid/view/View;)V
    .registers 3

    .line 276
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->addFooterView(Landroid/view/View;)V

    .line 277
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getHeaderCount()I

    move-result p1

    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getContentItemCount()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getFooterCount()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->notifyItemInserted(I)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 5

    .line 255
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getHeaderCount()I

    move-result v1

    const v2, 0x186a0

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public addHeaderViewAndNotify(Landroid/view/View;)V
    .registers 2

    .line 259
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->addHeaderView(Landroid/view/View;)V

    .line 260
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getHeaderCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->notifyItemInserted(I)V

    return-void
.end method

.method public getFooterCount()I
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mFootViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderCount()I
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .registers 3

    .line 93
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getHeaderCount()I

    move-result v0

    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getContentItemCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getFooterCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 310
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->isHeaderOrFooter(I)Z

    move-result v0

    if-eqz v0, :cond_b

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    int-to-long v0, p1

    return-wide v0

    .line 314
    :cond_b
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getHeaderCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 315
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 102
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 103
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    .line 104
    :cond_d
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->isFooter(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 105
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mFootViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getHeaderCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getContentItemCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result p1

    return p1

    .line 107
    :cond_24
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getHeaderCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getOriginAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public isFooter(I)Z
    .registers 4

    .line 251
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getHeaderCount()I

    move-result v0

    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getContentItemCount()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method public isHeader(I)Z
    .registers 3

    if-ltz p1, :cond_a

    .line 247
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getHeaderCount()I

    move-result v0

    if-ge p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public isHeaderOrFooter(I)Z
    .registers 3

    .line 243
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->isHeader(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->isFooter(I)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public isHeaderOrFooter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    .line 237
    instance-of v0, p1, Lcom/yanzhenjie/recyclerview/AdapterWrapper$ViewHolder;

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    return p1

    .line 239
    :cond_6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->isHeaderOrFooter(I)Z

    move-result p1

    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 205
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 207
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 208
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_1b

    .line 209
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 210
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    .line 212
    new-instance v1, Lcom/yanzhenjie/recyclerview/AdapterWrapper$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper$3;-><init>(Lcom/yanzhenjie/recyclerview/AdapterWrapper;Landroidx/recyclerview/widget/GridLayoutManager;Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_1b
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .registers 12
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->isHeaderOrFooter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 174
    :cond_7
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 175
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getHeaderCount()I

    move-result v1

    sub-int/2addr p2, v1

    .line 177
    instance-of v1, v0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/SwipeMenuCreator;

    if-eqz v1, :cond_74

    .line 178
    check-cast v0, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;

    .line 179
    new-instance v4, Lcom/yanzhenjie/recyclerview/SwipeMenu;

    invoke-direct {v4, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenu;-><init>(Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;)V

    .line 180
    new-instance v1, Lcom/yanzhenjie/recyclerview/SwipeMenu;

    invoke-direct {v1, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenu;-><init>(Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;)V

    .line 181
    iget-object v2, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/SwipeMenuCreator;

    invoke-interface {v2, v4, v1, p2}, Lcom/yanzhenjie/recyclerview/SwipeMenuCreator;->onCreateMenu(Lcom/yanzhenjie/recyclerview/SwipeMenu;Lcom/yanzhenjie/recyclerview/SwipeMenu;I)V

    const/4 v2, 0x0

    .line 183
    invoke-virtual {v0, v2}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yanzhenjie/recyclerview/SwipeMenuView;

    .line 184
    invoke-virtual {v4}, Lcom/yanzhenjie/recyclerview/SwipeMenu;->hasMenuItems()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 185
    invoke-virtual {v4}, Lcom/yanzhenjie/recyclerview/SwipeMenu;->getOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->setOrientation(I)V

    const/4 v6, 0x1

    .line 186
    iget-object v7, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mOnItemMenuClickListener:Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;

    move-object v3, p1

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->createMenu(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yanzhenjie/recyclerview/SwipeMenu;Lcom/yanzhenjie/recyclerview/Controller;ILcom/yanzhenjie/recyclerview/OnItemMenuClickListener;)V

    goto :goto_4d

    .line 187
    :cond_44
    invoke-virtual {v2}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_4d

    .line 188
    invoke-virtual {v2}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->removeAllViews()V

    :cond_4d
    :goto_4d
    const/4 v2, 0x2

    .line 191
    invoke-virtual {v0, v2}, Lcom/yanzhenjie/recyclerview/SwipeMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/yanzhenjie/recyclerview/SwipeMenuView;

    .line 192
    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/SwipeMenu;->hasMenuItems()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 193
    invoke-virtual {v1}, Lcom/yanzhenjie/recyclerview/SwipeMenu;->getOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->setOrientation(I)V

    const/4 v6, -0x1

    .line 194
    iget-object v7, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mOnItemMenuClickListener:Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;

    move-object v3, p1

    move-object v4, v1

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->createMenu(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yanzhenjie/recyclerview/SwipeMenu;Lcom/yanzhenjie/recyclerview/Controller;ILcom/yanzhenjie/recyclerview/OnItemMenuClickListener;)V

    goto :goto_74

    .line 195
    :cond_6b
    invoke-virtual {v2}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_74

    .line 196
    invoke-virtual {v2}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->removeAllViews()V

    .line 200
    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_10

    .line 115
    new-instance p1, Lcom/yanzhenjie/recyclerview/AdapterWrapper$ViewHolder;

    invoke-direct {p1, v0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 118
    :cond_10
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mFootViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_20

    .line 120
    new-instance p1, Lcom/yanzhenjie/recyclerview/AdapterWrapper$ViewHolder;

    invoke-direct {p1, v0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 123
    :cond_20
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    .line 124
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mOnItemClickListener:Lcom/yanzhenjie/recyclerview/OnItemClickListener;

    if-eqz v0, :cond_34

    .line 125
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/yanzhenjie/recyclerview/AdapterWrapper$1;

    invoke-direct {v1, p0, p2}, Lcom/yanzhenjie/recyclerview/AdapterWrapper$1;-><init>(Lcom/yanzhenjie/recyclerview/AdapterWrapper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_34
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mOnItemLongClickListener:Lcom/yanzhenjie/recyclerview/OnItemLongClickListener;

    if-eqz v0, :cond_42

    .line 133
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/yanzhenjie/recyclerview/AdapterWrapper$2;

    invoke-direct {v1, p0, p2}, Lcom/yanzhenjie/recyclerview/AdapterWrapper$2;-><init>(Lcom/yanzhenjie/recyclerview/AdapterWrapper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 142
    :cond_42
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/SwipeMenuCreator;

    if-nez v0, :cond_47

    return-object p2

    .line 144
    :cond_47
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/yanzhenjie/recyclerview/x/R$layout;->x_recycler_view_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 145
    sget v0, Lcom/yanzhenjie/recyclerview/x/R$id;->swipe_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 146
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    :try_start_5d
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getSupperClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "itemView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_75

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 151
    :cond_75
    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_78} :catch_78

    :catch_78
    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 346
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 325
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->isHeaderOrFooter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 225
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->isHeaderOrFooter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 226
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 227
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v0, :cond_1c

    .line 228
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 v0, 0x1

    .line 229
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    goto :goto_1c

    .line 232
    :cond_17
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 331
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->isHeaderOrFooter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_b
    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 320
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->isHeaderOrFooter(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_b
    return-void
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .registers 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 336
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public removeFooterViewAndNotify(Landroid/view/View;)V
    .registers 4

    .line 281
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mFootViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    return-void

    .line 284
    :cond_a
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mFootViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 285
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getHeaderCount()I

    move-result v0

    invoke-direct {p0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->getContentItemCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->notifyItemRemoved(I)V

    return-void
.end method

.method public removeHeaderViewAndNotify(Landroid/view/View;)V
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    return-void

    .line 267
    :cond_a
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->removeAt(I)V

    .line 268
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->notifyItemRemoved(I)V

    return-void
.end method

.method public final setHasStableIds(Z)V
    .registers 2

    .line 305
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method setOnItemClickListener(Lcom/yanzhenjie/recyclerview/OnItemClickListener;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mOnItemClickListener:Lcom/yanzhenjie/recyclerview/OnItemClickListener;

    return-void
.end method

.method setOnItemLongClickListener(Lcom/yanzhenjie/recyclerview/OnItemLongClickListener;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mOnItemLongClickListener:Lcom/yanzhenjie/recyclerview/OnItemLongClickListener;

    return-void
.end method

.method setOnItemMenuClickListener(Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mOnItemMenuClickListener:Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;

    return-void
.end method

.method setSwipeMenuCreator(Lcom/yanzhenjie/recyclerview/SwipeMenuCreator;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/AdapterWrapper;->mSwipeMenuCreator:Lcom/yanzhenjie/recyclerview/SwipeMenuCreator;

    return-void
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V
    .registers 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 341
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method
