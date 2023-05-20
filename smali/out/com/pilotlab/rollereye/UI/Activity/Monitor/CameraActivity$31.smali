.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$31;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->saveWayPoint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)V
    .registers 2

    .line 2129
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$31;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 2132
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2133
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_SAVE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 2134
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$31;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$6200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p2

    if-eqz p2, :cond_22

    .line 2135
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity$31;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;->access$6300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CameraActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p2

    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_22
    return-void
.end method
