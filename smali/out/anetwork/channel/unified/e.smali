.class Lanetwork/channel/unified/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/unified/IUnifiedTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanetwork/channel/unified/e$a;
    }
.end annotation


# static fields
.field public static final MAX_RSP_BUFFER_LENGTH:I = 0x20000

.field public static final TAG:Ljava/lang/String; = "anet.NetworkTask"


# instance fields
.field a:Lanetwork/channel/unified/j;

.field b:Lanetwork/channel/cache/Cache;

.field c:Lanetwork/channel/cache/Cache$Entry;

.field d:Ljava/io/ByteArrayOutputStream;

.field e:Ljava/lang/String;

.field volatile f:Lanet/channel/request/Cancelable;

.field volatile g:Z

.field volatile h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field i:I

.field j:I

.field k:Z

.field l:Z

.field m:Lanetwork/channel/unified/e$a;


# direct methods
.method constructor <init>(Lanetwork/channel/unified/j;Lanetwork/channel/cache/Cache;Lanetwork/channel/cache/Cache$Entry;)V
    .registers 6

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lanetwork/channel/unified/e;->b:Lanetwork/channel/cache/Cache;

    .line 60
    iput-object v0, p0, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    .line 61
    iput-object v0, p0, Lanetwork/channel/unified/e;->d:Ljava/io/ByteArrayOutputStream;

    const-string v1, "other"

    .line 62
    iput-object v1, p0, Lanetwork/channel/unified/e;->e:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lanetwork/channel/unified/e;->f:Lanet/channel/request/Cancelable;

    const/4 v1, 0x0

    .line 65
    iput-boolean v1, p0, Lanetwork/channel/unified/e;->g:Z

    .line 66
    iput-object v0, p0, Lanetwork/channel/unified/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    iput v1, p0, Lanetwork/channel/unified/e;->i:I

    .line 69
    iput v1, p0, Lanetwork/channel/unified/e;->j:I

    .line 71
    iput-boolean v1, p0, Lanetwork/channel/unified/e;->k:Z

    .line 72
    iput-boolean v1, p0, Lanetwork/channel/unified/e;->l:Z

    .line 74
    iput-object v0, p0, Lanetwork/channel/unified/e;->m:Lanetwork/channel/unified/e$a;

    .line 77
    iput-object p1, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    .line 78
    iget-object v0, p1, Lanetwork/channel/unified/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v0, p0, Lanetwork/channel/unified/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    iput-object p2, p0, Lanetwork/channel/unified/e;->b:Lanetwork/channel/cache/Cache;

    .line 80
    iput-object p3, p0, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    .line 81
    iget-object p1, p1, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {p1}, Lanetwork/channel/entity/g;->h()Ljava/util/Map;

    move-result-object p1

    const-string p2, "f-refer"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lanetwork/channel/unified/e;->e:Ljava/lang/String;

    return-void
.end method

.method private a(Lanet/channel/Session;Lanet/channel/SessionCenter;Lanet/channel/util/HttpUrl;Z)Lanet/channel/Session;
    .registers 10

    .line 301
    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget-object v0, v0, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    if-nez p1, :cond_22

    .line 302
    iget-object v1, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    .line 303
    invoke-virtual {v1}, Lanetwork/channel/entity/g;->e()Z

    move-result v1

    if-eqz v1, :cond_22

    if-nez p4, :cond_22

    .line 305
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isProxy()Z

    move-result p4

    if-nez p4, :cond_22

    .line 306
    sget p1, Lanet/channel/entity/c;->b:I

    const-wide/16 v1, 0x0

    invoke-virtual {p2, p3, p1, v1, v2}, Lanet/channel/SessionCenter;->get(Lanet/channel/util/HttpUrl;IJ)Lanet/channel/Session;

    move-result-object p1

    :cond_22
    const/4 p2, 0x0

    const-string p4, "anet.NetworkTask"

    if-nez p1, :cond_54

    .line 310
    iget-object p1, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object p1, p1, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    new-array v1, p2, [Ljava/lang/Object;

    const-string v2, "create HttpSession with local DNS"

    invoke-static {p4, v2, p1, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    invoke-virtual {p3}, Lanet/channel/util/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object p3

    const-string v1, "://"

    invoke-static {p1, v1, p3}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 312
    new-instance p3, Lanet/channel/session/d;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lanet/channel/entity/a;

    iget-object v3, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v3, v3, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Lanet/channel/entity/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;)V

    invoke-direct {p3, v1, v2}, Lanet/channel/session/d;-><init>(Landroid/content/Context;Lanet/channel/entity/a;)V

    move-object p1, p3

    .line 316
    :cond_54
    iget-boolean p3, v0, Lanet/channel/statist/RequestStatistic;->spdyRequestSend:Z

    const/4 v1, 0x1

    if-eqz p3, :cond_5b

    .line 317
    iput v1, v0, Lanet/channel/statist/RequestStatistic;->degraded:I

    .line 320
    :cond_5b
    iget-object p3, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object p3, p3, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Session"

    aput-object v2, v0, p2

    aput-object p1, v0, v1

    const-string/jumbo p2, "tryGetHttpSession"

    invoke-static {p4, p2, p3, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic a(Lanetwork/channel/unified/e;Lanet/channel/Session;Lanet/channel/SessionCenter;Lanet/channel/util/HttpUrl;Z)Lanet/channel/Session;
    .registers 5

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lanetwork/channel/unified/e;->a(Lanet/channel/Session;Lanet/channel/SessionCenter;Lanet/channel/util/HttpUrl;Z)Lanet/channel/Session;

    move-result-object p0

    return-object p0
.end method

.method private a()Lanet/channel/SessionCenter;
    .registers 5

    .line 191
    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    const-string v1, "APPKEY"

    invoke-virtual {v0, v1}, Lanetwork/channel/entity/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 193
    invoke-static {}, Lanet/channel/SessionCenter;->getInstance()Lanet/channel/SessionCenter;

    move-result-object v0

    return-object v0

    .line 195
    :cond_15
    sget-object v1, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    .line 196
    iget-object v2, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v2, v2, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    const-string v3, "ENVIRONMENT"

    invoke-virtual {v2, v3}, Lanetwork/channel/entity/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pre"

    .line 197
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 198
    sget-object v1, Lanet/channel/entity/ENV;->PREPARE:Lanet/channel/entity/ENV;

    goto :goto_37

    :cond_2c
    const-string/jumbo v3, "test"

    .line 199
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 200
    sget-object v1, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    .line 203
    :cond_37
    :goto_37
    sget-object v2, Lanetwork/channel/http/NetworkSdkSetting;->CURRENT_ENV:Lanet/channel/entity/ENV;

    if-eq v1, v2, :cond_40

    .line 204
    sput-object v1, Lanetwork/channel/http/NetworkSdkSetting;->CURRENT_ENV:Lanet/channel/entity/ENV;

    .line 205
    invoke-static {v1}, Lanet/channel/SessionCenter;->switchEnvironment(Lanet/channel/entity/ENV;)V

    .line 208
    :cond_40
    invoke-static {v0, v1}, Lanet/channel/Config;->getConfig(Ljava/lang/String;Lanet/channel/entity/ENV;)Lanet/channel/Config;

    move-result-object v2

    if-nez v2, :cond_65

    .line 210
    new-instance v2, Lanet/channel/Config$Builder;

    invoke-direct {v2}, Lanet/channel/Config$Builder;-><init>()V

    .line 211
    invoke-virtual {v2, v0}, Lanet/channel/Config$Builder;->setAppkey(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v1}, Lanet/channel/Config$Builder;->setEnv(Lanet/channel/entity/ENV;)Lanet/channel/Config$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    const-string v2, "AuthCode"

    .line 213
    invoke-virtual {v1, v2}, Lanetwork/channel/entity/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanet/channel/Config$Builder;->setAuthCode(Ljava/lang/String;)Lanet/channel/Config$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Lanet/channel/Config$Builder;->build()Lanet/channel/Config;

    move-result-object v2

    .line 216
    :cond_65
    invoke-static {v2}, Lanet/channel/SessionCenter;->getInstance(Lanet/channel/Config;)Lanet/channel/SessionCenter;

    move-result-object v0

    return-object v0
.end method

.method private a(Lanet/channel/request/Request;)Lanet/channel/request/Request;
    .registers 8

    .line 328
    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v0}, Lanetwork/channel/entity/g;->i()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 329
    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v0}, Lanetwork/channel/entity/g;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/cookie/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 331
    invoke-virtual {p1}, Lanet/channel/request/Request;->newBuilder()Lanet/channel/request/Request$Builder;

    move-result-object v1

    .line 332
    invoke-virtual {p1}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Cookie"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 333
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_38

    const-string v4, "; "

    .line 334
    invoke-static {v2, v4, v0}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    :cond_38
    invoke-virtual {v1, v3, v0}, Lanet/channel/request/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    .line 340
    :goto_3d
    iget-object v0, p0, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    if-eqz v0, :cond_6d

    if-nez v1, :cond_47

    .line 342
    invoke-virtual {p1}, Lanet/channel/request/Request;->newBuilder()Lanet/channel/request/Request$Builder;

    move-result-object v1

    .line 344
    :cond_47
    iget-object v0, p0, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    iget-object v0, v0, Lanetwork/channel/cache/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v0, :cond_56

    .line 345
    iget-object v0, p0, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    iget-object v0, v0, Lanetwork/channel/cache/Cache$Entry;->etag:Ljava/lang/String;

    const-string v2, "If-None-Match"

    invoke-virtual {v1, v2, v0}, Lanet/channel/request/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    .line 347
    :cond_56
    iget-object v0, p0, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    iget-wide v2, v0, Lanetwork/channel/cache/Cache$Entry;->lastModified:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_6d

    .line 348
    iget-object v0, p0, Lanetwork/channel/unified/e;->c:Lanetwork/channel/cache/Cache$Entry;

    iget-wide v2, v0, Lanetwork/channel/cache/Cache$Entry;->lastModified:J

    invoke-static {v2, v3}, Lanetwork/channel/cache/a;->a(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "If-Modified-Since"

    invoke-virtual {v1, v2, v0}, Lanet/channel/request/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    .line 352
    :cond_6d
    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget v0, v0, Lanetwork/channel/entity/g;->a:I

    if-nez v0, :cond_8c

    iget-object v0, p0, Lanetwork/channel/unified/e;->e:Ljava/lang/String;

    const-string/jumbo v2, "weex"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c

    if-nez v1, :cond_87

    .line 354
    invoke-virtual {p1}, Lanet/channel/request/Request;->newBuilder()Lanet/channel/request/Request$Builder;

    move-result-object v0

    move-object v1, v0

    :cond_87
    const/16 v0, 0xbb8

    .line 356
    invoke-virtual {v1, v0}, Lanet/channel/request/Request$Builder;->setReadTimeout(I)Lanet/channel/request/Request$Builder;

    :cond_8c
    if-nez v1, :cond_8f

    goto :goto_93

    .line 359
    :cond_8f
    invoke-virtual {v1}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;

    move-result-object p1

    :goto_93
    return-object p1
.end method

.method private a(Lanet/channel/util/HttpUrl;)Lanet/channel/util/HttpUrl;
    .registers 5

    .line 180
    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v0}, Lanetwork/channel/entity/g;->h()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "x-host-cname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 182
    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->urlString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_2a

    move-object p1, v0

    :cond_2a
    return-object p1
.end method

.method private a(Lanet/channel/Session;Lanet/channel/request/Request;)V
    .registers 6

    if-eqz p1, :cond_22

    .line 363
    iget-boolean v0, p0, Lanetwork/channel/unified/e;->g:Z

    if-eqz v0, :cond_7

    goto :goto_22

    .line 367
    :cond_7
    invoke-direct {p0, p2}, Lanetwork/channel/unified/e;->a(Lanet/channel/request/Request;)Lanet/channel/request/Request;

    move-result-object p2

    .line 369
    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget-object v0, v0, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lanet/channel/statist/RequestStatistic;->reqStart:J

    .line 373
    new-instance v1, Lanetwork/channel/unified/i;

    invoke-direct {v1, p0, p2, v0}, Lanetwork/channel/unified/i;-><init>(Lanetwork/channel/unified/e;Lanet/channel/request/Request;Lanet/channel/statist/RequestStatistic;)V

    invoke-virtual {p1, p2, v1}, Lanet/channel/Session;->request(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/request/Cancelable;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/unified/e;->f:Lanet/channel/request/Cancelable;

    :cond_22
    :goto_22
    return-void
.end method

.method static synthetic a(Lanetwork/channel/unified/e;Lanet/channel/Session;Lanet/channel/request/Request;)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Lanetwork/channel/unified/e;->a(Lanet/channel/Session;Lanet/channel/request/Request;)V

    return-void
.end method

.method private b()Lanet/channel/Session;
    .registers 11

    .line 221
    invoke-direct {p0}, Lanetwork/channel/unified/e;->a()Lanet/channel/SessionCenter;

    move-result-object v2

    .line 222
    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v0}, Lanetwork/channel/entity/g;->f()Lanet/channel/util/HttpUrl;

    move-result-object v5

    .line 223
    invoke-virtual {v5}, Lanet/channel/util/HttpUrl;->containsNonDefaultPort()Z

    move-result v6

    .line 224
    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget-object v4, v0, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    .line 227
    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget v0, v0, Lanetwork/channel/entity/g;->f:I

    const/4 v7, 0x0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6b

    .line 228
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isSpdyEnabled()Z

    move-result v0

    if-eqz v0, :cond_6b

    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget v0, v0, Lanetwork/channel/entity/g;->a:I

    if-nez v0, :cond_6b

    if-nez v6, :cond_6b

    .line 232
    invoke-direct {p0, v5}, Lanetwork/channel/unified/e;->a(Lanet/channel/util/HttpUrl;)Lanet/channel/util/HttpUrl;

    move-result-object v3

    .line 234
    :try_start_34
    sget v0, Lanet/channel/entity/c;->a:I

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v3, v0, v8, v9}, Lanet/channel/SessionCenter;->getThrowsException(Lanet/channel/util/HttpUrl;IJ)Lanet/channel/Session;

    move-result-object v0
    :try_end_3c
    .catch Lanet/channel/NoAvailStrategyException; {:try_start_34 .. :try_end_3c} :catch_66
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3c} :catch_3d

    goto :goto_3e

    :catch_3d
    move-object v0, v7

    :goto_3e
    if-nez v0, :cond_4d

    .line 242
    new-instance v8, Lanetwork/channel/unified/g;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lanetwork/channel/unified/g;-><init>(Lanetwork/channel/unified/e;Lanet/channel/SessionCenter;Lanet/channel/util/HttpUrl;Lanet/channel/statist/RequestStatistic;Lanet/channel/util/HttpUrl;Z)V

    sget v0, Lanet/channel/thread/ThreadPoolExecutorFactory$Priority;->NORMAL:I

    invoke-static {v8, v0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    return-object v7

    .line 256
    :cond_4d
    iget-object v2, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v2, v2, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Session"

    aput-object v6, v3, v5

    aput-object v0, v3, v1

    const-string v5, "anet.NetworkTask"

    const-string/jumbo v6, "tryGetSession"

    invoke-static {v5, v6, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iput-boolean v1, v4, Lanet/channel/statist/RequestStatistic;->spdyRequestSend:Z

    return-object v0

    .line 237
    :catch_66
    invoke-direct {p0, v7, v2, v5, v6}, Lanetwork/channel/unified/e;->a(Lanet/channel/Session;Lanet/channel/SessionCenter;Lanet/channel/util/HttpUrl;Z)Lanet/channel/Session;

    move-result-object v0

    return-object v0

    .line 262
    :cond_6b
    invoke-direct {p0, v7, v2, v5, v6}, Lanetwork/channel/unified/e;->a(Lanet/channel/Session;Lanet/channel/SessionCenter;Lanet/channel/util/HttpUrl;Z)Lanet/channel/Session;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .registers 16

    .line 266
    invoke-direct {p0}, Lanetwork/channel/unified/e;->a()Lanet/channel/SessionCenter;

    move-result-object v9

    .line 267
    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v0}, Lanetwork/channel/entity/g;->f()Lanet/channel/util/HttpUrl;

    move-result-object v7

    .line 268
    invoke-virtual {v7}, Lanet/channel/util/HttpUrl;->containsNonDefaultPort()Z

    move-result v8

    .line 269
    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget-object v2, v0, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    .line 270
    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v0}, Lanetwork/channel/entity/g;->a()Lanet/channel/request/Request;

    move-result-object v5

    .line 272
    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget v0, v0, Lanetwork/channel/entity/g;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_54

    .line 273
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isSpdyEnabled()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget v0, v0, Lanetwork/channel/entity/g;->a:I

    if-nez v0, :cond_54

    if-nez v8, :cond_54

    .line 277
    invoke-direct {p0, v7}, Lanetwork/channel/unified/e;->a(Lanet/channel/util/HttpUrl;)Lanet/channel/util/HttpUrl;

    move-result-object v10

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 279
    sget v11, Lanet/channel/entity/c;->a:I

    const-wide/16 v12, 0xbb8

    new-instance v14, Lanetwork/channel/unified/h;

    move-object v0, v14

    move-object v1, p0

    move-object v6, v9

    invoke-direct/range {v0 .. v8}, Lanetwork/channel/unified/h;-><init>(Lanetwork/channel/unified/e;Lanet/channel/statist/RequestStatistic;JLanet/channel/request/Request;Lanet/channel/SessionCenter;Lanet/channel/util/HttpUrl;Z)V

    move-object v0, v9

    move-object v1, v10

    move v2, v11

    move-wide v3, v12

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lanet/channel/SessionCenter;->asyncGet(Lanet/channel/util/HttpUrl;IJLanet/channel/SessionGetCallback;)V

    goto :goto_5c

    :cond_54
    const/4 v0, 0x0

    .line 296
    invoke-direct {p0, v0, v9, v7, v8}, Lanetwork/channel/unified/e;->a(Lanet/channel/Session;Lanet/channel/SessionCenter;Lanet/channel/util/HttpUrl;Z)Lanet/channel/Session;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lanetwork/channel/unified/e;->a(Lanet/channel/Session;Lanet/channel/request/Request;)V

    :goto_5c
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lanetwork/channel/unified/e;->g:Z

    .line 87
    iget-object v0, p0, Lanetwork/channel/unified/e;->f:Lanet/channel/request/Cancelable;

    if-eqz v0, :cond_c

    .line 88
    iget-object v0, p0, Lanetwork/channel/unified/e;->f:Lanet/channel/request/Cancelable;

    invoke-interface {v0}, Lanet/channel/request/Cancelable;->cancel()V

    :cond_c
    return-void
.end method

.method public run()V
    .registers 12

    .line 94
    iget-boolean v0, p0, Lanetwork/channel/unified/e;->g:Z

    if-eqz v0, :cond_5

    return-void

    .line 98
    :cond_5
    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget-object v0, v0, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    .line 99
    iget-object v1, p0, Lanetwork/channel/unified/e;->e:Ljava/lang/String;

    iput-object v1, v0, Lanet/channel/statist/RequestStatistic;->f_refer:Ljava/lang/String;

    .line 101
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "anet.NetworkTask"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v1, :cond_83

    .line 102
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isRequestDelayRetryForNoNetwork()Z

    move-result v1

    const/16 v7, -0xc8

    if-eqz v1, :cond_36

    iget v1, v0, Lanet/channel/statist/RequestStatistic;->statusCode:I

    if-eq v1, v7, :cond_36

    .line 103
    iput v7, v0, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 104
    new-instance v0, Lanetwork/channel/unified/f;

    invoke-direct {v0, p0}, Lanetwork/channel/unified/f;-><init>(Lanetwork/channel/unified/e;)V

    const-wide/16 v1, 0x3e8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    return-void

    .line 113
    :cond_36
    invoke-static {v5}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 114
    iget-object v1, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "NetworkStatus"

    aput-object v8, v5, v3

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v3

    aput-object v3, v5, v6

    const-string v3, "network unavailable"

    invoke-static {v4, v3, v1, v5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_51
    iget-object v1, p0, Lanetwork/channel/unified/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 117
    iget-object v1, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    invoke-virtual {v1}, Lanetwork/channel/unified/j;->a()V

    .line 118
    iget-object v1, v0, Lanet/channel/statist/RequestStatistic;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 119
    iput v7, v0, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 120
    invoke-static {v7}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    .line 122
    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->b:Lanetwork/channel/interceptor/Callback;

    new-instance v1, Lanetwork/channel/aidl/DefaultFinishEvent;

    iget-object v3, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v3, v3, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v3}, Lanetwork/channel/entity/g;->a()Lanet/channel/request/Request;

    move-result-object v3

    invoke-direct {v1, v7, v2, v3}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanet/channel/request/Request;)V

    invoke-interface {v0, v1}, Lanetwork/channel/interceptor/Callback;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    return-void

    .line 127
    :cond_83
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isBgRequestForbidden()Z

    move-result v1

    if-eqz v1, :cond_153

    .line 128
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v1

    if-eqz v1, :cond_153

    sget-wide v7, Lanet/channel/util/AppLifecycle;->lastEnterBackgroundTime:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_153

    sget-boolean v1, Lanet/channel/util/AppLifecycle;->isGoingForeground:Z

    if-nez v1, :cond_153

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Lanet/channel/util/AppLifecycle;->lastEnterBackgroundTime:J

    sub-long/2addr v7, v9

    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->getBgForbidRequestThreshold()I

    move-result v1

    int-to-long v9, v1

    cmp-long v1, v7, v9

    if-lez v1, :cond_153

    .line 132
    iget-object v1, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v1}, Lanetwork/channel/entity/g;->f()Lanet/channel/util/HttpUrl;

    move-result-object v1

    invoke-static {v1}, Lanetwork/channel/config/NetworkConfigCenter;->isUrlInWhiteList(Lanet/channel/util/HttpUrl;)Z

    move-result v1

    if-nez v1, :cond_153

    iget-object v1, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    .line 133
    invoke-virtual {v1}, Lanetwork/channel/entity/g;->a()Lanet/channel/request/Request;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/request/Request;->getBizId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lanetwork/channel/config/NetworkConfigCenter;->isBizInWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_153

    iget-object v1, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    .line 134
    invoke-virtual {v1}, Lanetwork/channel/entity/g;->a()Lanet/channel/request/Request;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/request/Request;->isAllowRequestInBg()Z

    move-result v1

    if-nez v1, :cond_153

    .line 135
    iget-object v1, p0, Lanetwork/channel/unified/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    iget-object v1, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    invoke-virtual {v1}, Lanetwork/channel/unified/j;->a()V

    .line 138
    invoke-static {v5}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 139
    iget-object v1, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v7, "url"

    aput-object v7, v5, v3

    iget-object v3, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v3, v3, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v3}, Lanetwork/channel/entity/g;->f()Lanet/channel/util/HttpUrl;

    move-result-object v3

    aput-object v3, v5, v6

    const-string v3, "request forbidden in background"

    invoke-static {v4, v3, v1, v5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_103
    iget-object v1, v0, Lanet/channel/statist/RequestStatistic;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v1, -0xcd

    .line 143
    iput v1, v0, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 144
    invoke-static {v1}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    .line 146
    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->b:Lanetwork/channel/interceptor/Callback;

    new-instance v3, Lanetwork/channel/aidl/DefaultFinishEvent;

    iget-object v4, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v4, v4, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v4}, Lanetwork/channel/entity/g;->a()Lanet/channel/request/Request;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanet/channel/request/Request;)V

    invoke-interface {v0, v3}, Lanetwork/channel/interceptor/Callback;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    .line 149
    new-instance v0, Lanet/channel/statist/ExceptionStatistic;

    const-string v3, "rt"

    invoke-direct {v0, v1, v2, v3}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v1}, Lanetwork/channel/entity/g;->f()Lanet/channel/util/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/ExceptionStatistic;->host:Ljava/lang/String;

    .line 151
    iget-object v1, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v1}, Lanetwork/channel/entity/g;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/ExceptionStatistic;->url:Ljava/lang/String;

    .line 152
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v1

    invoke-interface {v1, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    return-void

    .line 157
    :cond_153
    invoke-static {v5}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 158
    iget-object v0, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v0, v0, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "retryTimes"

    aput-object v2, v1, v3

    iget-object v2, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v2, v2, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    iget v2, v2, Lanetwork/channel/entity/g;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "exec request"

    invoke-static {v4, v2, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :cond_174
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isGetSessionAsyncEnable()Z

    move-result v0

    if-eqz v0, :cond_17e

    .line 164
    invoke-direct {p0}, Lanetwork/channel/unified/e;->c()V

    goto :goto_19d

    .line 167
    :cond_17e
    :try_start_17e
    invoke-direct {p0}, Lanetwork/channel/unified/e;->b()Lanet/channel/Session;

    move-result-object v0

    if-nez v0, :cond_185

    return-void

    .line 171
    :cond_185
    iget-object v1, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->a:Lanetwork/channel/entity/g;

    invoke-virtual {v1}, Lanetwork/channel/entity/g;->a()Lanet/channel/request/Request;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lanetwork/channel/unified/e;->a(Lanet/channel/Session;Lanet/channel/request/Request;)V
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_17e .. :try_end_190} :catch_191

    goto :goto_19d

    :catch_191
    move-exception v0

    .line 173
    iget-object v1, p0, Lanetwork/channel/unified/e;->a:Lanetwork/channel/unified/j;

    iget-object v1, v1, Lanetwork/channel/unified/j;->c:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "send request failed."

    invoke-static {v4, v3, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_19d
    return-void
.end method
