.class public Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "WiFiConfigActivityBAC.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pilotlab/rollereye/UI/Adapter/ScanWiFiResultAdapter$onItemCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$NetworkChangeReceiver;
    }
.end annotation


# instance fields
.field private ConfigFailDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private ConfigNoPermission:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private ConfigSuccessDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private SN:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private activity_guide_wifi_ssid_layout:Lcom/google/android/material/textfield/TextInputLayout;

.field private activity_guide_wifi_support_warnning:Landroid/widget/TextView;

.field private activity_wifi_rv:Landroidx/recyclerview/widget/RecyclerView;

.field private alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

.field private bindKey:Ljava/lang/String;

.field private btn_connect:Landroid/widget/Button;

.field private center_title:Landroid/widget/TextView;

.field private et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

.field private et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

.field private isFirst:I

.field private layout_left:Landroid/widget/LinearLayout;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private myConfigDispose:Lio/reactivex/disposables/Disposable;

.field private myServerResponseDispose:Lio/reactivex/disposables/Disposable;

.field private myServerRetryDispose:Lio/reactivex/disposables/Disposable;

.field private networkChangeReceive:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$NetworkChangeReceiver;

.field private scanWiFiResultAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScanWiFiResultAdapter;

.field private scanWifiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

.field private tryServerBind:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, ""

    .line 80
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->SN:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->bindKey:Ljava/lang/String;

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->isFirst:I

    .line 88
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->tryServerBind:I

    const-string v0, "WiFiConfigActivity"

    .line 89
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->TAG:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->scanWifiList:Ljava/util/List;

    return-void
.end method

.method private Change2Wifi(I)Z
    .registers 4

    .line 522
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 523
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 526
    :cond_e
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 528
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->TAG:Ljava/lang/String;

    const-string v0, "\u5207\u6362\u5230\u6307\u5b9awifi\u5931\u8d25"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 531
    :cond_1f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->TAG:Ljava/lang/String;

    const-string v0, "\u5207\u6362\u5230\u6307\u5b9awifi\u6210\u529f"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private GetSnData()V
    .registers 5

    .line 271
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEVICE_SN:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 272
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "userID"

    .line 274
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

    .line 276
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 278
    :goto_19
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    return-void
.end method

.method private RegisterWifiRecever()V
    .registers 3

    .line 669
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$NetworkChangeReceiver;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$NetworkChangeReceiver;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->networkChangeReceive:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$NetworkChangeReceiver;

    .line 670
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.action.WIFI_NETWORK_SUGGESTION_POST_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 671
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->networkChangeReceive:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$NetworkChangeReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private SendBindCommand()V
    .registers 3

    .line 296
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->WIFICONFIG_BIND:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    const/4 v1, 0x0

    .line 297
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    return-void
.end method

.method private SendWiFiData()V
    .registers 5

    .line 283
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->WIFICONFIG_WIFI:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 284
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "sid"

    .line 286
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "passwd"

    .line 287
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

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

    .line 289
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 291
    :goto_2a
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)Lcom/google/android/material/textfield/TextInputEditText;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)Lio/reactivex/disposables/Disposable;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->myServerRetryDispose:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)Ljava/lang/String;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->bindKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->myServerRetryDispose:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)I
    .registers 1

    .line 73
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->isFirst:I

    return p0
.end method

.method static synthetic access$1200(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->ConfigFailDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)I
    .registers 1

    .line 73
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->tryServerBind:I

    return p0
.end method

.method static synthetic access$208(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)I
    .registers 3

    .line 73
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->tryServerBind:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->tryServerBind:I

    return v0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)Ljava/lang/String;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)Lio/reactivex/disposables/Disposable;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->myServerResponseDispose:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$402(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->myServerResponseDispose:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->ConfigSuccessDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)Ljava/lang/String;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->SN:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-object p0
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)Lio/reactivex/disposables/Disposable;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->myConfigDispose:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$802(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->myConfigDispose:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->ConfigNoPermission:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p0
.end method

.method private checkAvailable()Z
    .registers 5

    .line 689
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const v0, 0x7f0a01f2

    .line 690
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f110235

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v0, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 692
    :cond_28
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private createWifiInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .registers 7

    .line 544
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 545
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 546
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 547
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 548
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 549
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string p1, ""

    .line 552
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_44

    .line 553
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_5d

    .line 555
    :cond_44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 556
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 558
    :goto_5d
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 559
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    .line 560
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->set(I)V

    .line 561
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 562
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->set(I)V

    .line 563
    iget-object p1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p1, v3}, Ljava/util/BitSet;->set(I)V

    .line 564
    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    return-object v0
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
    invoke-virtual {p0, v6}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->getString(I)Ljava/lang/String;

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
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v3, 0x7f11003e

    .line 191
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$3;

    invoke-direct {v9, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)V

    invoke-virtual {v0, v8, v9}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 198
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->ConfigFailDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

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

    invoke-virtual {p0, v10}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->getString(I)Ljava/lang/String;

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
    invoke-virtual {p0, v8}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 207
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$4;

    invoke-direct {v10, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)V

    invoke-virtual {v0, v9, v10}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 217
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->ConfigSuccessDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

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

    invoke-virtual {p0, v4}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->getString(I)Ljava/lang/String;

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
    invoke-virtual {p0, v8}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 227
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$5;

    invoke-direct {v2, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)V

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 234
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->ConfigNoPermission:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-void
.end method

.method private initEvent()V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->btn_connect:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 147
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private initView()V
    .registers 4

    const v0, 0x7f0a01f2

    .line 158
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->btn_connect:Landroid/widget/Button;

    const v0, 0x7f0a0210

    .line 159
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->center_title:Landroid/widget/TextView;

    .line 160
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0448

    .line 161
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00dc

    .line 162
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->activity_guide_wifi_support_warnning:Landroid/widget/TextView;

    const v0, 0x7f0a00db

    .line 163
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->activity_guide_wifi_ssid_layout:Lcom/google/android/material/textfield/TextInputLayout;

    const v0, 0x7f0a00da

    .line 165
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    const v0, 0x7f0a00d8

    .line 166
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

    .line 167
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 168
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v1, 0x7f110239

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->setMessage(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v1, 0x7f110011

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->setTitle(Ljava/lang/String;)V

    const v0, 0x7f0a01bb

    .line 170
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->activity_wifi_rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 171
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/ScanWiFiResultAdapter;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->scanWifiList:Ljava/util/List;

    invoke-direct {v0, p0, v1, p0}, Lcom/pilotlab/rollereye/UI/Adapter/ScanWiFiResultAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/ScanWiFiResultAdapter$onItemCallback;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->scanWiFiResultAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScanWiFiResultAdapter;

    .line 172
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->activity_wifi_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 173
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->activity_wifi_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 174
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->activity_wifi_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DividerItemDecoration;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 176
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->activity_wifi_rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->scanWiFiResultAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScanWiFiResultAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 178
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->initDialog()V

    return-void
.end method

.method private scanWifiInfo()V
    .registers 5

    .line 451
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->scanWifiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "wifi"

    .line 454
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    .line 456
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 458
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 460
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6f

    const/4 v1, 0x0

    .line 461
    :goto_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6f

    .line 462
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_6c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6c

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/pilotlab/rollereye/Common/CommonConstant;->WIFI_DIRECT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6c

    .line 469
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->scanWifiList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 473
    :cond_6f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->scanWiFiResultAdapter:Lcom/pilotlab/rollereye/UI/Adapter/ScanWiFiResultAdapter;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Adapter/ScanWiFiResultAdapter;->updateUI()V

    return-void
.end method

.method private sendBind2Server()V
    .registers 6

    const/4 v0, 0x0

    .line 337
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->tryServerBind:I

    .line 340
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->SN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bindKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->bindKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isFirst:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->isFirst:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    const-wide/16 v3, 0x2

    invoke-static {v1, v2, v3, v4, v0}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$7;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$7;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)V

    .line 349
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$6;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)V

    .line 397
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->TAG:Ljava/lang/String;

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

    .line 306
    :try_start_1a
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 307
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "body"

    .line 308
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "status"

    .line 310
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_43

    .line 311
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 312
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->ConfigFailDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_7e

    :cond_43
    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_6a

    const-string p1, "sn"

    .line 315
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->SN:Ljava/lang/String;

    const-string p1, "bindKey"

    .line 316
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->bindKey:Ljava/lang/String;

    const-string p1, "wifi"

    .line 317
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_63

    const/4 p1, 0x0

    .line 318
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->isFirst:I

    goto :goto_66

    :cond_63
    const/4 p1, 0x1

    .line 320
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->isFirst:I

    .line 322
    :goto_66
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->SendWiFiData()V

    goto :goto_7e

    :cond_6a
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_72

    .line 324
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->SendBindCommand()V

    goto :goto_7e

    :cond_72
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_7e

    .line 326
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->sendBind2Server()V
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_79} :catch_7a

    goto :goto_7e

    :catch_7a
    move-exception p1

    .line 330
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_7e
    :goto_7e
    return-void
.end method

.method public connectWiFi()Z
    .registers 3

    .line 440
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->et_wifi_password:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual {p0, v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->connectWifiByNameAndPwd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public connectWiFi(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 489
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 490
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->TAG:Ljava/lang/String;

    const-string p2, " ***** init first ***** "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 493
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    move v3, v1

    .line 497
    :goto_28
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_67

    .line 498
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 500
    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_48

    iget-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    goto :goto_48

    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 502
    :cond_48
    :goto_48
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " set wifi 1 = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget p1, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->Change2Wifi(I)Z

    move-result p1

    return p1

    .line 509
    :cond_67
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->createWifiInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 510
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_7c

    .line 512
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->TAG:Ljava/lang/String;

    const-string p2, "\u64cd\u4f5c\u5931\u8d25,\u9700\u8981\u60a8\u5230\u624b\u673awifi\u5217\u8868\u4e2d\u53d6\u6d88\u5bf9\u8bbe\u5907\u8fde\u63a5\u7684\u4fdd\u5b58"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 514
    :cond_7c
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->Change2Wifi(I)Z

    move-result p1

    return p1
.end method

.method public connectWifiByNameAndPwd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 588
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_c

    .line 589
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->TAG:Ljava/lang/String;

    const-string p2, "mWifiManager = null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 593
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_6d

    .line 594
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->createWifiInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 595
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2c

    .line 597
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->TAG:Ljava/lang/String;

    const-string p2, "\u64cd\u4f5c\u5931\u8d25,\u9700\u8981\u60a8\u5230\u624b\u673awifi\u5217\u8868\u4e2d\u53d6\u6d88\u5bf9\u8bbe\u5907\u8fde\u63a5\u7684\u4fdd\u5b58"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->connnectResult(Z)V

    return-void

    .line 601
    :cond_2c
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newNetworkId is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p2

    if-nez p2, :cond_4f

    .line 604
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 606
    :cond_4f
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, p1, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result p1

    if-nez p1, :cond_62

    .line 608
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->TAG:Ljava/lang/String;

    const-string p2, "\u5207\u6362\u5230\u6307\u5b9awifi\u5931\u8d25"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->connnectResult(Z)V

    return-void

    .line 612
    :cond_62
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->TAG:Ljava/lang/String;

    const-string p2, "\u5207\u6362\u5230\u6307\u5b9awifi\u6210\u529f"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->connnectResult(Z)V

    goto :goto_d3

    .line 616
    :cond_6d
    new-instance v0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;-><init>()V

    .line 618
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->build()Landroid/net/wifi/WifiNetworkSuggestion;

    .line 621
    new-instance v0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;-><init>()V

    .line 623
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object v0

    .line 624
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setWpa2Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object v0

    .line 625
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setIsAppInteractionRequired(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->build()Landroid/net/wifi/WifiNetworkSuggestion;

    move-result-object v0

    .line 628
    new-instance v1, Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    invoke-direct {v1}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;-><init>()V

    .line 630
    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object p1

    .line 631
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setWpa3Passphrase(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object p1

    .line 632
    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->build()Landroid/net/wifi/WifiNetworkSuggestion;

    .line 634
    new-instance p1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$8;

    invoke-direct {p1, p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$8;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;Landroid/net/wifi/WifiNetworkSuggestion;)V

    .line 641
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiManager;->addNetworkSuggestions(Ljava/util/List;)I

    move-result p1

    .line 642
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_c4

    .line 644
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->connnectResult(Z)V

    .line 648
    :cond_c4
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.action.WIFI_NETWORK_SUGGESTION_POST_CONNECTION"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 651
    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$9;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$9;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)V

    .line 662
    invoke-virtual {p0, p2, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_d3
    return-void
.end method

.method public connnectResult(Z)V
    .registers 5

    .line 575
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->sendBind2Server()V

    return-void
.end method

.method public disconnectWifi()V
    .registers 3

    .line 435
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 436
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    return-void
.end method

.method public initWifiManage(Landroid/content/Context;)V
    .registers 3

    const-string v0, "wifi"

    .line 428
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 430
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-void
.end method

.method public is24GHz(I)Z
    .registers 3

    const/16 v0, 0x960

    if-le p1, v0, :cond_a

    const/16 v0, 0x9c4

    if-ge p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 697
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01f2

    if-eq p1, v0, :cond_13

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_f

    goto :goto_6b

    .line 739
    :cond_f
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->finish()V

    goto :goto_6b

    .line 700
    :cond_13
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->checkAvailable()Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 701
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne p1, v0, :cond_43

    const p1, 0x7f11015d

    .line 702
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$10;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$10;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 709
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void

    .line 712
    :cond_43
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->GetSnData()V

    const-wide/16 v0, 0x3c

    .line 713
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$11;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$11;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 735
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->alertDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    :cond_6b
    :goto_6b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 107
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->fullScreen()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 746
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    .line 747
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->myServerRetryDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 748
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 749
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->myServerResponseDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_11

    .line 750
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 751
    :cond_11
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->myConfigDispose:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_18

    .line 752
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 753
    :cond_18
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->networkChangeReceive:Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC$NetworkChangeReceiver;

    if-eqz v0, :cond_1f

    .line 754
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1f
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 4

    .line 759
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->requestFocus()Z

    .line 760
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->et_wifi_ssid:Lcom/google/android/material/textfield/TextInputEditText;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->scanWifiList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/ScanResult;

    iget-object p2, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

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

    :cond_14
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 239
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 240
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->fullScreen()V

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
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->scanWifiInfo()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 114
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0052

    .line 120
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 9

    .line 257
    invoke-virtual {p0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->initWifiManage(Landroid/content/Context;)V

    .line 258
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getSocketServices()Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->socketServices:Lcom/pilotlab/rollereye/Services/SocketServices;

    .line 260
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->center_title:Landroid/widget/TextView;

    const v0, 0x7f110231

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->activity_guide_wifi_support_warnning:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const v0, 0x7f0801ab

    .line 263
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->activity_guide_wifi_support_warnning:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->activity_guide_wifi_support_warnning:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    move-result v2

    int-to-double v5, v2

    mul-double/2addr v5, v3

    double-to-int v2, v5

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 265
    new-instance v1, Landroid/text/style/ImageSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/4 v0, 0x3

    const/16 v2, 0x22

    .line 266
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 267
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->activity_guide_wifi_support_warnning:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 125
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->initView()V

    .line 126
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivityBAC;->initEvent()V

    return-void
.end method
