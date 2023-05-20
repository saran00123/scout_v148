.class final Lanetwork/channel/cookie/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 156
    iput-object p1, p0, Lanetwork/channel/cookie/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 159
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->b()Lanetwork/channel/cookie/CookieManager$a;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 164
    :cond_7
    :try_start_7
    iget-object v0, p0, Lanetwork/channel/cookie/b;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/HttpCookie;

    .line 165
    invoke-virtual {v1}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->b()Lanetwork/channel/cookie/CookieManager$a;

    move-result-object v3

    iget-object v3, v3, Lanetwork/channel/cookie/CookieManager$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 166
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->b()Lanetwork/channel/cookie/CookieManager$a;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/HttpCookie;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lanetwork/channel/cookie/CookieManager$a;->b:Ljava/lang/String;

    .line 167
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->b()Lanetwork/channel/cookie/CookieManager$a;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/cookie/CookieManager$a;->d:Ljava/lang/String;

    .line 168
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->b()Lanetwork/channel/cookie/CookieManager$a;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/cookie/b;->a:Ljava/lang/String;

    iput-object v1, v0, Lanetwork/channel/cookie/CookieManager$a;->c:Ljava/lang/String;

    .line 169
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->b()Lanetwork/channel/cookie/CookieManager$a;

    move-result-object v0

    invoke-virtual {v0}, Lanetwork/channel/cookie/CookieManager$a;->a()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_50} :catch_51

    goto :goto_5d

    :catch_51
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 174
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "anet.CookieManager"

    const-string v4, "cookieMonitorSave error."

    invoke-static {v3, v4, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_5d
    :goto_5d
    return-void
.end method
