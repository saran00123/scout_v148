.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$27;
.super Ljava/lang/Object;
.source "Camera2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->onItemAdd(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;Landroid/widget/EditText;)V
    .registers 3

    .line 2299
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$27;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$27;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 5

    .line 2302
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$27;->val$et:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 2303
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$27;->val$et:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 2304
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$27;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$7100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$27$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$27$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$27;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
