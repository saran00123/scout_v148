.class public Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "WiFiConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$onItemCallback;


# instance fields
.field private ConfigFailDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private ConfigNoPermission:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private ConfigSuccessDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private SN:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private activity_guide_wifi_ssid_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field private activity_guide_wifi_support_warnning:Landroid/widget/TextView;

.field private activity_wifi_pb:Landroid/widget/ProgressBar;

.field private activity_wifi_rv:Landroidx/recyclerview/widget/RecyclerView;

.field private alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

.field private bindKey:Ljava/lang/String;

.field private btn_connect:Landroid/widget/Button;

.field private center_title:Landroid/widget/TextView;

.field private current_config_time:J

.field private et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

.field private et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

.field private isFirst:I

.field private layout_left:Landroid/widget/LinearLayout;

.field private myServerResponseDispose:Lio/reactivex/disposables/Disposable;

.field private socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

.field private tryServerBind:I

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

    .line 69
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, ""

    .line 76
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->SN:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->bindKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->isFirst:I

    .line 80
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->tryServerBind:I

    const-string v0, "WiFiConfigActivity"

    .line 82
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->TAG:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->wifisBeanList:Ljava/util/List;

    return-void
.end method

.method private GetSnData()V
    .registers 5

    .line 272
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEVICE_SN:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 273
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "userID"

    .line 275
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Global;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception v2

    .line 277
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 279
    :goto_19
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    return-void
.end method

.method private SendBindCommand()V
    .registers 3

    .line 334
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->WIFICONFIG_BIND:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/4 v1, 0x0

    .line 335
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    return-void
.end method

.method private SendWiFiData()V
    .registers 5

    .line 321
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->WIFICONFIG_WIFI:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 322
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "sid"

    .line 324
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "passwd"

    .line 325
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

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

    .line 327
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 329
    :goto_2a
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lcom/google/android/material/textfield/TextInputEditText;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->ConfigNoPermission:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->wifiLoadingDispose:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->ConfigFailDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)J
    .registers 3

    .line 69
    iget-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->current_config_time:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Ljava/lang/String;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lcom/pilotlab/rollereye/Services/SocketServices;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Landroid/widget/ProgressBar;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->activity_wifi_pb:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lio/reactivex/disposables/Disposable;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->myServerResponseDispose:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$502(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->myServerResponseDispose:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)I
    .registers 1

    .line 69
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->tryServerBind:I

    return p0
.end method

.method static synthetic access$608(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)I
    .registers 3

    .line 69
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->tryServerBind:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->tryServerBind:I

    return v0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->ConfigSuccessDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p0
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Ljava/lang/String;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->SN:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-object p0
.end method

.method private checkAvailable()Z
    .registers 5

    .line 502
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const v0, 0x7f0a01f2

    .line 503
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f110235

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 505
    :cond_28
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

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

    .line 285
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

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$6;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private initDialog()V
    .registers 12

    .line 182
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const v2, 0x7f0d006a

    .line 183
    invoke-static {p0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a023f

    .line 184
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f110232

    .line 185
    invoke-virtual {p0, v6}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x3

    .line 186
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    const v5, 0x7f0a023e

    .line 187
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f080160

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    const v6, 0x3f0ccccd    # 0.55f

    .line 188
    invoke-virtual {v0, v6}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setScale(F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 189
    invoke-virtual {v0, v3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v3, 0x7f110238

    .line 190
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v3, 0x7f11003e

    .line 191
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$3;

    invoke-direct {v9, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)V

    invoke-virtual {v0, v8, v9}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 198
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->ConfigFailDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 200
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    invoke-static {p0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 202
    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f110236

    invoke-virtual {p0, v10}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f080162

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    invoke-virtual {v0, v6}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setScale(F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 205
    invoke-virtual {v0, v8}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v8, 0x7f11003b

    .line 206
    invoke-virtual {p0, v8}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 207
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$4;

    invoke-direct {v10, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)V

    invoke-virtual {v0, v9, v10}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 217
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->ConfigSuccessDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 220
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-static {p0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 222
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f110233

    invoke-virtual {p0, v4}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 224
    invoke-virtual {v0, v6}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setScale(F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 225
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 226
    invoke-virtual {p0, v8}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 227
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$5;

    invoke-direct {v2, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 234
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->ConfigNoPermission:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-void
.end method

.method private initEvent()V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->btn_connect:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 141
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private initView()V
    .registers 4

    const v0, 0x7f0a01f2

    .line 152
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->btn_connect:Landroid/widget/Button;

    const v0, 0x7f0a0210

    .line 153
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->center_title:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0448

    .line 155
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00dc

    .line 156
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->activity_guide_wifi_support_warnning:Landroid/widget/TextView;

    const v0, 0x7f0a00db

    .line 157
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->activity_guide_wifi_ssid_layout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a00da

    .line 159
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a00d8

    .line 160
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

    .line 162
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 164
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 165
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v1, 0x7f110239

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->setMessage(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v1, 0x7f110011

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->setTitle(Ljava/lang/String;)V

    const v0, 0x7f0a01bb

    .line 167
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->activity_wifi_rv:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a01b2

    .line 169
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->activity_wifi_pb:Landroid/widget/ProgressBar;

    .line 171
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->wifisBeanList:Ljava/util/List;

    invoke-direct {v0, p0, v1, p0}, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter$onItemCallback;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->wifiListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;

    .line 172
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->activity_wifi_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 173
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->activity_wifi_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 174
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->activity_wifi_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DividerItemDecoration;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 176
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->activity_wifi_rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->wifiListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 178
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->initDialog()V

    return-void
.end method

.method private sendBind2Server()V
    .registers 6

    const/4 v0, 0x0

    .line 395
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->tryServerBind:I

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->current_config_time:J

    .line 399
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->SN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bindKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->bindKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isFirst:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->isFirst:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v0

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->SN:Ljava/lang/String;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->bindKey:Ljava/lang/String;

    iget v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->isFirst:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->bindRobot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$9;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$9;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)V

    .line 403
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->retryWhen(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$8;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)V

    .line 426
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->repeatWhen(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 446
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 447
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$7;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)V

    .line 448
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->TAG:Ljava/lang/String;

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

    .line 344
    :try_start_1a
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    .line 345
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "body"

    .line 346
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "status"

    .line 348
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x3eb

    const/16 v5, 0x3ea

    const/16 v6, 0x3e9

    if-ne v2, v3, :cond_55

    .line 349
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 350
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    if-eq v1, v6, :cond_4e

    if-eq v1, v5, :cond_4e

    if-ne v1, v4, :cond_126

    .line 353
    :cond_4e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->ConfigFailDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_126

    :cond_55
    const/16 v2, 0x3f1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_f2

    .line 356
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_63

    .line 357
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 358
    :cond_63
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->activity_wifi_pb:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_6e

    .line 359
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->activity_wifi_pb:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 360
    :cond_6e
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 361
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/Bean/WiFListBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/WiFListBean;

    .line 362
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->wifisBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 364
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/WiFListBean;->getBody()Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;->getWifis()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_ec

    .line 365
    :goto_9c
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/WiFListBean;->getBody()Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;->getWifis()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_ec

    .line 366
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/WiFListBean;->getBody()Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;->getWifis()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;->getSsid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e9

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/WiFListBean;->getBody()Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;->getWifis()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean$WifisBean;->getSsid()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->WIFI_DIRECT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e9

    .line 367
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->wifisBeanList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/WiFListBean;->getBody()Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/WiFListBean$BodyBean;->getWifis()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e9
    add-int/lit8 v3, v3, 0x1

    goto :goto_9c

    .line 371
    :cond_ec
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->wifiListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/WiFiListAdapter;->updateUI()V

    goto :goto_126

    :cond_f2
    if-ne v1, v6, :cond_116

    const-string p1, "sn"

    .line 373
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->SN:Ljava/lang/String;

    const-string p1, "bindKey"

    .line 374
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->bindKey:Ljava/lang/String;

    const-string p1, "wifi"

    .line 375
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10f

    .line 376
    iput v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->isFirst:I

    goto :goto_112

    :cond_10f
    const/4 p1, 0x1

    .line 378
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->isFirst:I

    .line 380
    :goto_112
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->SendWiFiData()V

    goto :goto_126

    :cond_116
    if-ne v1, v5, :cond_11c

    .line 382
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->SendBindCommand()V

    goto :goto_126

    :cond_11c
    if-ne v1, v4, :cond_126

    .line 384
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->sendBind2Server()V
    :try_end_121
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_121} :catch_122

    goto :goto_126

    :catch_122
    move-exception p1

    .line 388
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_126
    :goto_126
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 510
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01f2

    if-eq p1, v0, :cond_13

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_f

    goto :goto_4b

    .line 530
    :cond_f
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->finish()V

    goto :goto_4b

    .line 513
    :cond_13
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->checkAvailable()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 514
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne p1, v0, :cond_43

    const p1, 0x7f11015d

    .line 515
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$10;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity$10;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 522
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void

    .line 525
    :cond_43
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->GetSnData()V

    .line 526
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    :cond_4b
    :goto_4b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 102
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->fullScreen()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 537
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    .line 538
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->myServerResponseDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 539
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_a
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 4

    .line 544
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->requestFocus()Z

    .line 545
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->wifisBeanList:Ljava/util/List;

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

    .line 249
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onPause()V

    .line 250
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 251
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 253
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->wifiLoadingDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1b

    .line 254
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1b
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 239
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 240
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->fullScreen()V

    .line 241
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 242
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 244
    :cond_17
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->getWiFiList()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 109
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0052

    .line 115
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 9

    .line 259
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getSocketServices()Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    .line 261
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f110231

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->activity_guide_wifi_support_warnning:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801ab

    .line 264
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->activity_guide_wifi_support_warnning:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->activity_guide_wifi_support_warnning:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    int-to-double v5, v2

    mul-double/2addr v5, v3

    double-to-int v2, v5

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 266
    new-instance v1, Landroid/text/style/ImageSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v0, 0x3

    const/16 v2, 0x22

    .line 267
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 268
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->activity_guide_wifi_support_warnning:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 120
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->initView()V

    .line 121
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;->initEvent()V

    return-void
.end method
