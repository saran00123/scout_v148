.class public Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;
.super Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;
.source "SettingConnectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pilotlab/rollereye/UI/Adapter/DeviceListAdapter$onItemCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$OnConnectFragmentListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private deviceListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/DeviceListAdapter;

.field private fragment_setting_connect_alexa:Landroid/widget/LinearLayout;

.field private fragment_setting_connect_alexa_cus_config:Landroid/widget/RelativeLayout;

.field private fragment_setting_connect_change_wifi_pwd:Landroid/widget/RelativeLayout;

.field private fragment_setting_connect_connect_status_img:Landroid/widget/ImageView;

.field private fragment_setting_connect_connect_status_ry:Landroid/widget/RelativeLayout;

.field private fragment_setting_connect_connect_status_tv:Landroid/widget/TextView;

.field private fragment_setting_connect_current_device:Landroid/widget/LinearLayout;

.field private fragment_setting_connect_current_device_sn:Landroid/widget/TextView;

.field private fragment_setting_connect_google:Landroid/widget/LinearLayout;

.field private fragment_setting_connect_google_assistant:Landroid/widget/LinearLayout;

.field private fragment_setting_connect_google_assistant_config:Landroid/widget/RelativeLayout;

.field private fragment_setting_connect_google_config:Landroid/widget/RelativeLayout;

.field private fragment_setting_connect_remote_network:Landroid/widget/RelativeLayout;

.field private fragment_setting_connect_remove:Landroid/widget/RelativeLayout;

.field private fragment_setting_connect_select_device:Landroid/widget/LinearLayout;

.field private fragment_setting_connect_select_device_list:Landroidx/recyclerview/widget/RecyclerView;

.field private fragment_setting_connect_switch_wifi:Landroid/widget/RelativeLayout;

.field private fragment_setting_connect_wifipassword:Landroid/widget/LinearLayout;

.field private list_client:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/P2P/P2PClient;",
            ">;"
        }
    .end annotation
.end field

.field private lm:Landroid/location/LocationManager;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mListener:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$OnConnectFragmentListener;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;-><init>()V

    const-string v0, "SettingConnectFragment"

    .line 76
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;Lcom/pilotlab/rollereye/P2P/P2PClient;)V
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->unbindP2PClinet(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    return-void
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)Landroid/view/View;
    .registers 1

    .line 74
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)V
    .registers 1

    .line 74
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->checkGPS()V

    return-void
.end method

.method private checkGPS()V
    .registers 8

    .line 542
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->lm:Landroid/location/LocationManager;

    .line 543
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->lm:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 545
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 546
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 547
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_4a

    :cond_2d
    const v0, 0x7f1102ad

    .line 549
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$5;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$5;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :goto_4a
    return-void
.end method

.method private checkUserPermission()V
    .registers 5

    .line 563
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getSocketServices()Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->isConnect()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 564
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEVICE_SN:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 565
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_15
    const-string v2, "userID"

    .line 567
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Global;->getUser_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception v2

    .line 569
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 571
    :goto_27
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 572
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getSocketServices()Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    :cond_36
    return-void
.end method

.method private connected()V
    .registers 4

    .line 300
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_connect_status_tv:Landroid/widget/TextView;

    const v1, 0x7f110013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 301
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_connect_status_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_connect_status_img:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private disConnect()V
    .registers 4

    .line 294
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_connect_status_tv:Landroid/widget/TextView;

    const v1, 0x7f11001c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 295
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_connect_status_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_connect_status_img:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private initAdapter()V
    .registers 4

    .line 253
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/DeviceListAdapter;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->list_client:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/pilotlab/rollereye/UI/Adapter/DeviceListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/DeviceListAdapter$onItemCallback;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->deviceListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/DeviceListAdapter;

    .line 254
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_select_device_list:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 255
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_select_device_list:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 256
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/MyDividerItemDecoration;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pilotlab/rollereye/CustomerView/MyDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 257
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/MyDividerItemDecoration;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_select_device_list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 259
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_select_device_list:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->deviceListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/DeviceListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initConnect()V
    .registers 3

    .line 274
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 275
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 276
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->connected()V

    goto :goto_2b

    .line 278
    :cond_24
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->disConnect()V

    goto :goto_2b

    .line 281
    :cond_28
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->disConnect()V

    :goto_2b
    return-void
.end method

.method private initDatas()V
    .registers 1

    .line 322
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->initConnect()V

    .line 323
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->initSN()V

    .line 324
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->initMode()V

    .line 325
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->initP2PList()V

    .line 326
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->initRemoteConfig()V

    return-void
.end method

.method private initEvent()V
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_connect_status_ry:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_remote_network:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_switch_wifi:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_change_wifi_pwd:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_alexa_cus_config:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_google_config:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_google_assistant_config:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_remove:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initMode()V
    .registers 4

    .line 263
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    const/16 v2, 0x8

    if-ne v0, v1, :cond_2f

    .line 264
    new-instance v0, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/DataBase/P2PClientHelper;->getDevices()Ljava/util/List;

    move-result-object v0

    .line 265
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_29

    .line 266
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_select_device:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_34

    .line 267
    :cond_29
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_select_device:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_34

    .line 269
    :cond_2f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_select_device:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_34
    return-void
.end method

.method private initP2PList()V
    .registers 6

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->list_client:Ljava/util/List;

    .line 243
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getP2PService()Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PService;->getList_client()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 244
    :goto_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_54

    .line 245
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 246
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v3

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 247
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->list_client:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 249
    :cond_54
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->deviceListAdapter:Lcom/pilotlab/rollereye/UI/Adapter/DeviceListAdapter;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->list_client:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Adapter/DeviceListAdapter;->setDataAndUpdateUI(Ljava/util/List;)V

    return-void
.end method

.method private initPermission()V
    .registers 4

    .line 578
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/Fragment;)V

    const/4 v1, 0x1

    .line 579
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->setLogging(Z)V

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 580
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$6;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$6;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)V

    .line 581
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private initRemoteConfig()V
    .registers 5

    .line 203
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_9e

    .line 204
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v2, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_38

    .line 205
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_remove:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_remote_network:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_wifipassword:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_alexa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_switch_wifi:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_c1

    .line 212
    :cond_38
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v2, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v2, :cond_7a

    .line 213
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_remote_network:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_switch_wifi:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_alexa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_google:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_google_assistant:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_remove:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_wifipassword:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c1

    .line 221
    :cond_7a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_switch_wifi:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_remote_network:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 223
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_alexa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_google:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_google_assistant:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_wifipassword:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_remove:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_c1

    .line 230
    :cond_9e
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_remote_network:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_switch_wifi:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_alexa:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_google:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_google_assistant:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_wifipassword:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_remove:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_c1
    return-void
.end method

.method private initSN()V
    .registers 4

    .line 286
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    const v1, 0x7f110036

    if-eqz v0, :cond_3f

    .line 287
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 288
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_current_device_sn:Landroid/widget/TextView;

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_44

    .line 289
    :cond_39
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_current_device_sn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_44

    .line 290
    :cond_3f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_current_device_sn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_44
    return-void
.end method

.method private initView()V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    const v1, 0x7f0a035e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_connect_status_ry:Landroid/widget/RelativeLayout;

    .line 174
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    const v1, 0x7f0a035f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_connect_status_tv:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    const v1, 0x7f0a035d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_connect_status_img:Landroid/widget/ImageView;

    .line 176
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0360

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_current_device:Landroid/widget/LinearLayout;

    .line 177
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0362

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_current_device_sn:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    const v1, 0x7f0a036f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_select_device:Landroid/widget/LinearLayout;

    .line 180
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0370

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_select_device_list:Landroidx/recyclerview/widget/RecyclerView;

    .line 182
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    const v1, 0x7f0a036d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_remote_network:Landroid/widget/RelativeLayout;

    .line 183
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0371

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_switch_wifi:Landroid/widget/RelativeLayout;

    .line 184
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_alexa:Landroid/widget/LinearLayout;

    .line 185
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0364

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_google:Landroid/widget/LinearLayout;

    .line 186
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0365

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_google_assistant:Landroid/widget/LinearLayout;

    .line 187
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    const v1, 0x7f0a035b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_change_wifi_pwd:Landroid/widget/RelativeLayout;

    .line 188
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0373

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_wifipassword:Landroid/widget/LinearLayout;

    .line 190
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0358

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_alexa_cus_config:Landroid/widget/RelativeLayout;

    .line 191
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0369

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_google_config:Landroid/widget/RelativeLayout;

    .line 192
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0366

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_google_assistant_config:Landroid/widget/RelativeLayout;

    .line 194
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    const v1, 0x7f0a036e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->fragment_setting_connect_remove:Landroid/widget/RelativeLayout;

    .line 197
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-void
.end method

.method public static newInstance()Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;
    .registers 2

    .line 115
    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;-><init>()V

    .line 116
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 117
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private querySkill(I)V
    .registers 5

    .line 458
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 459
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v0

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->querySkills(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 460
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$3;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private unbindP2PClinet(Lcom/pilotlab/rollereye/P2P/P2PClient;)V
    .registers 6

    .line 441
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->list_client:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 442
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->list_client:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/P2P/P2PClient;

    .line 443
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/Global;->setP2PClient(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 444
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setDefaultP2PClient(Landroid/content/Context;Ljava/lang/String;)V

    .line 446
    :cond_23
    new-instance v0, Lcom/pilotlab/rollereye/DataBase/UserHelper;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/DataBase/UserHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Global;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/rollereye/DataBase/UserHelper;->DeleteUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getP2PService()Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object v0

    .line 448
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/P2P/P2PService;->removeClientByUid(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->list_client:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5a

    .line 451
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->setP2PClient(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 453
    :cond_5a
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    const/16 v3, 0x24

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;-><init>(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V
    .registers 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 308
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getTag()I

    move-result p1

    packed-switch p1, :pswitch_data_14

    goto :goto_13

    .line 316
    :pswitch_c
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->initDatas()V

    goto :goto_13

    .line 311
    :pswitch_10
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->initMode()V

    :goto_13
    return-void

    :pswitch_data_14
    .packed-switch 0x20
        :pswitch_10
        :pswitch_10
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "userID"

    const-string v1, "body"

    .line 607
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v2

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->SOCKET_TYPE:I

    if-ne v2, v3, :cond_d2

    .line 608
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    .line 609
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->TAG:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :try_start_15
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 612
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v3, 0x3e9

    if-eq p1, v3, :cond_26

    goto/16 :goto_d2

    .line 614
    :cond_26
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_b9

    .line 616
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "local userID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pilotlab/rollereye/Global;->getUser_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", Device userID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pilotlab/rollereye/Global;->getUser_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a4

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a4

    const p1, 0x7f110234

    .line 619
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$7;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$7;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 625
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_d2

    .line 627
    :cond_a4
    invoke-static {v4, v3, v4}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->symTimeAndZone(Lcom/pilotlab/rollereye/P2P/P2PClient;ZLjava/lang/String;)V

    .line 628
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 629
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 630
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_d2

    .line 633
    :cond_b9
    invoke-static {v4, v3, v4}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->symTimeAndZone(Lcom/pilotlab/rollereye/P2P/P2PClient;ZLjava/lang/String;)V

    .line 634
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 635
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 636
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_cd
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_cd} :catch_ce

    goto :goto_d2

    :catch_ce
    move-exception p1

    .line 641
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_d2
    :goto_d2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 648
    invoke-super {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x1314

    if-ne p1, p2, :cond_40

    .line 650
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->lm:Landroid/location/LocationManager;

    const-string p2, "gps"

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 652
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 653
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiConfigActivity;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 654
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_40

    :cond_23
    const p1, 0x7f110263

    .line 656
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$8;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$8;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 661
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_40
    :goto_40
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4

    .line 337
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 338
    instance-of v0, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$OnConnectFragmentListener;

    if-eqz v0, :cond_c

    .line 339
    check-cast p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$OnConnectFragmentListener;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$OnConnectFragmentListener;

    return-void

    .line 341
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement OnFragmentInteractionListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onButtonPressed()V
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$OnConnectFragmentListener;

    if-eqz v0, :cond_7

    .line 331
    invoke-interface {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$OnConnectFragmentListener;->onConnectFragment()V

    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 354
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_a2

    goto/16 :goto_a1

    .line 368
    :sswitch_e
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiSwitchActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a1

    .line 389
    :sswitch_1c
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p1

    if-nez p1, :cond_2b

    return-void

    :cond_2b
    const p1, 0x7f110281

    .line 392
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f110071

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)V

    const p1, 0x7f11003a

    .line 430
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$2;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$2;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)V

    move-object v0, p0

    .line 392
    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 435
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_a1

    .line 363
    :sswitch_53
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->checkUserPermission()V

    goto :goto_a1

    :sswitch_57
    const/4 p1, 0x2

    .line 379
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->querySkill(I)V

    goto :goto_a1

    :sswitch_5c
    const-string p1, "param_url"

    const-string v1, "https://madeby.google.com/home-app/?deeplink=setup%2Fha_linking%3Fagent_id%3Dscout-smart-home"

    .line 382
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/ThirdPartLoginActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 384
    sget-object p1, Lcom/pilotlab/rollereye/Common/CommonConstant;->GOOGLE_HOME:Ljava/lang/String;

    const-string v1, "param_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_a1

    .line 357
    :sswitch_77
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->isConnected()Z

    move-result p1

    if-nez p1, :cond_a1

    .line 358
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_a1

    .line 372
    :sswitch_90
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/WiFiPwdActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_a1

    :sswitch_9d
    const/4 p1, 0x1

    .line 376
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->querySkill(I)V

    :cond_a1
    :goto_a1
    return-void

    :sswitch_data_a2
    .sparse-switch
        0x7f0a0358 -> :sswitch_9d
        0x7f0a035b -> :sswitch_90
        0x7f0a035e -> :sswitch_77
        0x7f0a0366 -> :sswitch_5c
        0x7f0a0369 -> :sswitch_57
        0x7f0a036d -> :sswitch_53
        0x7f0a036e -> :sswitch_1c
        0x7f0a0371 -> :sswitch_e
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 123
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getArguments()Landroid/os/Bundle;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d009a

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    .line 134
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->initView()V

    .line 135
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->initEvent()V

    .line 136
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->initAdapter()V

    .line 138
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDetach()V
    .registers 2

    .line 348
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onDetach()V

    const/4 v0, 0x0

    .line 349
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$OnConnectFragmentListener;

    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 6

    .line 516
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    .line 518
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x2

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

    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$4;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$4;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 525
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->list_client:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/P2P/P2PClient;

    .line 527
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p2

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p2

    if-eqz p2, :cond_72

    .line 528
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p2

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p2

    if-eq p2, p1, :cond_72

    .line 529
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/Global;->setP2PClient(Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 530
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setDefaultP2PClient(Landroid/content/Context;Ljava/lang/String;)V

    .line 531
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;

    new-instance v1, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    const/16 v2, 0x24

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;-><init>(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;)V

    invoke-virtual {p2, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_72
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 153
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onPause()V

    .line 154
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 155
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 157
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1b

    .line 158
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1b
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 144
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onResume()V

    .line 145
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 146
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 148
    :cond_14
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->initDatas()V

    return-void
.end method
