.class public Lcom/huawei/secure/android/common/webview/SafeGetUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "SafeGetUrl"

.field private static final d:J = 0xc8L


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/huawei/secure/android/common/webview/SafeGetUrl;->b:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic a(Lcom/huawei/secure/android/common/webview/SafeGetUrl;)Landroid/webkit/WebView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/huawei/secure/android/common/webview/SafeGetUrl;->b:Landroid/webkit/WebView;

    return-object p0
.end method


# virtual methods
.method public getUrlMethod()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/webview/SafeGetUrl;->b:Landroid/webkit/WebView;

    if-nez v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 4
    :cond_7
    invoke-static {}, Lcom/huawei/secure/android/common/util/b;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 5
    iget-object v0, p0, Lcom/huawei/secure/android/common/webview/SafeGetUrl;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_14
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 9
    new-instance v1, Lcom/huawei/secure/android/common/webview/SafeGetUrl$a;

    invoke-direct {v1, p0, v0}, Lcom/huawei/secure/android/common/webview/SafeGetUrl$a;-><init>(Lcom/huawei/secure/android/common/webview/SafeGetUrl;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v1}, Lcom/huawei/secure/android/common/util/c;->a(Ljava/lang/Runnable;)V

    .line 18
    :try_start_22
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_41

    :catch_26
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUrlMethod: InterruptedException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SafeGetUrl"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :goto_41
    iget-object v0, p0, Lcom/huawei/secure/android/common/webview/SafeGetUrl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/secure/android/common/webview/SafeGetUrl;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/webview/SafeGetUrl;->a:Ljava/lang/String;

    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/secure/android/common/webview/SafeGetUrl;->b:Landroid/webkit/WebView;

    return-void
.end method
