.class public Lcom/yanzhenjie/recyclerview/SwipeMenuItem;
.super Ljava/lang/Object;
.source "SwipeMenuItem.java"


# instance fields
.field private background:Landroid/graphics/drawable/Drawable;

.field private height:I

.field private icon:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private textAppearance:I

.field private textTypeface:Landroid/graphics/Typeface;

.field private title:Ljava/lang/String;

.field private titleColor:Landroid/content/res/ColorStateList;

.field private titleSize:I

.field private weight:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 44
    iput v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->width:I

    .line 45
    iput v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->height:I

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->weight:I

    .line 49
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->background:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 155
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->height:I

    return v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAppearance()I
    .registers 2

    .line 128
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->textAppearance:I

    return v0
.end method

.method public getTextSize()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->titleSize:I

    return v0
.end method

.method public getTextTypeface()Landroid/graphics/Typeface;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->textTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getTitleColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->titleColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getWeight()I
    .registers 2

    .line 164
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->weight:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 146
    iget v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->width:I

    return v0
.end method

.method public setBackground(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 53
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->background:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 66
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->background:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setBackgroundColorResource(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 62
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->setBackgroundColor(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setHeight(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;
    .registers 2

    .line 150
    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->height:I

    return-object p0
.end method

.method public setImage(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 75
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->setImage(Landroid/graphics/drawable/Drawable;)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setText(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 88
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->setText(Ljava/lang/String;)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/String;)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setTextAppearance(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 123
    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->textAppearance:I

    return-object p0
.end method

.method public setTextColor(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 105
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->titleColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public setTextColorResource(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 101
    iget-object v0, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->setTextColor(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setTextSize(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;
    .registers 2

    .line 114
    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->titleSize:I

    return-object p0
.end method

.method public setTextTypeface(Landroid/graphics/Typeface;)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->textTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method public setWeight(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;
    .registers 2

    .line 159
    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->weight:I

    return-object p0
.end method

.method public setWidth(I)Lcom/yanzhenjie/recyclerview/SwipeMenuItem;
    .registers 2

    .line 141
    iput p1, p0, Lcom/yanzhenjie/recyclerview/SwipeMenuItem;->width:I

    return-object p0
.end method
