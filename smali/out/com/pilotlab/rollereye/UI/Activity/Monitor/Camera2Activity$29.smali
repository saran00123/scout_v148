.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$29;
.super Ljava/lang/Object;
.source "Camera2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->onItemDelete(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;I)V
    .registers 3

    .line 2335
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$29;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    iput p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$29;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .line 2338
    sget-object p2, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_DELETE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 2339
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2341
    :try_start_7
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2342
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$29;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$7200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$29;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "name"

    .line 2343
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception v1

    .line 2345
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2347
    :goto_2b
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$29;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$7300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v1

    if-eqz v1, :cond_b5

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$29;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$7400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 2348
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$29;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$7500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v1

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 2349
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$29;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$7600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;

    move-result-object p2

    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$29;->val$position:I

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/UI/Adapter/WayPointListAdapter;->removeData(I)V

    .line 2351
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$29;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$5500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_b5

    const/4 p2, 0x0

    .line 2352
    :goto_6b
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$29;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$5500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_b5

    .line 2353
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$29;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$5500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->getP2PdownloadBean()Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getFileName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$29;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$7200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$29;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/WayPointBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/WayPointBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 2354
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity$29;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;->access$5500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadEnd()V

    :cond_b2
    add-int/lit8 p2, p2, 0x1

    goto :goto_6b

    .line 2359
    :cond_b5
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
