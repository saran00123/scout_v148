.class public Lcom/pilotlab/rollereye/CustomerView/WayPointView;
.super Landroid/opengl/GLSurfaceView;
.source "WayPointView.java"


# instance fields
.field private context:Landroid/content/Context;

.field renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->context:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->init()V

    return-void
.end method

.method private init()V
    .registers 8

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    .line 24
    invoke-virtual/range {v0 .. v6}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->setEGLConfigChooser(IIIIII)V

    .line 25
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    .line 26
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->setRenderMode(I)V

    .line 29
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method


# virtual methods
.method public addEditFavoriteWaypoint()V
    .registers 6

    .line 127
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->getCurrentLocation()[F

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    invoke-virtual {v1, v2, v3, v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->addEditFavoriteWaypoint(FFF)V

    .line 129
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->requestRender()V

    return-void
.end method

.method public clear()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->clearData()V

    .line 84
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->requestRender()V

    return-void
.end method

.method public getCurrentLocation()[F
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->getCurrentLocation()[F

    move-result-object v0

    return-object v0
.end method

.method public resetScaleTranslate()V
    .registers 4

    .line 138
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->minScalef:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XScalef:F

    .line 139
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->minScalef:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->YScalef:F

    .line 140
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->minScalef:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->ZScalef:F

    .line 142
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    const/4 v1, 0x0

    iput v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XTranslatef:F

    .line 143
    iput v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->YTranslatef:F

    .line 144
    iput v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->ZTranslatef:F

    return-void
.end method

.method public scalef(F)V
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    iget v0, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XScalef:F

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    iget v1, v1, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->minScalef:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    return-void

    .line 69
    :cond_e
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    iget v0, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XScalef:F

    mul-float/2addr v0, p1

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    iget v1, v1, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->maxScalef:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1c

    return-void

    .line 72
    :cond_1c
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XScalef:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XScalef:F

    .line 73
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->YScalef:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->YScalef:F

    .line 74
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->ZScalef:F

    mul-float/2addr v1, p1

    iput v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->ZScalef:F

    .line 75
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XTranslatef:F

    mul-float/2addr v1, p1

    const/4 v2, 0x0

    add-float/2addr v1, v2

    iput v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XTranslatef:F

    .line 76
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->YTranslatef:F

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->YTranslatef:F

    .line 77
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->ZTranslatef:F

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    iput v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->ZTranslatef:F

    .line 79
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->requestRender()V

    return-void
.end method

.method public setMapFile(Ljava/io/File;)V
    .registers 12

    .line 106
    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->readTxtFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 109
    array-length v0, p1

    if-lez v0, :cond_68

    .line 111
    array-length v0, p1

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    const/4 v2, 0x0

    .line 112
    :goto_15
    array-length v3, p1

    if-ge v2, v3, :cond_69

    .line 113
    aget-object v3, p1, v2

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 114
    array-length v4, v3

    const/16 v5, 0xb

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-le v4, v5, :cond_48

    aget-object v4, v3, v5

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 115
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    aget-object v5, v3, v7

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aget-object v8, v3, v6

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aget-object v9, v3, v1

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-virtual {v4, v5, v8, v9}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->addPatrolFavoriteWaypoint(FFF)V

    :cond_48
    mul-int/lit8 v4, v2, 0x3

    .line 117
    aget-object v5, v3, v7

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v0, v4

    add-int/lit8 v5, v4, 0x1

    .line 118
    aget-object v7, v3, v6

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aput v7, v0, v5

    add-int/2addr v4, v6

    .line 119
    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_68
    const/4 v0, 0x0

    .line 122
    :cond_69
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->setMapList([F)V

    .line 123
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->requestRender()V

    return-void
.end method

.method public translatef(FFF)V
    .registers 6

    .line 98
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XTranslatef:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XTranslatef:F

    .line 99
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    iget v0, p1, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XTranslatef:F

    add-float/2addr v0, p2

    iput v0, p1, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->YTranslatef:F

    .line 100
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    iget p2, p1, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XTranslatef:F

    add-float/2addr p2, p3

    iput p2, p1, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->ZTranslatef:F

    return-void
.end method

.method public translatefX(F)V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XTranslatef:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XTranslatef:F

    .line 89
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->requestRender()V

    return-void
.end method

.method public translatefY(F)V
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->YTranslatef:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->YTranslatef:F

    .line 94
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->requestRender()V

    return-void
.end method

.method public update(FFF)V
    .registers 5

    .line 40
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->update(FFF)V

    .line 41
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->requestRender()V

    return-void
.end method

.method public update(FFFI)V
    .registers 6

    .line 53
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->renderer:Lcom/pilotlab/rollereye/CustomerView/WayPointRender;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->update(FFFI)V

    .line 54
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/WayPointView;->requestRender()V

    return-void
.end method
