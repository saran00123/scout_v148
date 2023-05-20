.class public Lcom/pilotlab/rollereye/CustomerView/WayPointRender;
.super Ljava/lang/Object;
.source "WayPointRender.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field public XScalef:F

.field public XTranslatef:F

.field public YScalef:F

.field public YTranslatef:F

.field public ZScalef:F

.field public ZTranslatef:F

.field private attitude:I

.field private mEditFavoritePointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPatrolFavoritePointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mWayPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mapList:[F

.field public maxScalef:F

.field public minScalef:F

.field private needDrawBackArea:Z

.field public ratio:F

.field public xrotate:F

.field public yrotate:F


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3e800000    # 0.25f

    .line 21
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->minScalef:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 22
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->maxScalef:F

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->xrotate:F

    .line 24
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->yrotate:F

    .line 25
    iget v1, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->minScalef:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v1, v2

    iput v3, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XScalef:F

    mul-float v3, v1, v2

    .line 26
    iput v3, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->YScalef:F

    mul-float/2addr v1, v2

    .line 27
    iput v1, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->ZScalef:F

    .line 28
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XTranslatef:F

    .line 29
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->YTranslatef:F

    .line 30
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->ZTranslatef:F

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->needDrawBackArea:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mEditFavoritePointList:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mPatrolFavoritePointList:Ljava/util/List;

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->attitude:I

    return-void
.end method

.method private converFloat(Ljava/util/List;)[F
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)[F"
        }
    .end annotation

    .line 199
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 200
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_19

    .line 201
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_19
    return-object v0
.end method

.method private converFloatWithScale(Ljava/util/List;I)Ljava/util/List;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;I)",
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 208
    iget v3, v1, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XScalef:F

    const v4, 0x3dcccccd    # 0.1f

    div-float/2addr v4, v3

    .line 209
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 211
    :goto_12
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_d0

    .line 212
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_20
    const/4 v9, 0x0

    if-ge v8, v2, :cond_70

    mul-int/lit8 v10, v6, 0x3

    .line 214
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    float-to-double v12, v4

    const-wide v14, 0x401921fb54442d18L    # 6.283185307179586

    move/from16 v16, v6

    int-to-double v5, v2

    div-double/2addr v14, v5

    int-to-float v5, v8

    float-to-double v5, v5

    mul-double/2addr v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v12

    double-to-float v5, v5

    add-float/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    .line 215
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v12, v10

    double-to-float v6, v12

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v16

    goto :goto_20

    :cond_70
    move/from16 v16, v6

    mul-int/lit8 v6, v16, 0x3

    .line 218
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v10, v4

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v10

    double-to-float v8, v14

    add-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    .line 219
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-float v6, v10

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [F

    const/4 v6, 0x0

    .line 223
    :goto_b7
    array-length v8, v5

    if-ge v6, v8, :cond_c9

    .line 224
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_b7

    .line 226
    :cond_c9
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v16, 0x1

    goto/16 :goto_12

    :cond_d0
    return-object v3
.end method

.method private converFloatWithScaleCustomR(Ljava/util/List;IFZ)Ljava/util/List;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;IFZ)",
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    if-eqz p4, :cond_d

    move-object/from16 v2, p0

    .line 234
    iget v3, v2, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XScalef:F

    div-float v3, p3, v3

    goto :goto_11

    :cond_d
    move-object/from16 v2, p0

    move/from16 v3, p3

    .line 237
    :goto_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 239
    :goto_17
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    div-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_e0

    .line 240
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_25
    const/4 v9, 0x0

    if-ge v8, v1, :cond_75

    mul-int/lit8 v10, v6, 0x3

    .line 242
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    float-to-double v12, v3

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    move/from16 p4, v6

    int-to-double v5, v1

    div-double/2addr v14, v5

    int-to-float v5, v8

    float-to-double v5, v5

    mul-double/2addr v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v12

    double-to-float v5, v5

    add-float/2addr v11, v5

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    .line 243
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v12, v10

    double-to-float v6, v12

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move/from16 v6, p4

    goto :goto_25

    :cond_75
    move/from16 p4, v6

    mul-int/lit8 v6, p4, 0x3

    .line 246
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v10, v3

    const-wide v12, 0x4066800000000000L    # 180.0

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v14, v10

    double-to-float v8, v14

    add-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    .line 247
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-float v6, v10

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [F

    const/4 v6, 0x0

    .line 251
    :goto_c7
    array-length v8, v5

    if-ge v6, v8, :cond_d9

    .line 252
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    aput v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c7

    .line 254
    :cond_d9
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, p4, 0x1

    goto/16 :goto_17

    :cond_e0
    return-object v4
.end method

.method public static getFloatBuffer([F)Ljava/nio/FloatBuffer;
    .registers 3

    .line 266
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 267
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 268
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 270
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 272
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method


# virtual methods
.method public addEditFavoriteWaypoint(FFF)V
    .registers 5

    .line 299
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mEditFavoritePointList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mEditFavoritePointList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mEditFavoritePointList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPatrolFavoriteWaypoint(FFF)V
    .registers 5

    .line 305
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mPatrolFavoritePointList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mPatrolFavoritePointList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mPatrolFavoritePointList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearData()V
    .registers 4

    .line 318
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 319
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mEditFavoritePointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 320
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mPatrolFavoritePointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mapList:[F

    .line 322
    iget v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->minScalef:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    iput v2, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XScalef:F

    mul-float v2, v0, v1

    .line 323
    iput v2, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->YScalef:F

    mul-float/2addr v0, v1

    .line 324
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->ZScalef:F

    const/4 v0, 0x0

    .line 325
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XTranslatef:F

    .line 326
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->YTranslatef:F

    .line 327
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->ZTranslatef:F

    const/4 v0, -0x1

    .line 328
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->attitude:I

    return-void
.end method

.method public getCurrentLocation()[F
    .registers 7

    .line 311
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-le v0, v2, :cond_48

    .line 312
    new-array v0, v1, [F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    aput v1, v0, v2

    return-object v0

    .line 314
    :cond_48
    new-array v0, v1, [F

    return-object v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 74
    iget-object v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v12, 0x3

    rem-int/2addr v1, v12

    if-eqz v1, :cond_f

    return-void

    :cond_f
    const/16 v1, 0x4000

    .line 78
    invoke-interface {v11, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    const v13, 0x8074

    .line 81
    invoke-interface {v11, v13}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/16 v1, 0x1700

    .line 83
    invoke-interface {v11, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 84
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x40e00000    # 7.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object/from16 v1, p1

    .line 86
    invoke-static/range {v1 .. v10}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 88
    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XTranslatef:F

    iget v2, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->YTranslatef:F

    iget v3, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->ZTranslatef:F

    invoke-interface {v11, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 90
    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XScalef:F

    iget v2, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->YScalef:F

    iget v3, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->ZScalef:F

    invoke-interface {v11, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 94
    iget-boolean v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->needDrawBackArea:Z

    const/high16 v2, 0x41600000    # 14.0f

    const/4 v3, 0x6

    const/16 v4, 0x1406

    const/4 v6, 0x0

    if-eqz v1, :cond_9e

    const/16 v1, 0x80

    .line 96
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v8, 0x3fe66666    # 1.8f

    .line 100
    invoke-direct {v0, v7, v1, v8, v6}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->converFloatWithScaleCustomR(Ljava/util/List;IFZ)Ljava/util/List;

    move-result-object v1

    move v7, v6

    .line 101
    :goto_72
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_9e

    .line 102
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    .line 103
    invoke-static {v8}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->getFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v9

    invoke-interface {v11, v12, v4, v6, v9}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const v9, 0x3e0f5c29    # 0.14f

    const/high16 v10, 0x3e800000    # 0.25f

    const v14, 0x3ca3d70a    # 0.02f

    const v15, 0x3e99999a    # 0.3f

    .line 105
    invoke-interface {v11, v9, v10, v14, v15}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 107
    invoke-interface {v11, v2}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 108
    array-length v8, v8

    div-int/2addr v8, v12

    invoke-interface {v11, v3, v6, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    .line 113
    :cond_9e
    iget-object v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mapList:[F

    const/high16 v7, 0x40800000    # 4.0f

    const/4 v8, 0x1

    if-eqz v1, :cond_c2

    .line 115
    invoke-static {v1}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->getFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-interface {v11, v12, v4, v6, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const v1, 0x3da3d70a    # 0.08f

    const v9, 0x3e8a3d71    # 0.27f

    .line 117
    invoke-interface {v11, v9, v9, v9, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 119
    invoke-interface {v11, v7}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 121
    invoke-interface {v11, v7}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 122
    iget-object v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mapList:[F

    array-length v1, v1

    div-int/2addr v1, v12

    invoke-interface {v11, v8, v6, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 126
    :cond_c2
    iget-object v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->converFloat(Ljava/util/List;)[F

    move-result-object v1

    invoke-static {v1}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->getFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-interface {v11, v12, v4, v6, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const v1, 0x3f333333    # 0.7f

    const v9, 0x3f666666    # 0.9f

    const v10, 0x3f428f5c    # 0.76f

    const v14, 0x3e570a3d    # 0.21f

    .line 128
    invoke-interface {v11, v14, v10, v9, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    const/high16 v1, 0x41000000    # 8.0f

    .line 130
    invoke-interface {v11, v1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 132
    invoke-interface {v11, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 134
    iget-object v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v1, v12

    invoke-interface {v11, v12, v6, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 137
    iget-object v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mEditFavoritePointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v15, 0x40

    if-lez v1, :cond_123

    .line 139
    iget-object v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mEditFavoritePointList:Ljava/util/List;

    invoke-direct {v0, v1, v15}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->converFloatWithScale(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    move v13, v6

    .line 140
    :goto_101
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v13, v7, :cond_123

    .line 141
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    .line 142
    invoke-static {v7}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->getFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v8

    invoke-interface {v11, v12, v4, v6, v8}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 144
    invoke-interface {v11, v14, v10, v9, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 146
    invoke-interface {v11, v2}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 147
    array-length v7, v7

    div-int/2addr v7, v12

    invoke-interface {v11, v3, v6, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    goto :goto_101

    .line 151
    :cond_123
    iget-object v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mPatrolFavoritePointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_153

    .line 153
    iget-object v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mPatrolFavoritePointList:Ljava/util/List;

    invoke-direct {v0, v1, v15}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->converFloatWithScale(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    move v7, v6

    .line 154
    :goto_132
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_153

    .line 155
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    .line 156
    invoke-static {v8}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->getFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v13

    invoke-interface {v11, v12, v4, v6, v13}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 158
    invoke-interface {v11, v14, v10, v9, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 160
    invoke-interface {v11, v2}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 161
    array-length v8, v8

    div-int/2addr v8, v12

    invoke-interface {v11, v3, v6, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_132

    .line 165
    :cond_153
    iget v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->attitude:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_173

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    .line 167
    invoke-interface {v11, v1, v5, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 169
    invoke-interface {v11, v1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 170
    iget-object v1, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v1, v12

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v11, v6, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    goto/16 :goto_253

    :cond_173
    const v1, 0x3ecccccd    # 0.4f

    .line 174
    iget v2, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->XScalef:F

    div-float/2addr v1, v2

    .line 175
    iget-object v2, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v12

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 176
    iget-object v7, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/16 v8, 0x9

    .line 177
    new-array v8, v8, [F

    aput v2, v8, v6

    const/4 v9, 0x1

    aput v7, v8, v9

    const/4 v9, 0x2

    aput v5, v8, v9

    float-to-double v9, v2

    neg-float v2, v1

    const/high16 v13, 0x40800000    # 4.0f

    div-float v14, v2, v13

    float-to-double v13, v14

    iget v15, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->attitude:I

    int-to-double v3, v15

    .line 181
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v13

    add-double/2addr v3, v9

    float-to-double v5, v2

    iget v2, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->attitude:I

    move-wide/from16 v16, v13

    int-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v5

    sub-double/2addr v3, v12

    double-to-float v2, v3

    const/4 v3, 0x3

    aput v2, v8, v3

    float-to-double v3, v7

    iget v7, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->attitude:I

    int-to-double v12, v7

    .line 182
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v12, v5

    add-double/2addr v12, v3

    iget v7, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->attitude:I

    move-wide/from16 v18, v3

    int-to-double v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double v2, v2, v16

    add-double/2addr v12, v2

    double-to-float v2, v12

    const/4 v3, 0x4

    aput v2, v8, v3

    const/4 v2, 0x5

    const/4 v3, 0x0

    aput v3, v8, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    iget v3, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->attitude:I

    int-to-double v3, v3

    .line 184
    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    add-double/2addr v9, v3

    iget v3, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->attitude:I

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v3, v5

    sub-double/2addr v9, v3

    double-to-float v3, v9

    const/4 v4, 0x6

    aput v3, v8, v4

    const/4 v3, 0x7

    iget v4, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->attitude:I

    int-to-double v9, v4

    .line 185
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v5, v9

    add-double v4, v18, v5

    iget v6, v0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->attitude:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v1, v6

    add-double/2addr v4, v1

    double-to-float v1, v4

    aput v1, v8, v3

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput v2, v8, v1

    .line 188
    invoke-static {v8}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->getFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    const/16 v3, 0x1406

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v11, v4, v3, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const v3, 0x3f4ccccd    # 0.8f

    .line 189
    invoke-interface {v11, v1, v2, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    const/4 v1, 0x4

    .line 190
    invoke-interface {v11, v1, v5, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :goto_253
    const v1, 0x8074

    .line 194
    invoke-interface {v11, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 11

    const/4 v0, 0x0

    .line 59
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 60
    iput p2, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->ratio:F

    const/16 p2, 0x1701

    .line 62
    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 64
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 66
    iget v2, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->ratio:F

    neg-float v1, v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v6, 0x40e00000    # 7.0f

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 4

    const/4 p2, 0x0

    const v0, 0x3e4ccccd    # 0.2f

    .line 50
    invoke-interface {p1, p2, p2, p2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    const p2, 0x8074

    .line 52
    invoke-interface {p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    return-void
.end method

.method public setMapList([F)V
    .registers 3

    .line 293
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mapList:[F

    if-eqz v0, :cond_a

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_c

    .line 294
    :cond_a
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mapList:[F

    :cond_c
    return-void
.end method

.method public update(FFF)V
    .registers 7

    .line 278
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_34

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_4f

    .line 279
    :cond_34
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_4f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mWayPointList.size()"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public update(FFFI)V
    .registers 5

    .line 287
    invoke-virtual {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->update(FFF)V

    .line 288
    iput p4, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->attitude:I

    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/WayPointRender;->mWayPointList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",attitude:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mWayPointList"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
