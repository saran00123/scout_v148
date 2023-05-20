.class Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$MyDataBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;


# direct methods
.method private constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V
    .registers 2

    .line 717
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$1;)V
    .registers 3

    .line 717
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$MyDataBroadCastReceiver;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 721
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 723
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$MyDataBroadCastReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$3000(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V

    :cond_1e
    return-void
.end method
