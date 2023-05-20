.class Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$9;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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

    .line 598
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 6

    .line 602
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEMO_IR:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 603
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 605
    :try_start_7
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$2200(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_11} :catch_7c

    const-string v2, "value"

    if-ne p2, v1, :cond_36

    .line 606
    :try_start_15
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$2300(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p2

    if-eqz p2, :cond_80

    const/4 p2, 0x1

    .line 607
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 608
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$2400(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p2

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_80

    .line 610
    :cond_36
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$2500(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    if-ne p2, v1, :cond_63

    .line 611
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$2600(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p2

    if-eqz p2, :cond_80

    const/4 p2, 0x2

    .line 612
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 613
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$2700(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p2

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_80

    :cond_63
    const/4 p2, 0x3

    .line 616
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 617
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$9;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$2800(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p2

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    :try_end_7b
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_7b} :catch_7c

    goto :goto_80

    :catch_7c
    move-exception p1

    .line 621
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_80
    :goto_80
    return-void
.end method
