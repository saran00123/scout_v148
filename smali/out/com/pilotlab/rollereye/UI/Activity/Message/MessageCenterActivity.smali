.class public Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "MessageCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment$OnFragmentInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver;
    }
.end annotation


# instance fields
.field private AnnouncementFragment:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

.field private MAX_DAY:I

.field private activity_message_center_announcement:Landroid/widget/RadioButton;

.field private activity_message_center_announcement_status:Landroid/widget/ImageView;

.field private activity_message_center_calendar:Landroid/widget/ImageButton;

.field private activity_message_center_notification:Landroid/widget/RadioButton;

.field private activity_message_center_notification_status:Landroid/widget/ImageView;

.field private activity_message_center_rg:Landroid/widget/RadioGroup;

.field private activity_message_center_vp:Landroidx/viewpager/widget/ViewPager;

.field private commonFragmentPagerAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CommonFragmentPagerAdapter;

.field private datePickerDialog:Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

.field private layout_left:Landroid/widget/LinearLayout;

.field private mDay:I

.field private mFragList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mMonth:I

.field private mYear:I

.field private myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver;

.field private notificationFragment:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

.field onPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mYear:I

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mMonth:I

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mDay:I

    const/16 v0, 0xa

    .line 51
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->MAX_DAY:I

    .line 93
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)Landroid/widget/RadioButton;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_notification:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)Landroid/widget/RadioButton;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_announcement:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)Landroid/widget/ImageButton;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_calendar:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)Landroidx/viewpager/widget/ViewPager;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_vp:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$402(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;I)I
    .registers 2

    .line 37
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mYear:I

    return p1
.end method

.method static synthetic access$502(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;I)I
    .registers 2

    .line 37
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mMonth:I

    return p1
.end method

.method static synthetic access$602(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;I)I
    .registers 2

    .line 37
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mDay:I

    return p1
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->notificationFragment:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    return-object p0
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->initData()V

    return-void
.end method

.method private initBroadCast()V
    .registers 3

    .line 189
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver;

    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.alibaba.sdk.android.push.RECEIVE"

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initData()V
    .registers 4

    .line 207
    new-instance v0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->checkUnreadNotification()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-lez v0, :cond_13

    .line 208
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_notification_status:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_18

    .line 209
    :cond_13
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_notification_status:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    :goto_18
    new-instance v0, Lcom/pilotlab/rollereye/DataBase/MessageHelper;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/DataBase/MessageHelper;->checkUnreadAnnoucement()I

    move-result v0

    if-lez v0, :cond_29

    .line 211
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_announcement_status:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2e

    .line 212
    :cond_29
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_announcement_status:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2e
    return-void
.end method

.method private initEvent()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_calendar:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_vp:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 124
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_rg:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private initView()V
    .registers 2

    const v0, 0x7f0a0448

    .line 138
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00f0

    .line 139
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_rg:Landroid/widget/RadioGroup;

    const v0, 0x7f0a00ee

    .line 140
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_notification:Landroid/widget/RadioButton;

    const v0, 0x7f0a00eb

    .line 141
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_announcement:Landroid/widget/RadioButton;

    const v0, 0x7f0a00ec

    .line 142
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_announcement_status:Landroid/widget/ImageView;

    const v0, 0x7f0a00ef

    .line 143
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_notification_status:Landroid/widget/ImageView;

    const v0, 0x7f0a00ed

    .line 144
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_calendar:Landroid/widget/ImageButton;

    return-void
.end method

.method private initViewPager()V
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mFragList:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mFragList:Ljava/util/ArrayList;

    .line 78
    :cond_b
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->notificationFragment:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    .line 79
    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->newInstance(I)Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->notificationFragment:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    .line 80
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mFragList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->notificationFragment:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_1d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->AnnouncementFragment:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    if-nez v0, :cond_2f

    const/4 v0, 0x2

    .line 83
    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;->newInstance(I)Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->AnnouncementFragment:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    .line 84
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mFragList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->AnnouncementFragment:Lcom/pilotlab/rollereye/UI/Fragment/MessageFragment;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_2f
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 88
    new-instance v1, Lcom/pilotlab/rollereye/UI/Adapter/CommonFragmentPagerAdapter;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mFragList:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v2}, Lcom/pilotlab/rollereye/UI/Adapter/CommonFragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->commonFragmentPagerAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CommonFragmentPagerAdapter;

    const v0, 0x7f0a00f1

    .line 89
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_vp:Landroidx/viewpager/widget/ViewPager;

    .line 90
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_vp:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->commonFragmentPagerAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CommonFragmentPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    return-void
.end method

.method private showDatePickerDialog()V
    .registers 11

    .line 149
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 150
    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mYear:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_10

    .line 151
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mYear:I

    .line 152
    :cond_10
    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mMonth:I

    if-ne v1, v3, :cond_1b

    const/4 v1, 0x2

    .line 153
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mMonth:I

    .line 154
    :cond_1b
    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mDay:I

    if-ne v1, v3, :cond_26

    const/4 v1, 0x5

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mDay:I

    .line 157
    :cond_26
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

    const v5, 0x7f1200ef

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$3;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)V

    iget v7, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mYear:I

    iget v8, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mMonth:I

    iget v9, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->mDay:I

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->datePickerDialog:Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

    .line 167
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->datePickerDialog:Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;->setCancelable(Z)V

    .line 168
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->datePickerDialog:Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0x9a7ec800L

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 171
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->datePickerDialog:Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;->show()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00ed

    if-eq p1, v0, :cond_13

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_f

    goto :goto_16

    .line 226
    :cond_f
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->finish()V

    goto :goto_16

    .line 229
    :cond_13
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->showDatePickerDialog()V

    :goto_16
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 57
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->fullScreen()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 217
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    .line 218
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->activity_message_center_vp:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_c

    .line 219
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->onPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_c
    return-void
.end method

.method public onFragmentInteraction(Ljava/lang/String;)V
    .registers 2

    .line 236
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->initData()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 183
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onPause()V

    .line 184
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver;

    if-eqz v0, :cond_a

    .line 185
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_a
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 176
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 177
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->fullScreen()V

    .line 178
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->initBroadCast()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 197
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 198
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0033

    .line 63
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 2

    .line 203
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->initData()V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->initView()V

    .line 69
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->initViewPager()V

    .line 70
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;->initEvent()V

    return-void
.end method
