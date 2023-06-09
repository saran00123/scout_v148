.class public Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;
.super Landroidx/constraintlayout/motion/utils/CurveFit;
.source "MonotonicCurveFit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MonotonicCurveFit"


# instance fields
.field private mT:[D

.field private mTangent:[[D

.field private mY:[[D


# direct methods
.method public constructor <init>([D[[D)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 29
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/utils/CurveFit;-><init>()V

    .line 30
    array-length v3, v1

    const/4 v4, 0x0

    .line 31
    aget-object v5, v2, v4

    array-length v5, v5

    add-int/lit8 v6, v3, -0x1

    .line 32
    filled-new-array {v6, v5}, [I

    move-result-object v7

    const-class v8, D

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    .line 33
    filled-new-array {v3, v5}, [I

    move-result-object v8

    const-class v9, D

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    move v9, v4

    :goto_29
    if-ge v9, v5, :cond_73

    move v10, v4

    :goto_2c
    if-ge v10, v6, :cond_66

    add-int/lit8 v11, v10, 0x1

    .line 36
    aget-wide v12, v1, v11

    aget-wide v14, v1, v10

    sub-double/2addr v12, v14

    .line 37
    aget-object v14, v7, v10

    aget-object v15, v2, v11

    aget-wide v16, v15, v9

    aget-object v15, v2, v10

    aget-wide v18, v15, v9

    sub-double v16, v16, v18

    div-double v16, v16, v12

    aput-wide v16, v14, v9

    if-nez v10, :cond_50

    .line 39
    aget-object v12, v8, v10

    aget-object v10, v7, v10

    aget-wide v13, v10, v9

    aput-wide v13, v12, v9

    goto :goto_64

    .line 41
    :cond_50
    aget-object v12, v8, v10

    add-int/lit8 v13, v10, -0x1

    aget-object v13, v7, v13

    aget-wide v14, v13, v9

    aget-object v10, v7, v10

    aget-wide v16, v10, v9

    add-double v14, v14, v16

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v14, v14, v16

    aput-wide v14, v12, v9

    :goto_64
    move v10, v11

    goto :goto_2c

    .line 44
    :cond_66
    aget-object v10, v8, v6

    add-int/lit8 v11, v3, -0x2

    aget-object v11, v7, v11

    aget-wide v12, v11, v9

    aput-wide v12, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    :cond_73
    move v3, v4

    :goto_74
    if-ge v3, v6, :cond_cf

    move v9, v4

    :goto_77
    if-ge v9, v5, :cond_cc

    .line 49
    aget-object v10, v7, v3

    aget-wide v11, v10, v9

    const-wide/16 v13, 0x0

    cmpl-double v10, v11, v13

    if-nez v10, :cond_8e

    .line 50
    aget-object v10, v8, v3

    aput-wide v13, v10, v9

    add-int/lit8 v10, v3, 0x1

    .line 51
    aget-object v10, v8, v10

    aput-wide v13, v10, v9

    goto :goto_c9

    .line 53
    :cond_8e
    aget-object v10, v8, v3

    aget-wide v11, v10, v9

    aget-object v10, v7, v3

    aget-wide v13, v10, v9

    div-double/2addr v11, v13

    add-int/lit8 v10, v3, 0x1

    .line 54
    aget-object v13, v8, v10

    aget-wide v14, v13, v9

    aget-object v13, v7, v3

    aget-wide v16, v13, v9

    div-double v14, v14, v16

    .line 55
    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v16

    const-wide/high16 v18, 0x4022000000000000L    # 9.0

    cmpl-double v13, v16, v18

    if-lez v13, :cond_c9

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    div-double v18, v18, v16

    .line 58
    aget-object v13, v8, v3

    mul-double v11, v11, v18

    aget-object v16, v7, v3

    aget-wide v20, v16, v9

    mul-double v11, v11, v20

    aput-wide v11, v13, v9

    .line 59
    aget-object v10, v8, v10

    mul-double v18, v18, v14

    aget-object v11, v7, v3

    aget-wide v12, v11, v9

    mul-double v18, v18, v12

    aput-wide v18, v10, v9

    :cond_c9
    :goto_c9
    add-int/lit8 v9, v9, 0x1

    goto :goto_77

    :cond_cc
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .line 64
    :cond_cf
    iput-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    .line 65
    iput-object v2, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    .line 66
    iput-object v8, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mTangent:[[D

    return-void
.end method

.method private static diff(DDDDDD)D
    .registers 22

    mul-double v0, p2, p2

    const-wide/high16 v2, -0x3fe8000000000000L    # -6.0

    mul-double/2addr v2, v0

    mul-double v2, v2, p6

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double v6, p2, v4

    mul-double v8, v6, p6

    add-double/2addr v2, v8

    mul-double/2addr v4, v0

    mul-double/2addr v4, p4

    add-double/2addr v2, v4

    mul-double/2addr v6, p4

    sub-double/2addr v2, v6

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, p0

    mul-double v6, v4, p10

    mul-double/2addr v6, v0

    add-double/2addr v2, v6

    mul-double v4, v4, p8

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p0

    mul-double v0, v0, p10

    mul-double/2addr v0, p2

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, p0

    mul-double v0, v0, p8

    mul-double/2addr v0, p2

    sub-double/2addr v2, v0

    mul-double v0, p0, p8

    add-double/2addr v2, v0

    return-wide v2
.end method

.method private static interpolate(DDDDDD)D
    .registers 24

    mul-double v0, p2, p2

    mul-double v2, v0, p2

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    mul-double/2addr v4, v2

    mul-double v4, v4, p6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double/2addr v6, v0

    mul-double v8, v6, p6

    add-double/2addr v4, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v10, v2, v8

    mul-double v10, v10, p4

    add-double/2addr v4, v10

    mul-double v6, v6, p4

    sub-double/2addr v4, v6

    add-double v4, v4, p4

    mul-double v6, p0, p10

    mul-double v10, v6, v2

    add-double/2addr v4, v10

    mul-double v10, p0, p8

    mul-double/2addr v2, v10

    add-double/2addr v4, v2

    mul-double/2addr v6, v0

    sub-double/2addr v4, v6

    mul-double v2, p0, v8

    mul-double v2, v2, p8

    mul-double/2addr v2, v0

    sub-double/2addr v4, v2

    mul-double/2addr v10, p2

    add-double/2addr v4, v10

    return-wide v4
.end method


# virtual methods
.method public getPos(DI)D
    .registers 25

    move-object/from16 v0, p0

    .line 147
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v2, v1

    const/4 v3, 0x0

    .line 148
    aget-wide v4, v1, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_13

    .line 149
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v3

    aget-wide v2, v1, p3

    return-wide v2

    :cond_13
    add-int/lit8 v2, v2, -0x1

    .line 151
    aget-wide v4, v1, v2

    cmpl-double v1, p1, v4

    if-ltz v1, :cond_22

    .line 152
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v2

    aget-wide v2, v1, p3

    return-wide v2

    :cond_22
    :goto_22
    if-ge v3, v2, :cond_62

    .line 156
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    aget-wide v4, v1, v3

    cmpl-double v4, p1, v4

    if-nez v4, :cond_33

    .line 157
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v3

    aget-wide v2, v1, p3

    return-wide v2

    :cond_33
    add-int/lit8 v4, v3, 0x1

    .line 159
    aget-wide v5, v1, v4

    cmpg-double v5, p1, v5

    if-gez v5, :cond_60

    .line 160
    aget-wide v5, v1, v4

    aget-wide v7, v1, v3

    sub-double v9, v5, v7

    .line 161
    aget-wide v5, v1, v3

    sub-double v1, p1, v5

    div-double v11, v1, v9

    .line 162
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v2, v1, v3

    aget-wide v13, v2, p3

    .line 163
    aget-object v1, v1, v4

    aget-wide v15, v1, p3

    .line 164
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v2, v1, v3

    aget-wide v17, v2, p3

    .line 165
    aget-object v1, v1, v4

    aget-wide v19, v1, p3

    .line 166
    invoke-static/range {v9 .. v20}, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v1

    return-wide v1

    :cond_60
    move v3, v4

    goto :goto_22

    :cond_62
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getPos(D[D)V
    .registers 27

    move-object/from16 v0, p0

    .line 71
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v2, v1

    .line 72
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    .line 73
    aget-wide v5, v1, v4

    cmpg-double v5, p1, v5

    if-gtz v5, :cond_20

    move v1, v4

    :goto_12
    if-ge v1, v3, :cond_1f

    .line 75
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v2, v2, v4

    aget-wide v5, v2, v1

    aput-wide v5, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1f
    return-void

    :cond_20
    add-int/lit8 v2, v2, -0x1

    .line 79
    aget-wide v5, v1, v2

    cmpl-double v1, p1, v5

    if-ltz v1, :cond_36

    :goto_28
    if-ge v4, v3, :cond_35

    .line 81
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v2

    aget-wide v5, v1, v4

    aput-wide v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_35
    return-void

    :cond_36
    move v1, v4

    :goto_37
    if-ge v1, v2, :cond_87

    .line 87
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    aget-wide v6, v5, v1

    cmpl-double v5, p1, v6

    if-nez v5, :cond_4f

    move v5, v4

    :goto_42
    if-ge v5, v3, :cond_4f

    .line 89
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v6, v6, v1

    aget-wide v7, v6, v5

    aput-wide v7, p3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 92
    :cond_4f
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    add-int/lit8 v6, v1, 0x1

    aget-wide v7, v5, v6

    cmpg-double v7, p1, v7

    if-gez v7, :cond_85

    .line 93
    aget-wide v7, v5, v6

    aget-wide v9, v5, v1

    sub-double/2addr v7, v9

    .line 94
    aget-wide v9, v5, v1

    sub-double v9, p1, v9

    div-double/2addr v9, v7

    :goto_63
    if-ge v4, v3, :cond_84

    .line 96
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v5, v2, v1

    aget-wide v15, v5, v4

    .line 97
    aget-object v2, v2, v6

    aget-wide v17, v2, v4

    .line 98
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v5, v2, v1

    aget-wide v19, v5, v4

    .line 99
    aget-object v2, v2, v6

    aget-wide v21, v2, v4

    move-wide v11, v7

    move-wide v13, v9

    .line 100
    invoke-static/range {v11 .. v22}, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v11

    aput-wide v11, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    :cond_84
    return-void

    :cond_85
    move v1, v6

    goto :goto_37

    :cond_87
    return-void
.end method

.method public getPos(D[F)V
    .registers 27

    move-object/from16 v0, p0

    .line 109
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v2, v1

    .line 110
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    .line 111
    aget-wide v5, v1, v4

    cmpg-double v5, p1, v5

    if-gtz v5, :cond_21

    move v1, v4

    :goto_12
    if-ge v1, v3, :cond_20

    .line 113
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v2, v2, v4

    aget-wide v5, v2, v1

    double-to-float v2, v5

    aput v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_20
    return-void

    :cond_21
    add-int/lit8 v2, v2, -0x1

    .line 117
    aget-wide v5, v1, v2

    cmpl-double v1, p1, v5

    if-ltz v1, :cond_38

    :goto_29
    if-ge v4, v3, :cond_37

    .line 119
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v1, v1, v2

    aget-wide v5, v1, v4

    double-to-float v1, v5

    aput v1, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_37
    return-void

    :cond_38
    move v1, v4

    :goto_39
    if-ge v1, v2, :cond_8b

    .line 125
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    aget-wide v6, v5, v1

    cmpl-double v5, p1, v6

    if-nez v5, :cond_52

    move v5, v4

    :goto_44
    if-ge v5, v3, :cond_52

    .line 127
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v6, v6, v1

    aget-wide v7, v6, v5

    double-to-float v6, v7

    aput v6, p3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 130
    :cond_52
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    add-int/lit8 v6, v1, 0x1

    aget-wide v7, v5, v6

    cmpg-double v7, p1, v7

    if-gez v7, :cond_89

    .line 131
    aget-wide v7, v5, v6

    aget-wide v9, v5, v1

    sub-double/2addr v7, v9

    .line 132
    aget-wide v9, v5, v1

    sub-double v9, p1, v9

    div-double/2addr v9, v7

    :goto_66
    if-ge v4, v3, :cond_88

    .line 134
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v5, v2, v1

    aget-wide v15, v5, v4

    .line 135
    aget-object v2, v2, v6

    aget-wide v17, v2, v4

    .line 136
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v5, v2, v1

    aget-wide v19, v5, v4

    .line 137
    aget-object v2, v2, v6

    aget-wide v21, v2, v4

    move-wide v11, v7

    move-wide v13, v9

    .line 138
    invoke-static/range {v11 .. v22}, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->interpolate(DDDDDD)D

    move-result-wide v11

    double-to-float v2, v11

    aput v2, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_66

    :cond_88
    return-void

    :cond_89
    move v1, v6

    goto :goto_39

    :cond_8b
    return-void
.end method

.method public getSlope(DI)D
    .registers 27

    move-object/from16 v0, p0

    .line 202
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v2, v1

    const/4 v3, 0x0

    .line 204
    aget-wide v4, v1, v3

    cmpg-double v4, p1, v4

    if-gez v4, :cond_f

    .line 205
    aget-wide v4, v1, v3

    goto :goto_1c

    :cond_f
    add-int/lit8 v4, v2, -0x1

    .line 206
    aget-wide v5, v1, v4

    cmpl-double v5, p1, v5

    if-ltz v5, :cond_1a

    .line 207
    aget-wide v4, v1, v4

    goto :goto_1c

    :cond_1a
    move-wide/from16 v4, p1

    :goto_1c
    add-int/lit8 v1, v2, -0x1

    if-ge v3, v1, :cond_51

    .line 210
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    add-int/lit8 v6, v3, 0x1

    aget-wide v7, v1, v6

    cmpg-double v7, v4, v7

    if-gtz v7, :cond_4f

    .line 211
    aget-wide v7, v1, v6

    aget-wide v9, v1, v3

    sub-double/2addr v7, v9

    .line 212
    aget-wide v9, v1, v3

    sub-double/2addr v4, v9

    div-double v13, v4, v7

    .line 213
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v2, v1, v3

    aget-wide v15, v2, p3

    .line 214
    aget-object v1, v1, v6

    aget-wide v17, v1, p3

    .line 215
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v2, v1, v3

    aget-wide v19, v2, p3

    .line 216
    aget-object v1, v1, v6

    aget-wide v21, v1, p3

    move-wide v11, v7

    .line 217
    invoke-static/range {v11 .. v22}, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->diff(DDDDDD)D

    move-result-wide v1

    div-double/2addr v1, v7

    return-wide v1

    :cond_4f
    move v3, v6

    goto :goto_1c

    :cond_51
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public getSlope(D[D)V
    .registers 29

    move-object/from16 v0, p0

    .line 175
    iget-object v1, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    array-length v2, v1

    .line 176
    iget-object v3, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    array-length v3, v3

    .line 177
    aget-wide v5, v1, v4

    cmpg-double v5, p1, v5

    if-gtz v5, :cond_14

    .line 178
    aget-wide v5, v1, v4

    goto :goto_21

    :cond_14
    add-int/lit8 v5, v2, -0x1

    .line 179
    aget-wide v6, v1, v5

    cmpl-double v6, p1, v6

    if-ltz v6, :cond_1f

    .line 180
    aget-wide v5, v1, v5

    goto :goto_21

    :cond_1f
    move-wide/from16 v5, p1

    :goto_21
    move v1, v4

    :goto_22
    add-int/lit8 v7, v2, -0x1

    if-ge v1, v7, :cond_5d

    .line 184
    iget-object v7, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    add-int/lit8 v8, v1, 0x1

    aget-wide v9, v7, v8

    cmpg-double v9, v5, v9

    if-gtz v9, :cond_5b

    .line 185
    aget-wide v9, v7, v8

    aget-wide v11, v7, v1

    sub-double/2addr v9, v11

    .line 186
    aget-wide v11, v7, v1

    sub-double/2addr v5, v11

    div-double/2addr v5, v9

    :goto_39
    if-ge v4, v3, :cond_5d

    .line 188
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mY:[[D

    aget-object v7, v2, v1

    aget-wide v17, v7, v4

    .line 189
    aget-object v2, v2, v8

    aget-wide v19, v2, v4

    .line 190
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mTangent:[[D

    aget-object v7, v2, v1

    aget-wide v21, v7, v4

    .line 191
    aget-object v2, v2, v8

    aget-wide v23, v2, v4

    move-wide v13, v9

    move-wide v15, v5

    .line 192
    invoke-static/range {v13 .. v24}, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->diff(DDDDDD)D

    move-result-wide v11

    div-double/2addr v11, v9

    aput-wide v11, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    :cond_5b
    move v1, v8

    goto :goto_22

    :cond_5d
    return-void
.end method

.method public getTimePoints()[D
    .registers 2

    .line 225
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/MonotonicCurveFit;->mT:[D

    return-object v0
.end method
