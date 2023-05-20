.class public Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "CardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$PaymentResultCallback;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private acitivty_card_cardInputWidget:Lcom/stripe/android/view/CardMultilineWidget;

.field private activity_car_stripe:Landroid/widget/ImageView;

.field private activity_card_brand_rv:Landroidx/recyclerview/widget/RecyclerView;

.field private activity_card_meal_amount:Landroid/widget/TextView;

.field private activity_card_meal_duration:Landroid/widget/TextView;

.field private activity_card_meal_name:Landroid/widget/TextView;

.field private cardBrandAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;

.field private center_title:Landroid/widget/TextView;

.field private choiseOrderID:Ljava/lang/String;

.field private choiseProductsID:Ljava/lang/String;

.field private failDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

.field private layout_left:Landroid/widget/LinearLayout;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private mPurchaseButton:Landroid/widget/Button;

.field private stripe:Lcom/stripe/android/Stripe;

.field private successDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "CardActivity"

    .line 58
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)Lcom/stripe/android/view/CardMultilineWidget;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->acitivty_card_cardInputWidget:Lcom/stripe/android/view/CardMultilineWidget;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)Lcom/stripe/android/Stripe;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->stripe:Lcom/stripe/android/Stripe;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->safelyCloseLoadingView()V

    return-void
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;Ljava/lang/String;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->initFailDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->initSuccessDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->choiseOrderID:Ljava/lang/String;

    return-object p0
.end method

.method private initEvent()V
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->activity_car_stripe:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initFailDialog(Ljava/lang/String;)V
    .registers 5

    .line 329
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d006a

    const/4 v2, 0x0

    .line 330
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a023f

    if-eqz p1, :cond_1c

    .line 332
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 334
    :cond_1c
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f1102c2

    invoke-virtual {p0, v2}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2c
    const p1, 0x7f0a023e

    .line 335
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v2, 0x7f080160

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x3f0ccccd    # 0.55f

    .line 336
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setScale(F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 337
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const p1, 0x7f11003b

    .line 338
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const p1, 0x7f11003e

    .line 339
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 347
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->failDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 348
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->failDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method private initSuccessDialog()V
    .registers 5

    .line 352
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 353
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d006a

    const/4 v2, 0x0

    .line 354
    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a023f

    .line 355
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1102c3

    invoke-virtual {p0, v3}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a023e

    .line 356
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f080162

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x3f0ccccd    # 0.55f

    .line 357
    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setScale(F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 358
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x7f11003b

    .line 359
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    const v1, 0x7f11003e

    .line 360
    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$4;

    invoke-direct {v2, p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 371
    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->successDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 372
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->successDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method

.method private initView()V
    .registers 5

    .line 97
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    const v0, 0x7f0a0448

    .line 99
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 100
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->center_title:Landroid/widget/TextView;

    .line 101
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->center_title:Landroid/widget/TextView;

    const v1, 0x7f110017

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->center_title:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a04d6

    .line 103
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->mPurchaseButton:Landroid/widget/Button;

    const v0, 0x7f0a007f

    .line 105
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->activity_car_stripe:Landroid/widget/ImageView;

    const v0, 0x7f0a0039

    .line 106
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/stripe/android/view/CardMultilineWidget;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->acitivty_card_cardInputWidget:Lcom/stripe/android/view/CardMultilineWidget;

    const v0, 0x7f0a0080

    .line 108
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->activity_card_brand_rv:Landroidx/recyclerview/widget/RecyclerView;

    .line 109
    invoke-static {}, Lcom/stripe/android/model/CardBrand;->values()[Lcom/stripe/android/model/CardBrand;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_76

    .line 113
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 115
    :cond_76
    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;

    invoke-direct {v0, p0, v2}, Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->cardBrandAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;

    .line 116
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 118
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->activity_card_brand_rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 119
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->activity_card_brand_rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->cardBrandAdapter:Lcom/pilotlab/rollereye/UI/Adapter/CardBrandAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const v0, 0x7f0a0083

    .line 121
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->activity_card_meal_name:Landroid/widget/TextView;

    const v0, 0x7f0a0081

    .line 122
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->activity_card_meal_amount:Landroid/widget/TextView;

    const v0, 0x7f0a0082

    .line 123
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->activity_card_meal_duration:Landroid/widget/TextView;

    return-void
.end method

.method private safelyCloseLoadingView()V
    .registers 2

    .line 377
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 378
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_11
    return-void
.end method

.method private startCheckOut()V
    .registers 5

    .line 176
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->choiseOrderID:Ljava/lang/String;

    if-nez v0, :cond_37

    .line 177
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

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->choiseProductsID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->payment(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 178
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_70

    .line 224
    :cond_37
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
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

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->choiseProductsID:Ljava/lang/String;

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->choiseOrderID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->payment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 226
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :goto_70
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 276
    invoke-super {p0, p1, p2, p3}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 279
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->stripe:Lcom/stripe/android/Stripe;

    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$PaymentResultCallback;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity$PaymentResultCallback;-><init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;)V

    invoke-virtual {p2, p1, p3, v0}, Lcom/stripe/android/Stripe;->onPaymentResult(ILandroid/content/Intent;Lcom/stripe/android/ApiResultCallback;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 384
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a007f

    if-eq p1, v0, :cond_13

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_f

    goto :goto_23

    .line 386
    :cond_f
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->finish()V

    goto :goto_23

    .line 390
    :cond_13
    new-instance p1, Landroid/content/Intent;

    const-string v0, "https://stripe.com/privacy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 391
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->startActivity(Landroid/content/Intent;)V

    :goto_23
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 76
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->fullScreen()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 155
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    .line 156
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 157
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 158
    :cond_a
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->successDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 159
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->successDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 160
    :cond_19
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->failDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 161
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->failDialog:Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    :cond_28
    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 150
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onPause()V

    return-void
.end method

.method public onPurchase(Landroid/view/View;)V
    .registers 2

    .line 171
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 172
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->startCheckOut()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 144
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 145
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->fullScreen()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .line 166
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 128
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d0021

    .line 82
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 6

    .line 134
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "choiseProductsID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->choiseProductsID:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "choiseOrderID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->choiseOrderID:Ljava/lang/String;

    .line 136
    new-instance p1, Lcom/stripe/android/Stripe;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Common/ServerConstent;->stripePublicKey:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/stripe/android/Stripe;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->stripe:Lcom/stripe/android/Stripe;

    .line 137
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->activity_card_meal_name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "meal"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->activity_card_meal_amount:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "amount"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->activity_card_meal_duration:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "duration"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const v1, 0x7f1100ea

    invoke-virtual {p0, v1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 87
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->initView()V

    .line 88
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CardActivity;->initEvent()V

    return-void
.end method
