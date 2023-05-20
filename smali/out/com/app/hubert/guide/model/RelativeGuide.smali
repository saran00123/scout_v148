.class public Lcom/app/hubert/guide/model/RelativeGuide;
.super Ljava/lang/Object;
.source "RelativeGuide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;
    }
.end annotation


# instance fields
.field public gravity:I

.field public highLight:Lcom/app/hubert/guide/model/HighLight;

.field public layout:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field public padding:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/app/hubert/guide/model/RelativeGuide;->layout:I

    .line 56
    iput p2, p0, Lcom/app/hubert/guide/model/RelativeGuide;->gravity:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/app/hubert/guide/model/RelativeGuide;->layout:I

    .line 66
    iput p2, p0, Lcom/app/hubert/guide/model/RelativeGuide;->gravity:I

    .line 67
    iput p3, p0, Lcom/app/hubert/guide/model/RelativeGuide;->padding:I

    return-void
.end method

.method private getMarginInfo(ILandroid/view/ViewGroup;Landroid/view/View;)Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;
    .registers 7

    .line 87
    new-instance p3, Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;

    invoke-direct {p3}, Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;-><init>()V

    .line 88
    iget-object v0, p0, Lcom/app/hubert/guide/model/RelativeGuide;->highLight:Lcom/app/hubert/guide/model/HighLight;

    invoke-interface {v0, p2}, Lcom/app/hubert/guide/model/HighLight;->getRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x5

    if-eq p1, v1, :cond_4f

    if-eq p1, v2, :cond_40

    const/16 v1, 0x30

    const/16 v2, 0x50

    if-eq p1, v1, :cond_29

    if-eq p1, v2, :cond_1a

    goto :goto_65

    .line 105
    :cond_1a
    iget p1, v0, Landroid/graphics/RectF;->bottom:F

    iget p2, p0, Lcom/app/hubert/guide/model/RelativeGuide;->padding:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p3, Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;->topMargin:I

    .line 106
    iget p1, v0, Landroid/graphics/RectF;->left:F

    float-to-int p1, p1

    iput p1, p3, Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;->leftMargin:I

    goto :goto_65

    .line 96
    :cond_29
    iput v2, p3, Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;->gravity:I

    .line 97
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget p2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/app/hubert/guide/model/RelativeGuide;->padding:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p3, Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;->bottomMargin:I

    .line 98
    iget p1, v0, Landroid/graphics/RectF;->left:F

    float-to-int p1, p1

    iput p1, p3, Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;->leftMargin:I

    goto :goto_65

    .line 101
    :cond_40
    iget p1, v0, Landroid/graphics/RectF;->right:F

    iget p2, p0, Lcom/app/hubert/guide/model/RelativeGuide;->padding:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p3, Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;->leftMargin:I

    .line 102
    iget p1, v0, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    iput p1, p3, Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;->topMargin:I

    goto :goto_65

    .line 91
    :cond_4f
    iput v2, p3, Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;->gravity:I

    .line 92
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/app/hubert/guide/model/RelativeGuide;->padding:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p3, Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;->rightMargin:I

    .line 93
    iget p1, v0, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    iput p1, p3, Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;->topMargin:I

    :goto_65
    return-object p3
.end method


# virtual methods
.method public final getGuideLayout(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 71
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/app/hubert/guide/model/RelativeGuide;->layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/app/hubert/guide/model/RelativeGuide;->onLayoutInflated(Landroid/view/View;)V

    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 74
    iget v2, p0, Lcom/app/hubert/guide/model/RelativeGuide;->gravity:I

    invoke-direct {p0, v2, p1, v0}, Lcom/app/hubert/guide/model/RelativeGuide;->getMarginInfo(ILandroid/view/ViewGroup;Landroid/view/View;)Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/app/hubert/guide/util/LogUtil;->e(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v2, p1, v0}, Lcom/app/hubert/guide/model/RelativeGuide;->offsetMargin(Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 77
    iget p1, v2, Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;->gravity:I

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 78
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, v2, Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;->leftMargin:I

    add-int/2addr p1, v3

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 79
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v3, v2, Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;->topMargin:I

    add-int/2addr p1, v3

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 80
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v3, v2, Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;->rightMargin:I

    add-int/2addr p1, v3

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 81
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v2, v2, Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;->bottomMargin:I

    add-int/2addr p1, v2

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected offsetMargin(Lcom/app/hubert/guide/model/RelativeGuide$MarginInfo;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    return-void
.end method

.method protected onLayoutInflated(Landroid/view/View;)V
    .registers 2

    return-void
.end method
