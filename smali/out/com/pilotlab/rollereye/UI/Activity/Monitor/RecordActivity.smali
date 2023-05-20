.class public Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "RecordActivity.java"

# interfaces
.implements Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$onItemCallback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$MyDataBroadCastReceiver;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_record_calendar_btn:Landroid/widget/ImageButton;

.field private activity_record_edit_bar:Landroid/widget/RelativeLayout;

.field private activity_record_edit_btn:Landroid/widget/ImageButton;

.field private activity_record_edit_cancel:Landroid/widget/TextView;

.field private activity_record_edit_delete:Landroid/widget/ImageButton;

.field private activity_record_empty_ry:Landroid/widget/RelativeLayout;

.field private activity_record_recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private activity_record_top:Landroid/widget/RelativeLayout;

.field private center_title:Landroid/widget/TextView;

.field private checkDownloadDisposable:Lio/reactivex/disposables/Disposable;

.field private datePickerDialog:Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

.field private layout_left:Landroid/widget/LinearLayout;

.field private loadMore:I

.field private mDay:I

.field private mMonth:I

.field private mYear:I

.field private myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$MyDataBroadCastReceiver;

.field private p2PdownloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/P2P/P2PDownload;",
            ">;"
        }
    .end annotation
.end field

.field private reFresh:I

.field private recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

.field private refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

.field private total_record_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "RecordActivity"

    .line 70
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->TAG:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    const/4 v0, 0x1

    .line 83
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->loadMore:I

    const/4 v0, 0x2

    .line 84
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->reFresh:I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PdownloadList:Ljava/util/List;

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->mYear:I

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->mMonth:I

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->mDay:I

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)I
    .registers 1

    .line 69
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->loadMore:I

    return p0
.end method

.method static synthetic access$1002(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;I)I
    .registers 2

    .line 69
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->mYear:I

    return p1
.end method

.method static synthetic access$1102(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;I)I
    .registers 2

    .line 69
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->mMonth:I

    return p1
.end method

.method static synthetic access$1202(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;I)I
    .registers 2

    .line 69
    iput p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->mDay:I

    return p1
.end method

.method static synthetic access$1300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->deleteRecords()V

    return-void
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;Ljava/lang/String;I)V
    .registers 3

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getRecordFiles(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;I)V
    .registers 2

    .line 69
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getRecordFiles(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)I
    .registers 1

    .line 69
    iget p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->reFresh:I

    return p0
.end method

.method static synthetic access$702(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->checkDownloadDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PdownloadList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;
    .registers 1

    .line 69
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    return-object p0
.end method

.method private checkDownloadProgress()V
    .registers 4

    .line 182
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

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private deleteRecords()V
    .registers 11

    .line 345
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    const v1, 0x7f11003e

    const v2, 0x7f110219

    if-eqz v0, :cond_133

    .line 346
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 347
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object v0

    .line 348
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_b6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move v4, v3

    .line 350
    :goto_2f
    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_21

    .line 351
    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 353
    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_84

    move v5, v3

    .line 354
    :goto_58
    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_84

    .line 355
    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    invoke-virtual {v6}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->getP2PdownloadBean()Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 356
    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    invoke-virtual {v6}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadEnd()V

    :cond_81
    add-int/lit8 v5, v5, 0x1

    goto :goto_58

    .line 361
    :cond_84
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v6}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getLocal_path()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_ad

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 364
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 366
    :cond_ad
    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    invoke-virtual {v5, v4}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->removeData(I)V

    :cond_b2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2f

    .line 370
    :cond_b6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f7

    .line 371
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_DELETE_FILE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 372
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 374
    :try_start_c3
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    move v5, v3

    .line 375
    :goto_c9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_d9

    .line 376
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v5, v5, 0x1

    goto :goto_c9

    :cond_d9
    const-string v1, "id"

    .line 378
    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_de
    .catch Lorg/json/JSONException; {:try_start_c3 .. :try_end_de} :catch_df

    goto :goto_e3

    :catch_df
    move-exception v1

    .line 380
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 382
    :goto_e3
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v1, :cond_f7

    .line 383
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v4, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v5, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 386
    :cond_f7
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_edit_delete:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->getmSeleted()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 389
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_115

    .line 390
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_empty_ry:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_14a

    .line 391
    :cond_115
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_empty_ry:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_14a

    .line 394
    :cond_11b
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$4;

    invoke-direct {v7, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_14a

    .line 403
    :cond_133
    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$5;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :goto_14a
    return-void
.end method

.method private getRecordFiles(I)V
    .registers 6

    .line 271
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_GET_FILE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 272
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "type"

    const-string v3, "all"

    .line 274
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "start"

    .line 275
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "count"

    const/16 v2, 0xc

    .line 276
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    .line 278
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 280
    :goto_1f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p1, :cond_33

    .line 281
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance v2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v3, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_33
    return-void
.end method

.method private getRecordFiles(Ljava/lang/String;I)V
    .registers 7

    .line 290
    sget-object v0, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_GET_FILE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 291
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "type"

    const-string v3, "all"

    .line 293
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "id"

    .line 294
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "start"

    const/4 v2, 0x0

    .line 295
    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 296
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->loadMore:I
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1b} :catch_2b

    const-string v2, "count"

    if-ne p2, p1, :cond_25

    const/16 p1, 0xc

    .line 297
    :try_start_21
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2f

    :cond_25
    const/16 p1, -0xc

    .line 298
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception p1

    .line 300
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 302
    :goto_2f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz p1, :cond_43

    .line 303
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    new-instance p2, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v2, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v2, v0}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    :cond_43
    return-void
.end method

.method private initBroadcast()V
    .registers 3

    .line 174
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$MyDataBroadCastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$MyDataBroadCastReceiver;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$1;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$MyDataBroadCastReceiver;

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->RECORD_LOCAL_DATA_CHANGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$MyDataBroadCastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private openFile(Ljava/io/File;)V
    .registers 6

    .line 528
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 530
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    invoke-static {p1}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getMIMEType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 533
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_26

    const/4 v2, 0x1

    .line 534
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 535
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.pilotlab.rollereye.fileprovider"

    invoke-static {v2, v3, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 536
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_32

    .line 538
    :cond_26
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 539
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_32
    const-string p1, "File"

    .line 541
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private scanLocalRecord(Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;)V
    .registers 10

    .line 311
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "record"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_65

    .line 312
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v4

    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v5}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getCamVideoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_d1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_d1

    .line 315
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v4, v0

    :goto_34
    if-ge v2, v4, :cond_d1

    aget-object v5, v0, v2

    .line 316
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_62

    .line 317
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 318
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileSize()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_5d

    .line 319
    invoke-virtual {p1, v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setType(I)V

    goto/16 :goto_d1

    .line 320
    :cond_5d
    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setType(I)V

    goto/16 :goto_d1

    :cond_62
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 326
    :cond_65
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "snapshot"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "thumb"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 327
    :cond_7d
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v4

    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v5}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getCamPhotoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_d1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_d1

    .line 330
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v4, v0

    :goto_a2
    if-ge v2, v4, :cond_d1

    aget-object v5, v0, v2

    .line 331
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_ce

    .line 332
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ce

    .line 333
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileSize()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_ca

    .line 334
    invoke-virtual {p1, v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setType(I)V

    goto :goto_d1

    .line 335
    :cond_ca
    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setType(I)V

    goto :goto_d1

    :cond_ce
    add-int/lit8 v2, v2, 0x1

    goto :goto_a2

    :cond_d1
    :goto_d1
    return-void
.end method

.method private showDatePickerDialog()V
    .registers 9

    .line 658
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 659
    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->mYear:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    const/4 v1, 0x1

    .line 660
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->mYear:I

    .line 661
    :cond_10
    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->mMonth:I

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x2

    .line 662
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->mMonth:I

    .line 663
    :cond_1b
    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->mDay:I

    if-ne v1, v2, :cond_26

    const/4 v1, 0x5

    .line 664
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->mDay:I

    .line 667
    :cond_26
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

    const v3, 0x7f1200ef

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$9;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$9;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V

    iget v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->mYear:I

    iget v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->mMonth:I

    iget v7, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->mDay:I

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;III)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->datePickerDialog:Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

    .line 676
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->datePickerDialog:Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 677
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->datePickerDialog:Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    .line 678
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 679
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->datePickerDialog:Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;->show()V

    return-void
.end method


# virtual methods
.method public Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V
    .registers 19
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "thumb"

    const-string v2, "record"

    const-string v3, "create_time"

    const-string v4, "id"

    .line 414
    invoke-super/range {p0 .. p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->Event(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    .line 415
    invoke-virtual/range {p1 .. p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getType()I

    move-result v5

    sget v6, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    if-ne v5, v6, :cond_29b

    .line 417
    :try_start_15
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 418
    iget-object v6, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "total size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 420
    sget-object v7, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->RECORD_GET_FILE:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    invoke-virtual {v7}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->getId()I

    move-result v7

    if-ne v6, v7, :cond_29b

    .line 422
    iget-object v6, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 423
    iget-object v6, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    invoke-interface {v6, v7}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 426
    iget-object v6, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const-string v8, "body"

    .line 428
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "status"

    .line 429
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_280

    const-string v8, "files"

    .line 430
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v10, v7

    const/4 v8, 0x0

    .line 431
    :goto_6b
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v8, v11, :cond_280

    .line 432
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 433
    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 434
    new-instance v13, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-direct {v13}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;-><init>()V

    .line 435
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setId(Ljava/lang/String;)V

    const-string v14, "size"

    .line 436
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setFileSize(J)V

    const-string v14, "name"

    .line 437
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setFileName(Ljava/lang/String;)V

    const-string v14, "type"

    .line 438
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setFileType(Ljava/lang/String;)V

    const-string v14, "duration"

    .line 439
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setDuration(J)V

    .line 440
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setCreateTime(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v13}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_b9
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_b9} :catch_297

    const-string v15, "snapshot"

    if-eqz v14, :cond_e7

    .line 442
    :try_start_bd
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v9

    iget-object v7, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v7}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getCamVideoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setLocal_path(Ljava/lang/String;)V

    goto :goto_11a

    .line 443
    :cond_e7
    invoke-virtual {v13}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11a

    .line 444
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v9

    iget-object v14, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v14}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getCamPhotoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setLocal_path(Ljava/lang/String;)V

    .line 446
    :cond_11a
    :goto_11a
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pilotlab/rollereye/Global;->getDownloadSession()I

    move-result v7

    invoke-virtual {v13, v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setSession(I)V

    .line 447
    invoke-direct {v1, v13}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->scanLocalRecord(Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;)V

    .line 448
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    .line 451
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const/4 v14, 0x1

    if-ne v9, v14, :cond_1a1

    .line 452
    new-instance v7, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-direct {v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;-><init>()V

    const-string v9, "thumb_id"

    .line 453
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setId(Ljava/lang/String;)V

    const-string v9, "thumb_size"

    move-object v14, v4

    move-object/from16 v16, v5

    .line 454
    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v7, v4, v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setFileSize(J)V

    .line 455
    invoke-virtual {v13}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mp4"

    const-string v9, "jpg"

    invoke-virtual {v4, v5, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setFileName(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v7, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setFileType(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setCreateTime(Ljava/lang/String;)V

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v5

    iget-object v9, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {v9}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getCamPhotoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setLocal_path(Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Global;->getDownloadSession()I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->setSession(I)V

    .line 460
    invoke-direct {v1, v7}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->scanLocalRecord(Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;)V

    .line 461
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a4

    :cond_1a1
    move-object v14, v4

    move-object/from16 v16, v5

    .line 464
    :goto_1a4
    iget-object v4, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_1b3

    .line 465
    iget-object v4, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1ee

    .line 468
    :cond_1b3
    iget-object v4, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_1b9
    if-lez v4, :cond_1ee

    .line 469
    iget-object v9, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    add-int/lit8 v12, v4, -0x1

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v9}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getCreateTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getCreateTime()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->timeCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ge v9, v5, :cond_1e0

    .line 470
    iget-object v9, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v9, v4, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1ee

    :cond_1e0
    const/4 v9, 0x1

    if-ne v4, v9, :cond_1eb

    .line 475
    iget-object v9, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v9, -0x1

    move v10, v9

    :cond_1eb
    add-int/lit8 v4, v4, -0x1

    goto :goto_1b9

    .line 483
    :cond_1ee
    :goto_1ee
    invoke-virtual {v13}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_229

    if-eqz v7, :cond_227

    .line 485
    invoke-virtual {v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v4

    if-eq v4, v5, :cond_227

    invoke-virtual {v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_208

    goto :goto_260

    .line 487
    :cond_208
    iget-object v4, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PdownloadList:Ljava/util/List;

    invoke-virtual {v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_227

    .line 488
    iget-object v4, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v4, :cond_227

    .line 489
    new-instance v4, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    iget-object v5, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-direct {v4, v7, v5}, Lcom/pilotlab/rollereye/P2P/P2PDownload;-><init>(Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 490
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadBegin()V

    .line 491
    iget-object v5, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_227
    const/4 v5, 0x1

    goto :goto_260

    .line 496
    :cond_229
    invoke-virtual {v13}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_227

    .line 497
    invoke-virtual {v13}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v4

    if-eq v4, v5, :cond_227

    invoke-virtual {v13}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_241

    goto :goto_260

    .line 499
    :cond_241
    iget-object v4, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PdownloadList:Ljava/util/List;

    invoke-virtual {v13}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_260

    .line 500
    iget-object v4, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    if-eqz v4, :cond_260

    .line 501
    new-instance v4, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    iget-object v7, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-direct {v4, v13, v7}, Lcom/pilotlab/rollereye/P2P/P2PDownload;-><init>(Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 502
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadBegin()V

    .line 503
    iget-object v7, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_260
    :goto_260
    if-lez v10, :cond_26c

    .line 509
    iget-object v4, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->notifyItemRangeChanged(II)V

    goto :goto_278

    .line 511
    :cond_26c
    iget-object v4, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    iget-object v7, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x0

    invoke-virtual {v4, v9, v7}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->notifyItemRangeChanged(II)V

    :goto_278
    add-int/lit8 v8, v8, 0x1

    move v7, v5

    move-object v4, v14

    move-object/from16 v5, v16

    goto/16 :goto_6b

    .line 516
    :cond_280
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_290

    .line 517
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_empty_ry:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_29b

    .line 518
    :cond_290
    iget-object v0, v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_empty_ry:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_296
    .catch Lorg/json/JSONException; {:try_start_bd .. :try_end_296} :catch_297

    goto :goto_29b

    :catch_297
    move-exception v0

    .line 522
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_29b
    :goto_29b
    return-void
.end method

.method protected initEvent()V
    .registers 3

    .line 109
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 110
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_edit_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->setOnLoadMoreListener(Lcom/scwang/smartrefresh/layout/listener/OnLoadMoreListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 122
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->setOnRefreshListener(Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 132
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_calendar_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_edit_cancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_edit_delete:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 4

    .line 140
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a04e9

    .line 141
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    const v0, 0x7f0a0448

    .line 142
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a013d

    .line 143
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_edit_btn:Landroid/widget/ImageButton;

    const v0, 0x7f0a0146

    .line 144
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_top:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a013c

    .line 145
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_edit_bar:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a013a

    .line 146
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_calendar_btn:Landroid/widget/ImageButton;

    const v0, 0x7f0a013e

    .line 147
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_edit_cancel:Landroid/widget/TextView;

    const v0, 0x7f0a013f

    .line 148
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_edit_delete:Landroid/widget/ImageButton;

    const v0, 0x7f0a0140

    .line 149
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_empty_ry:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0210

    .line 150
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->center_title:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f11002a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0142

    .line 153
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 154
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-direct {v0, p0, v1, p0}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter$onItemCallback;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    .line 155
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 156
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 157
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;

    const v2, 0x7f080072

    invoke-direct {v1, p0, v2}, Lcom/pilotlab/rollereye/CustomerView/DividerGridItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 158
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11

    .line 684
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a013a

    if-eq p1, v0, :cond_92

    const v0, 0x7f0a0448

    const v1, 0x7f11003a

    const v2, 0x7f110071

    if-eq p1, v0, :cond_64

    const/16 v0, 0x8

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_96

    goto/16 :goto_95

    :pswitch_1c
    const p1, 0x7f11021a

    .line 718
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$12;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$12;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V

    .line 724
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$13;

    invoke-direct {v8, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$13;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V

    move-object v3, p0

    .line 718
    invoke-virtual/range {v3 .. v8}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 729
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_95

    .line 713
    :pswitch_3e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    invoke-virtual {p1, v3}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->setEditMode(I)V

    .line 714
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_top:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 715
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_edit_bar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_95

    .line 707
    :pswitch_4e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->recordAdapter:Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->setEditMode(I)V

    .line 708
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_top:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 709
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_edit_bar:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 710
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_edit_delete:Landroid/widget/ImageButton;

    invoke-virtual {p1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_95

    .line 686
    :cond_64
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8e

    const p1, 0x7f11021f

    .line 687
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$10;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$10;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V

    .line 693
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$11;

    invoke-direct {v8, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$11;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V

    move-object v3, p0

    .line 687
    invoke-virtual/range {v3 .. v8}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 698
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_95

    .line 700
    :cond_8e
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->finish()V

    goto :goto_95

    .line 704
    :cond_92
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->showDatePickerDialog()V

    :goto_95
    return-void

    :pswitch_data_96
    .packed-switch 0x7f0a013d
        :pswitch_4e
        :pswitch_3e
        :pswitch_1c
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .line 246
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onDestroy()V

    .line 247
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 248
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 250
    :cond_14
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->checkDownloadDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1b

    .line 251
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 253
    :cond_1b
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->datePickerDialog:Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;

    if-eqz v0, :cond_22

    .line 254
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/MyDatePickerDialog;->dismiss()V

    .line 256
    :cond_22
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_41

    const/4 v0, 0x0

    .line 257
    :goto_2b
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 258
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 261
    :cond_41
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->myDataBroadCastReceiver:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$MyDataBroadCastReceiver;

    if-eqz v0, :cond_48

    .line 262
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_48
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 12

    .line 547
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    .line 548
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_c4

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getType()I

    move-result v1

    if-ne v1, v3, :cond_1f

    goto/16 :goto_c4

    .line 605
    :cond_1f
    :goto_1f
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_45

    .line 606
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->getP2PdownloadBean()Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_42

    return-void

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 610
    :cond_45
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    const v0, 0x7f11021b

    const v1, 0x7f11003e

    if-eqz p2, :cond_aa

    .line 611
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_90

    .line 612
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/FileUtil;->readSDCard(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileSize()J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-lez p2, :cond_74

    .line 613
    new-instance p2, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PClient:Lcom/pilotlab/rollereye/P2P/P2PClient;

    invoke-direct {p2, p1, v0}, Lcom/pilotlab/rollereye/P2P/P2PDownload;-><init>(Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;Lcom/pilotlab/rollereye/P2P/P2PClient;)V

    .line 614
    invoke-virtual {p2}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->downloadBegin()V

    .line 615
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->p2PdownloadList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_226

    :cond_74
    const p1, 0x7f110223

    .line 617
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$6;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$6;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 622
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_226

    .line 625
    :cond_90
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$7;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$7;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 630
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_226

    .line 633
    :cond_aa
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$8;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$8;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 638
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto/16 :goto_226

    .line 550
    :cond_c4
    :goto_c4
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Click File Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v4, 0x96

    .line 556
    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_1c3

    const/16 v5, 0x4b

    if-ge p2, v5, :cond_12e

    move p2, v0

    move v5, p2

    :goto_f3
    if-ge p2, v4, :cond_207

    .line 559
    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    .line 560
    invoke-virtual {v6}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v7

    if-eq v7, v2, :cond_10f

    invoke-virtual {v6}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getType()I

    move-result v7

    if-ne v7, v3, :cond_12b

    .line 561
    :cond_10f
    iget-object v7, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-virtual {v6}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12b

    .line 563
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :cond_12b
    add-int/lit8 p2, p2, 0x1

    goto :goto_f3

    .line 566
    :cond_12e
    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v5

    if-le p2, v6, :cond_181

    .line 567
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v4

    move v5, v0

    :goto_13f
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_207

    .line 568
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    .line 569
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v6

    if-eq v6, v2, :cond_161

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getType()I

    move-result v6

    if-ne v6, v3, :cond_17e

    .line 570
    :cond_161
    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17e

    .line 572
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    move v5, v4

    :cond_17e
    add-int/lit8 p2, p2, 0x1

    goto :goto_13f

    :cond_181
    add-int/lit8 v4, p2, -0x4b

    move v6, v0

    :goto_184
    add-int/lit8 v7, p2, 0x4b

    if-ge v4, v7, :cond_1c1

    .line 577
    iget-object v7, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    .line 578
    invoke-virtual {v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v8

    if-eq v8, v2, :cond_1a2

    invoke-virtual {v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getType()I

    move-result v8

    if-ne v8, v3, :cond_1be

    .line 579
    :cond_1a2
    iget-object v8, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-virtual {v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1be

    .line 581
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    :cond_1be
    add-int/lit8 v4, v4, 0x1

    goto :goto_184

    :cond_1c1
    move v5, v6

    goto :goto_207

    :cond_1c3
    move p2, v0

    move v5, p2

    .line 586
    :goto_1c5
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p2, v4, :cond_207

    .line 587
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    .line 588
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v6

    if-eq v6, v2, :cond_1e7

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getType()I

    move-result v6

    if-ne v6, v3, :cond_204

    .line 589
    :cond_1e7
    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_204

    .line 591
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    move v5, v4

    :cond_204
    add-int/lit8 p2, p2, 0x1

    goto :goto_1c5

    .line 596
    :cond_207
    :goto_207
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_226

    .line 597
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 598
    check-cast v1, Ljava/io/Serializable;

    const-string p2, "record_list"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "record_position"

    .line 599
    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 600
    const-class p2, Lcom/pilotlab/rollereye/UI/Activity/Monitor/PreViewActivity;

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 601
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->startActivity(Landroid/content/Intent;)V

    :cond_226
    :goto_226
    return-void
.end method

.method public onItemLongClick(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public selectSet(Ljava/util/Set;)V
    .registers 3

    .line 645
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_d

    .line 646
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_edit_delete:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_13

    .line 647
    :cond_d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->activity_record_edit_delete:Landroid/widget/ImageButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_13
    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0042

    .line 97
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 2

    .line 164
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpData(Landroid/os/Bundle;)V

    .line 165
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 166
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 168
    :cond_14
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->total_record_list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->getRecordFiles(I)V

    .line 169
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->checkDownloadProgress()V

    .line 170
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->initBroadcast()V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 102
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->setUpView()V

    .line 103
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->initView()V

    .line 104
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->initEvent()V

    return-void
.end method
