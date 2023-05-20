.class public Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;
.super Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;
.source "SettingDisplayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$OnFragmentInteractionListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private fragment_display_anti_flickering_50:Landroid/widget/RadioButton;

.field private fragment_display_anti_flickering_60:Landroid/widget/RadioButton;

.field private fragment_display_anti_flickering_rg:Landroid/widget/RadioGroup;

.field private fragment_display_baseline_color_blue:Landroid/widget/RadioButton;

.field private fragment_display_baseline_color_green:Landroid/widget/RadioButton;

.field private fragment_display_baseline_color_red:Landroid/widget/RadioButton;

.field private fragment_display_baseline_color_rg:Landroid/widget/RadioGroup;

.field private fragment_display_baseline_color_ry:Landroid/widget/RelativeLayout;

.field private fragment_display_baseline_color_white:Landroid/widget/RadioButton;

.field private fragment_display_baseline_color_yellow:Landroid/widget/RadioButton;

.field private fragment_display_baseline_switch:Landroid/widget/Switch;

.field private fragment_display_bit_rate_switch:Landroid/widget/Switch;

.field private fragment_display_bitr_rate_high:Landroid/widget/RadioButton;

.field private fragment_display_bitr_rate_low:Landroid/widget/RadioButton;

.field private fragment_display_bitr_rate_middle:Landroid/widget/RadioButton;

.field private fragment_display_bitr_rate_rg:Landroid/widget/RadioGroup;

.field private fragment_display_camera_light_sb:Landroid/widget/SeekBar;

.field private fragment_display_camera_light_value:Landroid/widget/TextView;

.field private fragment_display_night_auto:Landroid/widget/RadioButton;

.field private fragment_display_night_vision_off:Landroid/widget/RadioButton;

.field private fragment_display_night_vision_on:Landroid/widget/RadioButton;

.field private fragment_display_night_vision_rg:Landroid/widget/RadioGroup;

.field private fragment_display_record_duration:Landroid/widget/TextView;

.field private fragment_display_record_duration_sb:Landroid/widget/SeekBar;

.field private fragment_display_resolution_1080:Landroid/widget/RadioButton;

.field private fragment_display_resolution_720:Landroid/widget/RadioButton;

.field private fragment_display_resolution_rg:Landroid/widget/RadioGroup;

.field private fragment_display_wide_dynamic_range:Landroid/widget/RelativeLayout;

.field private fragment_display_wide_dynamic_range_sb:Landroid/widget/SeekBar;

.field private fragment_display_wide_dynamic_range_value:Landroid/widget/TextView;

.field private fragment_display_wide_dynamic_rg:Landroid/widget/RadioGroup;

.field private fragment_sensitive_night_vision_high:Landroid/widget/RadioButton;

.field private fragment_sensitive_night_vision_low:Landroid/widget/RadioButton;

.field private fragment_sensitive_night_vision_rg:Landroid/widget/RadioGroup;

.field private fragment_setting_display_sv:Landroid/widget/ScrollView;

.field private fragment_wide_dynamic_auto:Landroid/widget/RadioButton;

.field private fragment_wide_dynamic_manual:Landroid/widget/RadioButton;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mListener:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$OnFragmentInteractionListener;

.field private p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

.field private record_duration_content:[I

.field private record_duration_title:[Ljava/lang/String;

.field private softWare:Ljava/lang/String;

.field private systemBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

.field private videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 110
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;-><init>()V

    const-string v0, "SettingDisplayFragment"

    .line 50
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->TAG:Ljava/lang/String;

    .line 105
    new-instance v0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    .line 106
    new-instance v0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->systemBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_resolution_720:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_wide_dynamic_manual:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_bitr_rate_low:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_bitr_rate_middle:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_bitr_rate_high:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)[Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->record_duration_title:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/TextView;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_record_duration:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)[I
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->record_duration_content:[I

    return-object p0
.end method

.method static synthetic access$1700(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/TextView;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_camera_light_value:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->softWare:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_resolution_1080:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/SeekBar;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_camera_light_sb:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->setParam()V

    return-void
.end method

.method static synthetic access$2200(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/TextView;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_wide_dynamic_range_value:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Ljava/lang/String;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_ry:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/ScrollView;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_setting_display_sv:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_white:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_red:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_blue:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_yellow:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_anti_flickering_50:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_green:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_sensitive_night_vision_low:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_sensitive_night_vision_high:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_anti_flickering_60:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_night_vision_off:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_night_auto:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_night_vision_on:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_wide_dynamic_auto:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_wide_dynamic_range:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private data2View()V
    .registers 7

    .line 491
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    const/4 v1, 0x1

    if-eqz v0, :cond_13a

    .line 492
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->getAntiFlicker()I

    move-result v0

    const/16 v2, 0x32

    if-ne v0, v2, :cond_13

    .line 493
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_anti_flickering_50:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_18

    .line 494
    :cond_13
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_anti_flickering_60:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 496
    :goto_18
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->getNightVision()I

    move-result v0

    if-nez v0, :cond_26

    .line 497
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_night_vision_off:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_39

    .line 498
    :cond_26
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->getNightVision()I

    move-result v0

    if-ne v0, v1, :cond_34

    .line 499
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_night_vision_on:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_39

    .line 500
    :cond_34
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_night_auto:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 502
    :goto_39
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->getHeight()I

    move-result v0

    const/16 v2, 0x438

    if-ne v0, v2, :cond_49

    .line 503
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_resolution_1080:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_4e

    .line 504
    :cond_49
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_resolution_720:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 506
    :goto_4e
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->getWideDynamic()I

    move-result v0

    if-nez v0, :cond_5c

    .line 507
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_wide_dynamic_auto:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_61

    .line 508
    :cond_5c
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_wide_dynamic_manual:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 511
    :goto_61
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->getWideDynamicRange()I

    move-result v0

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x5

    if-le v0, v4, :cond_7a

    .line 512
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_wide_dynamic_range_sb:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 513
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_wide_dynamic_range_value:Landroid/widget/TextView;

    const-string v4, "5"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b4

    .line 514
    :cond_7a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->getWideDynamicRange()I

    move-result v0

    if-gez v0, :cond_8f

    .line 515
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_wide_dynamic_range_sb:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 516
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_wide_dynamic_range_value:Landroid/widget/TextView;

    const-string v4, "0"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b4

    .line 518
    :cond_8f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_wide_dynamic_range_sb:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->getWideDynamicRange()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 519
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_wide_dynamic_range_value:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    invoke-virtual {v5}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->getWideDynamicRange()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    :goto_b4
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->getCameraLight()I

    move-result v0

    const/16 v4, 0x63

    if-le v0, v4, :cond_cb

    .line 523
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_camera_light_sb:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 524
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_camera_light_value:Landroid/widget/TextView;

    const-string v2, "100"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_106

    .line 525
    :cond_cb
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->getCameraLight()I

    move-result v0

    if-gez v0, :cond_e0

    .line 526
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_camera_light_sb:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 527
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_camera_light_value:Landroid/widget/TextView;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_106

    .line 529
    :cond_e0
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_camera_light_sb:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->getCameraLight()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 530
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_camera_light_value:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->getCameraLight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    :goto_106
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->getBitRate()I

    move-result v0

    if-nez v0, :cond_114

    .line 534
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_bitr_rate_low:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_127

    .line 535
    :cond_114
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->getBitRate()I

    move-result v0

    if-ne v0, v1, :cond_122

    .line 536
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_bitr_rate_middle:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_127

    .line 537
    :cond_122
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_bitr_rate_high:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 539
    :goto_127
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->getNightVisionSensitivity()I

    move-result v0

    if-nez v0, :cond_135

    .line 540
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_sensitive_night_vision_low:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_13a

    .line 541
    :cond_135
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_sensitive_night_vision_high:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 544
    :cond_13a
    :goto_13a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->systemBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

    if-eqz v0, :cond_151

    .line 545
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;->getSwVer()Ljava/lang/String;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 546
    array-length v2, v0

    if-lez v2, :cond_151

    .line 547
    array-length v2, v0

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->softWare:Ljava/lang/String;

    :cond_151
    return-void
.end method

.method private initBaseLine()V
    .registers 3

    .line 435
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getShowBaseLine(Landroid/content/Context;)Z

    move-result v0

    .line 436
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_switch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private initBaseLineColor()V
    .registers 9

    .line 440
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_white:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setBackgroundColor(I)V

    .line 442
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_red:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setBackgroundColor(I)V

    .line 443
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_blue:Landroid/widget/RadioButton;

    const/4 v4, 0x2

    aget-object v5, v0, v4

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setBackgroundColor(I)V

    .line 444
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_yellow:Landroid/widget/RadioButton;

    const/4 v5, 0x3

    aget-object v6, v0, v5

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/RadioButton;->setBackgroundColor(I)V

    .line 445
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_green:Landroid/widget/RadioButton;

    const/4 v6, 0x4

    aget-object v7, v0, v6

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/RadioButton;->setBackgroundColor(I)V

    .line 446
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getBaseLineColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 447
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_white:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_b3

    .line 448
    :cond_5c
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getBaseLineColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 449
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_red:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_b3

    .line 450
    :cond_72
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getBaseLineColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 451
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_blue:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_b3

    .line 452
    :cond_88
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getBaseLineColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 453
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_yellow:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_b3

    .line 454
    :cond_9e
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getBaseLineColor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aget-object v0, v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 455
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_green:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_b3
    :goto_b3
    return-void
.end method

.method private initBitRate()V
    .registers 3

    .line 430
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getShowBitRate(Landroid/content/Context;)Z

    move-result v0

    .line 431
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_bit_rate_switch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private initData()V
    .registers 1

    .line 387
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->initVideoConfig()V

    .line 388
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->initRecordConfig()V

    .line 389
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->initBitRate()V

    .line 390
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->initBaseLine()V

    .line 391
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->initBaseLineColor()V

    return-void
.end method

.method private initEvent()V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_resolution_720:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_resolution_1080:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_anti_flickering_50:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_anti_flickering_60:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_night_vision_off:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_night_auto:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_night_vision_on:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_wide_dynamic_auto:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_wide_dynamic_manual:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_bit_rate_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_bitr_rate_low:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_bitr_rate_middle:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_bitr_rate_high:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_sensitive_night_vision_low:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_sensitive_night_vision_high:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_resolution_rg:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$1;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 207
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_anti_flickering_rg:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$2;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 218
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_night_vision_rg:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$3;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 231
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_wide_dynamic_rg:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$4;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$4;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 244
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_bitr_rate_rg:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$5;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$5;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 257
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_record_duration_sb:Landroid/widget/SeekBar;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$6;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$6;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 275
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_camera_light_sb:Landroid/widget/SeekBar;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$7;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$7;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 302
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_wide_dynamic_range_sb:Landroid/widget/SeekBar;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$8;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$8;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 321
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 343
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_rg:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$10;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$10;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 359
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_sensitive_night_vision_rg:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$11;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$11;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private initRecordConfig()V
    .registers 5

    .line 415
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->record_duration_title:[Ljava/lang/String;

    .line 416
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->record_duration_content:[I

    .line 418
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getRecordDuration(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    .line 420
    :goto_23
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->record_duration_content:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3d

    .line 421
    aget v2, v2, v1

    if-ne v2, v0, :cond_3a

    .line 422
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_record_duration_sb:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 423
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_record_duration:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->record_duration_title:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_3d
    return-void
.end method

.method private initVideoConfig()V
    .registers 6

    .line 396
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_GET_PARAM:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 397
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 399
    :try_start_7
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "video"

    .line 400
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "system"

    .line 401
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "groups"

    .line 402
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1b} :catch_1c

    goto :goto_20

    :catch_1c
    move-exception v2

    .line 404
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 406
    :goto_20
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_3f

    .line 407
    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 408
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 409
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    :cond_3f
    return-void
.end method

.method private initView()V
    .registers 4

    .line 555
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0382

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_setting_display_sv:Landroid/widget/ScrollView;

    .line 557
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0323

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_night_vision_rg:Landroid/widget/RadioGroup;

    .line 558
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0321

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_night_vision_off:Landroid/widget/RadioButton;

    .line 559
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a031f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_night_auto:Landroid/widget/RadioButton;

    .line 560
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0322

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_night_vision_on:Landroid/widget/RadioButton;

    .line 562
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a032a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_resolution_rg:Landroid/widget/RadioGroup;

    .line 563
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0329

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_resolution_720:Landroid/widget/RadioButton;

    .line 564
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0328

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_resolution_1080:Landroid/widget/RadioButton;

    .line 566
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a030a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_anti_flickering_rg:Landroid/widget/RadioGroup;

    .line 567
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0308

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_anti_flickering_50:Landroid/widget/RadioButton;

    .line 568
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0309

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_anti_flickering_60:Landroid/widget/RadioButton;

    .line 570
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a032f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_wide_dynamic_rg:Landroid/widget/RadioGroup;

    .line 571
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a03b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_wide_dynamic_auto:Landroid/widget/RadioButton;

    .line 572
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a03b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_wide_dynamic_manual:Landroid/widget/RadioButton;

    .line 574
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a032c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_wide_dynamic_range:Landroid/widget/RelativeLayout;

    .line 575
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a032e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_wide_dynamic_range_value:Landroid/widget/TextView;

    .line 576
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a032d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_wide_dynamic_range_sb:Landroid/widget/SeekBar;

    .line 578
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0325

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_record_duration:Landroid/widget/TextView;

    .line 579
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0326

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_record_duration_sb:Landroid/widget/SeekBar;

    .line 581
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a031d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_camera_light_sb:Landroid/widget/SeekBar;

    .line 582
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a031e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_camera_light_value:Landroid/widget/TextView;

    .line 584
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 586
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a031b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_bitr_rate_rg:Landroid/widget/RadioGroup;

    .line 587
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0319

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_bitr_rate_low:Landroid/widget/RadioButton;

    .line 588
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a031a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_bitr_rate_middle:Landroid/widget/RadioButton;

    .line 589
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0318

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_bitr_rate_high:Landroid/widget/RadioButton;

    .line 590
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0317

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_bit_rate_switch:Landroid/widget/Switch;

    .line 591
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0315

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_switch:Landroid/widget/Switch;

    .line 593
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0310

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_rg:Landroid/widget/RadioGroup;

    .line 594
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0313

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_white:Landroid/widget/RadioButton;

    .line 595
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a030f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_red:Landroid/widget/RadioButton;

    .line 596
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a030d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_blue:Landroid/widget/RadioButton;

    .line 597
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0314

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_yellow:Landroid/widget/RadioButton;

    .line 598
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a030e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_green:Landroid/widget/RadioButton;

    .line 600
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0311

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_color_ry:Landroid/widget/RelativeLayout;

    .line 602
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0356

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_sensitive_night_vision_rg:Landroid/widget/RadioGroup;

    .line 603
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0355

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_sensitive_night_vision_low:Landroid/widget/RadioButton;

    .line 604
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    const v1, 0x7f0a0354

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_sensitive_night_vision_high:Landroid/widget/RadioButton;

    return-void
.end method

.method public static newInstance()Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;
    .registers 1

    .line 114
    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;-><init>()V

    return-object v0
.end method

.method private setParam()V
    .registers 6

    .line 372
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_SET_PARAM:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 373
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 375
    :try_start_7
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "video"

    .line 376
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 377
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v2

    .line 379
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 381
    :goto_2a
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v2, :cond_3c

    .line 382
    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_3c
    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V
    .registers 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 158
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getTag()I

    move-result v0

    const/16 v1, 0x23

    if-eq v0, v1, :cond_11

    const/16 v1, 0x24

    if-eq v0, v1, :cond_11

    goto :goto_39

    .line 161
    :cond_11
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

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

    .line 162
    :cond_33
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->initP2PClient()V

    .line 163
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->initData()V

    :cond_39
    :goto_39
    return-void
.end method

.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 460
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v0, v1, :cond_8a

    .line 462
    :try_start_8
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    .line 463
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xbbd

    if-ne v1, v2, :cond_8a

    .line 466
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v1, :cond_24

    .line 467
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_24
    const-string v1, "body"

    .line 469
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "status"

    .line 470
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8a

    .line 472
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 475
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/Bean/ParamBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ParamBean;

    .line 476
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean;->getBody()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->getVideo()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 478
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean;->getBody()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->getVideo()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->videoBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    .line 479
    :cond_6e
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean;->getBody()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->getSystem()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 480
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean;->getBody()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean;->getSystem()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->systemBean:Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SystemBean;

    .line 481
    :cond_82
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->data2View()V
    :try_end_85
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception p1

    .line 485
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_8a
    :goto_8a
    return-void
.end method

.method protected initP2PClient()V
    .registers 3

    .line 170
    monitor-enter p0

    .line 171
    :try_start_1
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    .line 172
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

    .line 617
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 618
    instance-of v0, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_c

    .line 619
    check-cast p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$OnFragmentInteractionListener;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$OnFragmentInteractionListener;

    return-void

    .line 621
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

    .line 610
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_7

    .line 611
    invoke-interface {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$OnFragmentInteractionListener;->onFragmentInteraction(Landroid/net/Uri;)V

    :cond_7
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 634
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_3e

    goto :goto_3d

    .line 652
    :sswitch_a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_bit_rate_switch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 653
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setShowBitRate(Landroid/content/Context;Z)V

    goto :goto_3d

    .line 654
    :cond_1a
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setShowBitRate(Landroid/content/Context;Z)V

    goto :goto_3d

    .line 657
    :sswitch_22
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->fragment_display_baseline_switch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 658
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setShowBaseLine(Landroid/content/Context;Z)V

    goto :goto_3d

    .line 659
    :cond_32
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setShowBaseLine(Landroid/content/Context;Z)V

    goto :goto_3d

    .line 649
    :sswitch_3a
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->setParam()V

    :goto_3d
    return-void

    :sswitch_data_3e
    .sparse-switch
        0x7f0a0308 -> :sswitch_3a
        0x7f0a0309 -> :sswitch_3a
        0x7f0a0315 -> :sswitch_22
        0x7f0a0317 -> :sswitch_a
        0x7f0a0318 -> :sswitch_3a
        0x7f0a0319 -> :sswitch_3a
        0x7f0a031a -> :sswitch_3a
        0x7f0a031f -> :sswitch_3a
        0x7f0a0321 -> :sswitch_3a
        0x7f0a0322 -> :sswitch_3a
        0x7f0a0328 -> :sswitch_3a
        0x7f0a0329 -> :sswitch_3a
        0x7f0a0354 -> :sswitch_3a
        0x7f0a0355 -> :sswitch_3a
        0x7f0a03b0 -> :sswitch_3a
        0x7f0a03b1 -> :sswitch_3a
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 120
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d009c

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    .line 129
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->initView()V

    .line 130
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->initEvent()V

    .line 131
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->view:Landroid/view/View;

    return-object p1
.end method

.method public onDetach()V
    .registers 2

    .line 628
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onDetach()V

    const/4 v0, 0x0

    .line 629
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->mListener:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$OnFragmentInteractionListener;

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 147
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onPause()V

    .line 148
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 149
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 151
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1b

    .line 152
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1b
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 137
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Fragment/BaseFragment;->onResume()V

    .line 138
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 139
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 141
    :cond_14
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->initP2PClient()V

    .line 142
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->initData()V

    return-void
.end method
