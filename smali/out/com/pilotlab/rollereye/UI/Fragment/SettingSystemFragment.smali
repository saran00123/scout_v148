.class public Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;
.super Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;
.source "SettingSystemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private debugTimer:Ljava/util/Timer;

.field private editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private fragment_setting_system_app_version:Landroid/widget/TextView;

.field private fragment_setting_system_debug:Landroid/widget/RelativeLayout;

.field private fragment_setting_system_firmware_mac_tv:Landroid/widget/TextView;

.field private fragment_setting_system_firmware_nas:Landroid/widget/RelativeLayout;

.field private fragment_setting_system_firmware_sound_effect_detect:Landroid/widget/RelativeLayout;

.field private fragment_setting_system_firmware_sound_effect_detect_switch:Landroid/widget/Switch;

.field private fragment_setting_system_firmware_sound_effect_patrol:Landroid/widget/RelativeLayout;

.field private fragment_setting_system_firmware_sound_effect_patrol_switch:Landroid/widget/Switch;

.field private fragment_setting_system_firmware_sound_effect_switch:Landroid/widget/Switch;

.field private fragment_setting_system_firmware_timezone:Landroid/widget/RelativeLayout;

.field private fragment_setting_system_firmware_update:Landroid/widget/RelativeLayout;

.field private fragment_setting_system_firmware_update_badge:Landroid/widget/ImageView;

.field private fragment_setting_system_firmware_update_download_tv:Landroid/widget/TextView;

.field private fragment_setting_system_firmware_version:Landroid/widget/RelativeLayout;

.field private fragment_setting_system_firmware_version_tv:Landroid/widget/TextView;

.field private fragment_setting_system_hardware_version_tv:Landroid/widget/TextView;

.field private fragment_setting_system_language:Landroid/widget/RelativeLayout;

.field private fragment_setting_system_reboot:Landroid/widget/RelativeLayout;

.field private fragment_setting_system_root:Landroid/widget/RelativeLayout;

.field private fragment_setting_system_root_tips:Landroid/widget/TextView;

.field private fragment_setting_system_sdcard_format:Landroid/widget/RelativeLayout;

.field private fragment_setting_system_sdcard_remaining_tv:Landroid/widget/TextView;

.field private fragment_setting_system_test:Landroid/widget/RelativeLayout;

.field private fragment_setting_system_user_manual:Landroid/widget/RelativeLayout;

.field private languageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private langueValue:Ljava/lang/String;

.field private mCheckStatusDisposable:Lio/reactivex/disposables/Disposable;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private otaBean:Lcom/pilotlab/rollereye/Bean/OtaBean;

.field private p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

.field private pressKeyTimer:I

.field private setting_connect_firmware_sound_value:Landroid/widget/RelativeLayout;

.field private setting_connect_firmware_sound_value_sb:Landroid/widget/SeekBar;

.field private setting_connect_firmware_sound_value_tv:Landroid/widget/TextView;

.field private setting_connect_firmware_timezone_tv:Landroid/widget/TextView;

.field private setting_system_language_tv:Landroid/widget/TextView;

.field private softWare:Ljava/lang/String;

.field private soundEffectBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;

.field private systemBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

.field private systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

.field private timeZoneAreaID:Ljava/lang/String;

.field private timeZoneBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;

.field private timeZoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 150
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;-><init>()V

    const-string v0, "SettingSystemFragment"

    .line 83
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->TAG:Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->timeZoneList:Ljava/util/List;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->languageList:Ljava/util/List;

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->softWare:Ljava/lang/String;

    const-string v0, ""

    .line 133
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->timeZoneAreaID:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->langueValue:Ljava/lang/String;

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->pressKeyTimer:I

    .line 138
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->debugTimer:Ljava/util/Timer;

    return-void
.end method

.method private OtaVersionCompare()V
    .registers 6

    .line 377
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->otaBean:Lcom/pilotlab/rollereye/Bean/OtaBean;

    if-eqz v0, :cond_4b

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->systemBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

    if-eqz v1, :cond_4b

    .line 379
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/OtaBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->getHasNew()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v1, :cond_46

    .line 380
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_update_badge:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->otaBean:Lcom/pilotlab/rollereye/Bean/OtaBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/OtaBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->getHasDownload()I

    move-result v0

    if-nez v0, :cond_40

    .line 382
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->OTA_DOWNLOAD:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 383
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_4b

    .line 384
    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 385
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->checkOtaDownloadStatus()V

    goto :goto_4b

    .line 388
    :cond_40
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_update_download_tv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4b

    .line 391
    :cond_46
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_update_badge:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_sound_effect_detect:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setting_connect_firmware_sound_value:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->soundEffectBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Landroid/widget/TextView;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setting_connect_firmware_sound_value_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)V
    .registers 1

    .line 75
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setSoundEffectConfig()V

    return-void
.end method

.method static synthetic access$502(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->mCheckStatusDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;Ljava/lang/String;Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;)V
    .registers 3

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setDialogData(Ljava/lang/String;Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;)V

    return-void
.end method

.method static synthetic access$802(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;I)I
    .registers 2

    .line 75
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->pressKeyTimer:I

    return p1
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_root:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private checkOtaDownloadStatus()V
    .registers 6

    .line 421
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->mCheckStatusDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_7

    .line 422
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_7
    const-wide/16 v0, 0x3e8

    const-wide/16 v2, 0x7d0

    .line 424
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3, v4}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$6;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$6;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private data2View()V
    .registers 5

    .line 455
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->systemBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

    const/4 v1, 0x1

    if-eqz v0, :cond_48

    .line 456
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;->getSwVer()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 457
    array-length v2, v0

    if-lez v2, :cond_1f

    .line 458
    array-length v2, v0

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->softWare:Ljava/lang/String;

    .line 459
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_version_tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->softWare:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    :cond_1f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_mac_tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->systemBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_sdcard_remaining_tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->systemBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;->getFreeSpace()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->sizeFromLong2Text(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_hardware_version_tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->systemBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;->getHwVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    :cond_48
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->timeZoneBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;

    if-eqz v0, :cond_61

    .line 467
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setting_connect_firmware_timezone_tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->getGMT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->timeZoneBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->getArea()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->timeZoneAreaID:Ljava/lang/String;

    .line 471
    :cond_61
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->soundEffectBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;

    if-eqz v0, :cond_c4

    .line 472
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;->getActivate()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_72

    .line 473
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_sound_effect_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_77

    .line 474
    :cond_72
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_sound_effect_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 476
    :goto_77
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->soundEffectBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;->getPatrolEffect()I

    move-result v0

    if-ne v0, v1, :cond_85

    .line 477
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_sound_effect_patrol_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_8a

    .line 478
    :cond_85
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_sound_effect_patrol_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 480
    :goto_8a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->soundEffectBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;->getDetectEffect()I

    move-result v0

    if-ne v0, v1, :cond_98

    .line 481
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_sound_effect_detect_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_9d

    .line 482
    :cond_98
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_sound_effect_detect_switch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 484
    :goto_9d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setting_connect_firmware_sound_value_tv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->soundEffectBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;->getEffectValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setting_connect_firmware_sound_value_sb:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->soundEffectBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;->getEffectValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_c4
    return-void
.end method

.method private dialogChoice(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;",
            ")V"
        }
    .end annotation

    .line 615
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 616
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 617
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0d0082

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0a027c

    .line 618
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 619
    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    .line 620
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 621
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_40

    .line 622
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getTruelyHeightPx(Landroid/content/Context;)I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 623
    :cond_40
    new-instance v2, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 624
    invoke-virtual {v2}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v3, 0x0

    .line 626
    :goto_54
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_72

    .line 627
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "value"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 628
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelection(I)V

    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    .line 630
    :cond_72
    new-instance p3, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$7;

    invoke-direct {p3, p0, v2, p2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$7;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;Ljava/util/List;)V

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p3, 0x3f0ccccd    # 0.55f

    .line 638
    invoke-virtual {v0, p3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setScale(F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 639
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const p1, 0x7f11003e

    .line 640
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$8;

    invoke-direct {p3, p0, p2, v2, p4}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$8;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;)V

    invoke-virtual {v0, p1, p3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const p1, 0x7f110007

    .line 653
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$9;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$9;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)V

    invoke-virtual {v0, p1, p2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 659
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method private getNasConfig()V
    .registers 6

    .line 705
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->GET_NAS_CONFIG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 706
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 707
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 708
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    :cond_22
    return-void
.end method

.method private getScoutParam()V
    .registers 6

    .line 518
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_GET_PARAM:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 519
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 521
    :try_start_7
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "system"

    .line 522
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "timeZone"

    .line 523
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "soundEffect"

    .line 524
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "groups"

    .line 525
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception v2

    .line 527
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 530
    :goto_25
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_37

    .line 531
    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_37
    return-void
.end method

.method private initData()V
    .registers 6

    .line 498
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_14

    .line 499
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_update:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1a

    .line 501
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_update:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 504
    :goto_1a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_app_version:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getScoutParam()V

    .line 507
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->OTA_QUERY_NEW_VERSION:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 508
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_3f

    .line 509
    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 512
    :cond_3f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->langueValue:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 513
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setting_system_language_tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->langueValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_50
    return-void
.end method

.method private initEvent()V
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_update:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_debug:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_test:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_sdcard_format:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_timezone:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_language:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_sound_effect_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_sound_effect_patrol_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_sound_effect_detect_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_nas:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_user_manual:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_root:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_version:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_reboot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_sound_effect_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$1;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 217
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_sound_effect_patrol_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$2;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 225
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_sound_effect_detect_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$3;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 234
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setting_connect_firmware_sound_value_sb:Landroid/widget/SeekBar;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$4;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$4;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private initLanguageList()V
    .registers 8

    .line 594
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->languageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 595
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getUserLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 598
    array-length v3, v1

    array-length v4, v2

    if-ne v3, v4, :cond_52

    const/4 v3, 0x0

    .line 599
    :goto_28
    array-length v4, v1

    if-ge v3, v4, :cond_52

    .line 600
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 601
    aget-object v5, v1, v3

    const-string v6, "id"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    aget-object v5, v2, v3

    const-string v6, "value"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    aget-object v5, v1, v3

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 604
    aget-object v5, v2, v3

    iput-object v5, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->langueValue:Ljava/lang/String;

    .line 605
    :cond_4a
    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->languageList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_52
    return-void
.end method

.method private initTimeZoneList()V
    .registers 10

    .line 582
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->timeZoneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 583
    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    .line 584
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_55

    aget-object v3, v0, v2

    .line 585
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 586
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 587
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v7}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v7

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    const/4 v8, 0x1

    invoke-static {v7, v8, v8, v4}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->createGmtOffsetString(ZZZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "value"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "id"

    .line 588
    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->timeZoneList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_55
    return-void
.end method

.method private initView()V
    .registers 3

    .line 536
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 537
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a038b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_app_version:Landroid/widget/TextView;

    .line 538
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a039c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_update:Landroid/widget/RelativeLayout;

    .line 539
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a038e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_debug:Landroid/widget/RelativeLayout;

    .line 540
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a03ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_test:Landroid/widget/RelativeLayout;

    .line 542
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a03a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_version:Landroid/widget/RelativeLayout;

    .line 543
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a03a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_version_tv:Landroid/widget/TextView;

    .line 544
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a039d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_update_badge:Landroid/widget/ImageView;

    .line 545
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a039e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_update_download_tv:Landroid/widget/TextView;

    .line 546
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a03a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_hardware_version_tv:Landroid/widget/TextView;

    .line 548
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a03a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_sdcard_format:Landroid/widget/RelativeLayout;

    .line 550
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a039b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_timezone:Landroid/widget/RelativeLayout;

    .line 551
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a051e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setting_connect_firmware_timezone_tv:Landroid/widget/TextView;

    .line 553
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a03a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_language:Landroid/widget/RelativeLayout;

    .line 554
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a051f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setting_system_language_tv:Landroid/widget/TextView;

    .line 556
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0393

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_mac_tv:Landroid/widget/TextView;

    .line 557
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a03ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_sdcard_remaining_tv:Landroid/widget/TextView;

    .line 559
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a039a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_sound_effect_switch:Landroid/widget/Switch;

    .line 560
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a051c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setting_connect_firmware_sound_value_sb:Landroid/widget/SeekBar;

    .line 561
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a051d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setting_connect_firmware_sound_value_tv:Landroid/widget/TextView;

    .line 562
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a051b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setting_connect_firmware_sound_value:Landroid/widget/RelativeLayout;

    .line 564
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0398

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_sound_effect_patrol:Landroid/widget/RelativeLayout;

    .line 565
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0399

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_sound_effect_patrol_switch:Landroid/widget/Switch;

    .line 567
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0396

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_sound_effect_detect:Landroid/widget/RelativeLayout;

    .line 568
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0397

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_sound_effect_detect_switch:Landroid/widget/Switch;

    .line 570
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0394

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_nas:Landroid/widget/RelativeLayout;

    .line 572
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a03ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_user_manual:Landroid/widget/RelativeLayout;

    .line 574
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a03a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_root:Landroid/widget/RelativeLayout;

    .line 575
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a03a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_root_tips:Landroid/widget/TextView;

    .line 577
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    const v1, 0x7f0a03a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_reboot:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static newInstance()Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;
    .registers 2

    .line 154
    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;-><init>()V

    .line 155
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 156
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private reboot()V
    .registers 6

    .line 714
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_REBOOT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 715
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 716
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow(I)V

    .line 717
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_23
    return-void
.end method

.method private setDialogData(Ljava/lang/String;Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;)V
    .registers 4

    .line 663
    sget-object v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;->TIME_ZONE:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

    if-ne p2, v0, :cond_8

    .line 664
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setTimeZone(Ljava/lang/String;)V

    goto :goto_f

    .line 665
    :cond_8
    sget-object v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;->LANGUAGE:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

    if-ne p2, v0, :cond_f

    .line 666
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setLanguage(Ljava/lang/String;)V

    :cond_f
    :goto_f
    return-void
.end method

.method private setLanguage(Ljava/lang/String;)V
    .registers 4

    .line 670
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/Utils/MultiLanguageUtils;->changeLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 671
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 672
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/HelloActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 673
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->startActivity(Landroid/content/Intent;)V

    .line 674
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finishAffinity()V

    return-void
.end method

.method private setSoundEffectConfig()V
    .registers 6

    .line 688
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->soundEffectBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;

    if-eqz v0, :cond_40

    .line 689
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_SET_PARAM:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 690
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 692
    :try_start_b
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->soundEffectBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "soundEffect"

    .line 693
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 694
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception v2

    .line 696
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 698
    :goto_2e
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_40

    .line 699
    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_40
    return-void
.end method

.method private setTimeZone(Ljava/lang/String;)V
    .registers 4

    .line 679
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->symTimeAndZone(Lcom/pilotlab/rollereye/P2P/P2PClient;ZLjava/lang/String;)V

    .line 680
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 681
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    :cond_15
    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 268
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getTag()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_11

    const/16 v1, 0x24

    if-eq v0, v1, :cond_11

    goto :goto_39

    .line 271
    :cond_11
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

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

    if-ne p1, v0, :cond_39

    .line 272
    :cond_33
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->initP2PClient()V

    .line 273
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->initData()V

    :cond_39
    :goto_39
    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 9
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 281
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v0, v1, :cond_1fa

    .line 282
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 284
    :try_start_d
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "id"

    .line 285
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_1c} :catch_1f6

    const/16 v3, 0xbbd

    const-string v4, "status"

    const-string v5, "body"

    if-ne v2, v3, :cond_70

    .line 289
    :try_start_24
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 290
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1fa

    .line 291
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 292
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/Bean/ParamBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ParamBean;

    .line 293
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean;->getBody()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->getSystem()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->systemBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

    .line 295
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean;->getBody()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->getTimeZone()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->timeZoneBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;

    .line 296
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean;->getBody()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->getSoundEffect()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->soundEffectBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;

    .line 297
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->data2View()V

    goto/16 :goto_1fa

    :cond_70
    const/16 v3, 0xbbe

    if-ne v2, v3, :cond_a6

    .line 300
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 301
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1fa

    .line 302
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 303
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/Bean/OtaBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/OtaBean;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->otaBean:Lcom/pilotlab/rollereye/Bean/OtaBean;

    .line 304
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->otaBean:Lcom/pilotlab/rollereye/Bean/OtaBean;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->OtaVersionCompare()V

    goto/16 :goto_1fa

    :cond_a6
    const/16 v3, 0xbc3

    if-ne v2, v3, :cond_102

    .line 308
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 309
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1fa

    .line 310
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 311
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/Bean/OtaStatusBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/OtaStatusBean;

    .line 312
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->getStep()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e6

    .line 314
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_update_download_tv:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1fa

    .line 315
    :cond_e6
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->getStep()I

    move-result p1

    if-le p1, v1, :cond_1fa

    .line 316
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_update_download_tv:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 317
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->mCheckStatusDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_1fa

    .line 318
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->mCheckStatusDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    goto/16 :goto_1fa

    :cond_102
    const/16 v3, 0xbc4

    if-ne v2, v3, :cond_11e

    .line 322
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 323
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1fa

    .line 324
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_119

    .line 325
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 326
    :cond_119
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getScoutParam()V

    goto/16 :goto_1fa

    :cond_11e
    const/16 v3, 0xbbc

    if-ne v2, v3, :cond_13a

    .line 329
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 330
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1fa

    .line 331
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_135

    .line 332
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 333
    :cond_135
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getScoutParam()V

    goto/16 :goto_1fa

    :cond_13a
    const/16 v3, 0xbc8

    const/4 v6, -0x1

    if-ne v2, v3, :cond_194

    .line 336
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 337
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v1, :cond_155

    .line 339
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 340
    :cond_155
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 341
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/pilotlab/rollereye/Bean/NasConfigBean;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/NasConfigBean;

    .line 342
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/NasConfigBean;->getBody()Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->getStatus()I

    move-result v1

    if-ne v1, v6, :cond_17e

    .line 343
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1fa

    :cond_17e
    const-string v1, "nasConfigBean"

    .line 346
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/NasConfigBean;->getBody()Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 347
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1fa

    :cond_194
    const/16 v0, 0xbce

    if-ne v2, v0, :cond_1da

    .line 351
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_1a1

    .line 352
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 353
    :cond_1a1
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 354
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1c9

    const p1, 0x7f1102d0

    .line 355
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$5;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$5;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 360
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_1fa

    .line 362
    :cond_1c9
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_root:Landroid/widget/RelativeLayout;

    const v0, 0x7f110108

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v6}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_1fa

    .line 363
    :cond_1da
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->getId()I

    move-result v0

    if-ne v2, v0, :cond_1fa

    .line 364
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 365
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/SystemStatus;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;
    :try_end_1f5
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_1f5} :catch_1f6

    goto :goto_1fa

    :catch_1f6
    move-exception p1

    .line 368
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1fa
    :goto_1fa
    return-void
.end method

.method protected initP2PClient()V
    .registers 3

    .line 492
    monitor-enter p0

    .line 493
    :try_start_1
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    .line 494
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
    .registers 2

    .line 724
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11

    .line 734
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 735
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f11003a

    const v2, 0x7f110071

    const v3, 0x7f11024f

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_164

    goto/16 :goto_163

    :sswitch_18
    const-string p1, "android.intent.action.VIEW"

    .line 809
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    sget-object p1, Lcom/pilotlab/rollereye/Common/ServerConstent;->quickStartURL:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 811
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 812
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_163

    .line 802
    :sswitch_2b
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/TestVisualizerActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 803
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_163

    :sswitch_39
    const p1, 0x7f1102af

    .line 746
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$10;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$10;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)V

    .line 757
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$11;

    invoke-direct {v8, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$11;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)V

    move-object v3, p0

    .line 746
    invoke-virtual/range {v3 .. v8}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 762
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_163

    :sswitch_5c
    const p1, 0x7f1102d2

    .line 830
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)V

    .line 875
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$15;

    invoke-direct {v8, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$15;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)V

    move-object v3, p0

    .line 830
    invoke-virtual/range {v3 .. v8}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 880
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_163

    .line 816
    :sswitch_7f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    if-eqz p1, :cond_163

    .line 817
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getBattary()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->getCharging()I

    move-result p1

    if-ne p1, v4, :cond_96

    .line 818
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->reboot()V

    goto/16 :goto_163

    :cond_96
    const p1, 0x7f110262

    .line 820
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f11003e

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$13;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$13;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 825
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_163

    .line 743
    :sswitch_b5
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->languageList:Ljava/util/List;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->langueValue:Ljava/lang/String;

    sget-object v2, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;->LANGUAGE:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->dialogChoice(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;)V

    goto/16 :goto_163

    .line 784
    :sswitch_c4
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->pressKeyTimer:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->pressKeyTimer:I

    .line 785
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->pressKeyTimer:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_ed

    .line 786
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_firmware_version:Landroid/widget/RelativeLayout;

    const v0, 0x7f1102cf

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 787
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 788
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->debugTimer:Ljava/util/Timer;

    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$12;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$12;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_163

    :cond_ed
    const/4 v0, 0x5

    if-ne p1, v0, :cond_163

    .line 796
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_root:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 797
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->fragment_setting_system_root_tips:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_163

    .line 766
    :sswitch_fc
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 767
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_163

    .line 737
    :sswitch_109
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->timeZoneAreaID:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->timeZoneAreaID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    invoke-static {v1, v4, v4, p1}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->createGmtOffsetString(ZZZI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 739
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->timeZoneList:Ljava/util/List;

    sget-object v2, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;->TIME_ZONE:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->dialogChoice(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$MyEnum;)V

    goto :goto_163

    .line 774
    :sswitch_147
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setSoundEffectConfig()V

    goto :goto_163

    .line 777
    :sswitch_14b
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setSoundEffectConfig()V

    goto :goto_163

    .line 780
    :sswitch_14f
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->setSoundEffectConfig()V

    goto :goto_163

    .line 806
    :sswitch_153
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getNasConfig()V

    goto :goto_163

    .line 770
    :sswitch_157
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 771
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->startActivity(Landroid/content/Intent;)V

    :cond_163
    :goto_163
    return-void

    :sswitch_data_164
    .sparse-switch
        0x7f0a038e -> :sswitch_157
        0x7f0a0394 -> :sswitch_153
        0x7f0a0397 -> :sswitch_14f
        0x7f0a0399 -> :sswitch_14b
        0x7f0a039a -> :sswitch_147
        0x7f0a039b -> :sswitch_109
        0x7f0a039c -> :sswitch_fc
        0x7f0a03a0 -> :sswitch_c4
        0x7f0a03a4 -> :sswitch_b5
        0x7f0a03a5 -> :sswitch_7f
        0x7f0a03a6 -> :sswitch_5c
        0x7f0a03a9 -> :sswitch_39
        0x7f0a03ac -> :sswitch_2b
        0x7f0a03ad -> :sswitch_18
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 162
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getArguments()Landroid/os/Bundle;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d009e

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    .line 173
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->initView()V

    .line 174
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->initEvent()V

    .line 175
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->initTimeZoneList()V

    .line 176
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->initLanguageList()V

    .line 177
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .registers 2

    .line 259
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onDestroyView()V

    .line 260
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->mCheckStatusDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 261
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 262
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->editDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_11

    .line 263
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    :cond_11
    return-void
.end method

.method public onDetach()V
    .registers 1

    .line 729
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 408
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onPause()V

    .line 409
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 410
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 411
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->mCheckStatusDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_11

    .line 412
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 413
    :cond_11
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 414
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_22
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 398
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onResume()V

    .line 399
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 400
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 402
    :cond_14
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->initP2PClient()V

    .line 403
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->initData()V

    return-void
.end method
