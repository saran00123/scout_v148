.class public Lcom/pilotlab/rollereye/CustomerView/ScanView;
.super Landroid/view/View;
.source "ScanView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0xaL

.field private static final CORNER_WIDTH:I = 0x5

.field private static final MIDDLE_LINE_PADDING:I = 0x5

.field private static final MIDDLE_LINE_WIDTH:I = 0x6

.field private static final OPAQUE:I = 0xff

.field private static final SPEEN_DISTANCE:I = 0x14

.field private static final TEXT_PADDING_TOP:I = 0xa

.field private static final TEXT_SIZE:I = 0x10

.field private static density:F


# instance fields
.field private ScreenRate:I

.field private anim:Landroid/animation/ValueAnimator;

.field private duration:J

.field private frame:Landroid/graphics/Rect;

.field private frame_crop_height:F

.field private frame_crop_width:F

.field framingRect:Landroid/graphics/Rect;

.field isFirst:Z

.field private final maskColor:I

.field private paint:Landroid/graphics/Paint;

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private slideBottom:I

.field private slideLeft:I

.field private slideLineWidth:I

.field private slideRight:I

.field private slideTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 143
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x12c

    .line 100
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->slideLineWidth:I

    const/4 p2, 0x0

    .line 111
    iput-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->framingRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 115
    iput-boolean p2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->isFirst:Z

    const-wide/16 v0, 0xbb8

    .line 128
    iput-wide v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->duration:J

    const p2, 0x3f19999a    # 0.6f

    .line 134
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame_crop_width:F

    const/high16 p2, 0x3f800000    # 1.0f

    .line 139
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame_crop_height:F

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    sput p1, Lcom/pilotlab/rollereye/CustomerView/ScanView;->density:F

    .line 147
    sget p1, Lcom/pilotlab/rollereye/CustomerView/ScanView;->density:F

    const/high16 p2, 0x41700000    # 15.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->ScreenRate:I

    .line 148
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    .line 149
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060083

    .line 150
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->maskColor:I

    .line 151
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->resultColor:I

    const p2, 0x7f060144

    .line 152
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->resultPointColor:I

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/CustomerView/ScanView;I)I
    .registers 2

    .line 26
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->slideRight:I

    return p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/CustomerView/ScanView;)Landroid/graphics/Rect;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    return-object p0
.end method


# virtual methods
.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 326
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 327
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->invalidate()V

    return-void
.end method

.method public drawViewfinder()V
    .registers 2

    const/4 v0, 0x0

    .line 315
    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 316
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->invalidate()V

    return-void
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .registers 7

    .line 299
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->getWidth()I

    move-result v0

    .line 301
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->getHeight()I

    move-result v1

    .line 303
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->framingRect:Landroid/graphics/Rect;

    if-nez v2, :cond_2c

    int-to-float v2, v1

    .line 304
    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame_crop_height:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x3fef5c28f5c28f5cL    # 0.98

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v3, v0

    .line 305
    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame_crop_width:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v0, v3

    .line 306
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v2

    .line 307
    div-int/lit8 v1, v1, 0x2

    .line 308
    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v3, v0

    add-int/2addr v2, v1

    invoke-direct {v4, v0, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->framingRect:Landroid/graphics/Rect;

    .line 311
    :cond_2c
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->framingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public initFirst(ZFF)V
    .registers 4

    .line 156
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->isFirst:Z

    .line 157
    iput p3, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame_crop_height:F

    .line 158
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame_crop_width:F

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 266
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 267
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->stopAnimation()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 165
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    .line 166
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    if-nez v0, :cond_b

    return-void

    .line 171
    :cond_b
    iget-boolean v1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->isFirst:Z

    if-eqz v1, :cond_28

    .line 172
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->slideTop:I

    .line 173
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->slideBottom:I

    .line 174
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->slideLeft:I

    .line 175
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->slideLineWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->slideRight:I

    .line 179
    :cond_28
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    .line 183
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v7, 0x0

    .line 184
    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 185
    iput v6, v1, Landroid/graphics/Rect;->bottom:I

    .line 186
    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 187
    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 189
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_47

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->resultColor:I

    goto :goto_49

    :cond_47
    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->maskColor:I

    :goto_49
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v8, v0

    .line 193
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 194
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v9, 0x1

    add-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 195
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v9

    int-to-float v1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v9

    int-to-float v4, v0

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v9

    int-to-float v2, v0

    int-to-float v4, v6

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 203
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b6

    .line 205
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 206
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->resultBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_25e

    .line 210
    :cond_b6
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f060023

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->ScreenRate:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v4, v0

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 213
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v3, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->ScreenRate:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 215
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->ScreenRate:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v4, v0

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 217
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x5

    int-to-float v1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->ScreenRate:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 219
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x5

    int-to-float v2, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->ScreenRate:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 221
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->ScreenRate:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v3, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 223
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->ScreenRate:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x5

    int-to-float v2, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 225
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x5

    int-to-float v1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->ScreenRate:I

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 229
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 231
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, -0x5

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 232
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->slideRight:I

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-lt v1, v2, :cond_1e2

    .line 233
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1e6

    .line 234
    :cond_1e2
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->slideRight:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 235
    :goto_1e6
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->slideRight:I

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->slideLineWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 236
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->anim:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_20a

    .line 237
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08018e

    .line 238
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    .line 237
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 243
    :cond_20a
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    sget v2, Lcom/pilotlab/rollereye/CustomerView/ScanView;->density:F

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 246
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    const-string v1, "System"

    invoke-static {v1, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 247
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v8, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v8, v1

    .line 249
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    sget v3, Lcom/pilotlab/rollereye/CustomerView/ScanView;->density:F

    mul-float/2addr v3, v2

    sub-float/2addr v1, v3

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v8, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 256
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->anim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_25e

    iget-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->isFirst:Z

    if-eqz v0, :cond_25e

    .line 257
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->startAnimation()V

    .line 258
    iput-boolean v7, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->isFirst:Z

    :cond_25e
    :goto_25e
    return-void
.end method

.method public startAnimation()V
    .registers 5

    .line 271
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->anim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_52

    const/4 v0, 0x2

    .line 272
    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->slideLineWidth:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x5

    int-to-float v2, v2

    aput v2, v0, v1

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->frame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->slideLineWidth:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->anim:Landroid/animation/ValueAnimator;

    .line 273
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->anim:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 274
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 275
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->anim:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->duration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 276
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->anim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 277
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->anim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/ScanView$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/CustomerView/ScanView$1;-><init>(Lcom/pilotlab/rollereye/CustomerView/ScanView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 285
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_52
    return-void
.end method

.method public stopAnimation()V
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->anim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_12

    .line 291
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 292
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView;->anim:Landroid/animation/ValueAnimator;

    .line 294
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->invalidate()V

    :cond_12
    return-void
.end method
