.class Lcom/pilotlab/rollereye/CustomerView/ScanView$1;
.super Ljava/lang/Object;
.source "ScanView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/CustomerView/ScanView;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/CustomerView/ScanView;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/CustomerView/ScanView;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/ScanView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 280
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/ScanView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->access$002(Lcom/pilotlab/rollereye/CustomerView/ScanView;I)I

    .line 281
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/ScanView;

    invoke-static {p1}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->access$100(Lcom/pilotlab/rollereye/CustomerView/ScanView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/ScanView;

    invoke-static {v1}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->access$100(Lcom/pilotlab/rollereye/CustomerView/ScanView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/ScanView;

    invoke-static {v2}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->access$100(Lcom/pilotlab/rollereye/CustomerView/ScanView;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/ScanView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/ScanView;

    invoke-static {v3}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->access$100(Lcom/pilotlab/rollereye/CustomerView/ScanView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/pilotlab/rollereye/CustomerView/ScanView;->postInvalidate(IIII)V

    return-void
.end method
