.class Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;
.super Landroidx/constraintlayout/motion/widget/MotionInterpolator;
.source "MotionLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DecelerateInterpolator"
.end annotation


# instance fields
.field currentP:F

.field initalV:F

.field maxA:F

.field final synthetic this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .registers 2

    .line 1695
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/MotionInterpolator;-><init>()V

    const/4 p1, 0x0

    .line 1696
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->initalV:F

    .line 1697
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->currentP:F

    return-void
.end method


# virtual methods
.method public config(FFF)V
    .registers 4

    .line 1701
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->initalV:F

    .line 1702
    iput p2, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->currentP:F

    .line 1703
    iput p3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->maxA:F

    return-void
.end method

.method public getInterpolation(F)F
    .registers 7

    .line 1708
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->initalV:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lez v1, :cond_28

    .line 1709
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->maxA:F

    div-float v3, v0, v1

    cmpg-float v3, v3, p1

    if-gez v3, :cond_13

    div-float p1, v0, v1

    .line 1712
    :cond_13
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->initalV:F

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->maxA:F

    mul-float v4, v3, p1

    sub-float v4, v1, v4

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    mul-float/2addr v1, p1

    mul-float/2addr v3, p1

    mul-float/2addr v3, p1

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 1714
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->currentP:F

    :goto_26
    add-float/2addr v1, p1

    return v1

    :cond_28
    neg-float v1, v0

    .line 1717
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->maxA:F

    div-float/2addr v1, v3

    cmpg-float v1, v1, p1

    if-gez v1, :cond_32

    neg-float p1, v0

    div-float/2addr p1, v3

    .line 1720
    :cond_32
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->initalV:F

    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->maxA:F

    mul-float v4, v3, p1

    add-float/2addr v4, v1

    iput v4, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    mul-float/2addr v1, p1

    mul-float/2addr v3, p1

    mul-float/2addr v3, p1

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 1722
    iget p1, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->currentP:F

    goto :goto_26
.end method

.method public getVelocity()F
    .registers 2

    .line 1728
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionLayout$DecelerateInterpolator;->this$0:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    return v0
.end method
