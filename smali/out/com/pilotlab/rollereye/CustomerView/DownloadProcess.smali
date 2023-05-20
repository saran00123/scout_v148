.class public Lcom/pilotlab/rollereye/CustomerView/DownloadProcess;
.super Landroid/view/View;
.source "DownloadProcess.java"


# instance fields
.field private x:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 42
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 44
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DownloadProcess;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DownloadProcess;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DownloadProcess;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 55
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DownloadProcess;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/DownloadProcess;->x:F

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DownloadProcess;->getHeight()I

    move-result v0

    int-to-float v4, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setProcess(I)V
    .registers 3

    .line 34
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DownloadProcess;->getWidth()I

    move-result v0

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x64

    int-to-float p1, p1

    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/DownloadProcess;->x:F

    .line 36
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/DownloadProcess;->invalidate()V

    return-void
.end method
