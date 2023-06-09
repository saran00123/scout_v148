.class public Landroidx/constraintlayout/motion/widget/KeyPosition;
.super Landroidx/constraintlayout/motion/widget/KeyPositionBase;
.source "KeyPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;
    }
.end annotation


# static fields
.field static final KEY_TYPE:I = 0x2

.field static final NAME:Ljava/lang/String; = "KeyPosition"

.field private static final PERCENT_X:Ljava/lang/String; = "percentX"

.field private static final PERCENT_Y:Ljava/lang/String; = "percentY"

.field private static final TAG:Ljava/lang/String; = "KeyPosition"

.field public static final TYPE_CARTESIAN:I = 0x0

.field public static final TYPE_PATH:I = 0x1

.field public static final TYPE_SCREEN:I = 0x2


# instance fields
.field mAltPercentX:F

.field mAltPercentY:F

.field private mCalculatedPositionX:F

.field private mCalculatedPositionY:F

.field mDrawPath:I

.field mPathMotionArc:I

.field mPercentHeight:F

.field mPercentWidth:F

.field mPercentX:F

.field mPercentY:F

.field mPositionType:I

.field mTransitionEasing:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 44
    sget v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 46
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 47
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 48
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 49
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 50
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    .line 51
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    .line 55
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    .line 57
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    .line 58
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    const/4 v0, 0x2

    .line 62
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mType:I

    return-void
.end method

.method private calcCartesianPosition(FFFF)V
    .registers 10

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    .line 114
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_f

    :cond_d
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 115
    :goto_f
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_19

    move v2, v1

    goto :goto_1b

    :cond_19
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    .line 116
    :goto_1b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_25

    move v3, v1

    goto :goto_27

    :cond_25
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 117
    :goto_27
    iget v4, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_32

    :cond_30
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    :goto_32
    mul-float/2addr v0, p3

    add-float/2addr p1, v0

    mul-float/2addr v1, p4

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 118
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    mul-float/2addr p3, v2

    add-float/2addr p2, p3

    mul-float/2addr p4, v3

    add-float/2addr p2, p4

    float-to-int p1, p2

    int-to-float p1, p1

    .line 119
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    return-void
.end method

.method private calcPathPosition(FFFF)V
    .registers 8

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    neg-float v0, p4

    .line 106
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    mul-float v2, p3, v1

    add-float/2addr p1, v2

    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    mul-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    mul-float/2addr p4, v1

    add-float/2addr p2, p4

    mul-float/2addr p3, v2

    add-float/2addr p2, p3

    .line 107
    iput p2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    return-void
.end method

.method private calcScreenPosition(II)V
    .registers 6

    const/4 v0, 0x0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 96
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    mul-float/2addr p1, v1

    int-to-float v2, v0

    add-float/2addr p1, v2

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    sub-int/2addr p2, v0

    int-to-float p1, p2

    mul-float/2addr p1, v1

    add-float/2addr p1, v2

    .line 97
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    return-void
.end method


# virtual methods
.method public addValues(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/SplineSet;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method calcPosition(IIFFFF)V
    .registers 9

    .line 77
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    .line 87
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcCartesianPosition(FFFF)V

    return-void

    .line 79
    :cond_c
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcScreenPosition(II)V

    return-void

    .line 83
    :cond_10
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcPathPosition(FFFF)V

    return-void
.end method

.method getPositionX()F
    .registers 2

    .line 124
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    return v0
.end method

.method getPositionY()F
    .registers 2

    .line 129
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    return v0
.end method

.method public intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z
    .registers 14

    .line 237
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->calcPosition(IIFFFF)V

    .line 238
    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionX:F

    sub-float/2addr p5, p1

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41a00000    # 20.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_30

    iget p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCalculatedPositionY:F

    sub-float/2addr p6, p1

    .line 239
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_30

    const/4 p1, 0x1

    return p1

    :cond_30
    const/4 p1, 0x0

    return p1
.end method

.method public load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 67
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->access$000(Landroidx/constraintlayout/motion/widget/KeyPosition;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .registers 15

    .line 137
    iget v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 147
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->positionCartAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    return-void

    .line 143
    :cond_13
    invoke-virtual/range {p0 .. p7}, Landroidx/constraintlayout/motion/widget/KeyPosition;->positionScreenAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    return-void

    :cond_17
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 140
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/KeyPosition;->positionPathAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    return-void
.end method

.method positionCartAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .registers 13

    .line 213
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 214
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    .line 215
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 216
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr v1, v0

    sub-float/2addr p2, p1

    const/4 v2, 0x0

    .line 219
    aget-object v3, p5, v2

    const-string v4, "percentX"

    const/4 v5, 0x1

    if-eqz v3, :cond_34

    .line 220
    aget-object p5, p5, v2

    invoke-virtual {v4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2b

    sub-float/2addr p3, v0

    div-float/2addr p3, v1

    .line 221
    aput p3, p6, v2

    sub-float/2addr p4, p1

    div-float/2addr p4, p2

    .line 222
    aput p4, p6, v5

    goto :goto_42

    :cond_2b
    sub-float/2addr p3, v0

    div-float/2addr p3, v1

    .line 224
    aput p3, p6, v5

    sub-float/2addr p4, p1

    div-float/2addr p4, p2

    .line 225
    aput p4, p6, v2

    goto :goto_42

    .line 228
    :cond_34
    aput-object v4, p5, v2

    sub-float/2addr p3, v0

    div-float/2addr p3, v1

    .line 229
    aput p3, p6, v2

    const-string p3, "percentY"

    .line 230
    aput-object p3, p5, v5

    sub-float/2addr p4, p1

    div-float/2addr p4, p2

    .line 231
    aput p4, p6, v5

    :goto_42
    return-void
.end method

.method positionPathAttributes(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .registers 14

    .line 154
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 155
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    .line 156
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 157
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr v1, v0

    sub-float/2addr p2, p1

    float-to-double v2, v1

    float-to-double v4, p2

    .line 160
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-double v3, v2

    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v3, v3, v5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v3, :cond_32

    .line 162
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "distance ~ 0"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 163
    aput p1, p6, v5

    .line 164
    aput p1, p6, v4

    return-void

    :cond_32
    div-float/2addr v1, v2

    div-float/2addr p2, v2

    sub-float/2addr p4, p1

    mul-float p1, v1, p4

    sub-float/2addr p3, v0

    mul-float v0, p3, p2

    sub-float/2addr p1, v0

    div-float/2addr p1, v2

    mul-float/2addr v1, p3

    mul-float/2addr p2, p4

    add-float/2addr v1, p2

    div-float/2addr v1, v2

    .line 172
    aget-object p2, p5, v5

    const-string p3, "percentX"

    if-eqz p2, :cond_53

    .line 173
    aget-object p2, p5, v5

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5d

    .line 174
    aput v1, p6, v5

    .line 175
    aput p1, p6, v4

    goto :goto_5d

    .line 178
    :cond_53
    aput-object p3, p5, v5

    const-string p2, "percentY"

    .line 179
    aput-object p2, p5, v4

    .line 180
    aput v1, p6, v5

    .line 181
    aput p1, p6, v4

    :cond_5d
    :goto_5d
    return-void
.end method

.method positionScreenAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .registers 11

    .line 186
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    .line 187
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    .line 188
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    .line 189
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 193
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    .line 194
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    const/4 p3, 0x0

    .line 196
    aget-object v0, p6, p3

    const-string v1, "percentX"

    const/4 v2, 0x1

    if-eqz v0, :cond_3c

    .line 197
    aget-object p6, p6, p3

    invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_33

    int-to-float p2, p2

    div-float/2addr p4, p2

    .line 198
    aput p4, p7, p3

    int-to-float p1, p1

    div-float/2addr p5, p1

    .line 199
    aput p5, p7, v2

    goto :goto_4a

    :cond_33
    int-to-float p2, p2

    div-float/2addr p4, p2

    .line 201
    aput p4, p7, v2

    int-to-float p1, p1

    div-float/2addr p5, p1

    .line 202
    aput p5, p7, p3

    goto :goto_4a

    .line 205
    :cond_3c
    aput-object v1, p6, p3

    int-to-float p2, p2

    div-float/2addr p4, p2

    .line 206
    aput p4, p7, p3

    const-string p2, "percentY"

    .line 207
    aput-object p2, p6, v2

    int-to-float p1, p1

    div-float/2addr p5, p1

    .line 208
    aput p5, p7, v2

    :goto_4a
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .line 346
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_88

    goto :goto_50

    :sswitch_8
    const-string v0, "percentY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p1, 0x6

    goto :goto_51

    :sswitch_12
    const-string v0, "percentX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p1, 0x5

    goto :goto_51

    :sswitch_1c
    const-string/jumbo v0, "sizePercent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p1, 0x4

    goto :goto_51

    :sswitch_27
    const-string v0, "drawPath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p1, 0x1

    goto :goto_51

    :sswitch_31
    const-string v0, "percentHeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p1, 0x3

    goto :goto_51

    :sswitch_3b
    const-string v0, "percentWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p1, 0x2

    goto :goto_51

    :sswitch_45
    const-string/jumbo v0, "transitionEasing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p1, 0x0

    goto :goto_51

    :cond_50
    :goto_50
    const/4 p1, -0x1

    :goto_51
    packed-switch p1, :pswitch_data_a6

    goto :goto_87

    .line 366
    :pswitch_55
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    goto :goto_87

    .line 363
    :pswitch_5c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    goto :goto_87

    .line 360
    :pswitch_63
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    goto :goto_87

    .line 357
    :pswitch_6c
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    goto :goto_87

    .line 354
    :pswitch_73
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toFloat(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    goto :goto_87

    .line 351
    :pswitch_7a
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/KeyPosition;->toInt(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    goto :goto_87

    .line 348
    :pswitch_81
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    :goto_87
    return-void

    :sswitch_data_88
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_45
        -0x4330437f -> :sswitch_3b
        -0x3ca72634 -> :sswitch_31
        -0x314b3c77 -> :sswitch_27
        -0xbefb6fc -> :sswitch_1c
        0x198424b3 -> :sswitch_12
        0x198424b4 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_81
        :pswitch_7a
        :pswitch_73
        :pswitch_6c
        :pswitch_63
        :pswitch_5c
        :pswitch_55
    .end packed-switch
.end method
