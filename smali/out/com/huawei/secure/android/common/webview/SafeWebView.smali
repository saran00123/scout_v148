.class public Lcom/huawei/secure/android/common/webview/SafeWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/secure/android/common/webview/SafeWebView$d;,
        Lcom/huawei/secure/android/common/webview/SafeWebView$b;,
        Lcom/huawei/secure/android/common/webview/SafeWebView$c;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "SafeWebView"


# instance fields
.field private a:Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    invoke-direct {p0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->a()V

    return-void
.end method

.method private a()V
    .registers 2

    .line 2
    invoke-static {p0}, Lcom/huawei/secure/android/common/webview/SafeWebSettings;->initWebviewAndSettings(Landroid/webkit/WebView;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 2

    .line 1
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getDefaultErrorPage()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/webview/SafeWebView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewLoadCallBack()Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/webview/SafeWebView;->e:Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;

    return-object v0
.end method

.method public getWhitelist()[Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/webview/SafeWebView;->b:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public getWhitelistNotMathcSubDomain()[Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/webview/SafeWebView;->c:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public getWhitelistWithPath()[Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/webview/SafeWebView;->d:[Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_d
    return-object v0
.end method

.method public isWhiteListUrl(Ljava/lang/String;)Z
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p1, "SafeWebView"

    const-string v0, "url is null"

    .line 2
    invoke-static {p1, v0}, Lcom/huawei/secure/android/common/util/LogsUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 9
    :cond_f
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 p1, 0x1

    return p1

    .line 13
    :cond_17
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->getWhitelistWithPath()[Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->getWhitelistNotMathcSubDomain()[Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->getWhitelist()[Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2d

    .line 16
    array-length v3, v0

    if-eqz v3, :cond_2d

    .line 17
    invoke-static {p1, v0}, Lcom/huawei/secure/android/common/webview/UriUtil;->isUrlHostAndPathInWhitelist(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2d
    if-eqz v1, :cond_37

    .line 18
    array-length v0, v1

    if-eqz v0, :cond_37

    .line 19
    invoke-static {p1, v1}, Lcom/huawei/secure/android/common/webview/UriUtil;->isUrlHostSameWhitelist(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 21
    :cond_37
    invoke-static {p1, v2}, Lcom/huawei/secure/android/common/webview/UriUtil;->isUrlHostInWhitelist(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/secure/android/common/webview/SafeWebView;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "SafeWebView"

    const-string v1, "loadDataWithBaseURL: http url , not safe"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/huawei/secure/android/common/webview/SafeWebView;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 4
    iget-object v3, p0, Lcom/huawei/secure/android/common/webview/SafeWebView;->a:Ljava/lang/String;

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-super/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 5
    :cond_20
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->getWebViewLoadCallBack()Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;

    move-result-object p2

    if-eqz p2, :cond_34

    const-string p2, "WebViewLoadCallBack"

    .line 6
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->getWebViewLoadCallBack()Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;

    move-result-object p2

    sget-object p3, Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack$ErrorCode;->HTTP_URL:Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack$ErrorCode;

    invoke-interface {p2, p1, p3}, Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;->onCheckError(Ljava/lang/String;Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack$ErrorCode;)V

    :cond_34
    :goto_34
    return-void

    .line 11
    :cond_35
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/secure/android/common/webview/SafeWebView;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "SafeWebView"

    const-string v1, "loadUrl: http url , not safe"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/huawei/secure/android/common/webview/SafeWebView;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 4
    iget-object p1, p0, Lcom/huawei/secure/android/common/webview/SafeWebView;->a:Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2f

    .line 5
    :cond_1b
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->getWebViewLoadCallBack()Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;

    move-result-object v1

    if-eqz v1, :cond_2f

    const-string v1, "WebViewLoadCallBack"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->getWebViewLoadCallBack()Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;

    move-result-object v0

    sget-object v1, Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack$ErrorCode;->HTTP_URL:Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack$ErrorCode;

    invoke-interface {v0, p1, v1}, Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;->onCheckError(Ljava/lang/String;Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack$ErrorCode;)V

    :cond_2f
    :goto_2f
    return-void

    .line 11
    :cond_30
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1}, Lcom/huawei/secure/android/common/webview/SafeWebView;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "SafeWebView"

    const-string v1, "loadUrl: http url , not safe"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v1, p0, Lcom/huawei/secure/android/common/webview/SafeWebView;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 15
    iget-object p1, p0, Lcom/huawei/secure/android/common/webview/SafeWebView;->a:Ljava/lang/String;

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2f

    .line 16
    :cond_1b
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->getWebViewLoadCallBack()Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;

    move-result-object p2

    if-eqz p2, :cond_2f

    const-string p2, "WebViewLoadCallBack"

    .line 17
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->getWebViewLoadCallBack()Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;

    move-result-object p2

    sget-object v0, Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack$ErrorCode;->HTTP_URL:Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack$ErrorCode;

    invoke-interface {p2, p1, v0}, Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;->onCheckError(Ljava/lang/String;Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack$ErrorCode;)V

    :cond_2f
    :goto_2f
    return-void

    .line 22
    :cond_30
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final onCheckError(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6

    const-string v0, "SafeWebView"

    const-string v1, "onCheckError url is not in white list "

    .line 1
    invoke-static {v0, v1, p2}, Lcom/huawei/secure/android/common/util/LogsUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->getDefaultErrorPage()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 5
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2c

    .line 6
    :cond_18
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->getWebViewLoadCallBack()Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;

    move-result-object p1

    if-eqz p1, :cond_2c

    const-string p1, "onPageStarted WebViewLoadCallBack"

    .line 7
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->getWebViewLoadCallBack()Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;

    move-result-object p1

    sget-object v0, Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack$ErrorCode;->URL_NOT_IN_WHITE_LIST:Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack$ErrorCode;

    invoke-interface {p1, p2, v0}, Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;->onCheckError(Ljava/lang/String;Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack$ErrorCode;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/secure/android/common/webview/SafeWebView;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "SafeWebView"

    const-string v1, "postUrl: http url , not safe"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v1, p0, Lcom/huawei/secure/android/common/webview/SafeWebView;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 4
    iget-object p1, p0, Lcom/huawei/secure/android/common/webview/SafeWebView;->a:Ljava/lang/String;

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_2f

    .line 5
    :cond_1b
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->getWebViewLoadCallBack()Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;

    move-result-object p2

    if-eqz p2, :cond_2f

    const-string p2, "WebViewLoadCallBack"

    .line 6
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Lcom/huawei/secure/android/common/webview/SafeWebView;->getWebViewLoadCallBack()Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;

    move-result-object p2

    sget-object v0, Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack$ErrorCode;->HTTP_URL:Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack$ErrorCode;

    invoke-interface {p2, p1, v0}, Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;->onCheckError(Ljava/lang/String;Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack$ErrorCode;)V

    :cond_2f
    :goto_2f
    return-void

    .line 11
    :cond_30
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    return-void
.end method

.method public setDefaultErrorPage(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/webview/SafeWebView;->a:Ljava/lang/String;

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 5

    .line 1
    new-instance v0, Lcom/huawei/secure/android/common/webview/SafeWebView$d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/huawei/secure/android/common/webview/SafeWebView$d;-><init>(Lcom/huawei/secure/android/common/webview/SafeWebView;Landroid/webkit/WebViewClient;ZLcom/huawei/secure/android/common/webview/SafeWebView$a;)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;Z)V
    .registers 5

    .line 2
    new-instance v0, Lcom/huawei/secure/android/common/webview/SafeWebView$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/huawei/secure/android/common/webview/SafeWebView$d;-><init>(Lcom/huawei/secure/android/common/webview/SafeWebView;Landroid/webkit/WebViewClient;ZLcom/huawei/secure/android/common/webview/SafeWebView$a;)V

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public setWebViewLoadCallBack(Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/webview/SafeWebView;->e:Lcom/huawei/secure/android/common/webview/WebViewLoadCallBack;

    return-void
.end method

.method public setWhitelist([Ljava/lang/String;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_b

    .line 1
    :cond_4
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_b
    iput-object p1, p0, Lcom/huawei/secure/android/common/webview/SafeWebView;->b:[Ljava/lang/String;

    return-void
.end method

.method public setWhitelistNotMathcSubDomain([Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_b

    .line 1
    :cond_4
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_b
    iput-object p1, p0, Lcom/huawei/secure/android/common/webview/SafeWebView;->c:[Ljava/lang/String;

    return-void
.end method

.method public setWhitelistWithPath([Ljava/lang/String;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_b

    .line 1
    :cond_4
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_b
    iput-object p1, p0, Lcom/huawei/secure/android/common/webview/SafeWebView;->d:[Ljava/lang/String;

    return-void
.end method

.method protected final showNoticeWhenSSLErrorOccurred(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/SslErrorHandler;)V
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5
    :cond_12
    new-instance p1, Lcom/huawei/secure/android/common/webview/SafeWebView$c;

    invoke-direct {p1, p5}, Lcom/huawei/secure/android/common/webview/SafeWebView$c;-><init>(Landroid/webkit/SslErrorHandler;)V

    .line 6
    new-instance v1, Lcom/huawei/secure/android/common/webview/SafeWebView$b;

    invoke-direct {v1, p5}, Lcom/huawei/secure/android/common/webview/SafeWebView$b;-><init>(Landroid/webkit/SslErrorHandler;)V

    .line 7
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {v0, p3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9
    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
