.class Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WiFiConfigActivityBAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)V
    .registers 2

    .line 674
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 677
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.wifi.action.WIFI_NETWORK_SUGGESTION_POST_CONNECTION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 682
    :cond_d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$NetworkChangeReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->connnectResult(Z)V

    return-void
.end method
