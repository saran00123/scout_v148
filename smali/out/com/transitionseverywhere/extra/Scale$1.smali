.class Lcom/transitionseverywhere/extra/Scale$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "Scale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/extra/Scale;->createAnimation(Landroid/view/View;FFLandroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transitionseverywhere/extra/Scale;

.field final synthetic val$initialScaleX:F

.field final synthetic val$initialScaleY:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/extra/Scale;Landroid/view/View;FF)V
    .registers 5

    .line 124
    iput-object p1, p0, Lcom/transitionseverywhere/extra/Scale$1;->this$0:Lcom/transitionseverywhere/extra/Scale;

    iput-object p2, p0, Lcom/transitionseverywhere/extra/Scale$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/transitionseverywhere/extra/Scale$1;->val$initialScaleX:F

    iput p4, p0, Lcom/transitionseverywhere/extra/Scale$1;->val$initialScaleY:F

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .registers 4
    .param p1    # Landroidx/transition/Transition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 127
    iget-object v0, p0, Lcom/transitionseverywhere/extra/Scale$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/transitionseverywhere/extra/Scale$1;->val$initialScaleX:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 128
    iget-object v0, p0, Lcom/transitionseverywhere/extra/Scale$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/transitionseverywhere/extra/Scale$1;->val$initialScaleY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 129
    invoke-virtual {p1, p0}, Landroidx/transition/Transition;->removeListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    return-void
.end method
