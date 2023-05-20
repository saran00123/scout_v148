.class Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$8;
.super Ljava/lang/Object;
.source "GuideConDevActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;)V
    .registers 2

    .line 476
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 479
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->access$402(Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;Z)Z

    .line 480
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-virtual {v0, p2}, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;->startActivity(Landroid/content/Intent;)V

    .line 482
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
