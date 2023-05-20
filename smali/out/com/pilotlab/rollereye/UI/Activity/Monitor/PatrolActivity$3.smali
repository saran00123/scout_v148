.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$3;
.super Ljava/lang/Object;
.source "PatrolActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->deleteSchedule(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;I)V
    .registers 3

    .line 223
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    iput p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 226
    sget-object p2, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_DELETE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 227
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 229
    :try_start_7
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 230
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$3;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "name"

    .line 231
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception v1

    .line 233
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 235
    :goto_2b
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v1

    if-eqz v1, :cond_80

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 236
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v1

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 237
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;

    move-result-object p2

    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$3;->val$position:I

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/UI/Adapter/RouteAdapter;->removeData(I)V

    .line 238
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_76

    .line 239
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_80

    .line 240
    :cond_76
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/PatrolActivity;)Landroid/widget/RelativeLayout;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 242
    :cond_80
    :goto_80
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
