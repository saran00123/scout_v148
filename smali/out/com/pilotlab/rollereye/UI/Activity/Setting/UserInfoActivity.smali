.class public Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "UserInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private activity_user_create_time:Landroid/widget/TextView;

.field private activity_user_email:Landroid/widget/TextView;

.field private activity_user_info_btn:Landroid/widget/Button;

.field private activity_user_username:Landroid/widget/TextView;

.field private center_title:Landroid/widget/TextView;

.field private layout_left:Landroid/widget/LinearLayout;

.field private myDisposable:Lio/reactivex/disposables/Disposable;

.field private right_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->bindData2View(Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;)V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->logout()V

    return-void
.end method

.method private bindData2View(Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;)V
    .registers 5

    .line 149
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->activity_user_email:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f110099

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->activity_user_username:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f11009a

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->activity_user_create_time:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f110098

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getCreate_time()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultUser(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 154
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getCreate_time()Ljava/lang/String;

    move-result-object v1

    const-string v2, "create_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getLevel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "level"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getScratch_num()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scratch"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getScratch_star()Ljava/lang/String;

    move-result-object v1

    const-string v2, "star"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getMonitoring_num()Ljava/lang/String;

    move-result-object v1

    const-string v2, "monitor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {p0, v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setDefaultUser(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method private initData()V
    .registers 5

    .line 105
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->P2P:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_42

    .line 106
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 107
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v0

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryInfo(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 108
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_ae

    .line 132
    :cond_42
    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getDefaultUser(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;

    invoke-direct {v1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;-><init>()V

    .line 134
    new-instance v2, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    invoke-direct {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;-><init>()V

    const-string v3, "username"

    .line 135
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->setUsername(Ljava/lang/String;)V

    const-string v3, "email"

    .line 136
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->setEmail(Ljava/lang/String;)V

    const-string v3, "create_time"

    .line 137
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->setCreate_time(Ljava/lang/String;)V

    const-string v3, "id"

    .line 138
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->setId(Ljava/lang/String;)V

    const-string v3, "monitor"

    .line 139
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->setMonitoring_num(Ljava/lang/String;)V

    const-string v3, "star"

    .line 140
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->setScratch_star(Ljava/lang/String;)V

    const-string v3, "scratch"

    .line 141
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->setScratch_num(Ljava/lang/String;)V

    const-string v3, "level"

    .line 142
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->setLevel(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->setData(Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;)V

    .line 144
    invoke-direct {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->bindData2View(Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;)V

    :goto_ae
    return-void
.end method

.method private initEvent()V
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->right_title:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->activity_user_info_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .registers 3

    const v0, 0x7f0a0210

    .line 68
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->center_title:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->center_title:Landroid/widget/TextView;

    const/high16 v1, 0x7f110000

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0448

    .line 71
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04f2

    .line 72
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->right_title:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->right_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->right_title:Landroid/widget/TextView;

    const v1, 0x7f1101a2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->right_title:Landroid/widget/TextView;

    const v1, 0x7f060023

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0197

    .line 77
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->activity_user_create_time:Landroid/widget/TextView;

    const v0, 0x7f0a0198

    .line 78
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->activity_user_email:Landroid/widget/TextView;

    const v0, 0x7f0a01a8

    .line 79
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->activity_user_username:Landroid/widget/TextView;

    const v0, 0x7f0a0199

    .line 81
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->activity_user_info_btn:Landroid/widget/Button;

    .line 82
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-void
.end method

.method private logout()V
    .registers 4

    .line 198
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 199
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/pilotlab/rollereye/RollerEyeApplication;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/RollerEyeApplication;->unbindAccount()V

    .line 200
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/pilotlab/rollereye/Global;->destroyUserInfo(Landroid/content/Context;)V

    .line 201
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Global;->setSynServer(Z)V

    .line 202
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getP2PService()Lcom/pilotlab/rollereye/P2P/P2PService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PService;->removeAllClients()V

    .line 203
    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/RegisterLogin/LaunchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->finishAffinity()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0199

    if-eq p1, v0, :cond_40

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_3c

    const v0, 0x7f0a04f2

    if-eq p1, v0, :cond_14

    goto :goto_4d

    :cond_14
    const p1, 0x7f110097

    .line 177
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p1, 0x7f110071

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity$2;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;)V

    const p1, 0x7f11003a

    .line 182
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity$3;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;)V

    move-object v0, p0

    .line 177
    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    goto :goto_4d

    .line 174
    :cond_3c
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->finish()V

    goto :goto_4d

    .line 190
    :cond_40
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 191
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/Setting/AccoutPwdActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->startActivity(Landroid/content/Intent;)V

    :goto_4d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 45
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->fullScreen()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 165
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    .line 166
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 167
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_a
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 87
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 88
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->fullScreen()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 93
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0050

    .line 51
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 2

    .line 99
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->initData()V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->initView()V

    .line 57
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Setting/UserInfoActivity;->initEvent()V

    return-void
.end method
