.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$22$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$22;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$22;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$22;)V
    .registers 2

    .line 1930
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$22$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$22;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 1933
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1934
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$22$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$22;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$22;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$5300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1935
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$22$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$22;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$22;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$5400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method
