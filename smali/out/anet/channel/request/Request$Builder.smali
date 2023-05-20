.class public Lanet/channel/request/Request$Builder;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/request/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lanet/channel/util/HttpUrl;

.field private b:Lanet/channel/util/HttpUrl;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Lanet/channel/request/BodyEntry;

.field private h:Z

.field private i:I

.field private j:Ljavax/net/ssl/HostnameVerifier;

.field private k:Ljavax/net/ssl/SSLSocketFactory;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:Lanet/channel/statist/RequestStatistic;

.field private q:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 276
    iput-object v0, p0, Lanet/channel/request/Request$Builder;->c:Ljava/lang/String;

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->d:Ljava/util/Map;

    const/4 v0, 0x1

    .line 281
    iput-boolean v0, p0, Lanet/channel/request/Request$Builder;->h:Z

    const/4 v0, 0x0

    .line 282
    iput v0, p0, Lanet/channel/request/Request$Builder;->i:I

    const/16 v0, 0x2710

    .line 287
    iput v0, p0, Lanet/channel/request/Request$Builder;->n:I

    .line 288
    iput v0, p0, Lanet/channel/request/Request$Builder;->o:I

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lanet/channel/request/Request$Builder;->p:Lanet/channel/statist/RequestStatistic;

    return-void
.end method

.method static synthetic a(Lanet/channel/request/Request$Builder;I)I
    .registers 2

    .line 273
    iput p1, p0, Lanet/channel/request/Request$Builder;->i:I

    return p1
.end method

.method static synthetic a(Lanet/channel/request/Request$Builder;Lanet/channel/request/BodyEntry;)Lanet/channel/request/BodyEntry;
    .registers 2

    .line 273
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->g:Lanet/channel/request/BodyEntry;

    return-object p1
.end method

.method static synthetic a(Lanet/channel/request/Request$Builder;Lanet/channel/statist/RequestStatistic;)Lanet/channel/statist/RequestStatistic;
    .registers 2

    .line 273
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->p:Lanet/channel/statist/RequestStatistic;

    return-object p1
.end method

.method static synthetic a(Lanet/channel/request/Request$Builder;Lanet/channel/util/HttpUrl;)Lanet/channel/util/HttpUrl;
    .registers 2

    .line 273
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->a:Lanet/channel/util/HttpUrl;

    return-object p1
.end method

.method static synthetic a(Lanet/channel/request/Request$Builder;)Ljava/lang/String;
    .registers 1

    .line 273
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 273
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lanet/channel/request/Request$Builder;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 273
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->d:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lanet/channel/request/Request$Builder;Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .line 273
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object p1
.end method

.method static synthetic a(Lanet/channel/request/Request$Builder;Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 273
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->k:Ljavax/net/ssl/SSLSocketFactory;

    return-object p1
.end method

.method static synthetic a(Lanet/channel/request/Request$Builder;Z)Z
    .registers 2

    .line 273
    iput-boolean p1, p0, Lanet/channel/request/Request$Builder;->h:Z

    return p1
.end method

.method static synthetic b(Lanet/channel/request/Request$Builder;I)I
    .registers 2

    .line 273
    iput p1, p0, Lanet/channel/request/Request$Builder;->n:I

    return p1
.end method

.method static synthetic b(Lanet/channel/request/Request$Builder;Lanet/channel/util/HttpUrl;)Lanet/channel/util/HttpUrl;
    .registers 2

    .line 273
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->b:Lanet/channel/util/HttpUrl;

    return-object p1
.end method

.method static synthetic b(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 273
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lanet/channel/request/Request$Builder;)Ljava/util/Map;
    .registers 1

    .line 273
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->d:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic b(Lanet/channel/request/Request$Builder;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 273
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->e:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Lanet/channel/request/Request$Builder;Z)Z
    .registers 2

    .line 273
    iput-boolean p1, p0, Lanet/channel/request/Request$Builder;->q:Z

    return p1
.end method

.method static synthetic c(Lanet/channel/request/Request$Builder;I)I
    .registers 2

    .line 273
    iput p1, p0, Lanet/channel/request/Request$Builder;->o:I

    return p1
.end method

.method static synthetic c(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 273
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lanet/channel/request/Request$Builder;)Ljava/util/Map;
    .registers 1

    .line 273
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->e:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic d(Lanet/channel/request/Request$Builder;)Lanet/channel/request/BodyEntry;
    .registers 1

    .line 273
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->g:Lanet/channel/request/BodyEntry;

    return-object p0
.end method

.method static synthetic d(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 273
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lanet/channel/request/Request$Builder;)Ljava/lang/String;
    .registers 1

    .line 273
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lanet/channel/request/Request$Builder;)Z
    .registers 1

    .line 273
    iget-boolean p0, p0, Lanet/channel/request/Request$Builder;->h:Z

    return p0
.end method

.method static synthetic g(Lanet/channel/request/Request$Builder;)I
    .registers 1

    .line 273
    iget p0, p0, Lanet/channel/request/Request$Builder;->i:I

    return p0
.end method

.method static synthetic h(Lanet/channel/request/Request$Builder;)Ljavax/net/ssl/HostnameVerifier;
    .registers 1

    .line 273
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method static synthetic i(Lanet/channel/request/Request$Builder;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 1

    .line 273
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->k:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method static synthetic j(Lanet/channel/request/Request$Builder;)Ljava/lang/String;
    .registers 1

    .line 273
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lanet/channel/request/Request$Builder;)Ljava/lang/String;
    .registers 1

    .line 273
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lanet/channel/request/Request$Builder;)I
    .registers 1

    .line 273
    iget p0, p0, Lanet/channel/request/Request$Builder;->n:I

    return p0
.end method

.method static synthetic m(Lanet/channel/request/Request$Builder;)I
    .registers 1

    .line 273
    iget p0, p0, Lanet/channel/request/Request$Builder;->o:I

    return p0
.end method

.method static synthetic n(Lanet/channel/request/Request$Builder;)Lanet/channel/util/HttpUrl;
    .registers 1

    .line 273
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->a:Lanet/channel/util/HttpUrl;

    return-object p0
.end method

.method static synthetic o(Lanet/channel/request/Request$Builder;)Lanet/channel/util/HttpUrl;
    .registers 1

    .line 273
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->b:Lanet/channel/util/HttpUrl;

    return-object p0
.end method

.method static synthetic p(Lanet/channel/request/Request$Builder;)Lanet/channel/statist/RequestStatistic;
    .registers 1

    .line 273
    iget-object p0, p0, Lanet/channel/request/Request$Builder;->p:Lanet/channel/statist/RequestStatistic;

    return-object p0
.end method

.method static synthetic q(Lanet/channel/request/Request$Builder;)Z
    .registers 1

    .line 273
    iget-boolean p0, p0, Lanet/channel/request/Request$Builder;->q:Z

    return p0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .registers 4

    .line 343
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->d:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .registers 4

    .line 354
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->e:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->e:Ljava/util/Map;

    .line 357
    :cond_b
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 358
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->b:Lanet/channel/util/HttpUrl;

    return-object p0
.end method

.method public build()Lanet/channel/request/Request;
    .registers 7

    .line 429
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->g:Lanet/channel/request/BodyEntry;

    const/4 v1, 0x0

    const-string v2, "method "

    const-string v3, "awcn.Request"

    const/4 v4, 0x0

    if-nez v0, :cond_31

    iget-object v0, p0, Lanet/channel/request/Request$Builder;->e:Ljava/util/Map;

    if-nez v0, :cond_31

    iget-object v0, p0, Lanet/channel/request/Request$Builder;->c:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/request/Request$Method;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lanet/channel/request/Request$Builder;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " must have a request body"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    :cond_31
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->g:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lanet/channel/request/Request$Builder;->c:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/request/Request$Method;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanet/channel/request/Request$Builder;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " should not have a request body"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 436
    iput-object v4, p0, Lanet/channel/request/Request$Builder;->g:Lanet/channel/request/BodyEntry;

    .line 439
    :cond_5a
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->g:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_6f

    invoke-interface {v0}, Lanet/channel/request/BodyEntry;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 440
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->g:Lanet/channel/request/BodyEntry;

    invoke-interface {v0}, Lanet/channel/request/BodyEntry;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, v0}, Lanet/channel/request/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    .line 443
    :cond_6f
    new-instance v0, Lanet/channel/request/Request;

    invoke-direct {v0, p0, v4}, Lanet/channel/request/Request;-><init>(Lanet/channel/request/Request$Builder;Lanet/channel/request/Request$1;)V

    return-object v0
.end method

.method public setAllowRequestInBg(Z)Lanet/channel/request/Request$Builder;
    .registers 2

    .line 423
    iput-boolean p1, p0, Lanet/channel/request/Request$Builder;->q:Z

    return-object p0
.end method

.method public setBizId(Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .registers 2

    .line 394
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->l:Ljava/lang/String;

    return-object p0
.end method

.method public setBody(Lanet/channel/request/BodyEntry;)Lanet/channel/request/Request$Builder;
    .registers 2

    .line 369
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->g:Lanet/channel/request/BodyEntry;

    return-object p0
.end method

.method public setCharset(Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .registers 2

    .line 363
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->f:Ljava/lang/String;

    const/4 p1, 0x0

    .line 364
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->b:Lanet/channel/util/HttpUrl;

    return-object p0
.end method

.method public setConnectTimeout(I)Lanet/channel/request/Request$Builder;
    .registers 2

    if-lez p1, :cond_4

    .line 412
    iput p1, p0, Lanet/channel/request/Request$Builder;->n:I

    :cond_4
    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lanet/channel/request/Request$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lanet/channel/request/Request$Builder;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_c

    .line 337
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_c
    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lanet/channel/request/Request$Builder;
    .registers 2

    .line 384
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .registers 5

    .line 311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "GET"

    .line 315
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 316
    iput-object v0, p0, Lanet/channel/request/Request$Builder;->c:Ljava/lang/String;

    goto :goto_4a

    :cond_11
    const-string v1, "POST"

    .line 317
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 318
    iput-object v1, p0, Lanet/channel/request/Request$Builder;->c:Ljava/lang/String;

    goto :goto_4a

    :cond_1c
    const-string v1, "OPTIONS"

    .line 319
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 320
    iput-object v1, p0, Lanet/channel/request/Request$Builder;->c:Ljava/lang/String;

    goto :goto_4a

    :cond_27
    const-string v1, "HEAD"

    .line 321
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 322
    iput-object v1, p0, Lanet/channel/request/Request$Builder;->c:Ljava/lang/String;

    goto :goto_4a

    :cond_32
    const-string v1, "PUT"

    .line 323
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 324
    iput-object v1, p0, Lanet/channel/request/Request$Builder;->c:Ljava/lang/String;

    goto :goto_4a

    :cond_3d
    const-string v1, "DELETE"

    .line 325
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 326
    iput-object v1, p0, Lanet/channel/request/Request$Builder;->c:Ljava/lang/String;

    goto :goto_4a

    .line 328
    :cond_48
    iput-object v0, p0, Lanet/channel/request/Request$Builder;->c:Ljava/lang/String;

    :goto_4a
    return-object p0

    .line 312
    :cond_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "method is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParams(Ljava/util/Map;)Lanet/channel/request/Request$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lanet/channel/request/Request$Builder;"
        }
    .end annotation

    .line 348
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->e:Ljava/util/Map;

    const/4 p1, 0x0

    .line 349
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->b:Lanet/channel/util/HttpUrl;

    return-object p0
.end method

.method public setReadTimeout(I)Lanet/channel/request/Request$Builder;
    .registers 2

    if-lez p1, :cond_4

    .line 405
    iput p1, p0, Lanet/channel/request/Request$Builder;->o:I

    :cond_4
    return-object p0
.end method

.method public setRedirectEnable(Z)Lanet/channel/request/Request$Builder;
    .registers 2

    .line 374
    iput-boolean p1, p0, Lanet/channel/request/Request$Builder;->h:Z

    return-object p0
.end method

.method public setRedirectTimes(I)Lanet/channel/request/Request$Builder;
    .registers 2

    .line 379
    iput p1, p0, Lanet/channel/request/Request$Builder;->i:I

    return-object p0
.end method

.method public setRequestStatistic(Lanet/channel/statist/RequestStatistic;)Lanet/channel/request/Request$Builder;
    .registers 2

    .line 418
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->p:Lanet/channel/statist/RequestStatistic;

    return-object p0
.end method

.method public setSeq(Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .registers 2

    .line 399
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->m:Ljava/lang/String;

    return-object p0
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lanet/channel/request/Request$Builder;
    .registers 2

    .line 389
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->k:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public setUrl(Lanet/channel/util/HttpUrl;)Lanet/channel/request/Request$Builder;
    .registers 2

    .line 296
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->a:Lanet/channel/util/HttpUrl;

    const/4 p1, 0x0

    .line 297
    iput-object p1, p0, Lanet/channel/request/Request$Builder;->b:Lanet/channel/util/HttpUrl;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lanet/channel/request/Request$Builder;
    .registers 5

    .line 302
    invoke-static {p1}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request$Builder;->a:Lanet/channel/util/HttpUrl;

    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Lanet/channel/request/Request$Builder;->b:Lanet/channel/util/HttpUrl;

    .line 304
    iget-object v0, p0, Lanet/channel/request/Request$Builder;->a:Lanet/channel/util/HttpUrl;

    if-eqz v0, :cond_e

    return-object p0

    .line 305
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toURL is invalid! toURL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
