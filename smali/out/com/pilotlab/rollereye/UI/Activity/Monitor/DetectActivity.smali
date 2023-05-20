.class public Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "DetectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_detect_inside_motion_img:Landroid/widget/ImageView;

.field private activity_detect_inside_motion_layout:Landroid/widget/RelativeLayout;

.field private activity_detect_motion_onoff_layout:Landroid/widget/RelativeLayout;

.field private activity_detect_motion_onoff_switch:Landroid/widget/Switch;

.field private activity_detect_motion_tips:Landroid/widget/TextView;

.field private activity_detect_nsv:Landroidx/core/widget/NestedScrollView;

.field private activity_detect_outside_motion_img:Landroid/widget/ImageView;

.field private activity_detect_outside_motion_layout:Landroid/widget/RelativeLayout;

.field private activity_detect_person_onoff_layout:Landroid/widget/RelativeLayout;

.field private activity_detect_person_onoff_switch:Landroid/widget/Switch;

.field private activity_detect_pet_cat_switch:Landroid/widget/Switch;

.field private activity_detect_pet_dog_switch:Landroid/widget/Switch;

.field private activity_detect_pet_layout:Landroid/widget/LinearLayout;

.field private activity_detect_pet_onoff_layout:Landroid/widget/LinearLayout;

.field private activity_detect_pet_onoff_switch:Landroid/widget/Switch;

.field private activity_detect_sound_layout:Landroid/widget/LinearLayout;

.field private activity_detect_sound_onoff_switch:Landroid/widget/Switch;

.field private activity_detect_zone_activity_zone_layout:Landroid/widget/RelativeLayout;

.field private activity_detect_zone_layout:Landroid/widget/LinearLayout;

.field private activity_detect_zone_onoff_switch:Landroid/widget/Switch;

.field private areasBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;

.field private center_title:Landroid/widget/TextView;

.field private contourBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean$ContourBean;",
            ">;"
        }
    .end annotation
.end field

.field private layout_left:Landroid/widget/LinearLayout;

.field private monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "DetectActivity"

    .line 42
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/LinearLayout;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_pet_layout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/LinearLayout;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_zone_layout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/Switch;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_pet_cat_switch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/Switch;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_pet_dog_switch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroidx/core/widget/NestedScrollView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_nsv:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/Switch;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_pet_onoff_switch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/LinearLayout;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_sound_layout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_motion_onoff_layout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/TextView;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_motion_tips:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_zone_activity_zone_layout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private initData()V
    .registers 6

    .line 291
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_GET_PARAM:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 292
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 294
    :try_start_7
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "monitor"

    .line 295
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "groups"

    .line 296
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v2

    .line 298
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 300
    :goto_1b
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_3c

    .line 301
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 302
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 303
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    :cond_3c
    return-void
.end method

.method private setParam()V
    .registers 6

    .line 388
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    if-nez v0, :cond_5

    return-void

    .line 391
    :cond_5
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_SET_PARAM:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 392
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 394
    :try_start_c
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "monitor"

    .line 395
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v2

    .line 398
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 400
    :goto_2f
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_43

    .line 401
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_43
    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 309
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 310
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v0, v1, :cond_e9

    .line 312
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    .line 313
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xbbd

    if-ne v1, v2, :cond_e9

    .line 316
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v1, :cond_27

    .line 317
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_27
    const-string v1, "body"

    .line 319
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "status"

    .line 320
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e9

    .line 321
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 322
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/Bean/ParamBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ParamBean;

    .line 323
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean;->getBody()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->getMonitor()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    .line 325
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_motion_onoff_switch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->isMotion()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 326
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_person_onoff_switch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->isPerson()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 327
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_pet_cat_switch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->isCat()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 328
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_pet_dog_switch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->isDog()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 329
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_pet_onoff_switch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->isDog()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a0

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->isCat()Z

    move-result v0

    if-eqz v0, :cond_9e

    goto :goto_a0

    :cond_9e
    move v0, v1

    goto :goto_a1

    :cond_a0
    :goto_a0
    const/4 v0, 0x1

    :goto_a1
    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 330
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_zone_onoff_switch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->getZone()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;->isActive()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 331
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->getZone()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;->getAreas()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->areasBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;

    .line 332
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->areasBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;->isInside()Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_da

    .line 333
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_inside_motion_img:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_outside_motion_img:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_e9

    .line 336
    :cond_da
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_inside_motion_img:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 337
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_outside_motion_img:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_e4
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_e4} :catch_e5

    goto :goto_e9

    :catch_e5
    move-exception p1

    .line 342
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_e9
    :goto_e9
    return-void
.end method

.method protected initEvent()V
    .registers 3

    .line 90
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 91
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_zone_activity_zone_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_motion_onoff_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_person_onoff_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_pet_onoff_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 158
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_pet_cat_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$4;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 168
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_pet_dog_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$5;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 178
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_sound_onoff_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$6;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 195
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_zone_onoff_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$7;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$7;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 226
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_inside_motion_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_outside_motion_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_motion_onoff_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_person_onoff_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_pet_onoff_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_pet_dog_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_pet_cat_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_zone_onoff_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 3

    .line 237
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a0448

    .line 238
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 239
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->center_title:Landroid/widget/TextView;

    .line 240
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f110060

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a00b0

    .line 243
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_nsv:Landroidx/core/widget/NestedScrollView;

    const v0, 0x7f0a00ac

    .line 245
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_motion_onoff_layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00ad

    .line 246
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_motion_onoff_switch:Landroid/widget/Switch;

    const v0, 0x7f0a00ae

    .line 247
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_motion_tips:Landroid/widget/TextView;

    const v0, 0x7f0a00b3

    .line 249
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_person_onoff_layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00b4

    .line 250
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_person_onoff_switch:Landroid/widget/Switch;

    const v0, 0x7f0a00ba

    .line 252
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_pet_onoff_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00b9

    .line 253
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_pet_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00bb

    .line 254
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_pet_onoff_switch:Landroid/widget/Switch;

    const v0, 0x7f0a00b6

    .line 255
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_pet_cat_switch:Landroid/widget/Switch;

    const v0, 0x7f0a00b8

    .line 256
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_pet_dog_switch:Landroid/widget/Switch;

    const v0, 0x7f0a00c5

    .line 258
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_zone_onoff_switch:Landroid/widget/Switch;

    const v0, 0x7f0a00c3

    .line 259
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_zone_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00c2

    .line 260
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_zone_activity_zone_layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00aa

    .line 261
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_inside_motion_img:Landroid/widget/ImageView;

    const v0, 0x7f0a00b1

    .line 262
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_outside_motion_img:Landroid/widget/ImageView;

    const v0, 0x7f0a00ab

    .line 263
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_inside_motion_layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00b2

    .line 264
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_outside_motion_layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00bc

    .line 266
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_sound_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00be

    .line 267
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_sound_onoff_switch:Landroid/widget/Switch;

    .line 269
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 407
    invoke-super {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-eq p2, p1, :cond_7

    goto :goto_18

    :cond_7
    const-string p1, "contour"

    .line 410
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->contourBeanList:Ljava/util/List;

    .line 411
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->areasBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->contourBeanList:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;->setContour(Ljava/util/List;)V

    :goto_18
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 350
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_5a

    goto :goto_58

    .line 353
    :sswitch_10
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->finish()V

    goto :goto_58

    .line 356
    :sswitch_14
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    if-eqz p1, :cond_58

    .line 357
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/ZoneActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 358
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->monitor:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    const-string v1, "monitor"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 p1, 0x123

    .line 359
    invoke-virtual {p0, v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_58

    .line 363
    :sswitch_2a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_inside_motion_img:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_outside_motion_img:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->areasBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;

    if-eqz p1, :cond_3b

    .line 366
    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;->setInside(Z)V

    .line 367
    :cond_3b
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->setParam()V

    goto :goto_58

    .line 382
    :sswitch_3f
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->setParam()V

    goto :goto_58

    .line 370
    :sswitch_43
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_inside_motion_img:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->activity_detect_outside_motion_img:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->areasBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;

    if-eqz p1, :cond_55

    const/4 v0, 0x1

    .line 373
    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean$AreasBean;->setInside(Z)V

    .line 374
    :cond_55
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->setParam()V

    :cond_58
    :goto_58
    return-void

    nop

    :sswitch_data_5a
    .sparse-switch
        0x7f0a00ab -> :sswitch_43
        0x7f0a00ad -> :sswitch_3f
        0x7f0a00b2 -> :sswitch_2a
        0x7f0a00b4 -> :sswitch_3f
        0x7f0a00b6 -> :sswitch_3f
        0x7f0a00b8 -> :sswitch_3f
        0x7f0a00bb -> :sswitch_3f
        0x7f0a00c2 -> :sswitch_14
        0x7f0a00c5 -> :sswitch_3f
        0x7f0a0448 -> :sswitch_10
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 2

    .line 284
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    .line 285
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 286
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0027

    .line 80
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 2

    .line 275
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    .line 276
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 277
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 279
    :cond_14
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->initData()V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 85
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->initView()V

    .line 86
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->initEvent()V

    return-void
.end method
