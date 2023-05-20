.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$10$1;
.super Ljava/lang/Object;
.source "PatrolActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$10;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$10;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$10;)V
    .registers 2

    .line 605
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$10$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 608
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$10$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$10;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$3200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 609
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$10$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$10;

    iget-object v1, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$3200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
