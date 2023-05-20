.class public Lcom/pilotlab/rollereye/CustomerView/RoundImageView;
.super Landroid/widget/ImageView;
.source "RoundImageView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field private static final BODER_RADIUS_DEFAULT:I = 0xa

.field private static final BODER_WIDTH_DEFAULT:I = 0x0

.field private static final STATE_BORDER_RADIUS:Ljava/lang/String; = "state_border_radius"

.field private static final STATE_INSTANCE:Ljava/lang/String; = "state_instance"

.field private static final STATE_TYPE:Ljava/lang/String; = "state_type"

.field public static final TYPE_CIRCLE:I = 0x0

.field public static final TYPE_ROUND:I = 0x1


# instance fields
.field private borderCorlor:I

.field private borderWidth:I

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mBorderRadius:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRadius:I

.field private mRoundRect:Landroid/graphics/RectF;

.field private mWidth:I

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, v0}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    sget-object v0, Lcom/pilotlab/rollereye/R$styleable;->RoundImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 90
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 91
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 v0, 0x1

    const/high16 v1, 0x41200000    # 10.0f

    .line 89
    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 87
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBorderRadius:I

    .line 96
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 97
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 v1, 0x0

    .line 95
    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    const/4 v0, 0x2

    .line 93
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->borderWidth:I

    const/4 p2, 0x0

    .line 98
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->borderCorlor:I

    const/4 v0, 0x3

    .line 101
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->type:I

    .line 103
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private drawableToBitamp(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 7

    .line 218
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    .line 219
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 220
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 222
    :cond_b
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 223
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 224
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 225
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 226
    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 227
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private setUpShader()V
    .registers 6

    .line 129
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 130
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 131
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1b

    return-void

    .line 139
    :cond_1b
    invoke-direct {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->drawableToBitamp(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 143
    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->type:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_44

    .line 145
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 146
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    int-to-float v0, v0

    div-float v3, v1, v0

    goto :goto_76

    :cond_44
    if-ne v2, v1, :cond_76

    .line 152
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_5a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_76

    .line 154
    :cond_5a
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 155
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 154
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 160
    :cond_76
    :goto_76
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 162
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 164
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public dp2px(I)I
    .registers 4

    int-to-float p1, p1

    .line 279
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 278
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 170
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 173
    :cond_7
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->setUpShader()V

    .line 175
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_48

    .line 178
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBorderRadius:I

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 181
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 182
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->borderCorlor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->borderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 185
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 186
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mRoundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBorderRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_7e

    .line 189
    :cond_48
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mRadius:I

    int-to-float v2, v0

    int-to-float v3, v0

    int-to-float v0, v0

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 191
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 192
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->borderCorlor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 194
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->borderWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 195
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 196
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mRadius:I

    int-to-float v1, v0

    int-to-float v2, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_7e
    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 112
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 116
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->type:I

    if-nez p1, :cond_1e

    .line 117
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->getMeasuredHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mWidth:I

    .line 118
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mWidth:I

    div-int/lit8 p2, p1, 0x2

    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mRadius:I

    .line 119
    invoke-virtual {p0, p1, p1}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->setMeasuredDimension(II)V

    :cond_1e
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 246
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_20

    .line 247
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "state_instance"

    .line 249
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 248
    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "state_type"

    .line 250
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->type:I

    const-string v0, "state_border_radius"

    .line 251
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBorderRadius:I

    goto :goto_23

    .line 253
    :cond_20
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_23
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 237
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 238
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "state_instance"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 239
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->type:I

    const-string v2, "state_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 240
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBorderRadius:I

    const-string v2, "state_border_radius"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 204
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 207
    iget p3, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->type:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_12

    .line 208
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mRoundRect:Landroid/graphics/RectF;

    :cond_12
    return-void
.end method

.method public setBorderRadius(I)V
    .registers 3

    .line 259
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->dp2px(I)I

    move-result p1

    .line 260
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBorderRadius:I

    if-eq v0, p1, :cond_d

    .line 261
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->mBorderRadius:I

    .line 262
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->invalidate()V

    :cond_d
    return-void
.end method

.method public setType(I)V
    .registers 3

    .line 267
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->type:I

    if-eq v0, p1, :cond_13

    .line 268
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->type:I

    .line 269
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->type:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    if-eqz p1, :cond_10

    const/4 p1, 0x0

    .line 270
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->type:I

    .line 272
    :cond_10
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RoundImageView;->requestLayout()V

    :cond_13
    return-void
.end method
