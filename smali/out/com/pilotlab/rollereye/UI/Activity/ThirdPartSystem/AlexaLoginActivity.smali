.class public Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "AlexaLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_alexa_login_webview:Landroid/webkit/WebView;

.field private activity_alexa_login_webview_pb:Landroid/widget/ProgressBar;

.field private authCode:Ljava/lang/String;

.field private containURL_1:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private layout_left:Landroid/widget/LinearLayout;

.field private mDisposable:Lio/reactivex/disposables/Disposable;

.field private param_type:Ljava/lang/String;

.field private param_url:Ljava/lang/String;

.field private registerURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "AlexaLoginActivity"

    .line 44
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->registerURL:Ljava/lang/String;

    const-string v1, "https://scoutserver.moorebot.com/blank?code="

    .line 50
    iput-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->containURL_1:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->authCode:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->param_url:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->param_type:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Landroid/widget/ProgressBar;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->activity_alexa_login_webview_pb:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Landroid/os/Handler;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->containURL_1:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->authCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->authCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;Ljava/lang/String;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->enblesSkill(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method private enblesSkill(Ljava/lang/String;)V
    .registers 5

    .line 198
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    .line 199
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 202
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->param_type:Ljava/lang/String;

    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->AMAZON_ALEXA_CUSTOM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "1"

    goto :goto_28

    .line 204
    :cond_19
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->param_type:Ljava/lang/String;

    sget-object v1, Lcom/pilotlab/rollereye/Common/CommonConstant;->AMAZON_ALEXA_VIDEO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "2"

    goto :goto_28

    :cond_26
    const-string v0, "3"

    .line 208
    :goto_28
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v1

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0, p1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->enbleSkill(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 209
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$4;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private getTestAccessToken(Ljava/lang/String;)V
    .registers 6

    .line 298
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 299
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v2, "grant_type"

    const-string v3, "authorization_code"

    .line 300
    invoke-virtual {v1, v2, v3}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v1

    const-string v2, "code"

    .line 301
    invoke-virtual {v1, v2, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p1

    const-string v1, "client_id"

    const-string v2, "amzn1.application-oa2-client.36e27e643208405497165ea5aecb7968"

    .line 302
    invoke-virtual {p1, v1, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p1

    const-string v1, "client_secret"

    const-string v2, "0351763cb5796fd256ca389d361b2b9b48b1feae5317ee3eb2a76b936ae0fb1e"

    .line 303
    invoke-virtual {p1, v1, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p1

    const-string v1, "redirect_uri"

    const-string v2, "https://test.moorebot.cn/blank"

    .line 304
    invoke-virtual {p1, v1, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object p1

    .line 306
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    const-string v2, "https://api.amazon.com/auth/o2/token"

    .line 307
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 308
    invoke-virtual {p1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p1

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 309
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 310
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$5;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private initEvent()V
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initHandler()V
    .registers 2

    .line 80
    new-instance v0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private initView()V
    .registers 2

    const v0, 0x7f0a0448

    .line 257
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a005b

    .line 258
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->activity_alexa_login_webview_pb:Landroid/widget/ProgressBar;

    return-void
.end method

.method private initWebView()V
    .registers 4

    const v0, 0x7f0a005a

    .line 101
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->activity_alexa_login_webview:Landroid/webkit/WebView;

    .line 102
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->activity_alexa_login_webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 104
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/4 v2, 0x1

    .line 106
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 108
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 110
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 112
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->activity_alexa_login_webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 136
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->activity_alexa_login_webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_a

    goto :goto_1b

    .line 288
    :cond_a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->activity_alexa_login_webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 289
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->activity_alexa_login_webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_1b

    .line 291
    :cond_18
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->finish()V

    :goto_1b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 60
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->fullScreen()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 192
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    .line 193
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 194
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_a
    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 269
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 270
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->fullScreen()V

    return-void
.end method

.method protected onStart()V
    .registers 1

    .line 281
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onStart()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 275
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d001d

    .line 67
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 3

    .line 248
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "param_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->param_type:Ljava/lang/String;

    .line 250
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "param_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->param_url:Ljava/lang/String;

    .line 251
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->activity_alexa_login_webview:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->param_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->param_url:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->initView()V

    .line 73
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->initHandler()V

    .line 74
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->initEvent()V

    .line 75
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/ThirdPartSystem/AlexaLoginActivity;->initWebView()V

    return-void
.end method
