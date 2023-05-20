.class public Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "NasConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_nas_config_date:Landroid/widget/TextView;

.field private activity_nas_config_delete_nas:Landroid/widget/RelativeLayout;

.field private activity_nas_config_delete_video:Landroid/widget/RelativeLayout;

.field private activity_nas_config_dotbar:Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;

.field private activity_nas_config_error:Landroid/widget/ImageView;

.field private activity_nas_config_nas_name:Landroid/widget/RelativeLayout;

.field private activity_nas_config_nas_name_tv:Landroid/widget/TextView;

.field private activity_nas_config_record_expire:Landroid/widget/RelativeLayout;

.field private activity_nas_config_record_expire_tv:Landroid/widget/TextView;

.field private activity_nas_config_record_gap:Landroid/widget/RelativeLayout;

.field private activity_nas_config_record_gap_tv:Landroid/widget/TextView;

.field private activity_nas_config_record_switch:Landroid/widget/Switch;

.field private activity_nas_config_record_type:Landroid/widget/RelativeLayout;

.field private activity_nas_config_record_type_tv:Landroid/widget/TextView;

.field private center_title:Landroid/widget/TextView;

.field private layout_left:Landroid/widget/LinearLayout;

.field private myCheckDisponsable:Lio/reactivex/disposables/Disposable;

.field private nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

.field private nas_storage_mode_content:[I

.field private nas_storage_mode_title:[Ljava/lang/String;

.field private nas_storage_time_content:[I

.field private nas_storage_time_title:[Ljava/lang/String;

.field private nas_upload_gap_content:[I

.field private nas_upload_gap_title:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "NasConfigActivity"

    .line 52
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->myCheckDisponsable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)Landroid/widget/TextView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_gap_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)[Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_storage_mode_title:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)[I
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_storage_mode_content:[I

    return-object p0
.end method

.method static synthetic access$1300(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)Landroid/widget/TextView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_type_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->setNasConfig()V

    return-void
.end method

.method static synthetic access$1500(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->deleteVideos()V

    return-void
.end method

.method static synthetic access$1600(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->deleteNAS()V

    return-void
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)[Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_storage_time_title:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)[I
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_storage_time_content:[I

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    return-object p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)Landroid/widget/TextView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_expire_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)[Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_upload_gap_title:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)[I
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_upload_gap_content:[I

    return-object p0
.end method

.method private checkStatus()V
    .registers 6

    .line 174
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x7d0

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

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private data2View()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 202
    :goto_2
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_storage_mode_content:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1f

    .line 203
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->getType()I

    move-result v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_storage_mode_content:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_1c

    .line 204
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_type_tv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_storage_mode_title:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1f
    move v1, v0

    .line 206
    :goto_20
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_storage_time_content:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3d

    .line 207
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->getStorageTime()I

    move-result v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_storage_time_content:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_3a

    .line 208
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_expire_tv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_storage_time_title:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_3d
    move v1, v0

    .line 210
    :goto_3e
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_upload_gap_content:[I

    array-length v2, v2

    if-ge v1, v2, :cond_5b

    .line 211
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->getUploadGap()I

    move-result v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_upload_gap_content:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_58

    .line 212
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_gap_tv:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_upload_gap_title:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 214
    :cond_5b
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_nas_name_tv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_switch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->getActivate()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_72

    move v0, v3

    :cond_72
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private deleteNAS()V
    .registers 6

    .line 450
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DELETE_NAS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 451
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 452
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    .line 453
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_24
    return-void
.end method

.method private deleteVideos()V
    .registers 6

    .line 442
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DELETE_NAS_FILES:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 443
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 444
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    .line 445
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_24
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

    .line 235
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11024f

    .line 236
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x7f0d0082

    const/4 v2, 0x0

    .line 237
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a027c

    .line 238
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 239
    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    .line 240
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 241
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_3b

    .line 242
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getTruelyHeightPx(Landroid/content/Context;)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 243
    :cond_3b
    new-instance v3, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;

    invoke-direct {v3, p0, p1}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 244
    invoke-virtual {v3}, Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$2;

    invoke-direct {p2, p0, v3, p1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;Ljava/util/List;)V

    invoke-virtual {v2, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 254
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const p2, 0x7f11003e

    .line 255
    invoke-virtual {p0, p2}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;

    invoke-direct {v1, p0, p1, v3}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/ListChoiseAdapter;)V

    invoke-virtual {v0, p2, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const p1, 0x7f110007

    .line 285
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$4;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)V

    invoke-virtual {v0, p1, p2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 291
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method private selectShow([Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 222
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_1b

    .line 223
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 224
    aget-object v3, p1, v1

    const-string v4, "value"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 227
    :cond_1b
    invoke-direct {p0, v0, p2}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->dialogChoice(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private setNasConfig()V
    .registers 6

    .line 296
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SET_NAS_CONFIG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 297
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 298
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    const/4 v1, 0x0

    .line 301
    :try_start_14
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    invoke-virtual {v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_24} :catch_26

    move-object v1, v2

    goto :goto_2a

    :catch_26
    move-exception v2

    .line 303
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 305
    :goto_2a
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v3, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v4, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_3a
    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 13
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 311
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 312
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->TAG:Ljava/lang/String;

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

    .line 314
    :try_start_1d
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 315
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "body"

    .line 316
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_32} :catch_129

    const/16 v1, 0xbcb

    const v2, 0x7f11010d

    const v3, 0x7f11010a

    const v4, 0x7f11003e

    const-string v5, "status"

    if-ne p1, v1, :cond_82

    .line 318
    :try_start_41
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_4a

    .line 319
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 320
    :cond_4a
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_69

    .line 321
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$5;

    invoke-direct {v8, p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 327
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_12d

    .line 329
    :cond_69
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$6;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 334
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_12d

    :cond_82
    const/16 v1, 0xbca

    if-ne p1, v1, :cond_c6

    .line 337
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_8f

    .line 338
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 339
    :cond_8f
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_ae

    .line 340
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$7;

    invoke-direct {v8, p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$7;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 345
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_12d

    .line 348
    :cond_ae
    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$8;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$8;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 353
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_12d

    :cond_c6
    const/16 v1, 0xbcc

    if-ne p1, v1, :cond_104

    .line 356
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_f0

    .line 357
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_dotbar:Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->isInProgress()Z

    move-result p1

    if-nez p1, :cond_12d

    .line 358
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_dotbar:Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->startProgress()V

    .line 359
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_error:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_date:Landroid/widget/TextView;

    const-string v1, "lastUpdate"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12d

    .line 363
    :cond_f0
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_dotbar:Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->isInProgress()Z

    move-result p1

    if-eqz p1, :cond_fd

    .line 364
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_dotbar:Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;->stopProgress()V

    .line 366
    :cond_fd
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_error:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12d

    :cond_104
    const/16 v1, 0xbc9

    if-ne p1, v1, :cond_12d

    .line 369
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_111

    .line 370
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 371
    :cond_111
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_12d

    .line 372
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_delete_nas:Landroid/widget/RelativeLayout;

    const v0, 0x7f11023d

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V
    :try_end_128
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_128} :catch_129

    goto :goto_12d

    :catch_129
    move-exception p1

    .line 376
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_12d
    :goto_12d
    return-void
.end method

.method protected initEvent()V
    .registers 2

    .line 97
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 98
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_type:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_gap:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_expire:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_nas_name:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_delete_video:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_delete_nas:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_switch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 3

    .line 110
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a0210

    .line 111
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->center_title:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0448

    .line 113
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->layout_left:Landroid/widget/LinearLayout;

    .line 114
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v0, 0x7f0a00f6

    .line 116
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_dotbar:Lcom/pilotlab/rollereye/CustomerView/DottedProgressBar;

    const v0, 0x7f0a0101

    .line 118
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_switch:Landroid/widget/Switch;

    const v0, 0x7f0a0102

    .line 120
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_type:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00fe

    .line 121
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_gap:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00fb

    .line 122
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_expire:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00f8

    .line 123
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_nas_name:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00f5

    .line 124
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_delete_video:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00f4

    .line 125
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_delete_nas:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0104

    .line 127
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_type_tv:Landroid/widget/TextView;

    const v0, 0x7f0a0100

    .line 128
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_gap_tv:Landroid/widget/TextView;

    const v0, 0x7f0a00fd

    .line 129
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_expire_tv:Landroid/widget/TextView;

    const v0, 0x7f0a00fa

    .line 130
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_nas_name_tv:Landroid/widget/TextView;

    const v0, 0x7f0a00f7

    .line 132
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_error:Landroid/widget/ImageView;

    const v0, 0x7f0a00f3

    .line 133
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_date:Landroid/widget/TextView;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 459
    invoke-super {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x123

    if-ne p1, v0, :cond_17

    const/4 p1, -0x1

    if-ne p2, p1, :cond_17

    const-string p1, "nasConfigBean"

    .line 461
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    .line 462
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->data2View()V

    :cond_17
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 10

    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f11003a

    const v1, 0x7f110071

    sparse-switch p1, :sswitch_data_b0

    goto/16 :goto_af

    .line 387
    :sswitch_f
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->finish()V

    goto/16 :goto_af

    .line 390
    :sswitch_14
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_storage_mode_title:[Ljava/lang/String;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_type_tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->selectShow([Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_af

    .line 434
    :sswitch_25
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_switch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;->setActivate(I)V

    .line 435
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->setNasConfig()V

    goto/16 :goto_af

    .line 393
    :sswitch_35
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_upload_gap_title:[Ljava/lang/String;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_gap_tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->selectShow([Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_af

    .line 396
    :sswitch_45
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_storage_time_title:[Ljava/lang/String;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->activity_nas_config_record_expire_tv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->selectShow([Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_af

    .line 399
    :sswitch_55
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 400
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    const-string v1, "nasConfigBean"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 401
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasPathActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v0, 0x123

    .line 402
    invoke-virtual {p0, p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_af

    :sswitch_6c
    const p1, 0x7f1101de

    .line 405
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$9;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$9;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)V

    .line 411
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$10;

    invoke-direct {v7, p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$10;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)V

    move-object v2, p0

    .line 405
    invoke-virtual/range {v2 .. v7}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 416
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_af

    :sswitch_8e
    const p1, 0x7f1101dc

    .line 420
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$11;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$11;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)V

    .line 426
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$12;

    invoke-direct {v7, p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity$12;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;)V

    move-object v2, p0

    .line 420
    invoke-virtual/range {v2 .. v7}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 431
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :goto_af
    return-void

    :sswitch_data_b0
    .sparse-switch
        0x7f0a00f4 -> :sswitch_8e
        0x7f0a00f5 -> :sswitch_6c
        0x7f0a00f8 -> :sswitch_55
        0x7f0a00fb -> :sswitch_45
        0x7f0a00fe -> :sswitch_35
        0x7f0a0101 -> :sswitch_25
        0x7f0a0102 -> :sswitch_14
        0x7f0a0448 -> :sswitch_f
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 1

    .line 469
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 150
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onPause()V

    .line 151
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->myCheckDisponsable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 152
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 153
    :cond_a
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 154
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 140
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 141
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 142
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 144
    :cond_14
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->checkStatus()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0037

    .line 85
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 3

    .line 161
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    .line 162
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f110272

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_storage_time_title:[Ljava/lang/String;

    .line 164
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_upload_gap_content:[I

    .line 165
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_upload_gap_title:[Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_storage_time_content:[I

    .line 167
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_storage_mode_title:[Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nas_storage_mode_content:[I

    .line 169
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "nasConfigBean"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->nasConfigBean:Lcom/pilotlab/rollereye/Bean/NasConfigBean$BodyBean;

    .line 170
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->data2View()V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 90
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpView()V

    .line 91
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->initView()V

    .line 92
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasConfigActivity;->initEvent()V

    return-void
.end method
