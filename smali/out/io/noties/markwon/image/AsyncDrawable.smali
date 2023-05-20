.class public Lio/noties/markwon/image/AsyncDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AsyncDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/image/AsyncDrawable$WrappedCallback;
    }
.end annotation


# instance fields
.field private callback:Landroid/graphics/drawable/Drawable$Callback;

.field private canvasWidth:I

.field private final destination:Ljava/lang/String;

.field private final imageSize:Lio/noties/markwon/image/ImageSize;

.field private final imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

.field private final loader:Lio/noties/markwon/image/AsyncDrawableLoader;

.field private result:Landroid/graphics/drawable/Drawable;

.field private textSize:F

.field private waitingForDimensions:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/noties/markwon/image/AsyncDrawableLoader;Lio/noties/markwon/image/ImageSizeResolver;Lio/noties/markwon/image/ImageSize;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/noties/markwon/image/AsyncDrawableLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/noties/markwon/image/ImageSizeResolver;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/noties/markwon/image/ImageSize;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 39
    iput-object p1, p0, Lio/noties/markwon/image/AsyncDrawable;->destination:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lio/noties/markwon/image/AsyncDrawable;->loader:Lio/noties/markwon/image/AsyncDrawableLoader;

    .line 41
    iput-object p3, p0, Lio/noties/markwon/image/AsyncDrawable;->imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

    .line 42
    iput-object p4, p0, Lio/noties/markwon/image/AsyncDrawable;->imageSize:Lio/noties/markwon/image/ImageSize;

    .line 44
    invoke-virtual {p2, p0}, Lio/noties/markwon/image/AsyncDrawableLoader;->placeholder(Lio/noties/markwon/image/AsyncDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 46
    invoke-virtual {p0, p1}, Lio/noties/markwon/image/AsyncDrawable;->setPlaceholderResult(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    return-void
.end method

.method private initBounds()V
    .registers 4

    .line 250
    iget v0, p0, Lio/noties/markwon/image/AsyncDrawable;->canvasWidth:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lio/noties/markwon/image/AsyncDrawable;->waitingForDimensions:Z

    return-void

    :cond_8
    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lio/noties/markwon/image/AsyncDrawable;->waitingForDimensions:Z

    .line 258
    invoke-direct {p0}, Lio/noties/markwon/image/AsyncDrawable;->resolveBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 262
    iget-object v1, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lio/noties/markwon/image/AsyncDrawable;->callback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 266
    invoke-virtual {p0, v0}, Lio/noties/markwon/image/AsyncDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 268
    invoke-virtual {p0}, Lio/noties/markwon/image/AsyncDrawable;->invalidateSelf()V

    return-void
.end method

.method private resolveBounds()Landroid/graphics/Rect;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 344
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawable;->imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

    invoke-virtual {v0, p0}, Lio/noties/markwon/image/ImageSizeResolver;->resolveImageSize(Lio/noties/markwon/image/AsyncDrawable;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearResult()V
    .registers 3

    .line 237
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    .line 240
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 241
    iput-object v1, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0, v0, v0, v0, v0}, Lio/noties/markwon/image/AsyncDrawable;->setBounds(IIII)V

    :cond_e
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 286
    invoke-virtual {p0}, Lio/noties/markwon/image/AsyncDrawable;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 287
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    return-void
.end method

.method public getDestination()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 52
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawable;->destination:Ljava/lang/String;

    return-object v0
.end method

.method public getImageSize()Lio/noties/markwon/image/ImageSize;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 61
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawable;->imageSize:Lio/noties/markwon/image/ImageSize;

    return-object v0
.end method

.method public getImageSizeResolver()Lio/noties/markwon/image/ImageSizeResolver;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 70
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawable;->imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .line 327
    invoke-virtual {p0}, Lio/noties/markwon/image/AsyncDrawable;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 328
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .line 315
    invoke-virtual {p0}, Lio/noties/markwon/image/AsyncDrawable;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 316
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public getLastKnowTextSize()F
    .registers 2

    .line 106
    iget v0, p0, Lio/noties/markwon/image/AsyncDrawable;->textSize:F

    return v0
.end method

.method public getLastKnownCanvasWidth()I
    .registers 2

    .line 97
    iget v0, p0, Lio/noties/markwon/image/AsyncDrawable;->canvasWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .line 304
    invoke-virtual {p0}, Lio/noties/markwon/image/AsyncDrawable;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 305
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, -0x2

    :goto_e
    return v0
.end method

.method public getResult()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 110
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hasKnownDimensions()Z
    .registers 2

    .line 89
    iget v0, p0, Lio/noties/markwon/image/AsyncDrawable;->canvasWidth:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasKnownDimentions()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    iget v0, p0, Lio/noties/markwon/image/AsyncDrawable;->canvasWidth:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hasResult()Z
    .registers 2

    .line 115
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public initWithKnownDimensions(IF)V
    .registers 3

    .line 276
    iput p1, p0, Lio/noties/markwon/image/AsyncDrawable;->canvasWidth:I

    .line 277
    iput p2, p0, Lio/noties/markwon/image/AsyncDrawable;->textSize:F

    .line 279
    iget-boolean p1, p0, Lio/noties/markwon/image/AsyncDrawable;->waitingForDimensions:Z

    if-eqz p1, :cond_b

    .line 280
    invoke-direct {p0}, Lio/noties/markwon/image/AsyncDrawable;->initBounds()V

    :cond_b
    return-void
.end method

.method public isAttached()Z
    .registers 2

    .line 119
    invoke-virtual {p0}, Lio/noties/markwon/image/AsyncDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public setAlpha(I)V
    .registers 2
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    return-void
.end method

.method public setCallback2(Landroid/graphics/drawable/Drawable$Callback;)V
    .registers 4
    .param p1    # Landroid/graphics/drawable/Drawable$Callback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object v1, v0

    goto :goto_a

    .line 131
    :cond_5
    new-instance v1, Lio/noties/markwon/image/AsyncDrawable$WrappedCallback;

    invoke-direct {v1, p0, p1}, Lio/noties/markwon/image/AsyncDrawable$WrappedCallback;-><init>(Lio/noties/markwon/image/AsyncDrawable;Landroid/graphics/drawable/Drawable$Callback;)V

    :goto_a
    iput-object v1, p0, Lio/noties/markwon/image/AsyncDrawable;->callback:Landroid/graphics/drawable/Drawable$Callback;

    .line 133
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 136
    iget-object p1, p0, Lio/noties/markwon/image/AsyncDrawable;->callback:Landroid/graphics/drawable/Drawable$Callback;

    if-eqz p1, :cond_2a

    .line 141
    iget-object p1, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_24

    .line 142
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_24

    .line 143
    iget-object p1, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawable;->callback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 146
    :cond_24
    iget-object p1, p0, Lio/noties/markwon/image/AsyncDrawable;->loader:Lio/noties/markwon/image/AsyncDrawableLoader;

    invoke-virtual {p1, p0}, Lio/noties/markwon/image/AsyncDrawableLoader;->load(Lio/noties/markwon/image/AsyncDrawable;)V

    goto :goto_41

    .line 148
    :cond_2a
    iget-object p1, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3c

    .line 150
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 153
    iget-object p1, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_3c

    .line 154
    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 157
    :cond_3c
    iget-object p1, p0, Lio/noties/markwon/image/AsyncDrawable;->loader:Lio/noties/markwon/image/AsyncDrawableLoader;

    invoke-virtual {p1, p0}, Lio/noties/markwon/image/AsyncDrawableLoader;->cancel(Lio/noties/markwon/image/AsyncDrawable;)V

    :goto_41
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method protected setPlaceholderResult(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 174
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 176
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 179
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    .line 183
    invoke-static {p1}, Lio/noties/markwon/image/DrawableUtils;->intrinsicBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    .line 189
    invoke-virtual {p1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_25

    .line 192
    :cond_22
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 198
    :goto_25
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/noties/markwon/image/AsyncDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 199
    invoke-virtual {p0, p1}, Lio/noties/markwon/image/AsyncDrawable;->setResult(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3e

    .line 207
    :cond_30
    iput-object p1, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    .line 208
    iget-object p1, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lio/noties/markwon/image/AsyncDrawable;->callback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 211
    invoke-virtual {p0, v0}, Lio/noties/markwon/image/AsyncDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 214
    iput-boolean v2, p0, Lio/noties/markwon/image/AsyncDrawable;->waitingForDimensions:Z

    :goto_3e
    return-void
.end method

.method public setResult(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 221
    iget-object v0, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 222
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 225
    :cond_8
    iput-object p1, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    .line 227
    invoke-direct {p0}, Lio/noties/markwon/image/AsyncDrawable;->initBounds()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncDrawable{destination=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/noties/markwon/image/AsyncDrawable;->destination:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", imageSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/noties/markwon/image/AsyncDrawable;->imageSize:Lio/noties/markwon/image/ImageSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/noties/markwon/image/AsyncDrawable;->result:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canvasWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/noties/markwon/image/AsyncDrawable;->canvasWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/noties/markwon/image/AsyncDrawable;->textSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", waitingForDimensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lio/noties/markwon/image/AsyncDrawable;->waitingForDimensions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
