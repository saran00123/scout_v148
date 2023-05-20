.class public Lcom/app/hubert/guide/core/GuideLayout;
.super Landroid/widget/FrameLayout;
.source "GuideLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/hubert/guide/core/GuideLayout$OnGuideLayoutDismissListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_BACKGROUND_COLOR:I = -0x4e000000


# instance fields
.field private controller:Lcom/app/hubert/guide/core/Controller;

.field private downX:F

.field private downY:F

.field public guidePage:Lcom/app/hubert/guide/model/GuidePage;

.field private listener:Lcom/app/hubert/guide/core/GuideLayout$OnGuideLayoutDismissListener;

.field private mPaint:Landroid/graphics/Paint;

.field private touchSlop:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/app/hubert/guide/model/GuidePage;Lcom/app/hubert/guide/core/Controller;)V
    .registers 4

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0}, Lcom/app/hubert/guide/core/GuideLayout;->init()V

    .line 53
    invoke-direct {p0, p2}, Lcom/app/hubert/guide/core/GuideLayout;->setGuidePage(Lcom/app/hubert/guide/model/GuidePage;)V

    .line 54
    iput-object p3, p0, Lcom/app/hubert/guide/core/GuideLayout;->controller:Lcom/app/hubert/guide/core/Controller;

    return-void
.end method

.method static synthetic access$000(Lcom/app/hubert/guide/core/GuideLayout;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/app/hubert/guide/core/GuideLayout;->dismiss()V

    return-void
.end method

.method private addCustomToLayout(Lcom/app/hubert/guide/model/GuidePage;)V
    .registers 10

    .line 196
    invoke-virtual {p0}, Lcom/app/hubert/guide/core/GuideLayout;->removeAllViews()V

    .line 197
    invoke-virtual {p1}, Lcom/app/hubert/guide/model/GuidePage;->getLayoutResId()I

    move-result v0

    if-eqz v0, :cond_65

    .line 199
    invoke-virtual {p0}, Lcom/app/hubert/guide/core/GuideLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 200
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 202
    invoke-virtual {p1}, Lcom/app/hubert/guide/model/GuidePage;->getClickToDismissIds()[I

    move-result-object v3

    if-eqz v3, :cond_57

    .line 203
    array-length v4, v3

    if-lez v4, :cond_57

    .line 204
    array-length v4, v3

    :goto_26
    if-ge v2, v4, :cond_57

    aget v5, v3, v2

    .line 205
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_39

    .line 207
    new-instance v5, Lcom/app/hubert/guide/core/GuideLayout$2;

    invoke-direct {v5, p0}, Lcom/app/hubert/guide/core/GuideLayout$2;-><init>(Lcom/app/hubert/guide/core/GuideLayout;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_54

    .line 214
    :cond_39
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t find the view by id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " which used to remove guide page"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NewbieGuide"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 218
    :cond_57
    invoke-virtual {p1}, Lcom/app/hubert/guide/model/GuidePage;->getOnLayoutInflatedListener()Lcom/app/hubert/guide/listener/OnLayoutInflatedListener;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 220
    iget-object v3, p0, Lcom/app/hubert/guide/core/GuideLayout;->controller:Lcom/app/hubert/guide/core/Controller;

    invoke-interface {v2, v0, v3}, Lcom/app/hubert/guide/listener/OnLayoutInflatedListener;->onLayoutInflated(Landroid/view/View;Lcom/app/hubert/guide/core/Controller;)V

    .line 222
    :cond_62
    invoke-virtual {p0, v0, v1}, Lcom/app/hubert/guide/core/GuideLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    :cond_65
    invoke-virtual {p1}, Lcom/app/hubert/guide/model/GuidePage;->getRelativeGuides()Ljava/util/List;

    move-result-object p1

    .line 225
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8d

    .line 226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_73
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/app/hubert/guide/model/RelativeGuide;

    .line 227
    invoke-virtual {p0}, Lcom/app/hubert/guide/core/GuideLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/app/hubert/guide/model/RelativeGuide;->getGuideLayout(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/app/hubert/guide/core/GuideLayout;->addView(Landroid/view/View;)V

    goto :goto_73

    :cond_8d
    return-void
.end method

.method private dismiss()V
    .registers 2

    .line 252
    invoke-virtual {p0}, Lcom/app/hubert/guide/core/GuideLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 253
    invoke-virtual {p0}, Lcom/app/hubert/guide/core/GuideLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 254
    iget-object v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->listener:Lcom/app/hubert/guide/core/GuideLayout$OnGuideLayoutDismissListener;

    if-eqz v0, :cond_16

    .line 255
    invoke-interface {v0, p0}, Lcom/app/hubert/guide/core/GuideLayout$OnGuideLayoutDismissListener;->onGuideLayoutDismiss(Lcom/app/hubert/guide/core/GuideLayout;)V

    :cond_16
    return-void
.end method

.method private drawHighlights(Landroid/graphics/Canvas;)V
    .registers 9

    .line 149
    iget-object v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->guidePage:Lcom/app/hubert/guide/model/GuidePage;

    invoke-virtual {v0}, Lcom/app/hubert/guide/model/GuidePage;->getHighLights()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 151
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_68

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/app/hubert/guide/model/HighLight;

    .line 152
    invoke-virtual {p0}, Lcom/app/hubert/guide/core/GuideLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-interface {v1, v2}, Lcom/app/hubert/guide/model/HighLight;->getRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v2

    .line 153
    sget-object v3, Lcom/app/hubert/guide/core/GuideLayout$4;->$SwitchMap$com$app$hubert$guide$model$HighLight$Shape:[I

    invoke-interface {v1}, Lcom/app/hubert/guide/model/HighLight;->getShape()Lcom/app/hubert/guide/model/HighLight$Shape;

    move-result-object v4

    invoke-virtual {v4}, Lcom/app/hubert/guide/model/HighLight$Shape;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_53

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4d

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3d

    .line 165
    iget-object v3, p0, Lcom/app/hubert/guide/core/GuideLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_64

    .line 161
    :cond_3d
    invoke-interface {v1}, Lcom/app/hubert/guide/model/HighLight;->getRound()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v1}, Lcom/app/hubert/guide/model/HighLight;->getRound()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/app/hubert/guide/core/GuideLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_64

    .line 158
    :cond_4d
    iget-object v3, p0, Lcom/app/hubert/guide/core/GuideLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_64

    .line 155
    :cond_53
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-interface {v1}, Lcom/app/hubert/guide/model/HighLight;->getRadius()F

    move-result v5

    iget-object v6, p0, Lcom/app/hubert/guide/core/GuideLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 168
    :goto_64
    invoke-direct {p0, p1, v1, v2}, Lcom/app/hubert/guide/core/GuideLayout;->notifyDrewListener(Landroid/graphics/Canvas;Lcom/app/hubert/guide/model/HighLight;Landroid/graphics/RectF;)V

    goto :goto_c

    :cond_68
    return-void
.end method

.method private init()V
    .registers 6

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->mPaint:Landroid/graphics/Paint;

    .line 67
    iget-object v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 68
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 69
    iget-object v2, p0, Lcom/app/hubert/guide/core/GuideLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 73
    iget-object v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-direct {v2, v4, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v1, v0}, Lcom/app/hubert/guide/core/GuideLayout;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Lcom/app/hubert/guide/core/GuideLayout;->setWillNotDraw(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/app/hubert/guide/core/GuideLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->touchSlop:I

    return-void
.end method

.method private notifyClickListener(Lcom/app/hubert/guide/model/HighLight;)V
    .registers 3

    .line 132
    invoke-interface {p1}, Lcom/app/hubert/guide/model/HighLight;->getOptions()Lcom/app/hubert/guide/model/HighlightOptions;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 134
    iget-object v0, p1, Lcom/app/hubert/guide/model/HighlightOptions;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_f

    .line 135
    iget-object p1, p1, Lcom/app/hubert/guide/model/HighlightOptions;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_f
    return-void
.end method

.method private notifyDrewListener(Landroid/graphics/Canvas;Lcom/app/hubert/guide/model/HighLight;Landroid/graphics/RectF;)V
    .registers 5

    .line 174
    invoke-interface {p2}, Lcom/app/hubert/guide/model/HighLight;->getOptions()Lcom/app/hubert/guide/model/HighlightOptions;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 176
    iget-object v0, p2, Lcom/app/hubert/guide/model/HighlightOptions;->onHighlightDrewListener:Lcom/app/hubert/guide/listener/OnHighlightDrewListener;

    if-eqz v0, :cond_f

    .line 177
    iget-object p2, p2, Lcom/app/hubert/guide/model/HighlightOptions;->onHighlightDrewListener:Lcom/app/hubert/guide/listener/OnHighlightDrewListener;

    invoke-interface {p2, p1, p3}, Lcom/app/hubert/guide/listener/OnHighlightDrewListener;->onHighlightDrew(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_f
    return-void
.end method

.method private setGuidePage(Lcom/app/hubert/guide/model/GuidePage;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/app/hubert/guide/core/GuideLayout;->guidePage:Lcom/app/hubert/guide/model/GuidePage;

    .line 85
    new-instance p1, Lcom/app/hubert/guide/core/GuideLayout$1;

    invoke-direct {p1, p0}, Lcom/app/hubert/guide/core/GuideLayout$1;-><init>(Lcom/app/hubert/guide/core/GuideLayout;)V

    invoke-virtual {p0, p1}, Lcom/app/hubert/guide/core/GuideLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .line 184
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 185
    iget-object v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->guidePage:Lcom/app/hubert/guide/model/GuidePage;

    invoke-direct {p0, v0}, Lcom/app/hubert/guide/core/GuideLayout;->addCustomToLayout(Lcom/app/hubert/guide/model/GuidePage;)V

    .line 186
    iget-object v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->guidePage:Lcom/app/hubert/guide/model/GuidePage;

    invoke-virtual {v0}, Lcom/app/hubert/guide/model/GuidePage;->getEnterAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 188
    invoke-virtual {p0, v0}, Lcom/app/hubert/guide/core/GuideLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_13
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 142
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 143
    iget-object v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->guidePage:Lcom/app/hubert/guide/model/GuidePage;

    invoke-virtual {v0}, Lcom/app/hubert/guide/model/GuidePage;->getBackgroundColor()I

    move-result v0

    if-nez v0, :cond_d

    const/high16 v0, -0x4e000000

    .line 144
    :cond_d
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 145
    invoke-direct {p0, p1}, Lcom/app/hubert/guide/core/GuideLayout;->drawHighlights(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_64

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_70

    const/4 v2, 0x3

    if-eq v0, v2, :cond_10

    goto :goto_70

    .line 112
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 114
    iget v3, p0, Lcom/app/hubert/guide/core/GuideLayout;->downX:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/app/hubert/guide/core/GuideLayout;->touchSlop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_70

    iget v3, p0, Lcom/app/hubert/guide/core/GuideLayout;->downY:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/app/hubert/guide/core/GuideLayout;->touchSlop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_70

    .line 115
    iget-object v3, p0, Lcom/app/hubert/guide/core/GuideLayout;->guidePage:Lcom/app/hubert/guide/model/GuidePage;

    invoke-virtual {v3}, Lcom/app/hubert/guide/model/GuidePage;->getHighLights()Ljava/util/List;

    move-result-object v3

    .line 116
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/app/hubert/guide/model/HighLight;

    .line 117
    invoke-virtual {p0}, Lcom/app/hubert/guide/core/GuideLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-interface {v4, v5}, Lcom/app/hubert/guide/model/HighLight;->getRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v5

    .line 118
    invoke-virtual {v5, v0, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 119
    invoke-direct {p0, v4}, Lcom/app/hubert/guide/core/GuideLayout;->notifyClickListener(Lcom/app/hubert/guide/model/HighLight;)V

    return v1

    .line 123
    :cond_60
    invoke-virtual {p0}, Lcom/app/hubert/guide/core/GuideLayout;->performClick()Z

    goto :goto_70

    .line 105
    :cond_64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->downX:F

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->downY:F

    .line 128
    :cond_70
    :goto_70
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .registers 2

    .line 97
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public remove()V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/app/hubert/guide/core/GuideLayout;->guidePage:Lcom/app/hubert/guide/model/GuidePage;

    invoke-virtual {v0}, Lcom/app/hubert/guide/model/GuidePage;->getExitAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 239
    new-instance v1, Lcom/app/hubert/guide/core/GuideLayout$3;

    invoke-direct {v1, p0}, Lcom/app/hubert/guide/core/GuideLayout$3;-><init>(Lcom/app/hubert/guide/core/GuideLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 245
    invoke-virtual {p0, v0}, Lcom/app/hubert/guide/core/GuideLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_17

    .line 247
    :cond_14
    invoke-direct {p0}, Lcom/app/hubert/guide/core/GuideLayout;->dismiss()V

    :goto_17
    return-void
.end method

.method public setOnGuideLayoutDismissListener(Lcom/app/hubert/guide/core/GuideLayout$OnGuideLayoutDismissListener;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/app/hubert/guide/core/GuideLayout;->listener:Lcom/app/hubert/guide/core/GuideLayout$OnGuideLayoutDismissListener;

    return-void
.end method
