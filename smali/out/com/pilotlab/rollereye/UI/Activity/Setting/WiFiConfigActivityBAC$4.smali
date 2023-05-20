.class Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$4;
.super Ljava/lang/Object;
.source "WiFiConfigActivityBAC.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 210
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 211
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 212
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;

    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 213
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;

    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->startActivity(Landroid/content/Intent;)V

    .line 214
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->finish()V

    return-void
.end method
