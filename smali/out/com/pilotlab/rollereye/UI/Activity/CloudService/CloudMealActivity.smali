.class public Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "CloudMealActivity.java"

# interfaces
.implements Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$onItemCallback;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private CardIntent:I

.field private TAG:Ljava/lang/String;

.field private activity_cloud_meal_rv:Landroidx/recyclerview/widget/RecyclerView;

.field private center_title:Landroid/widget/TextView;

.field private cloudMealAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private failDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private layout_left:Landroid/widget/LinearLayout;

.field private mAuthorization:Ljava/lang/String;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private successDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->dataList:Ljava/util/List;

    const-string v0, "CloudMealActivity"

    .line 48
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->TAG:Ljava/lang/String;

    const/16 v0, 0x123

    .line 50
    iput v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->CardIntent:I

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->safelyCloseLoadingView()V

    return-void
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;)Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;)Ljava/util/List;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->dataList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->cloudMealAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;Ljava/lang/String;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->initFailDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->initSuccessDialog()V

    return-void
.end method

.method private initEvent()V
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initFailDialog(Ljava/lang/String;)V
    .registers 5

    .line 228
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d006a

    const/4 v2, 0x0

    .line 229
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a023f

    .line 230
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a023e

    .line 231
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v2, 0x7f080160

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x3f0ccccd    # 0.55f

    .line 232
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setScale(F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 233
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const p1, 0x7f11003b

    .line 234
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const p1, 0x7f11003e

    .line 235
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 241
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->failDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 242
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->failDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method private initSuccessDialog()V
    .registers 5

    .line 246
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d006a

    const/4 v2, 0x0

    .line 249
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a023f

    .line 250
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1102c3

    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a023e

    .line 251
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f080162

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x3f0ccccd    # 0.55f

    .line 252
    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setScale(F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 253
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x7f11003b

    .line 254
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x7f11003e

    .line 255
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$4;

    invoke-direct {v2, p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 262
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->successDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 263
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->successDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method private initView()V
    .registers 3

    const v0, 0x7f0a0448

    .line 78
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 79
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->center_title:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f110266

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0086

    .line 82
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->activity_cloud_meal_rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->dataList:Ljava/util/List;

    invoke-direct {v0, p0, v1, p0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter$onItemCallback;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->cloudMealAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;

    .line 84
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->activity_cloud_meal_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 85
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->activity_cloud_meal_rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 86
    new-instance v0, Landroidx/recyclerview/widget/DividerItemDecoration;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    .line 87
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->activity_cloud_meal_rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 88
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->activity_cloud_meal_rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->cloudMealAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CloudMealAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 89
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    return-void
.end method

.method private safelyCloseLoadingView()V
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 269
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_11
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 215
    invoke-super {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 216
    iget p3, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->CardIntent:I

    if-ne p1, p3, :cond_d

    const/4 p1, -0x1

    if-ne p2, p1, :cond_d

    .line 218
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->finish()V

    :cond_d
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_a

    goto :goto_d

    .line 207
    :cond_a
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->finish()V

    :goto_d
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 58
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 149
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    .line 150
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 151
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_a
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .registers 5

    .line 157
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->dataList:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;

    .line 159
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->getPrice()I

    move-result p2

    if-nez p2, :cond_48

    .line 160
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 161
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object p2

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->trial(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 162
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$2;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_88

    .line 192
    :cond_48
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 194
    const-class v0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meal"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->getPrice()I

    move-result v0

    const-string v1, "amount"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->getDuration()I

    move-result v0

    const-string v1, "duration"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/ProductsBean$DataBean;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "choiseProductsID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x123

    .line 199
    invoke-virtual {p0, p2, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_88
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 137
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 138
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->fullScreen()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 143
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0022

    .line 63
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->fullScreen()V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 3

    .line 96
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 98
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object p1

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->queryProducts(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 99
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 69
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->initView()V

    .line 70
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudMealActivity;->initEvent()V

    return-void
.end method
