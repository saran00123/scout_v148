.class public Lcom/pilotlab/rollereye/CustomerView/MoveImgView;
.super Landroid/widget/ImageView;
.source "MoveImgView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# instance fields
.field private back:Landroid/graphics/Bitmap;

.field private direction:I

.field private handler:Landroid/os/Handler;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private startX:D

.field private startY:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->startX:D

    .line 21
    iput-wide v0, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->startY:D

    const/4 p2, 0x0

    .line 25
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->direction:I

    .line 31
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 33
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 35
    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f08010a

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->back:Landroid/graphics/Bitmap;

    .line 39
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->back:Landroid/graphics/Bitmap;

    mul-int/lit8 v1, p2, 0x2

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->mBitmap:Landroid/graphics/Bitmap;

    .line 42
    new-instance p1, Lcom/pilotlab/rollereye/CustomerView/MoveImgView$1;

    invoke-direct {p1, p0, p2}, Lcom/pilotlab/rollereye/CustomerView/MoveImgView$1;-><init>(Lcom/pilotlab/rollereye/CustomerView/MoveImgView;I)V

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/CustomerView/MoveImgView;)I
    .registers 1

    .line 17
    iget p0, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->direction:I

    return p0
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/CustomerView/MoveImgView;I)I
    .registers 2

    .line 17
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->direction:I

    return p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/CustomerView/MoveImgView;)D
    .registers 3

    .line 17
    iget-wide v0, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->startY:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/CustomerView/MoveImgView;D)D
    .registers 3

    .line 17
    iput-wide p1, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->startY:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/CustomerView/MoveImgView;)Landroid/os/Handler;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 5

    .line 83
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 84
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 89
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 90
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 78
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->mBitmap:Landroid/graphics/Bitmap;

    iget-wide v1, p0, Lcom/pilotlab/rollereye/CustomerView/MoveImgView;->startY:D

    double-to-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method
