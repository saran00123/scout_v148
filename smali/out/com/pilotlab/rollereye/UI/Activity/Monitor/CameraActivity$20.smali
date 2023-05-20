.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$20;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->cancelDialogNav()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V
    .registers 2

    .line 1802
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$20;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1805
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$20;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$5200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V

    .line 1806
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
