.class final Lanetwork/channel/cookie/c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 181
    iput-object p1, p0, Lanetwork/channel/cookie/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lanetwork/channel/cookie/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 184
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->b()Lanetwork/channel/cookie/CookieManager$a;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 188
    :cond_7
    :try_start_7
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->b()Lanetwork/channel/cookie/CookieManager$a;

    move-result-object v0

    iget-object v0, v0, Lanetwork/channel/cookie/CookieManager$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 189
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->b()Lanetwork/channel/cookie/CookieManager$a;

    move-result-object v0

    iget-object v0, v0, Lanetwork/channel/cookie/CookieManager$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lanetwork/channel/cookie/c;->a:Ljava/lang/String;

    invoke-static {v1}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/HttpCookie;->domainMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lanetwork/channel/cookie/c;->b:Ljava/lang/String;

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_86

    iget-object v0, p0, Lanetwork/channel/cookie/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->b()Lanetwork/channel/cookie/CookieManager$a;

    move-result-object v2

    iget-object v2, v2, Lanetwork/channel/cookie/CookieManager$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_86

    .line 193
    new-instance v0, Lanet/channel/statist/CookieMonitorStat;

    iget-object v1, p0, Lanetwork/channel/cookie/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lanet/channel/statist/CookieMonitorStat;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->b()Lanetwork/channel/cookie/CookieManager$a;

    move-result-object v1

    iget-object v1, v1, Lanetwork/channel/cookie/CookieManager$a;->a:Ljava/lang/String;

    iput-object v1, v0, Lanet/channel/statist/CookieMonitorStat;->cookieName:Ljava/lang/String;

    .line 195
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->b()Lanetwork/channel/cookie/CookieManager$a;

    move-result-object v1

    iget-object v1, v1, Lanetwork/channel/cookie/CookieManager$a;->b:Ljava/lang/String;

    iput-object v1, v0, Lanet/channel/statist/CookieMonitorStat;->cookieText:Ljava/lang/String;

    .line 196
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->b()Lanetwork/channel/cookie/CookieManager$a;

    move-result-object v1

    iget-object v1, v1, Lanetwork/channel/cookie/CookieManager$a;->c:Ljava/lang/String;

    iput-object v1, v0, Lanet/channel/statist/CookieMonitorStat;->setCookie:Ljava/lang/String;

    const/4 v1, 0x1

    .line 197
    iput v1, v0, Lanet/channel/statist/CookieMonitorStat;->missType:I

    .line 198
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v1

    invoke-interface {v1, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_79} :catch_7a

    goto :goto_86

    :catch_7a
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 201
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "anet.CookieManager"

    const-string v4, "cookieMonitorReport error."

    invoke-static {v3, v4, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_86
    :goto_86
    return-void
.end method
