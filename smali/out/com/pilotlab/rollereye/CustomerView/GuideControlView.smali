.class public Lcom/pilotlab/rollereye/CustomerView/GuideControlView;
.super Landroid/widget/ImageView;
.source "GuideControlView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private backgroud:Landroid/graphics/Bitmap;

.field private direction:I

.field private finger:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private startX:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->direction:I

    .line 30
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->mContext:Landroid/content/Context;

    .line 31
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080121

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->backgroud:Landroid/graphics/Bitmap;

    .line 32
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0800f9

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->finger:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 11

    .line 38
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    .line 43
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->backgroud:Landroid/graphics/Bitmap;

    .line 44
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->backgroud:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v2, v3

    const/4 v3, 0x1

    .line 43
    invoke-static {v1, v0, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 45
    invoke-virtual {p1, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 46
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->finger:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->backgroud:Landroid/graphics/Bitmap;

    .line 47
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v5, v0

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->backgroud:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/2addr v5, v6

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->finger:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->finger:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/2addr v5, v6

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->backgroud:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v0, v6

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->backgroud:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/2addr v0, v6

    .line 46
    invoke-static {v1, v5, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->direction:I

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    if-nez v1, :cond_68

    .line 52
    iget-wide v7, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->startX:D

    add-double/2addr v7, v5

    iput-wide v7, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->startX:D

    .line 53
    iget-wide v5, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->startX:D

    const-wide/high16 v7, 0x4069000000000000L    # 200.0

    cmpl-double v1, v5, v7

    if-lez v1, :cond_78

    .line 54
    iput v3, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->direction:I

    goto :goto_78

    .line 56
    :cond_68
    iget-wide v7, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->startX:D

    sub-double/2addr v7, v5

    iput-wide v7, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->startX:D

    .line 57
    iget-wide v5, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->startX:D

    const-wide/16 v7, 0x0

    cmpl-double v1, v5, v7

    if-nez v1, :cond_78

    const/4 v1, 0x0

    .line 58
    iput v1, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->direction:I

    .line 60
    :cond_78
    :goto_78
    iget-wide v5, p0, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->startX:D

    double-to-float v1, v5

    invoke-virtual {p1, v0, v1, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 61
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/GuideControlView;->invalidate()V

    return-void
.end method
