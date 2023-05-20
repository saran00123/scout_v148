.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$23$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Camera2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$23;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$23;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$23;)V
    .registers 2

    .line 2207
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$23$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$23;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 2210
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2211
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$23$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$23;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$23;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$6600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2212
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$23$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$23;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$23;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$6700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method
