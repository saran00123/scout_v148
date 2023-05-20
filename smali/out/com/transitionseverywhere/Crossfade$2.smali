.class Lcom/transitionseverywhere/Crossfade$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Crossfade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transitionseverywhere/Crossfade;->createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transitionseverywhere/Crossfade;

.field final synthetic val$endDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$useParentOverlay:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transitionseverywhere/Crossfade;ZLandroid/view/View;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 6

    .line 230
    iput-object p1, p0, Lcom/transitionseverywhere/Crossfade$2;->this$0:Lcom/transitionseverywhere/Crossfade;

    iput-boolean p2, p0, Lcom/transitionseverywhere/Crossfade$2;->val$useParentOverlay:Z

    iput-object p3, p0, Lcom/transitionseverywhere/Crossfade$2;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/transitionseverywhere/Crossfade$2;->val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p5, p0, Lcom/transitionseverywhere/Crossfade$2;->val$endDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 233
    iget-boolean p1, p0, Lcom/transitionseverywhere/Crossfade$2;->val$useParentOverlay:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/transitionseverywhere/Crossfade$2;->val$view:Landroid/view/View;

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    goto :goto_17

    :cond_11
    iget-object p1, p0, Lcom/transitionseverywhere/Crossfade$2;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object p1

    .line 235
    :goto_17
    iget-object v0, p0, Lcom/transitionseverywhere/Crossfade$2;->val$startDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v0, p0, Lcom/transitionseverywhere/Crossfade$2;->this$0:Lcom/transitionseverywhere/Crossfade;

    invoke-static {v0}, Lcom/transitionseverywhere/Crossfade;->access$000(Lcom/transitionseverywhere/Crossfade;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 237
    iget-object v0, p0, Lcom/transitionseverywhere/Crossfade$2;->val$endDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_2a
    return-void
.end method
