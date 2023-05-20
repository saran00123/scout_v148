.class final Lanetwork/channel/cookie/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 144
    :try_start_0
    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->a()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 146
    new-instance v0, Lanetwork/channel/cookie/CookieManager$a;

    invoke-static {}, Lanetwork/channel/cookie/CookieManager;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lanetwork/channel/cookie/CookieManager$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lanetwork/channel/cookie/CookieManager;->a(Lanetwork/channel/cookie/CookieManager$a;)Lanetwork/channel/cookie/CookieManager$a;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_23

    :catch_17
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 149
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "anet.CookieManager"

    const-string v4, ""

    invoke-static {v3, v4, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_23
    :goto_23
    return-void
.end method
