.class Lcom/pilotlab/rollereye/CustomerView/TouchView$1;
.super Ljava/lang/Object;
.source "TouchView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/CustomerView/TouchView;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/CustomerView/TouchView;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/CustomerView/TouchView;)V
    .registers 2

    .line 315
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 318
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/pilotlab/rollereye/CustomerView/TouchView;->touchImageX:F

    .line 319
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/TouchView$1;->this$0:Lcom/pilotlab/rollereye/CustomerView/TouchView;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/TouchView;->invalidate()V

    return-void
.end method
