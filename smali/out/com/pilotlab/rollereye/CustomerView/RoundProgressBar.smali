.class public Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;
.super Landroid/view/View;
.source "RoundProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar$progressEnd;
    }
.end annotation


# static fields
.field public static final FILL:I = 0x1

.field public static final STROKE:I


# instance fields
.field handler:Landroid/os/Handler;

.field private mProgressEnd:Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar$progressEnd;

.field private max:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundWidth:F

.field run:Ljava/lang/Runnable;

.field start:I

.field private style:I

.field private textColor:I

.field private textIsDisplayable:Z

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, p2, v0}, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 108
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 75
    iput p3, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->start:I

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->handler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar$1;-><init>(Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->run:Ljava/lang/Runnable;

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    .line 112
    sget-object v0, Lcom/pilotlab/rollereye/R$styleable;->RoundProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, -0x10000

    .line 116
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->roundColor:I

    const/4 v0, 0x2

    const v1, -0xff0100

    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->roundProgressColor:I

    const/4 v0, 0x5

    const v1, -0xffff01

    .line 121
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->textColor:I

    const/4 v0, 0x7

    const/high16 v1, 0x41700000    # 15.0f

    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->textSize:F

    const/4 v0, 0x3

    const/high16 v1, 0x40a00000    # 5.0f

    .line 125
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->roundWidth:F

    const/16 v0, 0x64

    .line 127
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->max:I

    const/4 v0, 0x6

    .line 129
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->textIsDisplayable:Z

    const/4 p2, 0x4

    .line 132
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->style:I

    .line 135
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public clearProgress()V
    .registers 3

    .line 205
    monitor-enter p0

    const/4 v0, 0x0

    .line 206
    :try_start_2
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->start:I

    .line 207
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->run:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getCricleColor()I
    .registers 2

    .line 260
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->roundColor:I

    return v0
.end method

.method public getCricleProgressColor()I
    .registers 2

    .line 268
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->roundProgressColor:I

    return v0
.end method

.method public declared-synchronized getMax()I
    .registers 2

    monitor-enter p0

    .line 213
    :try_start_1
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->max:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .registers 2

    monitor-enter p0

    .line 234
    :try_start_1
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->progress:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoundWidth()F
    .registers 2

    .line 292
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->roundWidth:F

    return v0
.end method

.method public getTextColor()I
    .registers 2

    .line 276
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .registers 2

    .line 284
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->textSize:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .line 141
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    .line 147
    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->roundWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    float-to-int v2, v2

    .line 148
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->roundColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 149
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->roundWidth:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 151
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v4, v2

    .line 152
    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v4, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 157
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 158
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->textColor:I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->textSize:F

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 160
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 162
    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->progress:I

    int-to-float v4, v4

    iget v6, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->max:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 163
    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 165
    iget-boolean v7, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->textIsDisplayable:Z

    if-eqz v7, :cond_9c

    if-eqz v4, :cond_9c

    iget v7, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->style:I

    if-nez v7, :cond_9c

    .line 166
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    div-float/2addr v6, v3

    sub-float v6, v1, v6

    iget v7, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->textSize:F

    div-float/2addr v7, v3

    add-float/2addr v1, v7

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 175
    :cond_9c
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->roundWidth:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 176
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->roundProgressColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    new-instance v7, Landroid/graphics/RectF;

    sub-int v1, v0, v2

    int-to-float v1, v1

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {v7, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 181
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->style:I

    if-eqz v0, :cond_dc

    if-eq v0, v5, :cond_c2

    goto :goto_f3

    .line 188
    :cond_c2
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->progress:I

    if-eqz v0, :cond_f3

    const/4 v8, 0x0

    mul-int/lit16 v0, v0, 0x168

    .line 190
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->max:I

    div-int/2addr v0, v1

    int-to-float v9, v0

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_f3

    .line 183
    :cond_dc
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v8, 0x0

    .line 184
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->progress:I

    mul-int/lit16 v0, v0, 0x168

    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->max:I

    div-int/2addr v0, v1

    int-to-float v9, v0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->paint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_f3
    :goto_f3
    return-void
.end method

.method public setCricleColor(I)V
    .registers 2

    .line 264
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->roundColor:I

    return-void
.end method

.method public setCricleProgressColor(I)V
    .registers 2

    .line 272
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->roundProgressColor:I

    return-void
.end method

.method public setListener(Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar$progressEnd;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->mProgressEnd:Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar$progressEnd;

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .registers 3

    monitor-enter p0

    if-ltz p1, :cond_9

    .line 225
    :try_start_3
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->max:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 226
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    goto :goto_11

    .line 223
    :cond_9
    :try_start_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "max not less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_7

    :goto_11
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgress(I)V
    .registers 3

    monitor-enter p0

    if-ltz p1, :cond_1b

    .line 247
    :try_start_3
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->max:I

    if-le p1, v0, :cond_e

    .line 248
    iget p1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->max:I

    .line 250
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->mProgressEnd:Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar$progressEnd;

    invoke-interface {v0}, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar$progressEnd;->onProgressEnd()V

    .line 252
    :cond_e
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->max:I

    if-gt p1, v0, :cond_17

    .line 253
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->progress:I

    .line 254
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->postInvalidate()V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    .line 257
    :cond_17
    monitor-exit p0

    return-void

    :catchall_19
    move-exception p1

    goto :goto_23

    .line 245
    :cond_1b
    :try_start_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "progress not less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_19

    :goto_23
    monitor-exit p0

    throw p1
.end method

.method public setRoundWidth(F)V
    .registers 2

    .line 296
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->roundWidth:F

    return-void
.end method

.method public setTextColor(I)V
    .registers 2

    .line 280
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->textColor:I

    return-void
.end method

.method public setTextSize(F)V
    .registers 2

    .line 288
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->textSize:F

    return-void
.end method

.method public startProgress()V
    .registers 3

    const/4 v0, 0x0

    .line 198
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->start:I

    .line 199
    monitor-enter p0

    .line 200
    :try_start_4
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/RoundProgressBar;->run:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method
