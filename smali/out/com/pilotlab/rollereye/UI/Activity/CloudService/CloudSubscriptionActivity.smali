.class public Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;
.source "CloudSubscriptionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_cloud_subscription_activated_date:Landroid/widget/TextView;

.field private activity_cloud_subscription_activated_title:Landroid/widget/TextView;

.field private activity_cloud_subscription_meal:Landroid/widget/RelativeLayout;

.field private activity_cloud_subscription_order:Landroid/widget/Button;

.field private activity_cloud_subscription_renew:Landroid/widget/LinearLayout;

.field private activity_cloud_subscription_renew_btn:Landroid/widget/Button;

.field private center_title:Landroid/widget/TextView;

.field private layout_left:Landroid/widget/LinearLayout;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private right_btn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;-><init>()V

    const-string v0, "CloudSubscriptionActivity"

    .line 47
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private QueryOrder()V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 129
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

    .line 130
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)Ljava/lang/String;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)Landroid/widget/Button;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->activity_cloud_subscription_order:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->activity_cloud_subscription_meal:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)Landroid/widget/TextView;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->activity_cloud_subscription_activated_title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)Landroid/widget/TextView;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->activity_cloud_subscription_activated_date:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)Landroid/widget/LinearLayout;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->activity_cloud_subscription_renew:Landroid/widget/LinearLayout;

    return-object p0
.end method


# virtual methods
.method protected initEvent()V
    .registers 2

    .line 99
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V

    .line 100
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->activity_cloud_subscription_order:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->right_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->activity_cloud_subscription_renew_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initView()V
    .registers 3

    .line 71
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initView()V

    const v0, 0x7f0a0448

    .line 72
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 73
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f0a008c

    .line 74
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->activity_cloud_subscription_order:Landroid/widget/Button;

    const v0, 0x7f0a04ed

    .line 75
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->right_btn:Landroid/widget/ImageButton;

    .line 76
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f110266

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->right_btn:Landroid/widget/ImageButton;

    const v1, 0x7f080181

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 78
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->right_btn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->center_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a008b

    .line 81
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->activity_cloud_subscription_meal:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a008a

    .line 82
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->activity_cloud_subscription_activated_title:Landroid/widget/TextView;

    const v0, 0x7f0a0089

    .line 83
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->activity_cloud_subscription_activated_date:Landroid/widget/TextView;

    const v0, 0x7f0a008d

    .line 85
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->activity_cloud_subscription_renew:Landroid/widget/LinearLayout;

    const v0, 0x7f0a008e

    .line 86
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->activity_cloud_subscription_renew_btn:Landroid/widget/Button;

    .line 88
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_2c

    goto :goto_2b

    .line 205
    :sswitch_d
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2b

    .line 198
    :sswitch_16
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->finish()V

    goto :goto_2b

    .line 209
    :sswitch_1a
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2b

    .line 201
    :sswitch_23
    const-class p1, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->startActivity(Landroid/content/Intent;)V

    :goto_2b
    return-void

    :sswitch_data_2c
    .sparse-switch
        0x7f0a008c -> :sswitch_23
        0x7f0a008e -> :sswitch_1a
        0x7f0a0448 -> :sswitch_16
        0x7f0a04ed -> :sswitch_d
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 55
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    .line 108
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onPause()V

    .line 109
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 110
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method

.method protected onResume()V
    .registers 2

    .line 117
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->onResume()V

    .line 118
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 119
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 122
    :cond_14
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->QueryOrder()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0025

    .line 60
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->setContentView(I)V

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

    .line 65
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->initView()V

    .line 66
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->initEvent()V

    return-void
.end method
