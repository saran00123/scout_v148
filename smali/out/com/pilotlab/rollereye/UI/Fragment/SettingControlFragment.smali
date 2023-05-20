.class public Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;
.super Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;
.source "SettingControlFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$OnFragmentInteractionListener;,
        Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$ParamEnum;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingControlFragment"


# instance fields
.field private controlConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fragment_setting_control_init_imu:Landroid/widget/RelativeLayout;

.field private fragment_setting_control_left_sb:Landroid/widget/SeekBar;

.field private fragment_setting_control_left_tv:Landroid/widget/TextView;

.field private fragment_setting_control_right_sb:Landroid/widget/SeekBar;

.field private fragment_setting_control_right_tv:Landroid/widget/TextView;

.field private fragment_setting_control_tarck_img:Landroid/widget/ImageView;

.field private fragment_setting_control_track_switch:Landroid/widget/Switch;

.field private fragment_setting_control_vio_switch:Landroid/widget/Switch;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mListener:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$OnFragmentInteractionListener;

.field private motionBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

.field private myLoadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

.field private myParam:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$ParamEnum;

.field private p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->motionBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;)Landroid/widget/TextView;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_left_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;)Ljava/util/Map;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->controlConfig:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;)Landroid/widget/TextView;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_right_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->motionBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    return-object p0
.end method

.method private data2View()V
    .registers 4

    .line 315
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->motionBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    if-eqz v0, :cond_44

    .line 316
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;->getVIO()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    .line 317
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_vio_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_17

    .line 318
    :cond_12
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_vio_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 320
    :goto_17
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->motionBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;->getTrack()I

    move-result v0

    if-ne v0, v2, :cond_32

    .line 321
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_track_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 322
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_tarck_img:Landroid/widget/ImageView;

    const v2, 0x7f08019f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 323
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_tarck_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_44

    .line 325
    :cond_32
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_track_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 326
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_tarck_img:Landroid/widget/ImageView;

    const v2, 0x7f08017d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_tarck_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_44
    :goto_44
    return-void
.end method

.method private getMotionParam()V
    .registers 6

    .line 244
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_GET_PARAM:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 245
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 247
    :try_start_7
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "motion"

    .line 248
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "groups"

    .line 249
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception v2

    .line 251
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 253
    :goto_1b
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_3a

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 254
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->myLoadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    .line 255
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_3a
    return-void
.end method

.method private initData()V
    .registers 4

    .line 202
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getControlConfig(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->controlConfig:Ljava/util/Map;

    .line 204
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_left_tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->controlConfig:Ljava/util/Map;

    const-string v2, "Left_Sensitivity"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_left_sb:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_left_tv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 207
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_right_tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->controlConfig:Ljava/util/Map;

    const-string v2, "Right_Sensitivity"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_right_sb:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_right_tv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 211
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->getMotionParam()V

    return-void
.end method

.method private initEvent()V
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_left_sb:Landroid/widget/SeekBar;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$1;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 159
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_right_sb:Landroid/widget/SeekBar;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$2;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 177
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_init_imu:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_vio_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_vio_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$3;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 189
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_track_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_track_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$4;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$4;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private initIMU()V
    .registers 6

    .line 391
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->INIT_IMU:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 392
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 393
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 394
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    :cond_22
    return-void
.end method

.method private initView()V
    .registers 4

    .line 216
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 217
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v1, 0x7f110288

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->setTitle(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v1, 0x7f110289

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->setMessage(Ljava/lang/String;)V

    .line 220
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->myLoadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 222
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0379

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_right_sb:Landroid/widget/SeekBar;

    .line 223
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0376

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_left_sb:Landroid/widget/SeekBar;

    .line 224
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0377

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_left_tv:Landroid/widget/TextView;

    .line 225
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->view:Landroid/view/View;

    const v1, 0x7f0a037a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_right_tv:Landroid/widget/TextView;

    .line 227
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0374

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_init_imu:Landroid/widget/RelativeLayout;

    .line 228
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0380

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_vio_switch:Landroid/widget/Switch;

    .line 229
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->view:Landroid/view/View;

    const v1, 0x7f0a037d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_track_switch:Landroid/widget/Switch;

    .line 231
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->view:Landroid/view/View;

    const v1, 0x7f0a037b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_tarck_img:Landroid/widget/ImageView;

    return-void
.end method

.method public static newInstance()Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;
    .registers 1

    .line 81
    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;-><init>()V

    return-object v0
.end method

.method private setParam(Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$ParamEnum;)V
    .registers 7

    .line 370
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->motionBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    if-eqz v0, :cond_4f

    .line 371
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_SET_PARAM:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 372
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 374
    :try_start_b
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->motionBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "motion"

    .line 375
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "SettingControlFragment"

    .line 376
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception v2

    .line 378
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 380
    :goto_2e
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 381
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->myLoadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    .line 382
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->myParam:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$ParamEnum;

    .line 383
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_4f
    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 114
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getTag()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_11

    const/16 v1, 0x24

    if-eq v0, v1, :cond_11

    goto :goto_36

    .line 117
    :cond_11
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultP2PClient(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne p1, v0, :cond_36

    .line 118
    :cond_33
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->initP2PClient()V

    :cond_36
    :goto_36
    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 261
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v0, v1, :cond_e6

    .line 263
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    .line 264
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_17} :catch_e2

    const/16 v2, 0xbcd

    const-string v3, "SettingControlFragment"

    const-string v4, "status"

    const-string v5, "body"

    if-ne v1, v2, :cond_3d

    .line 266
    :try_start_21
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_2a

    .line 267
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 269
    :cond_2a
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 270
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e6

    .line 271
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e6

    :cond_3d
    const/16 v2, 0xbbd

    if-ne v1, v2, :cond_7f

    .line 276
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->myLoadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v1, :cond_4a

    .line 277
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->myLoadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 279
    :cond_4a
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 280
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e6

    .line 281
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 282
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/Bean/ParamBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ParamBean;

    .line 283
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean;->getBody()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->getMotion()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->motionBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    .line 285
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->data2View()V

    goto :goto_e6

    :cond_7f
    const/16 p1, 0xbbc

    if-ne v1, p1, :cond_e6

    .line 288
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->myLoadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_8c

    .line 289
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->myLoadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 290
    :cond_8c
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set_param:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_d0

    .line 293
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->myParam:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$ParamEnum;

    if-eqz p1, :cond_e6

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->myParam:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$ParamEnum;

    sget-object v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$ParamEnum;->TRACK:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$ParamEnum;

    if-ne p1, v0, :cond_e6

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p1, :cond_e6

    .line 294
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->motionBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;->getTrack()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setTrackParam(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_e6

    .line 297
    :cond_d0
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_track_switch:Landroid/widget/Switch;

    const v0, 0x7f110108

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V
    :try_end_e1
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_e1} :catch_e2

    goto :goto_e6

    :catch_e2
    move-exception p1

    .line 301
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_e6
    :goto_e6
    return-void
.end method

.method protected initP2PClient()V
    .registers 3

    .line 125
    monitor-enter p0

    .line 126
    :try_start_1
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    .line 127
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4

    .line 334
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 335
    instance-of v0, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_c

    .line 336
    check-cast p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$OnFragmentInteractionListener;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$OnFragmentInteractionListener;

    return-void

    .line 338
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

.method public onButtonPressed(Landroid/net/Uri;)V
    .registers 3

    .line 237
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_7

    .line 238
    invoke-interface {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$OnFragmentInteractionListener;->onFragmentInteraction(Landroid/net/Uri;)V

    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0374

    if-eq p1, v0, :cond_39

    const v0, 0x7f0a037d

    if-eq p1, v0, :cond_1a

    const v0, 0x7f0a0380

    if-eq p1, v0, :cond_14

    goto :goto_3c

    .line 356
    :cond_14
    sget-object p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$ParamEnum;->VIO:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$ParamEnum;

    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->setParam(Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$ParamEnum;)V

    goto :goto_3c

    .line 359
    :cond_1a
    sget-object p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$ParamEnum;->TRACK:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$ParamEnum;

    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->setParam(Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$ParamEnum;)V

    .line 360
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_track_switch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 361
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_tarck_img:Landroid/widget/ImageView;

    const v0, 0x7f08019f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3c

    .line 362
    :cond_30
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->fragment_setting_control_tarck_img:Landroid/widget/ImageView;

    const v0, 0x7f08017d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3c

    .line 353
    :cond_39
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->initIMU()V

    :goto_3c
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 87
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d009b

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->view:Landroid/view/View;

    .line 96
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->initView()V

    .line 97
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->initEvent()V

    .line 98
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .registers 2

    .line 308
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onDestroyView()V

    .line 309
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->myLoadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_a

    .line 310
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_a
    return-void
.end method

.method public onDetach()V
    .registers 2

    .line 345
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onDetach()V

    const/4 v0, 0x0

    .line 346
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$OnFragmentInteractionListener;

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 132
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onPause()V

    .line 133
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 134
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 136
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1b

    .line 137
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1b
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 104
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onResume()V

    .line 105
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 106
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 108
    :cond_14
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->initP2PClient()V

    .line 109
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->initData()V

    return-void
.end method
