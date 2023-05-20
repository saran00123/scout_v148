.class public Lcom/app/hubert/guide/model/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"

# interfaces
.implements Lcom/app/hubert/guide/model/HighLight;


# instance fields
.field private mHole:Landroid/view/View;

.field private options:Lcom/app/hubert/guide/model/HighlightOptions;

.field private padding:I

.field private rectF:Landroid/graphics/RectF;

.field private round:I

.field private shape:Lcom/app/hubert/guide/model/HighLight$Shape;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/app/hubert/guide/model/HighLight$Shape;II)V
    .registers 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/app/hubert/guide/model/HighlightView;->mHole:Landroid/view/View;

    .line 29
    iput-object p2, p0, Lcom/app/hubert/guide/model/HighlightView;->shape:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 30
    iput p3, p0, Lcom/app/hubert/guide/model/HighlightView;->round:I

    .line 31
    iput p4, p0, Lcom/app/hubert/guide/model/HighlightView;->padding:I

    return-void
.end method


# virtual methods
.method public getOptions()Lcom/app/hubert/guide/model/HighlightOptions;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightView;->options:Lcom/app/hubert/guide/model/HighlightOptions;

    return-object v0
.end method

.method public getRadius()F
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightView;->mHole:Landroid/view/View;

    if-eqz v0, :cond_1b

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/app/hubert/guide/model/HighlightView;->mHole:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/app/hubert/guide/model/HighlightView;->padding:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0

    .line 56
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "the highlight view is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRectF(Landroid/view/View;)Landroid/graphics/RectF;
    .registers 5

    .line 63
    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightView;->mHole:Landroid/view/View;

    if-eqz v0, :cond_63

    .line 66
    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightView;->rectF:Landroid/graphics/RectF;

    if-nez v0, :cond_60

    .line 67
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/app/hubert/guide/model/HighlightView;->rectF:Landroid/graphics/RectF;

    .line 68
    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightView;->mHole:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/app/hubert/guide/util/ViewUtils;->getLocationInView(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightView;->rectF:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/app/hubert/guide/model/HighlightView;->padding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 70
    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightView;->rectF:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/app/hubert/guide/model/HighlightView;->padding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 71
    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightView;->rectF:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/app/hubert/guide/model/HighlightView;->padding:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 72
    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightView;->rectF:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/app/hubert/guide/model/HighlightView;->padding:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightView;->mHole:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'s location:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/app/hubert/guide/util/LogUtil;->i(Ljava/lang/String;)V

    .line 75
    :cond_60
    iget-object p1, p0, Lcom/app/hubert/guide/model/HighlightView;->rectF:Landroid/graphics/RectF;

    return-object p1

    .line 64
    :cond_63
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "the highlight view is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRound()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/app/hubert/guide/model/HighlightView;->round:I

    return v0
.end method

.method public getShape()Lcom/app/hubert/guide/model/HighLight$Shape;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightView;->shape:Lcom/app/hubert/guide/model/HighLight$Shape;

    return-object v0
.end method

.method public setOptions(Lcom/app/hubert/guide/model/HighlightOptions;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/app/hubert/guide/model/HighlightView;->options:Lcom/app/hubert/guide/model/HighlightOptions;

    return-void
.end method
