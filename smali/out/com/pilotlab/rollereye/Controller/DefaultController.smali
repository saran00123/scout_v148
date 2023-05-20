.class public Lcom/pilotlab/rollereye/Controller/DefaultController;
.super Ljava/lang/Object;
.source "DefaultController.java"

# interfaces
.implements Lcom/pilotlab/rollereye/Controller/IJoystickController;


# instance fields
.field private containerView:Landroid/widget/RelativeLayout;

.field private ctx:Landroid/content/Context;

.field private leftControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

.field private midControlTouchView:Landroid/view/View;

.field private padStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

.field private rightControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .registers 4

    .line 34
    sget-object v0, Lcom/pilotlab/rollereye/Bean/PadStyle;->FIXED:Lcom/pilotlab/rollereye/Bean/PadStyle;

    invoke-direct {p0, p1, p2, v0}, Lcom/pilotlab/rollereye/Controller/DefaultController;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/pilotlab/rollereye/Bean/PadStyle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/pilotlab/rollereye/Bean/PadStyle;)V
    .registers 5

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/pilotlab/rollereye/Bean/PadStyle;->FIXED:Lcom/pilotlab/rollereye/Bean/PadStyle;

    iput-object v0, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->padStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

    .line 38
    iput-object p1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->containerView:Landroid/widget/RelativeLayout;

    .line 40
    iput-object p3, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->padStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

    return-void
.end method

.method private createLeftControlTouchView()V
    .registers 10

    .line 67
    new-instance v0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;

    const v1, 0x7f08022b

    const v2, 0x7f08022a

    invoke-direct {v0, v1, v2}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;-><init>(II)V

    .line 70
    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07025b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    .line 71
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07025a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 70
    invoke-virtual {v0, v1, v3}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->setWholeViewSize(FF)V

    .line 72
    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070258

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    .line 73
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 72
    invoke-virtual {v0, v1, v3}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->setPadSize(FF)V

    .line 74
    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070259

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-double v5, v1

    const-wide/high16 v7, 0x400c000000000000L    # 3.5

    div-double/2addr v5, v7

    double-to-int v3, v5

    .line 75
    invoke-virtual {v0, v1, v3}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->setContentSize(II)V

    const v1, 0x7f080229

    .line 76
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->setDirectionPicResId(I)V

    .line 77
    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->padStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

    sget-object v3, Lcom/pilotlab/rollereye/Bean/PadLocationType;->LEFT_BOT:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    invoke-virtual {v0, v1, v3}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->setStyle(Lcom/pilotlab/rollereye/Bean/PadStyle;Lcom/pilotlab/rollereye/Bean/PadLocationType;)V

    .line 78
    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070257

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->setRoundBgPadding(I)V

    .line 80
    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/TouchView;

    iget-object v3, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/pilotlab/rollereye/CustomerView/TouchView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->leftControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    .line 81
    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->leftControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->init(Lcom/pilotlab/rollereye/Bean/TouchViewModel;)V

    .line 84
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    .line 85
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    .line 86
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 90
    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07025e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07025c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 91
    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->leftControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createMidControlTouchView()V
    .registers 4

    .line 105
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->midControlTouchView:Landroid/view/View;

    .line 106
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    .line 107
    invoke-static {v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getWidthInPx(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    .line 108
    invoke-static {v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getHeightInPx(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xb

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 110
    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->midControlTouchView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private createRightControlTouchView()V
    .registers 10

    .line 116
    new-instance v0, Lcom/pilotlab/rollereye/Bean/TouchViewModel;

    const v1, 0x7f08022d

    const v2, 0x7f08022a

    invoke-direct {v0, v1, v2}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;-><init>(II)V

    .line 119
    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07025b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    .line 120
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07025a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 119
    invoke-virtual {v0, v1, v3}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->setWholeViewSize(FF)V

    .line 121
    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070258

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v5, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    .line 122
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 121
    invoke-virtual {v0, v1, v3}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->setPadSize(FF)V

    .line 123
    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070259

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-double v5, v1

    const-wide/high16 v7, 0x400c000000000000L    # 3.5

    div-double/2addr v5, v7

    double-to-int v3, v5

    .line 124
    invoke-virtual {v0, v1, v3}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->setContentSize(II)V

    const v1, 0x7f080229

    .line 125
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->setDirectionPicResId(I)V

    .line 126
    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->padStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

    sget-object v3, Lcom/pilotlab/rollereye/Bean/PadLocationType;->RIGHT_BOT:Lcom/pilotlab/rollereye/Bean/PadLocationType;

    invoke-virtual {v0, v1, v3}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->setStyle(Lcom/pilotlab/rollereye/Bean/PadStyle;Lcom/pilotlab/rollereye/Bean/PadLocationType;)V

    .line 128
    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070257

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->setRoundBgPadding(I)V

    .line 129
    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/TouchView;

    iget-object v3, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/pilotlab/rollereye/CustomerView/TouchView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->rightControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    .line 130
    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->rightControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->init(Lcom/pilotlab/rollereye/Bean/TouchViewModel;)V

    .line 132
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    .line 133
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    .line 134
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 138
    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07025c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07025e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->ctx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 139
    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->rightControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public closeViews()V
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->leftControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->rightControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->setVisibility(I)V

    return-void
.end method

.method public createLeftControlTouchView(I)V
    .registers 4

    .line 95
    iget-object v0, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->leftControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->getModel()Lcom/pilotlab/rollereye/Bean/TouchViewModel;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->getBgResId()I

    move-result v1

    if-eq v1, p1, :cond_19

    .line 97
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/Bean/TouchViewModel;->setBgResId(I)V

    .line 98
    iget-object p1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->leftControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->init(Lcom/pilotlab/rollereye/Bean/TouchViewModel;)V

    .line 99
    iget-object p1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->leftControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->invalidate()V

    :cond_19
    return-void
.end method

.method public createViews()V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Controller/DefaultController;->createLeftControlTouchView()V

    .line 46
    iget-object v0, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->containerView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->leftControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 49
    invoke-direct {p0}, Lcom/pilotlab/rollereye/Controller/DefaultController;->createRightControlTouchView()V

    .line 50
    iget-object v0, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->containerView:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->rightControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getPadStyle()Lcom/pilotlab/rollereye/Bean/PadStyle;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->padStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

    return-object v0
.end method

.method public setLeftTouchViewListener(Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;)V
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->leftControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    if-eqz v0, :cond_7

    .line 148
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->setListener(Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;)V

    :cond_7
    return-void
.end method

.method public setMidControlViewListener(Lcom/pilotlab/rollereye/MyInterface/MidControlViewListener;)V
    .registers 4

    .line 159
    iget-object v0, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->midControlTouchView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 160
    new-instance v1, Lcom/pilotlab/rollereye/Controller/DefaultController$1;

    invoke-direct {v1, p0, p1}, Lcom/pilotlab/rollereye/Controller/DefaultController$1;-><init>(Lcom/pilotlab/rollereye/Controller/DefaultController;Lcom/pilotlab/rollereye/MyInterface/MidControlViewListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_c
    return-void
.end method

.method public setPadStyle(Lcom/pilotlab/rollereye/Bean/PadStyle;)V
    .registers 3

    .line 171
    iput-object p1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->padStyle:Lcom/pilotlab/rollereye/Bean/PadStyle;

    .line 172
    iget-object v0, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->leftControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->setPadStyle(Lcom/pilotlab/rollereye/Bean/PadStyle;)V

    .line 173
    iget-object v0, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->rightControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->setPadStyle(Lcom/pilotlab/rollereye/Bean/PadStyle;)V

    return-void
.end method

.method public setRightTouchViewListener(Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;)V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->rightControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    if-eqz v0, :cond_7

    .line 154
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->setListener(Lcom/pilotlab/rollereye/MyInterface/JoystickTouchViewListener;)V

    :cond_7
    return-void
.end method

.method public showViews(Z)V
    .registers 3

    .line 55
    iget-object p1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->leftControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->clearAnimation()V

    .line 56
    iget-object p1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->leftControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->rightControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->clearAnimation()V

    .line 58
    iget-object p1, p0, Lcom/pilotlab/rollereye/Controller/DefaultController;->rightControlTouchView:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->setVisibility(I)V

    return-void
.end method
