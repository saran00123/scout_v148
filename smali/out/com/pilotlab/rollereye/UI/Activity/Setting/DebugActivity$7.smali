.class Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$7;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V
    .registers 2

    .line 546
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    .line 549
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEMO_CES:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 550
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    if-eqz p2, :cond_10

    const/4 p2, 0x1

    .line 553
    :try_start_c
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_14

    :cond_10
    const/4 p2, 0x0

    .line 555
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 557
    :goto_14
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$1400(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p2

    if-eqz p2, :cond_35

    .line 558
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p2

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p1

    .line 561
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_35
    :goto_35
    return-void
.end method
