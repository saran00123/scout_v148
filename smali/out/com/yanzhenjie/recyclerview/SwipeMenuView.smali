.class public Lcom/yanzhenjie/recyclerview/SwipeMenuView;
.super Landroid/widget/LinearLayout;
.source "SwipeMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mItemClickListener:Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;

.field private mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x10

    .line 54
    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->setGravity(I)V

    return-void
.end method

.method private createIcon(Lcom/yanzhenjie/recyclerview/SwipeMenuItem;)Landroid/widget/ImageView;
    .registers 4

    .line 102
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private createTitle(Lcom/yanzhenjie/recyclerview/SwipeMenuItem;)Landroid/widget/TextView;
    .registers 5

    .line 108
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 111
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->getTextSize()I

    move-result v1

    if-lez v1, :cond_20

    const/4 v2, 0x2

    int-to-float v1, v1

    .line 112
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 113
    :cond_20
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->getTitleColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 115
    :cond_29
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->getTextAppearance()I

    move-result v1

    if-eqz v1, :cond_32

    .line 116
    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 117
    :cond_32
    invoke-virtual {p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->getTextTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 118
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3b
    return-object v0
.end method


# virtual methods
.method public createMenu(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/yanzhenjie/recyclerview/SwipeMenu;Lcom/yanzhenjie/recyclerview/Controller;ILcom/yanzhenjie/recyclerview/OnItemMenuClickListener;)V
    .registers 9

    .line 59
    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->removeAllViews()V

    .line 61
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 62
    iput-object p5, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->mItemClickListener:Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;

    .line 64
    invoke-virtual {p2}, Lcom/yanzhenjie/recyclerview/SwipeMenu;->getMenuItems()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 65
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p5

    if-ge p2, p5, :cond_7a

    .line 66
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;

    .line 68
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p5}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->getWidth()I

    move-result v1

    invoke-virtual {p5}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    invoke-virtual {p5}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->getWeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 70
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setId(I)V

    const/16 v2, 0x11

    .line 72
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 v2, 0x1

    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 74
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-virtual {p5}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0, v1}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->addView(Landroid/view/View;)V

    .line 79
    new-instance v0, Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;

    invoke-direct {v0, p3, p4, p2}, Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;-><init>(Lcom/yanzhenjie/recyclerview/Controller;II)V

    .line 80
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p5}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 83
    invoke-direct {p0, p5}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->createIcon(Lcom/yanzhenjie/recyclerview/SwipeMenuItem;)Landroid/widget/ImageView;

    move-result-object v0

    .line 84
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    :cond_66
    invoke-virtual {p5}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 88
    invoke-direct {p0, p5}, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->createTitle(Lcom/yanzhenjie/recyclerview/SwipeMenuItem;)Landroid/widget/TextView;

    move-result-object p5

    .line 89
    invoke-virtual {v1, p5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_77
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_7a
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->mItemClickListener:Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;

    if-eqz v0, :cond_13

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;

    iget-object v1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuView;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/yanzhenjie/recyclerview/OnItemMenuClickListener;->onItemClick(Lcom/yanzhenjie/recyclerview/SwipeMenuBridge;I)V

    :cond_13
    return-void
.end method
