.class Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$8;
.super Ljava/util/ArrayList;
.source "WiFiConfigActivityBAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->connectWifiByNameAndPwd(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/net/wifi/WifiNetworkSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;

.field final synthetic val$suggestion2:Landroid/net/wifi/WifiNetworkSuggestion;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;Landroid/net/wifi/WifiNetworkSuggestion;)V
    .registers 3

    .line 634
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$8;->val$suggestion2:Landroid/net/wifi/WifiNetworkSuggestion;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 637
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$8;->val$suggestion2:Landroid/net/wifi/WifiNetworkSuggestion;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$8;->add(Ljava/lang/Object;)Z

    return-void
.end method
