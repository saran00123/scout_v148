.class public Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DividerGridItemDecoration.java"


# static fields
.field private static final ATTRS:[I


# instance fields
.field private difViewTypePosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    .line 23
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010214

    aput v2, v0, v1

    sput-object v0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mDividerHeight:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->difViewTypePosition:Ljava/util/List;

    .line 30
    sget-object v0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->ATTRS:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mDividerHeight:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->difViewTypePosition:Ljava/util/List;

    .line 42
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 43
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mDividerHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    .line 53
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mDividerHeight:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->difViewTypePosition:Ljava/util/List;

    .line 54
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mDividerHeight:I

    .line 55
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mPaint:Landroid/graphics/Paint;

    .line 56
    iget-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private getSpanCount(Landroidx/recyclerview/widget/RecyclerView;)I
    .registers 3

    .line 69
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 70
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_f

    .line 71
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_1b

    .line 72
    :cond_f
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1a

    .line 73
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_1b

    :cond_1a
    const/4 p1, -0x1

    :goto_1b
    return p1
.end method

.method private getSpanSize(Landroidx/recyclerview/widget/RecyclerView;I)I
    .registers 4

    .line 80
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 81
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_13

    .line 82
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p1

    goto :goto_14

    :cond_13
    const/4 p1, -0x1

    :goto_14
    return p1
.end method

.method private isLastColum(Landroidx/recyclerview/widget/RecyclerView;III)Z
    .registers 7

    .line 132
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 133
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    add-int/2addr p2, v1

    .line 134
    rem-int/2addr p2, p3

    if-nez p2, :cond_25

    return v1

    .line 138
    :cond_e
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_25

    .line 139
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p1

    if-ne p1, v1, :cond_1f

    add-int/2addr p2, v1

    .line 141
    rem-int/2addr p2, p3

    if-nez p2, :cond_25

    return v1

    .line 146
    :cond_1f
    rem-int p1, p4, p3

    sub-int/2addr p4, p1

    if-lt p2, p4, :cond_25

    return v1

    :cond_25
    const/4 p1, 0x0

    return p1
.end method

.method private isLastRaw(Landroidx/recyclerview/widget/RecyclerView;III)Z
    .registers 7

    .line 156
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 157
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 158
    rem-int p1, p4, p3

    sub-int/2addr p4, p1

    if-lt p2, p4, :cond_26

    return v1

    .line 161
    :cond_f
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_26

    .line 162
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p1

    if-ne p1, v1, :cond_21

    .line 165
    rem-int p1, p4, p3

    sub-int/2addr p4, p1

    if-lt p2, p4, :cond_26

    return v1

    :cond_21
    add-int/2addr p2, v1

    .line 173
    rem-int/2addr p2, p3

    if-nez p2, :cond_26

    return v1

    :cond_26
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 16

    .line 89
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_47

    .line 91
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 93
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    .line 94
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    iget v6, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mDividerHeight:I

    add-int/2addr v5, v6

    .line 95
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 96
    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mDividerHeight:I

    add-int/2addr v3, v2

    .line 99
    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_38

    .line 100
    invoke-virtual {v6, v4, v2, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 101
    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 104
    :cond_38
    iget-object v12, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mPaint:Landroid/graphics/Paint;

    if-eqz v12, :cond_44

    int-to-float v8, v4

    int-to-float v9, v2

    int-to-float v10, v5

    int-to-float v11, v3

    move-object v7, p1

    .line 105
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_47
    return-void
.end method

.method public drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 16

    .line 112
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_44

    .line 114
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 115
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 116
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    .line 117
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 118
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, v3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    .line 119
    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mDividerHeight:I

    add-int/2addr v3, v2

    .line 120
    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_35

    .line 121
    invoke-virtual {v6, v2, v4, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    :cond_35
    iget-object v12, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mPaint:Landroid/graphics/Paint;

    if-eqz v12, :cond_41

    int-to-float v8, v2

    int-to-float v9, v4

    int-to-float v10, v3

    int-to-float v11, v5

    move-object v7, p1

    .line 125
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_44
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;ILandroidx/recyclerview/widget/RecyclerView;)V
    .registers 11

    .line 186
    invoke-direct {p0, p3}, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->getSpanCount(Landroidx/recyclerview/widget/RecyclerView;)I

    move-result v0

    .line 187
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_f

    return-void

    .line 192
    :cond_f
    invoke-direct {p0, p3, p2}, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->getSpanSize(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_30

    .line 197
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 198
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->difViewTypePosition:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 199
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->difViewTypePosition:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    return-void

    :cond_30
    move v2, v4

    move v5, v2

    .line 205
    :goto_32
    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->difViewTypePosition:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4d

    .line 206
    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->difViewTypePosition:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le p2, v6, :cond_4a

    add-int/2addr v5, v0

    sub-int/2addr v5, v3

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_4d
    add-int/2addr p2, v5

    add-int/2addr v1, v5

    .line 213
    invoke-direct {p0, p3, p2, v0, v1}, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->isLastRaw(Landroidx/recyclerview/widget/RecyclerView;III)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 215
    iget p2, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mDividerHeight:I

    invoke-virtual {p1, v4, v4, p2, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6c

    .line 216
    :cond_5b
    invoke-direct {p0, p3, p2, v0, v1}, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->isLastColum(Landroidx/recyclerview/widget/RecyclerView;III)Z

    move-result p2

    if-eqz p2, :cond_67

    .line 218
    iget p2, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mDividerHeight:I

    invoke-virtual {p1, v4, v4, v4, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6c

    .line 220
    :cond_67
    iget p2, p0, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->mDividerHeight:I

    invoke-virtual {p1, v4, v4, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_6c
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 4

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
