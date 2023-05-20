.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$8;
.super Ljava/lang/Object;
.source "PatrolActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->newRoute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;Landroid/widget/EditText;)V
    .registers 3

    .line 565
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$8;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    .line 568
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$8;->val$et:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 569
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    .line 570
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 571
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_OUT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 572
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_START:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 573
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "pathName"

    if-eqz p2, :cond_2c

    .line 576
    :try_start_26
    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_33

    :catch_2a
    move-exception p2

    goto :goto_30

    .line 578
    :cond_2c
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_2f} :catch_2a

    goto :goto_33

    .line 581
    :goto_30
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 583
    :goto_33
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$2900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p2

    if-eqz p2, :cond_64

    .line 584
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$3000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p2

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v3, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 585
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$3100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 587
    :cond_64
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 588
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 589
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->startActivity(Landroid/content/Intent;)V

    :cond_75
    return-void
.end method
