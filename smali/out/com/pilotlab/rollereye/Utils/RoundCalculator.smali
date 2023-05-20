.class public Lcom/pilotlab/rollereye/Utils/RoundCalculator;
.super Ljava/lang/Object;
.source "RoundCalculator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calPointLocationByAngle(DDDDD)[D
    .registers 10

    .line 39
    invoke-static/range {p0 .. p7}, Lcom/pilotlab/rollereye/Utils/RoundCalculator;->calTwoPointAngleDegree(DDDD)D

    move-result-wide p4

    const-wide p6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p4, p6

    const-wide p6, 0x4066800000000000L    # 180.0

    div-double/2addr p4, p6

    .line 41
    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p6

    mul-double/2addr p6, p8

    add-double/2addr p0, p6

    double-to-float p0, p0

    .line 42
    invoke-static {p4, p5}, Ljava/lang/Math;->sin(D)D

    move-result-wide p4

    mul-double/2addr p8, p4

    sub-double/2addr p2, p8

    double-to-float p1, p2

    const/4 p2, 0x2

    .line 44
    new-array p2, p2, [D

    float-to-double p3, p0

    const/4 p0, 0x0

    aput-wide p3, p2, p0

    float-to-double p0, p1

    const/4 p3, 0x1

    aput-wide p0, p2, p3

    return-object p2
.end method

.method public static calPointLocationByAngle(DDDDDDD)[D
    .registers 22

    move-wide/from16 v0, p8

    move-wide/from16 v2, p10

    move-wide v4, p4

    move-wide v6, p6

    .line 55
    invoke-static/range {v0 .. v7}, Lcom/pilotlab/rollereye/Utils/RoundCalculator;->calTwoPointAngleDegree(DDDD)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 57
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v2, v2, p12

    add-double/2addr v2, p0

    double-to-float v2, v2

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v0, v0, p12

    sub-double v0, p2, v0

    double-to-float v0, v0

    const/4 v1, 0x2

    .line 60
    new-array v1, v1, [D

    float-to-double v2, v2

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    float-to-double v2, v0

    const/4 v0, 0x1

    aput-wide v2, v1, v0

    return-object v1
.end method

.method public static calTwoPointAngleDegree(DDDD)D
    .registers 14

    .line 19
    invoke-static/range {p0 .. p7}, Lcom/pilotlab/rollereye/Utils/RoundCalculator;->calTwoPointDistant(DDDD)D

    move-result-wide v0

    sub-double v2, p6, p2

    .line 20
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v4

    cmpg-double v4, p4, p0

    if-gez v4, :cond_26

    cmpg-double v5, p6, p2

    if-gez v5, :cond_26

    sub-double v0, v2, v0

    goto :goto_3d

    :cond_26
    if-gez v4, :cond_2e

    cmpl-double v4, p6, p2

    if-ltz v4, :cond_2e

    add-double/2addr v0, v2

    goto :goto_3d

    :cond_2e
    cmpl-double p0, p4, p0

    if-ltz p0, :cond_3d

    cmpl-double p0, p6, p2

    if-ltz p0, :cond_3d

    const-wide p0, 0x4076800000000000L    # 360.0

    sub-double v0, p0, v0

    :cond_3d
    :goto_3d
    return-wide v0
.end method

.method public static calTwoPointDistant(DDDD)D
    .registers 8

    sub-double/2addr p4, p0

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    .line 12
    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p4

    sub-double/2addr p6, p2

    invoke-static {p6, p7, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr p4, p0

    invoke-static {p4, p5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method
