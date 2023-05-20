.class public Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "DebugActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$MyDataBroadCastReceiver;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_debug_bist:Landroid/widget/RelativeLayout;

.field private activity_debug_ces_switch:Landroid/widget/Switch;

.field private activity_debug_get_log:Landroid/widget/RelativeLayout;

.field private activity_debug_ibeacon_switch:Landroid/widget/Switch;

.field private activity_debug_image_quality_btn:Landroid/widget/Button;

.field private activity_debug_info_tv:Landroid/widget/TextView;

.field private activity_debug_iotc:Landroid/widget/RelativeLayout;

.field private activity_debug_ir_high:Landroid/widget/RadioButton;

.field private activity_debug_ir_low:Landroid/widget/RadioButton;

.field private activity_debug_ir_middle:Landroid/widget/RadioButton;

.field private activity_debug_ir_rg:Landroid/widget/RadioGroup;

.field private activity_debug_network:Landroid/widget/RelativeLayout;

.field private activity_debug_reboot:Landroid/widget/RelativeLayout;

.field private activity_debug_resolution_1080:Landroid/widget/RadioButton;

.field private activity_debug_resolution_720:Landroid/widget/RadioButton;

.field private activity_debug_resolution_rg:Landroid/widget/RadioGroup;

.field private activity_debug_server_switch_btn:Landroid/widget/Button;

.field private activity_debug_test_btn:Landroid/widget/Button;

.field private activity_debug_wifi:Landroid/widget/RelativeLayout;

.field private activity_debug_wifi_signal:Landroid/widget/RelativeLayout;

.field public bistLoadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

.field private center_title:Landroid/widget/TextView;

.field private checkDownloadDisposable:Lio/reactivex/disposables/Disposable;

.field private checkSystemLogDownloadDisposable:Lio/reactivex/disposables/Disposable;

.field private layout_left:Landroid/widget/LinearLayout;

.field private loadingProgressDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private p2PdownloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/P2P/P2PDownload;",
            ">;"
        }
    .end annotation
.end field

.field private rssiReceiver:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$MyDataBroadCastReceiver;

.field private systemLogDownloadBegin:I

.field private systemLogDownloadEnd:I

.field private systemLogDownloadStatus:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "DebugActivity"

    .line 85
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->TAG:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PdownloadList:Ljava/util/List;

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->systemLogDownloadBegin:I

    const/4 v0, 0x1

    .line 107
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->systemLogDownloadEnd:I

    .line 108
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->systemLogDownloadEnd:I

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->systemLogDownloadStatus:I

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lio/reactivex/disposables/Disposable;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Ljava/util/List;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PdownloadList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Landroid/widget/TextView;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_info_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->refreshAlarmView(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->snedData()V

    return-void
.end method

.method static synthetic access$1400(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Landroid/widget/RadioButton;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_resolution_720:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Landroid/widget/RadioButton;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_resolution_1080:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Landroid/widget/RadioButton;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_ir_low:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Landroid/widget/RadioButton;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_ir_middle:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lio/reactivex/disposables/Disposable;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->checkSystemLogDownloadDisposable:Lio/reactivex/disposables/Disposable;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->obtainWifiInfo()V

    return-void
.end method

.method static synthetic access$302(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->checkSystemLogDownloadDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->loadingProgressDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)Ljava/lang/String;
    .registers 1

    .line 77
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)I
    .registers 1

    .line 77
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->systemLogDownloadStatus:I

    return p0
.end method

.method static synthetic access$602(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;I)I
    .registers 2

    .line 77
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->systemLogDownloadStatus:I

    return p1
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)I
    .registers 1

    .line 77
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->systemLogDownloadBegin:I

    return p0
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)I
    .registers 1

    .line 77
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->systemLogDownloadEnd:I

    return p0
.end method

.method static synthetic access$902(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->checkDownloadDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method private bist()V
    .registers 8

    .line 751
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 752
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    if-eqz v0, :cond_69

    .line 753
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getBattary()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->getCharging()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4c

    .line 754
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEBUG_BIST:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 755
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_69

    .line 756
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->bistLoadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v2, 0x7f110107

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->setMessage(Ljava/lang/String;)V

    .line 757
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->bistLoadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow(I)V

    .line 758
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_69

    :cond_4c
    const v0, 0x7f11010e

    .line 761
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$10;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$10;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 766
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :cond_69
    :goto_69
    return-void
.end method

.method private checkDownloadProgress()V
    .registers 4

    .line 369
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private checkIOTCInfo()V
    .registers 6

    .line 774
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_81

    .line 775
    new-instance v0, Lcom/tutk/IOTC/St_SInfoEx;

    invoke-direct {v0}, Lcom/tutk/IOTC/St_SInfoEx;-><init>()V

    .line 776
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getId()I

    move-result v1

    invoke-static {v1, v0}, Lcom/tutk/IOTC/IOTCAPIs;->IOTC_Session_Check_Ex(ILcom/tutk/IOTC/St_SInfoEx;)I

    .line 777
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_info_tv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v0, Lcom/tutk/IOTC/St_SInfoEx;->Mode:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  (0: P2P mode, 1: Relay mode, 2: LAN mode)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->refreshAlarmView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 778
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_info_tv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remote ip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/tutk/IOTC/St_SInfoEx;->RemoteIP:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->refreshAlarmView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 779
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_info_tv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remote port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/tutk/IOTC/St_SInfoEx;->RemotePort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->refreshAlarmView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_info_tv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "relay type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, v0, Lcom/tutk/IOTC/St_SInfoEx;->RelayType:B

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  (0: Not Relay, 1: UDP Relay, 2: TCP Relay)\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->refreshAlarmView(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_81
    return-void
.end method

.method private checkNetWork()V
    .registers 6

    .line 729
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 730
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEBUG_GET_CONNECT_STATUS:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 731
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_28

    .line 732
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 733
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_28
    return-void
.end method

.method private checkSystemDownloadStatus(Ljava/util/List;ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/P2P/P2PDownload;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->loadingProgressDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->show()V

    .line 281
    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->systemLogDownloadBegin:I

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->systemLogDownloadStatus:I

    .line 283
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x64

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;Ljava/util/List;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private checkWiFiInfo()V
    .registers 6

    .line 819
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEBUG_GET_WIFI_CONFIG_INFO:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 820
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_17

    .line 821
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_17
    return-void
.end method

.method private factoryTest()V
    .registers 6

    .line 787
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_26

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x12c

    .line 788
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

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$11;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$11;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_26
    return-void
.end method

.method private getErrorLog()V
    .registers 6

    .line 706
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 707
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->DEBUG_GET_LOG:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 708
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_34

    .line 709
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_23

    .line 710
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    .line 711
    :cond_23
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_34
    return-void
.end method

.method private imageQuality()V
    .registers 3

    .line 457
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$5;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 511
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$4;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private initBroadcast()V
    .registers 4

    .line 629
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->rssiReceiver:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$MyDataBroadCastReceiver;

    if-nez v0, :cond_22

    .line 630
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$MyDataBroadCastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$MyDataBroadCastReceiver;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$1;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->rssiReceiver:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$MyDataBroadCastReceiver;

    .line 631
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    .line 632
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->TAG:Ljava/lang/String;

    const-string v2, "add action"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->rssiReceiver:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$MyDataBroadCastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_22
    return-void
.end method

.method public static matcherSearchText(ILjava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .registers 7

    .line 739
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 740
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 741
    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 742
    :goto_d
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_26

    .line 743
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p2

    .line 744
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 745
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v0, v2, p2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_d

    :cond_26
    return-object v0
.end method

.method private obtainWifiInfo()V
    .registers 7

    .line 165
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 167
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 170
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 172
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    .line 176
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 178
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_info_tv:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ip : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/JCType;->int2Ip(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Signal(1-4) : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Speed : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "Mbps"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->refreshAlarmView(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_58
    return-void
.end method

.method private reboot()V
    .registers 6

    .line 828
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_REBOOT:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 829
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_17

    .line 830
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_17
    return-void
.end method

.method private refreshAlarmView(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 5

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 400
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600ea

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fail"

    invoke-static {p2, v0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->matcherSearchText(ILjava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    mul-int/2addr p2, v0

    .line 403
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_52

    const/4 v0, 0x0

    .line 404
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    add-int/2addr p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->scrollTo(II)V

    :cond_52
    return-void
.end method

.method private snedData()V
    .registers 4

    .line 135
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 10
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 185
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 186
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->TAG:Ljava/lang/String;

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

    .line 188
    :try_start_1d
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "id"

    .line 189
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "body"

    .line 190
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/16 v1, 0xbbb

    if-ne p1, v1, :cond_6c

    const-string p1, "range"

    .line 192
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, -0x3fb7000000000000L    # -50.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_22a

    .line 194
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss  "

    invoke-direct {p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 195
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 196
    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 197
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_info_tv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->refreshAlarmView(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_6a
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_6a} :catch_226

    goto/16 :goto_22a

    :cond_6c
    const/16 v1, 0x232b

    const-string v2, "msg"

    if-ne p1, v1, :cond_7f

    .line 200
    :try_start_72
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_22a

    .line 202
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_info_tv:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->refreshAlarmView(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_22a

    :cond_7f
    const/16 v1, 0x2328

    if-ne p1, v1, :cond_90

    .line 205
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_22a

    .line 207
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_info_tv:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->refreshAlarmView(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_8e
    .catch Lorg/json/JSONException; {:try_start_72 .. :try_end_8e} :catch_226

    goto/16 :goto_22a

    :cond_90
    const/16 v1, 0x232c

    const-string v2, "status"

    const/4 v3, 0x0

    if-ne p1, v1, :cond_134

    .line 210
    :try_start_97
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_a8

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_a8

    .line 211
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_a8
    const-string p1, "serverList"

    .line 212
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 213
    :goto_ae
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_22a

    .line 214
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "server"

    .line 215
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_info_tv:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->refreshAlarmView(Landroid/widget/TextView;Ljava/lang/String;)V

    const-string v1, "ip"

    .line 217
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_info_tv:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ip: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->refreshAlarmView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 220
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_info_tv:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (0 connect, -1 disconnect)"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->refreshAlarmView(Landroid/widget/TextView;Ljava/lang/String;)V

    const-string v1, "ping"

    .line 221
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_info_tv:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->refreshAlarmView(Landroid/widget/TextView;Ljava/lang/String;)V
    :try_end_130
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_130} :catch_226

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_ae

    :cond_134
    const/16 v1, 0x232d

    const-string v4, "log"

    if-ne p1, v1, :cond_158

    .line 225
    :try_start_13a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->bistLoadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_14b

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->bistLoadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_14b

    .line 226
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->bistLoadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 227
    :cond_14b
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_22a

    .line 229
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_info_tv:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->refreshAlarmView(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_22a

    :cond_158
    const/16 v1, 0x232e

    if-ne p1, v1, :cond_22a

    .line 232
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_165

    .line 233
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 235
    :cond_165
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->checkSystemLogDownloadDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_16e

    .line 236
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->checkSystemLogDownloadDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 238
    :cond_16e
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->systemLogDownloadEnd:I

    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->systemLogDownloadStatus:I

    .line 240
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_215

    .line 241
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_22a

    .line 242
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_22a

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    :goto_18f
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_207

    .line 248
    new-instance v2, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-direct {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;-><init>()V

    .line 249
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    .line 250
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 251
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    .line 252
    invoke-virtual {v2, v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setFileName(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pilotlab/rollereye/Global;->getDownloadSession()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setSession(I)V

    .line 254
    invoke-virtual {v2, v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setRemote_path(Ljava/lang/String;)V

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v6

    iget-object v7, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v7}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getDocumentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setLocal_path(Ljava/lang/String;)V

    .line 256
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v4, :cond_204

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_204

    .line 257
    new-instance v4, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-direct {v4, v2, v6}, Lcom/pilotlab/rollereye/P2P/P2PDownload;-><init>(Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 258
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadBegin()V

    .line 259
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_204
    add-int/lit8 v3, v3, 0x1

    goto :goto_18f

    .line 265
    :cond_207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_22a

    .line 266
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, v0, p1, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->checkSystemDownloadStatus(Ljava/util/List;ILjava/util/List;)V

    goto :goto_22a

    .line 269
    :cond_215
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_get_log:Landroid/widget/RelativeLayout;

    const v0, 0x7f110108

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V
    :try_end_225
    .catch Lorg/json/JSONException; {:try_start_13a .. :try_end_225} :catch_226

    goto :goto_22a

    :catch_226
    move-exception p1

    .line 273
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_22a
    :goto_22a
    return-void
.end method

.method protected initEvent()V
    .registers 3

    .line 523
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 524
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_image_quality_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 526
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_reboot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_server_switch_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_wifi:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_test_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_iotc:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_network:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_bist:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_wifi_signal:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_get_log:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_info_tv:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 536
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_ibeacon_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$6;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 546
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_ces_switch:Landroid/widget/Switch;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$7;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$7;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 566
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_resolution_rg:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$8;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$8;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 598
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_ir_rg:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$9;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$9;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method protected initView()V
    .registers 3

    .line 410
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    .line 411
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 412
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->bistLoadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 414
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->loadingProgressDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

    .line 415
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->loadingProgressDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

    const v1, 0x7f110021

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->setTitle(Ljava/lang/String;)V

    const v0, 0x7f0a0448

    .line 417
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 418
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->center_title:Landroid/widget/TextView;

    .line 419
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f11026f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 420
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0097

    .line 421
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_info_tv:Landroid/widget/TextView;

    .line 422
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_info_tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0094

    .line 423
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_ibeacon_switch:Landroid/widget/Switch;

    const v0, 0x7f0a0091

    .line 424
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_ces_switch:Landroid/widget/Switch;

    const v0, 0x7f0a00a3

    .line 426
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_resolution_rg:Landroid/widget/RadioGroup;

    const v0, 0x7f0a00a2

    .line 427
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_resolution_720:Landroid/widget/RadioButton;

    const v0, 0x7f0a00a1

    .line 428
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_resolution_1080:Landroid/widget/RadioButton;

    const v0, 0x7f0a009d

    .line 430
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_ir_rg:Landroid/widget/RadioGroup;

    const v0, 0x7f0a009b

    .line 431
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_ir_low:Landroid/widget/RadioButton;

    const v0, 0x7f0a009c

    .line 432
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_ir_middle:Landroid/widget/RadioButton;

    const v0, 0x7f0a009a

    .line 433
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_ir_high:Landroid/widget/RadioButton;

    const v0, 0x7f0a0096

    .line 435
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_image_quality_btn:Landroid/widget/Button;

    const v0, 0x7f0a009f

    .line 437
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_reboot:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00a5

    .line 438
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_server_switch_btn:Landroid/widget/Button;

    const v0, 0x7f0a00a8

    .line 440
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_wifi:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00a7

    .line 442
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_test_btn:Landroid/widget/Button;

    const v0, 0x7f0a0098

    .line 443
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_iotc:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a009e

    .line 444
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_network:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a008f

    .line 446
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_bist:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00a9

    .line 448
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_wifi_signal:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0092

    .line 450
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->activity_debug_get_log:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 667
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_38

    goto :goto_37

    .line 669
    :sswitch_8
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->finish()V

    goto :goto_37

    .line 696
    :sswitch_c
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->obtainWifiInfo()V

    .line 697
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->initBroadcast()V

    goto :goto_37

    .line 681
    :sswitch_13
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->checkWiFiInfo()V

    goto :goto_37

    .line 684
    :sswitch_17
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->factoryTest()V

    goto :goto_37

    :sswitch_1b
    const-string p1, "https://118.24.178.237:8443/"

    .line 678
    sput-object p1, Lcom/pilotlab/rollereye/Common/ServerConstent;->baseURL:Ljava/lang/String;

    goto :goto_37

    .line 675
    :sswitch_20
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->reboot()V

    goto :goto_37

    .line 690
    :sswitch_24
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->checkNetWork()V

    goto :goto_37

    .line 687
    :sswitch_28
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->checkIOTCInfo()V

    goto :goto_37

    .line 672
    :sswitch_2c
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->imageQuality()V

    goto :goto_37

    .line 700
    :sswitch_30
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->getErrorLog()V

    goto :goto_37

    .line 693
    :sswitch_34
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->bist()V

    :goto_37
    return-void

    :sswitch_data_38
    .sparse-switch
        0x7f0a008f -> :sswitch_34
        0x7f0a0092 -> :sswitch_30
        0x7f0a0096 -> :sswitch_2c
        0x7f0a0098 -> :sswitch_28
        0x7f0a009e -> :sswitch_24
        0x7f0a009f -> :sswitch_20
        0x7f0a00a5 -> :sswitch_1b
        0x7f0a00a7 -> :sswitch_17
        0x7f0a00a8 -> :sswitch_13
        0x7f0a00a9 -> :sswitch_c
        0x7f0a0448 -> :sswitch_8
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 114
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 836
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    .line 837
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 838
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 839
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->bistLoadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_11

    .line 840
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 841
    :cond_11
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->checkDownloadDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_18

    .line 842
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 843
    :cond_18
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->loadingProgressDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;

    if-eqz v0, :cond_1f

    .line 844
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingProgressDialog;->dismiss()V

    :cond_1f
    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 641
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onPause()V

    .line 642
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 643
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 645
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    const/4 v0, 0x0

    .line 646
    :goto_1d
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 647
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 650
    :cond_33
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->rssiReceiver:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$MyDataBroadCastReceiver;

    if-eqz v0, :cond_3d

    .line 651
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 652
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->rssiReceiver:Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity$MyDataBroadCastReceiver;

    :cond_3d
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 659
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 660
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 661
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method public sendMailByIntent(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 328
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getDocumentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 331
    array-length v1, v0

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    .line 332
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 335
    :cond_29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 337
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 339
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v5

    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v6}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getDocumentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v2, v4, :cond_83

    .line 343
    invoke-static {p0, v3}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 344
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 346
    :cond_83
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 347
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    :cond_8b
    const-string p1, "customerservice@moorebot.com"

    .line 351
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.SUBJECT"

    const-string v2, "Scout System Logs"

    .line 353
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--System Logs"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.extra.TEXT"

    .line 356
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "application/octet-stream"

    .line 357
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.STREAM"

    .line 362
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 363
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0026

    .line 119
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 2

    .line 124
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    .line 125
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->checkDownloadProgress()V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 130
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->initView()V

    .line 131
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/DebugActivity;->initEvent()V

    return-void
.end method
