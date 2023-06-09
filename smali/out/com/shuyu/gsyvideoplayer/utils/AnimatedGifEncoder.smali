.class public Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;
.super Ljava/lang/Object;
.source "AnimatedGifEncoder.java"


# instance fields
.field protected closeStream:Z

.field protected colorDepth:I

.field protected colorTab:[B

.field protected delay:I

.field protected dispose:I

.field protected firstFrame:Z

.field protected height:I

.field protected image:Landroid/graphics/Bitmap;

.field protected indexedPixels:[B

.field protected out:Ljava/io/OutputStream;

.field protected palSize:I

.field protected pixels:[B

.field protected repeat:I

.field protected sample:I

.field protected sizeSet:Z

.field protected started:Z

.field protected transIndex:I

.field protected transparent:I

.field protected usedEntry:[Z

.field protected width:I

.field protected x:I

.field protected y:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->x:I

    .line 19
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->y:I

    const/4 v1, -0x1

    .line 21
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->transparent:I

    .line 25
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->repeat:I

    .line 27
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->delay:I

    .line 29
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->started:Z

    const/16 v2, 0x100

    .line 43
    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->usedEntry:[Z

    const/4 v2, 0x7

    .line 45
    iput v2, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->palSize:I

    .line 47
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->dispose:I

    .line 49
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->closeStream:Z

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->firstFrame:Z

    .line 53
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->sizeSet:Z

    const/16 v0, 0xa

    .line 55
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->sample:I

    return-void
.end method


# virtual methods
.method public addFrame(Landroid/graphics/Bitmap;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_44

    .line 118
    iget-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->started:Z

    if-nez v1, :cond_8

    goto :goto_44

    :cond_8
    const/4 v1, 0x1

    .line 123
    :try_start_9
    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->sizeSet:Z

    if-nez v2, :cond_18

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->setSize(II)V

    .line 127
    :cond_18
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    .line 128
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->getImagePixels()V

    .line 129
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->analyzePixels()V

    .line 130
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->firstFrame:Z

    if-eqz p1, :cond_31

    .line 131
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->writeLSD()V

    .line 132
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->writePalette()V

    .line 133
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->repeat:I

    if-ltz p1, :cond_31

    .line 135
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->writeNetscapeExt()V

    .line 138
    :cond_31
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->writeGraphicCtrlExt()V

    .line 139
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->writeImageDesc()V

    .line 140
    iget-boolean p1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->firstFrame:Z

    if-nez p1, :cond_3e

    .line 141
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->writePalette()V

    .line 143
    :cond_3e
    invoke-virtual {p0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->writePixels()V

    .line 144
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->firstFrame:Z
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_43} :catch_44

    move v0, v1

    :catch_44
    :cond_44
    :goto_44
    return v0
.end method

.method protected analyzePixels()V
    .registers 9

    .line 266
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->pixels:[B

    array-length v1, v0

    .line 267
    div-int/lit8 v2, v1, 0x3

    .line 268
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->indexedPixels:[B

    .line 269
    new-instance v3, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;

    iget v4, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->sample:I

    invoke-direct {v3, v0, v1, v4}, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;-><init>([BII)V

    .line 271
    invoke-virtual {v3}, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->process()[B

    move-result-object v0

    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->colorTab:[B

    const/4 v0, 0x0

    move v1, v0

    .line 273
    :goto_18
    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->colorTab:[B

    array-length v5, v4

    if-ge v1, v5, :cond_30

    .line 274
    aget-byte v5, v4, v1

    add-int/lit8 v6, v1, 0x2

    .line 275
    aget-byte v7, v4, v6

    aput-byte v7, v4, v1

    .line 276
    aput-byte v5, v4, v6

    .line 277
    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->usedEntry:[Z

    div-int/lit8 v5, v1, 0x3

    aput-boolean v0, v4, v5

    add-int/lit8 v1, v1, 0x3

    goto :goto_18

    :cond_30
    move v1, v0

    :goto_31
    if-ge v0, v2, :cond_59

    .line 282
    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v5, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v6, 0x1

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v1, v5, v4}, Lcom/shuyu/gsyvideoplayer/utils/NeuQuant;->map(III)I

    move-result v1

    .line 283
    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->usedEntry:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    .line 284
    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->indexedPixels:[B

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v7

    goto :goto_31

    :cond_59
    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->pixels:[B

    const/16 v0, 0x8

    .line 287
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->colorDepth:I

    const/4 v0, 0x7

    .line 288
    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->palSize:I

    .line 290
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->transparent:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6e

    .line 291
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->findClosest(I)I

    move-result v0

    iput v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->transIndex:I

    :cond_6e
    return-void
.end method

.method protected findClosest(I)I
    .registers 11

    .line 299
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->colorTab:[B

    if-nez v0, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x0

    shr-int/2addr p1, v3

    and-int/lit16 p1, p1, 0xff

    const/high16 v4, 0x1000000

    .line 306
    array-length v0, v0

    move v5, v4

    move v4, v3

    :goto_17
    if-ge v3, v0, :cond_45

    .line 308
    iget-object v6, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->colorTab:[B

    add-int/lit8 v7, v3, 0x1

    aget-byte v3, v6, v3

    and-int/lit16 v3, v3, 0xff

    sub-int v3, v1, v3

    add-int/lit8 v8, v7, 0x1

    .line 309
    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    sub-int v7, v2, v7

    .line 310
    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    sub-int v6, p1, v6

    mul-int/2addr v3, v3

    mul-int/2addr v7, v7

    add-int/2addr v3, v7

    mul-int/2addr v6, v6

    add-int/2addr v3, v6

    .line 312
    div-int/lit8 v6, v8, 0x3

    .line 313
    iget-object v7, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->usedEntry:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_42

    if-ge v3, v5, :cond_42

    move v5, v3

    move v4, v6

    :cond_42
    add-int/lit8 v3, v8, 0x1

    goto :goto_17

    :cond_45
    return v4
.end method

.method public finish()Z
    .registers 5

    .line 157
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->started:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 160
    :cond_6
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->started:Z

    const/4 v0, 0x1

    .line 162
    :try_start_9
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 163
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 164
    iget-boolean v2, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->closeStream:Z

    if-eqz v2, :cond_1e

    .line 165
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1e} :catch_20

    :cond_1e
    move v2, v0

    goto :goto_21

    :catch_20
    move v2, v1

    .line 172
    :goto_21
    iput v1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->transIndex:I

    const/4 v3, 0x0

    .line 173
    iput-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    .line 174
    iput-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    .line 175
    iput-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->pixels:[B

    .line 176
    iput-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->indexedPixels:[B

    .line 177
    iput-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->colorTab:[B

    .line 178
    iput-boolean v1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->closeStream:Z

    .line 179
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->firstFrame:Z

    return v2
.end method

.method protected getImageData(Landroid/graphics/Bitmap;)[I
    .registers 11

    .line 347
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 348
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    .line 350
    new-array v8, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, v8

    move v3, v6

    .line 351
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-object v8
.end method

.method protected getImagePixels()V
    .registers 8

    .line 326
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 327
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 328
    iget v2, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->width:I

    if-ne v0, v2, :cond_14

    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->height:I

    if-eq v1, v0, :cond_30

    .line 330
    :cond_14
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->width:I

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 331
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 332
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 333
    iput-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    .line 335
    :cond_30
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->image:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->getImageData(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    .line 336
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->pixels:[B

    const/4 v1, 0x0

    .line 337
    :goto_3e
    array-length v2, v0

    if-ge v1, v2, :cond_63

    .line 338
    aget v2, v0, v1

    mul-int/lit8 v3, v1, 0x3

    .line 340
    iget-object v4, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->pixels:[B

    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v6, v2, 0x0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v3

    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v6, v2, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 341
    aput-byte v6, v4, v5

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 342
    aput-byte v2, v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_63
    return-void
.end method

.method public setDelay(I)V
    .registers 2

    .line 64
    div-int/lit8 p1, p1, 0xa

    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->delay:I

    return-void
.end method

.method public setDispose(I)V
    .registers 2

    if-ltz p1, :cond_4

    .line 76
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->dispose:I

    :cond_4
    return-void
.end method

.method public setFrameRate(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_b

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 192
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->delay:I

    :cond_b
    return-void
.end method

.method public setPosition(II)V
    .registers 3

    .line 237
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->x:I

    .line 238
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->y:I

    return-void
.end method

.method public setQuality(I)V
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    move p1, v0

    .line 209
    :cond_4
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->sample:I

    return-void
.end method

.method public setRepeat(I)V
    .registers 2

    if-ltz p1, :cond_4

    .line 90
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->repeat:I

    :cond_4
    return-void
.end method

.method public setSize(II)V
    .registers 3

    .line 220
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->width:I

    .line 221
    iput p2, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->height:I

    .line 222
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->width:I

    const/4 p2, 0x1

    if-ge p1, p2, :cond_d

    const/16 p1, 0x140

    .line 223
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->width:I

    .line 224
    :cond_d
    iget p1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->height:I

    if-ge p1, p2, :cond_15

    const/16 p1, 0xf0

    .line 225
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->height:I

    .line 226
    :cond_15
    iput-boolean p2, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->sizeSet:Z

    return-void
.end method

.method public setTransparent(I)V
    .registers 2

    .line 104
    iput p1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->transparent:I

    return-void
.end method

.method public start(Ljava/io/OutputStream;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->closeStream:Z

    .line 253
    iput-object p1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    :try_start_9
    const-string p1, "GIF89a"

    .line 255
    invoke-virtual {p0, p1}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->writeString(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_f

    move v0, v1

    .line 259
    :catch_f
    iput-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->started:Z

    return v0
.end method

.method protected writeGraphicCtrlExt()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 360
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xf9

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 361
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 363
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->transparent:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1e

    move v0, v2

    move v3, v0

    goto :goto_20

    :cond_1e
    const/4 v0, 0x1

    move v3, v1

    .line 370
    :goto_20
    iget v4, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->dispose:I

    if-ltz v4, :cond_26

    and-int/lit8 v3, v4, 0x7

    :cond_26
    shl-int/lit8 v1, v3, 0x2

    .line 376
    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    or-int/2addr v1, v2

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write(I)V

    .line 381
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->delay:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->writeShort(I)V

    .line 382
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->transIndex:I

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 383
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected writeImageDesc()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 391
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->x:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->writeShort(I)V

    .line 392
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->y:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->writeShort(I)V

    .line 393
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->width:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->writeShort(I)V

    .line 394
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->height:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->writeShort(I)V

    .line 396
    iget-boolean v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->firstFrame:Z

    if-eqz v0, :cond_26

    .line 398
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2f

    .line 401
    :cond_26
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->palSize:I

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_2f
    return-void
.end method

.method protected writeLSD()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->width:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->writeShort(I)V

    .line 415
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->height:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->writeShort(I)V

    .line 417
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->palSize:I

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 422
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 423
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected writeNetscapeExt()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 431
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 432
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const-string v0, "NETSCAPE2.0"

    .line 433
    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->writeString(Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 435
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 436
    iget v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->repeat:I

    invoke-virtual {p0, v0}, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->writeShort(I)V

    .line 437
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected writePalette()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->colorTab:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 445
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->colorTab:[B

    array-length v0, v0

    rsub-int v0, v0, 0x300

    move v1, v3

    :goto_f
    if-ge v1, v0, :cond_19

    .line 447
    iget-object v2, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_19
    return-void
.end method

.method protected writePixels()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    new-instance v0, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;

    iget v1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->width:I

    iget v2, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->height:I

    iget-object v3, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->indexedPixels:[B

    iget v4, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->colorDepth:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;-><init>(II[BI)V

    .line 456
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/shuyu/gsyvideoplayer/utils/LZWEncoder;->encode(Ljava/io/OutputStream;)V

    return-void
.end method

.method protected writeShort(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 464
    iget-object v0, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected writeString(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 471
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 472
    iget-object v1, p0, Lcom/shuyu/gsyvideoplayer/utils/AnimatedGifEncoder;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    return-void
.end method
