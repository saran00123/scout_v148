.class Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$5;
.super Ljava/lang/Object;
.source "WiFiConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->initDialog()V
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

    .line 227
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 230
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 231
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->finish()V

    return-void
.end method
