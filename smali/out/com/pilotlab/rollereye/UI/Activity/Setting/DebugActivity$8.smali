.class Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$8;
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

    .line 566
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 9

    .line 570
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->VIDEO_SET_RESOLUTION:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 571
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 573
    :try_start_7
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_11} :catch_9c

    const-string v2, "height"

    const-string v3, "width"

    const/4 v4, 0x0

    if-ne p2, v1, :cond_5a

    .line 574
    :try_start_18
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Landroid/widget/RadioButton;

    move-result-object p2

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    const v5, 0x7f080074

    invoke-virtual {v1, v5}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 575
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Landroid/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 576
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$1800(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p2

    if-eqz p2, :cond_a0

    const/16 p2, 0x500

    .line 577
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 p2, 0x2d0

    .line 578
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 579
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$1900(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p2

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_a0

    .line 582
    :cond_5a
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Landroid/widget/RadioButton;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 583
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Landroid/widget/RadioButton;

    move-result-object p2

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    const v4, 0x7f080076

    invoke-virtual {v1, v4}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 584
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$2000(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p2

    if-eqz p2, :cond_a0

    const/16 p2, 0x780

    .line 585
    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 p2, 0x438

    .line 586
    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 587
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->access$2100(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p2

    new-instance v1, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    :try_end_9b
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_9b} :catch_9c

    goto :goto_a0

    :catch_9c
    move-exception p1

    .line 592
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_a0
    :goto_a0
    return-void
.end method
