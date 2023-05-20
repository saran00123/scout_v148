.class public Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "UpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_download_btn:Landroid/widget/Button;

.field private activity_update_btn:Landroid/widget/Button;

.field private activity_update_content:Landroid/widget/TextView;

.field private activity_update_disconnect_note:Landroid/widget/TextView;

.field private activity_update_img:Landroid/widget/ImageView;

.field private activity_update_progress_bar:Landroid/widget/ProgressBar;

.field private activity_update_progress_layout:Landroid/widget/LinearLayout;

.field private activity_update_progress_note:Landroid/widget/TextView;

.field private activity_update_progress_tv:Landroid/widget/TextView;

.field private activity_update_title:Landroid/widget/TextView;

.field private activity_update_version:Landroid/widget/TextView;

.field private center_title:Landroid/widget/TextView;

.field private layout_left:Landroid/widget/LinearLayout;

.field private mCheckStatusDisposable:Lio/reactivex/disposables/Disposable;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private newFirmwareSW:Ljava/lang/String;

.field private otaBean:Lcom/pilotlab/rollereye/Bean/OtaBean;

.field private otaStatusBean:Lcom/pilotlab/rollereye/Bean/OtaStatusBean;

.field private otaStatusSW:Ljava/lang/String;

.field private updateFlag:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "UpdateActivity"

    .line 45
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->updateFlag:Z

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->mCheckStatusDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    return-object p0
.end method

.method static synthetic access$402(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)Landroid/widget/ProgressBar;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_bar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)Landroid/widget/TextView;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)V
    .registers 1

    .line 43
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->updateSuccess()V

    return-void
.end method

.method private checkOtaStatus()V
    .registers 6

    .line 123
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

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private checkVersion()V
    .registers 6

    .line 114
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->OTA_QUERY_NEW_VERSION:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 115
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 116
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    .line 117
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

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

.method private download()V
    .registers 6

    .line 371
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->mCheckStatusDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_7

    .line 372
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 374
    :cond_7
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 375
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_download_btn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 376
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->OTA_DOWNLOAD:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 377
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 380
    :cond_2d
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->checkOtaStatus()V

    return-void
.end method

.method private exit()V
    .registers 8

    .line 343
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->updateFlag:Z

    if-eqz v0, :cond_2c

    const v0, 0x7f1102db

    .line 344
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$2;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)V

    const v0, 0x7f110007

    .line 350
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$3;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)V

    move-object v1, p0

    .line 344
    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_2f

    .line 356
    :cond_2c
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->finish()V

    :goto_2f
    return-void
.end method

.method private initData()V
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    const/16 v1, 0x8

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 98
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_disconnect_note:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_img:Landroid/widget/ImageView;

    const v1, 0x7f0801a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->checkVersion()V

    .line 101
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->checkOtaStatus()V

    goto :goto_4c

    .line 103
    :cond_22
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_title:Landroid/widget/TextView;

    const v2, 0x7f1102d8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_disconnect_note:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_img:Landroid/widget/ImageView;

    const v2, 0x7f0801a1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_content:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_version:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_4c
    return-void
.end method

.method private update()V
    .registers 8

    .line 386
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->systemStatus:Lcom/pilotlab/rollereye/Bean/SystemStatus;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getBattary()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$BattaryBean;->getCharging()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9a

    .line 387
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    .line 389
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->mCheckStatusDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_21

    .line 390
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 392
    :cond_21
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_28

    .line 393
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 395
    :cond_28
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_bar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 396
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_tv:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 400
    iput-boolean v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->updateFlag:Z

    .line 401
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->OTA_UPDATE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 403
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 405
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2, v1, v2, v0}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$5;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->takeWhile(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object v0

    .line 410
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$4;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 433
    :cond_96
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->checkOtaStatus()V

    goto :goto_b7

    :cond_9a
    const v0, 0x7f1102d4

    .line 435
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f11003e

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$6;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 440
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :goto_b7
    return-void
.end method

.method private updateSuccess()V
    .registers 3

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->updateFlag:Z

    .line 255
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 256
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 257
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_download_btn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_title:Landroid/widget/TextView;

    const v1, 0x7f1102d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 11
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 156
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 157
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v0, v1, :cond_258

    .line 159
    :try_start_b
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    .line 160
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_1a} :catch_254

    const/16 v2, 0xbbe

    const v3, 0x7f1102d8

    const v4, 0x7f1102d7

    const-string v5, "status"

    const-string v6, "body"

    const/4 v7, 0x0

    const/16 v8, 0x8

    if-ne v1, v2, :cond_119

    .line 162
    :try_start_2b
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 164
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_258

    .line 165
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 166
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/Bean/OtaBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/OtaBean;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaBean:Lcom/pilotlab/rollereye/Bean/OtaBean;

    .line 168
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaBean:Lcom/pilotlab/rollereye/Bean/OtaBean;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaBean:Lcom/pilotlab/rollereye/Bean/OtaBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->sizeFromLong2Text(J)Ljava/lang/String;

    move-result-object p1

    .line 171
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaBean:Lcom/pilotlab/rollereye/Bean/OtaBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/OtaBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->getSwVer()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaBean:Lcom/pilotlab/rollereye/Bean/OtaBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/OtaBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->getTime()Ljava/lang/String;

    move-result-object v1
    :try_end_87
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_87} :catch_254

    .line 174
    :try_start_87
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 176
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy.MM.dd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1
    :try_end_9d
    .catch Ljava/text/ParseException; {:try_start_87 .. :try_end_9d} :catch_9e
    .catch Lorg/json/JSONException; {:try_start_87 .. :try_end_9d} :catch_254

    goto :goto_a2

    :catch_9e
    move-exception v2

    .line 179
    :try_start_9f
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 182
    :goto_a2
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaBean:Lcom/pilotlab/rollereye/Bean/OtaBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/OtaBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->getHasNew()I

    move-result v2

    if-nez v2, :cond_b4

    .line 183
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_title:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_f3

    .line 185
    :cond_b4
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_title:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_version:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_content:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaBean:Lcom/pilotlab/rollereye/Bean/OtaBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/OtaBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->getUpdate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_version:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_content:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    :goto_f3
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaBean:Lcom/pilotlab/rollereye/Bean/OtaBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->getHasDownload()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_106

    .line 193
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_btn:Landroid/widget/Button;

    invoke-virtual {p1, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_10b

    .line 194
    :cond_106
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_btn:Landroid/widget/Button;

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 196
    :goto_10b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaBean:Lcom/pilotlab/rollereye/Bean/OtaBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaBean$BodyBean;->getSwVer()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->newFirmwareSW:Ljava/lang/String;

    goto/16 :goto_258

    :cond_119
    const/16 v2, 0xbc3

    if-ne v1, v2, :cond_258

    .line 200
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 201
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_258

    .line 202
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 203
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/pilotlab/rollereye/Bean/OtaStatusBean;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/OtaStatusBean;

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaStatusBean:Lcom/pilotlab/rollereye/Bean/OtaStatusBean;

    .line 205
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaStatusBean:Lcom/pilotlab/rollereye/Bean/OtaStatusBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->getVer()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaStatusSW:Ljava/lang/String;

    .line 207
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaStatusBean:Lcom/pilotlab/rollereye/Bean/OtaStatusBean;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->newFirmwareSW:Ljava/lang/String;

    if-eqz p1, :cond_258

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaStatusSW:Ljava/lang/String;

    if-eqz p1, :cond_258

    .line 211
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaStatusBean:Lcom/pilotlab/rollereye/Bean/OtaStatusBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->getStep()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1ae

    .line 212
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 213
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_note:Landroid/widget/TextView;

    const v0, 0x7f1102da

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 214
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_bar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaStatusBean:Lcom/pilotlab/rollereye/Bean/OtaStatusBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 215
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_tv:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaStatusBean:Lcom/pilotlab/rollereye/Bean/OtaStatusBean;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_download_btn:Landroid/widget/Button;

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_258

    .line 217
    :cond_1ae
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaStatusBean:Lcom/pilotlab/rollereye/Bean/OtaStatusBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->getStep()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1cc

    .line 218
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_btn:Landroid/widget/Button;

    invoke-virtual {p1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 220
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_download_btn:Landroid/widget/Button;

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_258

    .line 221
    :cond_1cc
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaStatusBean:Lcom/pilotlab/rollereye/Bean/OtaStatusBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->getStep()I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1fa

    .line 222
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_1e2

    .line 223
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 224
    :cond_1e2
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_note:Landroid/widget/TextView;

    const v0, 0x7f1102d9

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 225
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_btn:Landroid/widget/Button;

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_download_btn:Landroid/widget/Button;

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_258

    .line 228
    :cond_1fa
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaStatusBean:Lcom/pilotlab/rollereye/Bean/OtaStatusBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->getStep()I

    move-result p1

    if-ne p1, v8, :cond_20a

    .line 229
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->updateSuccess()V

    goto :goto_258

    .line 230
    :cond_20a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaStatusBean:Lcom/pilotlab/rollereye/Bean/OtaStatusBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->getStep()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_258

    .line 231
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_220

    .line 232
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 233
    :cond_220
    iput-boolean v7, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->updateFlag:Z

    .line 234
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->otaStatusBean:Lcom/pilotlab/rollereye/Bean/OtaStatusBean;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean;->getBody()Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/OtaStatusBean$BodyBean;->getMsg()Ljava/lang/String;

    move-result-object p1

    const-string v0, "9003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_244

    .line 235
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_download_btn:Landroid/widget/Button;

    invoke-virtual {p1, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_title:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_258

    .line 239
    :cond_244
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_btn:Landroid/widget/Button;

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 241
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_title:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_253
    .catch Lorg/json/JSONException; {:try_start_9f .. :try_end_253} :catch_254

    goto :goto_258

    :catch_254
    move-exception p1

    .line 248
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_258
    :goto_258
    return-void
.end method

.method protected initEvent()V
    .registers 2

    .line 293
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 294
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_download_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 3

    .line 265
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a0448

    .line 266
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 267
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->center_title:Landroid/widget/TextView;

    .line 268
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f11027a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 269
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 271
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v0, 0x7f0a018e

    .line 273
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_content:Landroid/widget/TextView;

    .line 274
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0a018d

    .line 276
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_btn:Landroid/widget/Button;

    const v0, 0x7f0a00c7

    .line 277
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_download_btn:Landroid/widget/Button;

    const v0, 0x7f0a0192

    .line 278
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_layout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0191

    .line 280
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_bar:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0194

    .line 281
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_tv:Landroid/widget/TextView;

    const v0, 0x7f0a0196

    .line 283
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_version:Landroid/widget/TextView;

    const v0, 0x7f0a0190

    .line 284
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_img:Landroid/widget/ImageView;

    const v0, 0x7f0a018f

    .line 285
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_disconnect_note:Landroid/widget/TextView;

    const v0, 0x7f0a0195

    .line 286
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_title:Landroid/widget/TextView;

    const v0, 0x7f0a0193

    .line 287
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->activity_update_progress_note:Landroid/widget/TextView;

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    .line 339
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->exit()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00c7

    if-eq p1, v0, :cond_1c

    const v0, 0x7f0a018d

    if-eq p1, v0, :cond_18

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_14

    goto :goto_1f

    .line 326
    :cond_14
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->exit()V

    goto :goto_1f

    .line 329
    :cond_18
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->update()V

    goto :goto_1f

    .line 332
    :cond_1c
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->download()V

    :goto_1f
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 75
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 361
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    .line 362
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 363
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 364
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->mCheckStatusDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_11

    .line 365
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_11
    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 301
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onPause()V

    .line 302
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 303
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 310
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 312
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->mCheckStatusDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 313
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 315
    :cond_a
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 316
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 318
    :cond_1b
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->initData()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d004e

    .line 80
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 2

    .line 93
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 86
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->initView()V

    .line 87
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UpdateActivity;->initEvent()V

    return-void
.end method
