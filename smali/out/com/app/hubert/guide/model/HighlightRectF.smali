.class public Lcom/app/hubert/guide/model/HighlightRectF;
.super Ljava/lang/Object;
.source "HighlightRectF.java"

# interfaces
.implements Lcom/app/hubert/guide/model/HighLight;


# instance fields
.field private options:Lcom/app/hubert/guide/model/HighlightOptions;

.field private rectF:Landroid/graphics/RectF;

.field private round:I

.field private shape:Lcom/app/hubert/guide/model/HighLight$Shape;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Lcom/app/hubert/guide/model/HighLight$Shape;I)V
    .registers 4
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/app/hubert/guide/model/HighLight$Shape;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/app/hubert/guide/model/HighlightRectF;->rectF:Landroid/graphics/RectF;

    .line 20
    iput-object p2, p0, Lcom/app/hubert/guide/model/HighlightRectF;->shape:Lcom/app/hubert/guide/model/HighLight$Shape;

    .line 21
    iput p3, p0, Lcom/app/hubert/guide/model/HighlightRectF;->round:I

    return-void
.end method


# virtual methods
.method public getOptions()Lcom/app/hubert/guide/model/HighlightOptions;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightRectF;->options:Lcom/app/hubert/guide/model/HighlightOptions;

    return-object v0
.end method

.method public getRadius()F
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightRectF;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/app/hubert/guide/model/HighlightRectF;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getRectF(Landroid/view/View;)Landroid/graphics/RectF;
    .registers 2

    .line 35
    iget-object p1, p0, Lcom/app/hubert/guide/model/HighlightRectF;->rectF:Landroid/graphics/RectF;

    return-object p1
.end method

.method public getRound()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/app/hubert/guide/model/HighlightRectF;->round:I

    return v0
.end method

.method public getShape()Lcom/app/hubert/guide/model/HighLight$Shape;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/app/hubert/guide/model/HighlightRectF;->shape:Lcom/app/hubert/guide/model/HighLight$Shape;

    return-object v0
.end method

.method public setOptions(Lcom/app/hubert/guide/model/HighlightOptions;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/app/hubert/guide/model/HighlightRectF;->options:Lcom/app/hubert/guide/model/HighlightOptions;

    return-void
.end method
