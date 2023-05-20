.class public Lcom/pilotlab/rollereye/CustomerView/ScaleView;
.super Landroid/view/View;
.source "ScaleView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private scaleLineHeight:F

.field private scaleLineWidth:F

.field private scalePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/pilotlab/rollereye/CustomerView/ScaleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/pilotlab/rollereye/CustomerView/ScaleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x40000000    # 2.0f

    .line 24
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->scaleLineWidth:F

    const p2, 0x3dcccccd    # 0.1f

    .line 26
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->scaleLineHeight:F

    .line 39
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    .line 46
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->scalePaint:Landroid/graphics/Paint;

    .line 47
    iget-object v1, v0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->scalePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v1, v0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->scalePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 49
    iget-object v1, v0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->scalePaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getBaseLineColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object v1, v0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->scalePaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->scaleLineWidth:F

    invoke-static {v3, v4}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    .line 56
    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    iget v5, v0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->scaleLineHeight:F

    int-to-float v3, v3

    mul-float v7, v5, v3

    mul-float/2addr v5, v3

    sub-float v9, v3, v5

    iget-object v10, v0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->scalePaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v6, v4

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v1

    const/high16 v5, 0x41c80000    # 25.0f

    div-float/2addr v1, v5

    .line 59
    iget v5, v0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->scaleLineHeight:F

    const/high16 v6, 0x40400000    # 3.0f

    mul-float/2addr v5, v6

    :goto_5c
    const/16 v6, 0xa

    if-ge v2, v6, :cond_81

    int-to-float v6, v2

    mul-float/2addr v6, v1

    sub-float v10, v4, v6

    mul-float v13, v5, v3

    sub-float v15, v3, v13

    .line 61
    iget-object v12, v0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->scalePaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v8, v10

    move v9, v13

    move v11, v15

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v14, v4, v6

    .line 62
    iget-object v6, v0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->scalePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v12, v14

    move-object/from16 v16, v6

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    :cond_81
    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    sub-float v8, v4, v1

    .line 65
    iget v2, v0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->scaleLineHeight:F

    mul-float v7, v2, v3

    mul-float/2addr v2, v3

    sub-float v9, v3, v2

    iget-object v10, v0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->scalePaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v6, v8

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v14, v4, v1

    .line 66
    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->scaleLineHeight:F

    mul-float v13, v1, v3

    mul-float/2addr v1, v3

    sub-float v15, v3, v1

    iget-object v1, v0, Lcom/pilotlab/rollereye/CustomerView/ScaleView;->scalePaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v12, v14

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
