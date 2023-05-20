.class public Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "WiFiSwitchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$onItemCallback;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_guide_wifi_ssid_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field private activity_guide_wifi_support_warnning:Landroid/widget/TextView;

.field private activity_wifi_pb:Landroid/widget/ProgressBar;

.field private activity_wifi_rv:Landroidx/recyclerview/widget/RecyclerView;

.field private alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

.field private btn_connect:Landroid/widget/Button;

.field private center_title:Landroid/widget/TextView;

.field private et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

.field private et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

.field private layout_left:Landroid/widget/LinearLayout;

.field private myConfigDispose:Lio/reactivex/disposables/Disposable;

.field private wifiListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;

.field private wifiLoadingDispose:Lio/reactivex/disposables/Disposable;

.field private wifisBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "WiFiSwitchActivity"

    .line 63
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->TAG:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->wifisBeanList:Ljava/util/List;

    return-void
.end method

.method private SendWiFiData()V
    .registers 5

    .line 232
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->WIFICONFIG_WIFI:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 233
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "sid"

    .line 235
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "passwd"

    .line 236
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v2

    .line 238
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 240
    :goto_2a
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->wifiLoadingDispose:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;)Ljava/lang/String;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;)Landroid/widget/ProgressBar;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->activity_wifi_pb:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method private checkAvailable()Z
    .registers 5

    .line 293
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const v0, 0x7f0a01f2

    .line 294
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f110235

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 296
    :cond_28
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getWiFiList()V
    .registers 6

    .line 168
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0xa

    invoke-static {v1, v2, v3, v4, v0}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private switchWiFi()V
    .registers 6

    .line 201
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SWITCH_WIFI:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 202
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "ssid"

    .line 204
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "passwd"

    .line 205
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v2

    .line 207
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 210
    :goto_2a
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 211
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    .line 212
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_4b
    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 246
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 247
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :try_start_1d
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    .line 250
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "body"

    .line 251
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_32} :catch_108

    const/16 v2, 0x3f1

    const-string v3, "status"

    if-ne v1, v2, :cond_d7

    .line 253
    :try_start_38
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v1, :cond_41

    .line 254
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 255
    :cond_41
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->activity_wifi_pb:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_4c

    .line 256
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->activity_wifi_pb:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 258
    :cond_4c
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10c

    .line 259
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 260
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/Bean/WiFListBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/WiFListBean;

    .line 261
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->wifisBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 263
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/WiFListBean;->getBody()Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;->getWifis()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d1

    const/4 v0, 0x0

    .line 264
    :goto_81
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/WiFListBean;->getBody()Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;->getWifis()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d1

    .line 265
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/WiFListBean;->getBody()Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;->getWifis()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;->getSsid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_ce

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/WiFListBean;->getBody()Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;->getWifis()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;->getSsid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/pilotlab/rollereye/Common/CommonConstant;->WIFI_DIRECT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ce

    .line 266
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->wifisBeanList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/WiFListBean;->getBody()Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;->getWifis()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_ce
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    .line 270
    :cond_d1
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->wifiListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->updateUI()V

    goto :goto_10c

    :cond_d7
    const/16 p1, 0x3f2

    if-ne v1, p1, :cond_10c

    .line 273
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_e4

    .line 274
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 275
    :cond_e4
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_10c

    const p1, 0x7f110283

    .line 276
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity$4;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 281
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V
    :try_end_107
    .catch Lorg/json/JSONException; {:try_start_38 .. :try_end_107} :catch_108

    goto :goto_10c

    :catch_108
    move-exception p1

    .line 286
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_10c
    :goto_10c
    return-void
.end method

.method protected initEvent()V
    .registers 3

    .line 90
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 91
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->btn_connect:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 107
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method protected initView()V
    .registers 4

    .line 119
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a01f2

    .line 120
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->btn_connect:Landroid/widget/Button;

    const v0, 0x7f0a0210

    .line 121
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->center_title:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0448

    .line 123
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00dc

    .line 124
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->activity_guide_wifi_support_warnning:Landroid/widget/TextView;

    const v0, 0x7f0a00db

    .line 125
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->activity_guide_wifi_ssid_layout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a00da

    .line 127
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a00d8

    .line 128
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

    .line 129
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 130
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v1, 0x7f110239

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->setMessage(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v1, 0x7f110011

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->setTitle(Ljava/lang/String;)V

    const v0, 0x7f0a01bb

    .line 132
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->activity_wifi_rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 133
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->wifisBeanList:Ljava/util/List;

    invoke-direct {v0, p0, v1, p0}, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$onItemCallback;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->wifiListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;

    .line 134
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->activity_wifi_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 135
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->activity_wifi_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 136
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->activity_wifi_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DividerItemDecoration;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 138
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->activity_wifi_rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->wifiListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 139
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0, v2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v0, 0x7f0a01b2

    .line 141
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->activity_wifi_pb:Landroid/widget/ProgressBar;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01f2

    if-eq p1, v0, :cond_13

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_f

    goto :goto_52

    .line 320
    :cond_f
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->finish()V

    goto :goto_52

    .line 304
    :cond_13
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->checkAvailable()Z

    move-result p1

    if-eqz p1, :cond_52

    .line 305
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p1, :cond_52

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_52

    .line 306
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne p1, v0, :cond_35

    .line 307
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->switchWiFi()V

    goto :goto_52

    :cond_35
    const p1, 0x7f110282

    .line 309
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity$5;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 314
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_52
    :goto_52
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 327
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 4

    .line 332
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->requestFocus()Z

    .line 333
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->wifisBeanList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;->getSsid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 158
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onPause()V

    .line 159
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 160
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 162
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->wifiLoadingDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1b

    .line 163
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1b
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 148
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 149
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 150
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 152
    :cond_14
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->getWiFiList()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0054

    .line 78
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 9

    .line 219
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    .line 220
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f11023a

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->activity_guide_wifi_support_warnning:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801ab

    .line 223
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 224
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->activity_guide_wifi_support_warnning:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->activity_guide_wifi_support_warnning:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    int-to-double v5, v2

    mul-double/2addr v5, v3

    double-to-int v2, v5

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 225
    new-instance v1, Landroid/text/style/ImageSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v0, 0x3

    const/16 v2, 0x22

    .line 226
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 227
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->activity_guide_wifi_support_warnning:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 83
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpView()V

    .line 84
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->initView()V

    .line 85
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;->initEvent()V

    return-void
.end method
