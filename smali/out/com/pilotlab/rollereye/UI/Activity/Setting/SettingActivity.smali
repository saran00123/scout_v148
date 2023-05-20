.class public Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "SettingActivity.java"

# interfaces
.implements Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$OnFragmentInteractionListener;
.implements Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$OnConnectFragmentListener;
.implements Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$OnFragmentInteractionListener;
.implements Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$OnFragmentInteractionListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_setting_content:Landroid/widget/FrameLayout;

.field private activity_setting_radioGroup:Landroid/widget/RadioGroup;

.field private activity_setting_radio_connect:Landroid/widget/RadioButton;

.field private activity_setting_radio_control:Landroid/widget/RadioButton;

.field private activity_setting_radio_display:Landroid/widget/RadioButton;

.field private activity_setting_radio_notification:Landroid/widget/RadioButton;

.field private activity_setting_radio_secrecy:Landroid/widget/RadioButton;

.field private activity_setting_radio_system:Landroid/widget/RadioButton;

.field private center_title:Landroid/widget/TextView;

.field private layout_left:Landroid/widget/LinearLayout;

.field private right_btn:Landroid/widget/ImageButton;

.field private settingRobotFragment:Landroidx/fragment/app/Fragment;

.field private settingRobotFragment2:Landroidx/fragment/app/Fragment;

.field private settingRobotFragment3:Landroidx/fragment/app/Fragment;

.field private settingRobotFragment4:Landroidx/fragment/app/Fragment;

.field private settingRobotFragment5:Landroidx/fragment/app/Fragment;

.field private settingRobotFragment6:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "SettingActivity"

    .line 58
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;)Landroid/widget/RadioButton;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_connect:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;I)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->setSelect(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;)Landroid/widget/RadioButton;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_display:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;)Landroid/widget/RadioButton;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_control:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;)Landroid/widget/RadioButton;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_notification:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;)Landroid/widget/RadioButton;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_secrecy:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;)Landroid/widget/RadioButton;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_system:Landroid/widget/RadioButton;

    return-object p0
.end method

.method private hideFragment(Landroidx/fragment/app/FragmentTransaction;)V
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_e

    .line 211
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 212
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    .line 214
    :cond_e
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment2:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1c

    .line 215
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 216
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment2:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    .line 218
    :cond_1c
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment3:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2a

    .line 219
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 220
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment3:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    .line 222
    :cond_2a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment4:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_38

    .line 223
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 224
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment4:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    .line 226
    :cond_38
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment5:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_46

    .line 227
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 228
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment5:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    .line 230
    :cond_46
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment6:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_54

    .line 231
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 232
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment6:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    :cond_54
    return-void
.end method

.method private refreshData()V
    .registers 4

    .line 267
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_18

    .line 268
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_notification:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_secrecy:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_55

    .line 270
    :cond_18
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_55

    .line 272
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment4:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_37

    .line 273
    invoke-direct {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->setSelect(I)V

    .line 274
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_connect:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 276
    :cond_37
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_notification:Landroid/widget/RadioButton;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment5:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_50

    .line 279
    invoke-direct {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->setSelect(I)V

    .line 280
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_connect:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 282
    :cond_50
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_secrecy:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_55
    :goto_55
    return-void
.end method

.method private setSelect(I)V
    .registers 4

    .line 138
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 141
    invoke-direct {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->hideFragment(Landroidx/fragment/app/FragmentTransaction;)V

    const v1, 0x7f0a0169

    packed-switch p1, :pswitch_data_e8

    goto/16 :goto_e3

    .line 195
    :pswitch_13
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment6:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_2b

    .line 196
    invoke-static {}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->newInstance()Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment6:Landroidx/fragment/app/Fragment;

    .line 197
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment6:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 198
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment6:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_e3

    .line 200
    :cond_2b
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 201
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment6:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_e3

    .line 185
    :pswitch_37
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment5:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_4f

    .line 186
    invoke-static {}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->newInstance()Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment5:Landroidx/fragment/app/Fragment;

    .line 187
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment5:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 188
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment5:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_e3

    .line 190
    :cond_4f
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 191
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment5:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_e3

    .line 175
    :pswitch_5b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment4:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_73

    .line 176
    invoke-static {}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->newInstance()Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment4:Landroidx/fragment/app/Fragment;

    .line 177
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment4:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 178
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment4:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_e3

    .line 180
    :cond_73
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 181
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment4:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_e3

    .line 165
    :pswitch_7e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment3:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_95

    .line 166
    invoke-static {}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->newInstance()Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment3:Landroidx/fragment/app/Fragment;

    .line 167
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment3:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 168
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment3:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_e3

    .line 170
    :cond_95
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 171
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment3:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_e3

    .line 155
    :pswitch_a0
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment2:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_b7

    .line 156
    invoke-static {}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->newInstance()Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment2:Landroidx/fragment/app/Fragment;

    .line 157
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment2:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 158
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment2:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_e3

    .line 160
    :cond_b7
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 161
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment2:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_e3

    .line 144
    :pswitch_c2
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_d9

    .line 145
    invoke-static {}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->newInstance()Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment:Landroidx/fragment/app/Fragment;

    .line 147
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 148
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_e3

    .line 150
    :cond_d9
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 151
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->settingRobotFragment:Landroidx/fragment/app/Fragment;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    .line 205
    :goto_e3
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void

    nop

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_c2
        :pswitch_a0
        :pswitch_7e
        :pswitch_5b
        :pswitch_37
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V
    .registers 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 257
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;)V

    .line 258
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent;->getMessage()Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ConnectMessageEvent$Message;->getTag()I

    move-result p1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_14

    const/16 v0, 0x21

    if-eq p1, v0, :cond_14

    goto :goto_17

    .line 261
    :cond_14
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->refreshData()V

    :goto_17
    return-void
.end method

.method protected initEvent()V
    .registers 3

    .line 98
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 100
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->right_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method protected initView()V
    .registers 3

    .line 75
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a0448

    .line 77
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 78
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f0a04ed

    .line 79
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->right_btn:Landroid/widget/ImageButton;

    .line 80
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->right_btn:Landroid/widget/ImageButton;

    const v1, 0x7f0800fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 81
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->right_btn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f0a016a

    .line 83
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radioGroup:Landroid/widget/RadioGroup;

    const v0, 0x7f0a016b

    .line 84
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_connect:Landroid/widget/RadioButton;

    const v0, 0x7f0a016d

    .line 85
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_display:Landroid/widget/RadioButton;

    const v0, 0x7f0a016c

    .line 86
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_control:Landroid/widget/RadioButton;

    const v0, 0x7f0a016e

    .line 87
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_notification:Landroid/widget/RadioButton;

    const v0, 0x7f0a016f

    .line 88
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_secrecy:Landroid/widget/RadioButton;

    const v0, 0x7f0a0170

    .line 89
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_system:Landroid/widget/RadioButton;

    const v0, 0x7f0a0169

    .line 91
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_content:Landroid/widget/FrameLayout;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 298
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0a0448

    if-eq p1, v1, :cond_1d

    const v1, 0x7f0a04ed

    if-eq p1, v1, :cond_14

    goto :goto_20

    .line 305
    :cond_14
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_20

    .line 302
    :cond_1d
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->finish()V

    :goto_20
    return-void
.end method

.method public onConnectFragment()V
    .registers 1

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 288
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    return-void
.end method

.method public onFragmentInteraction(Landroid/net/Uri;)V
    .registers 2

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 249
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onPause()V

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
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 240
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 241
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 243
    :cond_14
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->refreshData()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0048

    .line 63
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 4

    .line 125
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f110261

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->center_title:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object p1

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne p1, v1, :cond_24

    .line 128
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_notification:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_37

    .line 129
    :cond_24
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object p1

    sget-object v0, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne p1, v0, :cond_37

    .line 130
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->activity_setting_radio_notification:Landroid/widget/RadioButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_37
    :goto_37
    const/4 p1, 0x1

    .line 132
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->setSelect(I)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 68
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpView()V

    .line 69
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->initView()V

    .line 70
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/SettingActivity;->initEvent()V

    return-void
.end method
