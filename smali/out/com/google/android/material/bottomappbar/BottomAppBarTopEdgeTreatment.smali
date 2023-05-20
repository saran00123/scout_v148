.class public Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;
.super Lcom/google/android/material/shape/EdgeTreatment;
.source "BottomAppBarTopEdgeTreatment.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ANGLE_LEFT:I = 0xb4

.field private static final ANGLE_UP:I = 0x10e

.field private static final ARC_HALF:I = 0xb4

.field private static final ARC_QUARTER:I = 0x5a

.field private static final ROUNDED_CORNER_FAB_OFFSET:F = 1.75f


# instance fields
.field private cradleVerticalOffset:F

.field private fabCornerSize:I

.field private fabDiameter:F

.field private fabMargin:F

.field private horizontalOffset:F

.field private roundedCornerRadius:F


# direct methods
.method public constructor <init>(FFF)V
    .registers 5

    .line 64
    invoke-direct {p0}, Lcom/google/android/material/shape/EdgeTreatment;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:I

    .line 65
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    .line 66
    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    .line 67
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->setCradleVerticalOffset(F)V

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    return-void
.end method


# virtual methods
.method getCradleVerticalOffset()F
    .registers 2

    .line 223
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    return v0
.end method

.method public getEdgePath(FFFLcom/google/android/material/shape/ShapePath;)V
    .registers 28
    .param p4    # Lcom/google/android/material/shape/ShapePath;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v9, p4

    .line 74
    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    const/4 v10, 0x0

    cmpl-float v3, v2, v10

    if-nez v3, :cond_11

    .line 76
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    return-void

    .line 80
    :cond_11
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v3, v11

    add-float/2addr v3, v2

    div-float v12, v3, v11

    .line 82
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    mul-float v13, p3, v3

    .line 83
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    add-float v14, p2, v3

    .line 87
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    mul-float v3, v3, p3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, p3

    mul-float/2addr v5, v12

    add-float/2addr v3, v5

    div-float v5, v3, v12

    cmpl-float v4, v5, v4

    if-ltz v4, :cond_35

    .line 93
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    return-void

    .line 103
    :cond_35
    iget v4, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:I

    int-to-float v5, v4

    mul-float v15, v5, p3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4f

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v4, v2

    .line 104
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4d

    goto :goto_4f

    :cond_4d
    const/4 v2, 0x0

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 v2, 0x1

    :goto_50
    move/from16 v16, v2

    if-nez v16, :cond_59

    const/high16 v2, 0x3fe00000    # 1.75f

    move/from16 v17, v10

    goto :goto_5c

    :cond_59
    move/from16 v17, v3

    move v2, v10

    :goto_5c
    add-float v3, v12, v13

    mul-float/2addr v3, v3

    add-float v4, v17, v13

    mul-float v5, v4, v4

    sub-float/2addr v3, v5

    float-to-double v5, v3

    .line 114
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v3, v5

    sub-float v5, v14, v3

    add-float v18, v14, v3

    div-float/2addr v3, v4

    float-to-double v3, v3

    .line 121
    invoke-static {v3, v4}, Ljava/lang/Math;->atan(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v8, v3

    const/high16 v3, 0x42b40000    # 90.0f

    sub-float/2addr v3, v8

    add-float v19, v3, v2

    .line 125
    invoke-virtual {v9, v5, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    sub-float v3, v5, v13

    const/4 v4, 0x0

    add-float/2addr v5, v13

    mul-float v20, v13, v11

    const/high16 v7, 0x43870000    # 270.0f

    move-object/from16 v2, p4

    move/from16 v6, v20

    move/from16 v21, v8

    .line 129
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    const/high16 v2, 0x43340000    # 180.0f

    if-eqz v16, :cond_ab

    sub-float v3, v14, v12

    neg-float v4, v12

    sub-float v4, v4, v17

    add-float v5, v14, v12

    sub-float v6, v12, v17

    sub-float v7, v2, v19

    mul-float v19, v19, v11

    sub-float v8, v19, v2

    move-object/from16 v2, p4

    .line 139
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    goto :goto_f1

    .line 147
    :cond_ab
    iget v3, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    mul-float v16, v15, v11

    add-float v4, v3, v16

    sub-float v5, v14, v12

    add-float v6, v15, v3

    neg-float v6, v6

    add-float v7, v5, v4

    add-float v8, v3, v15

    sub-float v17, v2, v19

    mul-float v3, v19, v11

    sub-float/2addr v3, v2

    div-float v22, v3, v11

    move-object/from16 v2, p4

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    move/from16 v7, v17

    move/from16 v8, v22

    .line 148
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    add-float v5, v14, v12

    .line 156
    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    div-float v3, v2, v11

    add-float/2addr v3, v15

    sub-float v3, v5, v3

    add-float/2addr v2, v15

    invoke-virtual {v9, v3, v2}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    .line 159
    iget v2, v0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    add-float v16, v16, v2

    sub-float v3, v5, v16

    add-float v4, v15, v2

    neg-float v4, v4

    add-float v6, v2, v15

    const/high16 v7, 0x42b40000    # 90.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    add-float v8, v19, v2

    move-object/from16 v2, p4

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    :goto_f1
    sub-float v3, v18, v13

    const/4 v4, 0x0

    add-float v5, v18, v13

    const/high16 v2, 0x43870000    # 270.0f

    sub-float v7, v2, v21

    move-object/from16 v2, p4

    move/from16 v6, v20

    move/from16 v8, v21

    .line 170
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/material/shape/ShapePath;->addArc(FFFFFF)V

    .line 179
    invoke-virtual {v9, v1, v10}, Lcom/google/android/material/shape/ShapePath;->lineTo(FF)V

    return-void
.end method

.method public getFabCornerRadius()I
    .registers 2

    .line 255
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:I

    return v0
.end method

.method getFabCradleMargin()F
    .registers 2

    .line 239
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    return v0
.end method

.method getFabCradleRoundedCornerRadius()F
    .registers 2

    .line 247
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    return v0
.end method

.method public getFabDiameter()F
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 189
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    return v0
.end method

.method public getHorizontalOffset()F
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 214
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    return v0
.end method

.method setCradleVerticalOffset(F)V
    .registers 3
    .param p1    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_8

    .line 235
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->cradleVerticalOffset:F

    return-void

    .line 233
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cradleVerticalOffset must be positive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFabCornerSize(I)V
    .registers 2

    .line 259
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabCornerSize:I

    return-void
.end method

.method setFabCradleMargin(F)V
    .registers 2

    .line 243
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabMargin:F

    return-void
.end method

.method setFabCradleRoundedCornerRadius(F)V
    .registers 2

    .line 251
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->roundedCornerRadius:F

    return-void
.end method

.method public setFabDiameter(F)V
    .registers 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 199
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->fabDiameter:F

    return-void
.end method

.method setHorizontalOffset(F)V
    .registers 2

    .line 204
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBarTopEdgeTreatment;->horizontalOffset:F

    return-void
.end method
