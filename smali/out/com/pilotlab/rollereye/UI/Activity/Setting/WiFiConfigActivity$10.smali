.class Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$10;
.super Ljava/lang/Object;
.source "WiFiConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)V
    .registers 2

    .line 515
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 518
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$10;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-virtual {v0, p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->startActivity(Landroid/content/Intent;)V

    .line 520
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
