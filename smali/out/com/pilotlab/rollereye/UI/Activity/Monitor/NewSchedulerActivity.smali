.class public Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "NewSchedulerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_new_scheduler_notice_switch:Landroid/widget/Switch;

.field private activity_new_scheduler_record_switch:Landroid/widget/Switch;

.field private activity_new_scheduler_repeat_layout:Landroid/widget/RelativeLayout;

.field private activity_new_scheduler_repeat_tv:Landroid/widget/TextView;

.field private activity_new_scheduler_route_tv:Landroid/widget/TextView;

.field private activity_new_scheduler_router_layout:Landroid/widget/RelativeLayout;

.field private activity_new_scheduler_timepicker:Lcom/pilotlab/rollereye/CustomerView/TimePicker;

.field private layout_left:Landroid/widget/LinearLayout;

.field private mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

.field private myDisposable:Lio/reactivex/disposables/Disposable;

.field private right_title:Landroid/widget/TextView;

.field private saveType:I

.field private type_add:I

.field private type_edit:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "NewSchedulerActivity"

    .line 71
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->type_add:I

    const/4 v0, 0x1

    .line 74
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->type_edit:I

    .line 75
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->type_add:I

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->saveType:I

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)Landroid/widget/TextView;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_repeat_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)Landroid/widget/TextView;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_route_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method private createWeekChoiseData()V
    .registers 10

    const/4 v0, 0x7

    .line 284
    new-array v1, v0, [I

    fill-array-data v1, :array_5a

    .line 287
    new-instance v2, Ljava/text/DateFormatSymbols;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v2

    .line 288
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_18
    if-ge v5, v0, :cond_2e

    .line 290
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 291
    aget v7, v1, v5

    aget-object v7, v2, v7

    const-string v8, "value"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 294
    :cond_2e
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 295
    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v6}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getRepeat()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    :goto_3f
    if-ge v4, v0, :cond_55

    .line 297
    aget-object v7, v6, v4

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 298
    aget v7, v1, v4

    aget-object v7, v2, v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 301
    :cond_55
    invoke-direct {p0, v3, v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->multDialogChoice(Ljava/util/List;Ljava/util/Set;)V

    return-void

    nop

    :array_5a
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method private data2View()V
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_timepicker:Lcom/pilotlab/rollereye/CustomerView/TimePicker;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->setCurrentTime(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_repeat_tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getRepeat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->getRepeatText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_route_tv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getParamBean()Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->getRoute()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_notice_switch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getParamBean()Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->getNotice()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3b

    move v1, v3

    goto :goto_3c

    :cond_3b
    move v1, v2

    :goto_3c
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 247
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_record_switch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getParamBean()Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->getRecord()I

    move-result v1

    if-ne v1, v3, :cond_4e

    move v2, v3

    :cond_4e
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private dialogChoice(Ljava/util/List;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 362
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110059

    .line 363
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x7f0d0082

    const/4 v2, 0x0

    .line 364
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a027c

    .line 365
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 366
    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    .line 367
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 368
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_3b

    .line 369
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getTruelyHeightPx(Landroid/content/Context;)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 370
    :cond_3b
    new-instance v3, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-direct {v3, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 371
    invoke-virtual {v3}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 373
    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$9;

    invoke-direct {p2, p0, v3, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$9;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;Ljava/util/List;)V

    invoke-virtual {v2, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 381
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const p2, 0x7f11003e

    .line 382
    invoke-virtual {p0, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$10;

    invoke-direct {v1, p0, p1, v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$10;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;)V

    invoke-virtual {v0, p2, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const p1, 0x7f110007

    .line 399
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$11;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$11;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)V

    invoke-virtual {v0, p1, p2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 405
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method private initEvent()V
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->right_title:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_repeat_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_router_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_timepicker:Lcom/pilotlab/rollereye/CustomerView/TimePicker;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/TimePicker;->setResultListener(Lcom/pilotlab/rollereye/CustomerView/TimePicker$ResultHandler;)V

    .line 184
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_record_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$4;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 192
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_notice_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$5;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private initView()V
    .registers 3

    const v0, 0x7f0a0448

    .line 203
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04f2

    .line 204
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->right_title:Landroid/widget/TextView;

    const v0, 0x7f0a011c

    .line 205
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/TimePicker;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_timepicker:Lcom/pilotlab/rollereye/CustomerView/TimePicker;

    const v0, 0x7f0a0118

    .line 206
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_repeat_tv:Landroid/widget/TextView;

    const v0, 0x7f0a011a

    .line 207
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_route_tv:Landroid/widget/TextView;

    const v0, 0x7f0a0117

    .line 208
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_repeat_layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a011b

    .line 209
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_router_layout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0113

    .line 210
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_notice_switch:Landroid/widget/Switch;

    const v0, 0x7f0a0115

    .line 211
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_record_switch:Landroid/widget/Switch;

    .line 212
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-void
.end method

.method private multDialogChoice(Ljava/util/List;Ljava/util/Set;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Set;",
            ")V"
        }
    .end annotation

    .line 308
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110058

    .line 309
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x7f0d0082

    const/4 v2, 0x0

    .line 310
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a027c

    .line 311
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 312
    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    .line 313
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 314
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getTruelyHeightPx(Landroid/content/Context;)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 315
    new-instance v3, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-direct {v3, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 316
    invoke-virtual {v3, p2}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->setmSeleted(Ljava/util/Set;)V

    .line 317
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 318
    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$6;

    invoke-direct {p2, p0, v3, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;Ljava/util/List;)V

    invoke-virtual {v2, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 327
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const p2, 0x7f11003e

    .line 328
    invoke-virtual {p0, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$7;

    invoke-direct {v1, p0, p1, v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$7;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;)V

    invoke-virtual {v0, p2, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const p1, 0x7f110007

    .line 349
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$8;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$8;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)V

    invoke-virtual {v0, p1, p2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 355
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method private queryNavList()V
    .registers 6

    .line 482
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->NAV_LIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 483
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 485
    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_1b
    return-void
.end method

.method private save()V
    .registers 8

    .line 435
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getParamBean()Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->getRoute()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10b

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getParamBean()Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->getRoute()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10b

    .line 438
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->saveType:I

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->type_add:I

    if-ne v0, v1, :cond_37

    .line 439
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->TIMERTASK_ADD:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    goto :goto_39

    .line 441
    :cond_37
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->TIMERTASK_EDIT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 443
    :goto_39
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_3e
    const-string v2, "id"

    .line 446
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "name"

    .line 447
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    .line 448
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "repeatType"

    .line 449
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getRepeatType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "repeatDays"

    .line 450
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getRepeat()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->repeatTranslate(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "startTime"

    .line 451
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getStartTime()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HH:mm"

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v3, v4, v5}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->timeTranslate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "expire"

    .line 452
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getExpire()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "active"

    .line 453
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getActive()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 454
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "notice"

    .line 455
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getParamBean()Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->getNotice()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "record"

    .line 456
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getParamBean()Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->getRecord()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "route"

    .line 457
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getParamBean()Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->getRoute()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "param"

    .line 458
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d9
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_d9} :catch_da

    goto :goto_de

    :catch_da
    move-exception v2

    .line 460
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 463
    :goto_de
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v2

    if-eqz v2, :cond_128

    .line 464
    invoke-virtual {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_128

    .line 465
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 466
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_128

    :cond_10b
    const v0, 0x7f110246

    .line 471
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$12;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$12;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_128
    :goto_128
    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 12
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "id"

    .line 107
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v1

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v1, v2, :cond_d8

    .line 108
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    .line 110
    :try_start_e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_17} :catch_d4

    const/16 v2, 0x138d

    const v3, 0x7f11003e

    const-string v4, "status"

    const-string v5, "body"

    if-ne p1, v2, :cond_82

    .line 113
    :try_start_22
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 114
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d8

    const-string v0, "paths"

    .line 115
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 117
    :goto_38
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_52

    .line 118
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "value"

    .line 120
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 123
    :cond_52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_67

    .line 124
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->activity_new_scheduler_route_tv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->dialogChoice(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_d8

    :cond_67
    const p1, 0x7f1101fe

    .line 126
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$1;

    invoke-direct {v7, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_d8

    :cond_82
    const/16 v2, 0x1773

    if-eq p1, v2, :cond_8a

    const/16 v2, 0x1774

    if-ne p1, v2, :cond_d8

    .line 135
    :cond_8a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 138
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 139
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_b9

    .line 140
    new-instance p1, Landroid/content/Intent;

    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->PATROL_SAVE:Ljava/lang/String;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->finish()V

    goto :goto_d8

    :cond_b9
    const p1, 0x7f110245

    .line 145
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$2;

    invoke-direct {v7, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V
    :try_end_d3
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_d3} :catch_d4

    goto :goto_d8

    :catch_d4
    move-exception p1

    .line 154
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_d8
    :goto_d8
    return-void
.end method

.method protected getRepeatDate2String([Z)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const-string v1, ""

    move-object v2, v1

    move v1, v0

    .line 270
    :goto_5
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v1, v3, :cond_33

    .line 271
    aget-boolean v3, p1, v1

    if-ne v3, v4, :cond_1f

    .line 272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "1,"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_30

    .line 274
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0,"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 277
    :cond_33
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_42

    .line 278
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_42
    return-object v2
.end method

.method public getRepeatText(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 251
    new-instance v0, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;-><init>(I)V

    const/4 v2, 0x1

    if-eqz p1, :cond_24

    const/4 v3, 0x7

    .line 253
    new-array v4, v3, [Ljava/lang/String;

    const-string v4, ","

    .line 254
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_12
    if-ge v1, v3, :cond_24

    .line 256
    aget-object v4, p1, v1

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 257
    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->set(IZ)V

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 261
    :cond_24
    invoke-virtual {v0, p0, v2}, Lcom/pilotlab/rollereye/Utils/DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_18

    goto :goto_17

    .line 426
    :sswitch_8
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->save()V

    goto :goto_17

    .line 420
    :sswitch_c
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->finish()V

    goto :goto_17

    .line 429
    :sswitch_10
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->queryNavList()V

    goto :goto_17

    .line 423
    :sswitch_14
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->createWeekChoiseData()V

    :goto_17
    return-void

    :sswitch_data_18
    .sparse-switch
        0x7f0a0117 -> :sswitch_14
        0x7f0a011b -> :sswitch_10
        0x7f0a0448 -> :sswitch_c
        0x7f0a04f2 -> :sswitch_8
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 79
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->fullScreen()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 411
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    .line 412
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 413
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_a
    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 99
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onPause()V

    .line 100
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 101
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 90
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 91
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->fullScreen()V

    .line 92
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 93
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 162
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d003a

    .line 85
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 6

    .line 218
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "scheduleBean"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1b

    .line 220
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    .line 221
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setActive(I)V

    .line 222
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->type_edit:I

    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->saveType:I

    goto :goto_6e

    .line 224
    :cond_1b
    new-instance p1, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-direct {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;-><init>()V

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    .line 225
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setId(I)V

    .line 227
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    const-string v3, "patrol"

    invoke-virtual {v1, v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setType(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setStartTime(Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    const-string v1, "0,0,0,0,0,0,0"

    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setRepeat(Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setExpire(I)V

    .line 231
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setActive(I)V

    .line 232
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setRepeatType(I)V

    .line 233
    new-instance p1, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;

    invoke-direct {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;-><init>()V

    .line 234
    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->setNotice(I)V

    .line 235
    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;->setRecord(I)V

    .line 236
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->mScheduleBean:Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean;->setParamBean(Lcom/pilotlab/rollereye/Bean/ServerBean/ScheduleBean$ParamBean;)V

    .line 237
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->type_add:I

    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->saveType:I

    .line 239
    :goto_6e
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->data2View()V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 169
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->initView()V

    .line 170
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/NewSchedulerActivity;->initEvent()V

    return-void
.end method
