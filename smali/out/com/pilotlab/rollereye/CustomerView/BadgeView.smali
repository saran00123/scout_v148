.class public Lcom/pilotlab/rollereye/CustomerView/BadgeView;
.super Landroid/view/View;
.source "BadgeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/CustomerView/BadgeView$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BadgeView"


# instance fields
.field private badgeColor:I

.field private bottomMargin:I

.field private density:F

.field private h:I

.field private isCenterVertical:Z

.field private isOverlap:Z

.field private isSetup:Z

.field private leftMargin:I

.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mIgnoreTargetPadding:Z

.field private mTextPaint:Landroid/graphics/Paint;

.field private number:I

.field private final rect:Landroid/graphics/RectF;

.field private rightMargin:I

.field private text:Ljava/lang/String;

.field private textColor:I

.field private textSize:F

.field private topMargin:I

.field private type:I

.field private w:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 72
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string p1, "0"

    .line 44
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->text:Ljava/lang/String;

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->type:I

    .line 50
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->rect:Landroid/graphics/RectF;

    const p1, -0x2ccde5

    .line 51
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->badgeColor:I

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->textColor:I

    return-void
.end method

.method private getTextHeight(Ljava/lang/String;Landroid/graphics/Paint;)F
    .registers 6

    .line 394
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 395
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v1, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 396
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method private getTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)F
    .registers 5

    .line 390
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p1

    return p1
.end method

.method private init(IZ)V
    .registers 4

    .line 76
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->type:I

    .line 77
    iput-boolean p2, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->isOverlap:Z

    .line 78
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->density:F

    const/4 p2, 0x1

    if-eqz p1, :cond_77

    if-eq p1, p2, :cond_17

    goto/16 :goto_9e

    .line 90
    :cond_17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 91
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 93
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->badgeColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    .line 96
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 98
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->textColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->textSize:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_5d

    .line 100
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->density:F

    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_62

    .line 102
    :cond_5d
    iget-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    :goto_62
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    const-string p2, "99"

    invoke-direct {p0, p2, p1}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->getTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result p1

    const p2, 0x3fb33333    # 1.4f

    mul-float/2addr p1, p2

    .line 106
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->h:I

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->w:I

    goto :goto_9e

    .line 82
    :cond_77
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 83
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 85
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mBackgroundPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->badgeColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->density:F

    const/high16 p2, 0x40e00000    # 7.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->h:I

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->w:I

    :goto_9e
    return-void
.end method


# virtual methods
.method public bindToTargetView(Landroid/view/View;)V
    .registers 10

    .line 291
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->type:I

    iget-boolean v1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->isOverlap:Z

    invoke-direct {p0, v0, v1}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->init(IZ)V

    .line 292
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 293
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_16
    if-nez p1, :cond_19

    return-void

    .line 298
    :cond_19
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_e6

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 301
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 302
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 304
    iget-boolean v3, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->isOverlap:Z

    const/16 v4, 0x10

    const/4 v5, -0x2

    if-eqz v3, :cond_85

    .line 305
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 307
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    invoke-virtual {v0, v3, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 313
    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 314
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 316
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 317
    iget-boolean v2, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->isCenterVertical:Z

    if-eqz v2, :cond_64

    .line 318
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_69

    :cond_64
    const v2, 0x800035

    .line 320
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 322
    :goto_69
    iget-boolean v2, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mIgnoreTargetPadding:Z

    if-eqz v2, :cond_81

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->w:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->h:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 328
    :cond_81
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b0

    .line 332
    :cond_85
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 333
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 334
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 335
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    invoke-virtual {v0, v3, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 342
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 344
    iget-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->isCenterVertical:Z

    if-eqz p1, :cond_b0

    .line 345
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 348
    :cond_b0
    :goto_b0
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->leftMargin:I

    const/4 v0, 0x1

    if-gtz p1, :cond_c4

    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->topMargin:I

    if-gtz p1, :cond_c4

    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->rightMargin:I

    if-gtz p1, :cond_c4

    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->bottomMargin:I

    if-lez p1, :cond_c2

    goto :goto_c4

    :cond_c2
    move p1, v1

    goto :goto_c5

    :cond_c4
    :goto_c4
    move p1, v0

    :goto_c5
    if-eqz p1, :cond_e3

    .line 349
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_e3

    .line 350
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 351
    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->leftMargin:I

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->topMargin:I

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->rightMargin:I

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->bottomMargin:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 352
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    :cond_e3
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->isSetup:Z

    goto :goto_ec

    .line 355
    :cond_e6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_f0

    .line 358
    :goto_ec
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->setVisibility(I)V

    return-void

    .line 356
    :cond_f0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "\u76ee\u6807View\u4e0d\u80fd\u6ca1\u6709\u7236\u5e03\u5c40!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bindToTargetView(Lcom/google/android/material/tabs/TabLayout;I)V
    .registers 6

    .line 258
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 262
    :try_start_6
    const-class v1, Lcom/google/android/material/tabs/TabLayout$Tab;

    const-string v2, "mView"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 263
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 264
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_17} :catch_19

    move-object v0, p1

    goto :goto_1e

    :catch_19
    move-exception p1

    .line 267
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :goto_1e
    if-eqz p1, :cond_39

    .line 272
    :try_start_20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mTextView"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 273
    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 274
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_33} :catch_35

    move-object v0, p1

    goto :goto_39

    :catch_35
    move-exception p1

    .line 277
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_39
    :goto_39
    if-eqz v0, :cond_3e

    .line 280
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->bindToTargetView(Landroid/view/View;)V

    :cond_3e
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 374
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 376
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 377
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 378
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 379
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 380
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 382
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5f

    .line 383
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->getTextWidth(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v0

    .line 384
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v1, v2}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->getTextHeight(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result v1

    .line 385
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->text:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 364
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->w:I

    if-lez p1, :cond_c

    iget p2, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->h:I

    if-lez p2, :cond_c

    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->setMeasuredDimension(II)V

    return-void

    .line 367
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u5982\u679c\u4f60\u81ea\u5b9a\u4e49\u4e86\u5c0f\u7ea2\u70b9\u7684\u5bbd\u9ad8,\u5c31\u4e0d\u80fd\u8bbe\u7f6e\u5176\u5bbd\u9ad8\u5c0f\u4e8e0 ,\u5426\u5219\u8bf7\u4e0d\u8981\u8bbe\u7f6e!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBadgeCenterVertical()Lcom/pilotlab/rollereye/CustomerView/BadgeView;
    .registers 2

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->isCenterVertical:Z

    return-object p0
.end method

.method public setBadgeColor(I)Lcom/pilotlab/rollereye/CustomerView/BadgeView;
    .registers 2

    .line 212
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->badgeColor:I

    return-object p0
.end method

.method public setBadgeEnable(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_5

    :cond_4
    const/4 p1, 0x4

    .line 235
    :goto_5
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->setVisibility(I)V

    return-void
.end method

.method public setBadgeMargins(IIII)Lcom/pilotlab/rollereye/CustomerView/BadgeView;
    .registers 5

    .line 121
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->leftMargin:I

    .line 122
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->topMargin:I

    .line 123
    iput p3, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->rightMargin:I

    .line 124
    iput p4, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->bottomMargin:I

    return-object p0
.end method

.method public setBadgeNumber(I)V
    .registers 3

    .line 245
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->number:I

    .line 246
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->text:Ljava/lang/String;

    .line 247
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->isSetup:Z

    if-eqz v0, :cond_1a

    if-nez p1, :cond_13

    const/4 p1, 0x4

    .line 249
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->setVisibility(I)V

    goto :goto_17

    :cond_13
    const/4 p1, 0x0

    .line 251
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->setVisibility(I)V

    .line 253
    :goto_17
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->invalidate()V

    :cond_1a
    return-void
.end method

.method public setBadgeOverlap(Z)Lcom/pilotlab/rollereye/CustomerView/BadgeView;
    .registers 3

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->setBadgeOverlap(ZZ)Lcom/pilotlab/rollereye/CustomerView/BadgeView;

    move-result-object p1

    return-object p1
.end method

.method public setBadgeOverlap(ZZ)Lcom/pilotlab/rollereye/CustomerView/BadgeView;
    .registers 3

    .line 197
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->isOverlap:Z

    .line 198
    iput-boolean p2, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->mIgnoreTargetPadding:Z

    if-nez p1, :cond_f

    if-eqz p2, :cond_f

    const-string p1, "BadgeView"

    const-string p2, "\u8b66\u544a:\u53ea\u6709\u91cd\u53e0\u6a21\u5f0fisOverlap=true \u8bbe\u7f6emIgnoreTargetPadding\u624d\u6709\u610f\u4e49"

    .line 200
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-object p0
.end method

.method public setBadgeSize(II)Lcom/pilotlab/rollereye/CustomerView/BadgeView;
    .registers 3

    .line 224
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->w:I

    .line 225
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->h:I

    return-object p0
.end method

.method public setBadgeTextColor(I)Lcom/pilotlab/rollereye/CustomerView/BadgeView;
    .registers 2

    .line 175
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->textColor:I

    return-object p0
.end method

.method public setBadgeTextSize(I)Lcom/pilotlab/rollereye/CustomerView/BadgeView;
    .registers 4

    .line 156
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    .line 159
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_f

    .line 161
    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_f
    const/4 v1, 0x2

    int-to-float p1, p1

    .line 163
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->textSize:F

    return-object p0
.end method

.method public setBadgeType(I)Lcom/pilotlab/rollereye/CustomerView/BadgeView;
    .registers 2

    .line 145
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/BadgeView;->type:I

    return-object p0
.end method
