.class public Lanetwork/channel/entity/g;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field public a:I

.field public b:Lanet/channel/statist/RequestStatistic;

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:I

.field private g:Lanetwork/channel/aidl/ParcelableRequest;

.field private h:Lanet/channel/request/Request;

.field private i:I

.field private j:I

.field private final k:Z


# direct methods
.method public constructor <init>(Lanetwork/channel/aidl/ParcelableRequest;IZ)V
    .registers 5

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lanetwork/channel/entity/g;->h:Lanet/channel/request/Request;

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lanetwork/channel/entity/g;->i:I

    .line 31
    iput v0, p0, Lanetwork/channel/entity/g;->j:I

    .line 32
    iput v0, p0, Lanetwork/channel/entity/g;->a:I

    if-eqz p1, :cond_7b

    .line 46
    iput-object p1, p0, Lanetwork/channel/entity/g;->g:Lanetwork/channel/aidl/ParcelableRequest;

    .line 47
    iput p2, p0, Lanetwork/channel/entity/g;->f:I

    .line 48
    iput-boolean p3, p0, Lanetwork/channel/entity/g;->k:Z

    .line 49
    iget-object p2, p1, Lanetwork/channel/aidl/ParcelableRequest;->seqNo:Ljava/lang/String;

    iget p3, p0, Lanetwork/channel/entity/g;->f:I

    if-nez p3, :cond_1e

    const-string p3, "HTTP"

    goto :goto_20

    :cond_1e
    const-string p3, "DGRD"

    :goto_20
    invoke-static {p2, p3}, Lanetwork/channel/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lanetwork/channel/entity/g;->e:Ljava/lang/String;

    .line 51
    iget p2, p1, Lanetwork/channel/aidl/ParcelableRequest;->connectTimeout:I

    const p3, 0x463b8000    # 12000.0f

    if-gtz p2, :cond_34

    .line 52
    invoke-static {}, Lanet/channel/util/Utils;->getNetworkTimeFactor()F

    move-result p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    goto :goto_36

    :cond_34
    iget p2, p1, Lanetwork/channel/aidl/ParcelableRequest;->connectTimeout:I

    :goto_36
    iput p2, p0, Lanetwork/channel/entity/g;->c:I

    .line 54
    iget p2, p1, Lanetwork/channel/aidl/ParcelableRequest;->readTimeout:I

    if-gtz p2, :cond_43

    .line 55
    invoke-static {}, Lanet/channel/util/Utils;->getNetworkTimeFactor()F

    move-result p2

    mul-float/2addr p2, p3

    float-to-int p2, p2

    goto :goto_45

    :cond_43
    iget p2, p1, Lanetwork/channel/aidl/ParcelableRequest;->readTimeout:I

    :goto_45
    iput p2, p0, Lanetwork/channel/entity/g;->d:I

    .line 57
    iget p2, p1, Lanetwork/channel/aidl/ParcelableRequest;->retryTime:I

    if-ltz p2, :cond_54

    iget p2, p1, Lanetwork/channel/aidl/ParcelableRequest;->retryTime:I

    const/4 p3, 0x3

    if-le p2, p3, :cond_51

    goto :goto_54

    :cond_51
    iget p2, p1, Lanetwork/channel/aidl/ParcelableRequest;->retryTime:I

    goto :goto_55

    :cond_54
    :goto_54
    const/4 p2, 0x2

    :goto_55
    iput p2, p0, Lanetwork/channel/entity/g;->j:I

    .line 59
    invoke-direct {p0}, Lanetwork/channel/entity/g;->l()Lanet/channel/util/HttpUrl;

    move-result-object p2

    .line 61
    new-instance p3, Lanet/channel/statist/RequestStatistic;

    invoke-virtual {p2}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lanetwork/channel/aidl/ParcelableRequest;->bizId:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    .line 62
    iget-object p1, p0, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {p2}, Lanet/channel/util/HttpUrl;->simpleUrlString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lanet/channel/statist/RequestStatistic;->url:Ljava/lang/String;

    .line 64
    invoke-direct {p0, p2}, Lanetwork/channel/entity/g;->b(Lanet/channel/util/HttpUrl;)Lanet/channel/request/Request;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/entity/g;->h:Lanet/channel/request/Request;

    return-void

    .line 43
    :cond_7b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "request is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Lanet/channel/util/HttpUrl;)Lanet/channel/request/Request;
    .registers 4

    .line 91
    new-instance v0, Lanet/channel/request/Request$Builder;

    invoke-direct {v0}, Lanet/channel/request/Request$Builder;-><init>()V

    .line 92
    invoke-virtual {v0, p1}, Lanet/channel/request/Request$Builder;->setUrl(Lanet/channel/util/HttpUrl;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/g;->g:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v1, v1, Lanetwork/channel/aidl/ParcelableRequest;->method:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setMethod(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/g;->g:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v1, v1, Lanetwork/channel/aidl/ParcelableRequest;->bodyEntry:Lanet/channel/request/BodyEntry;

    .line 94
    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setBody(Lanet/channel/request/BodyEntry;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget v1, p0, Lanetwork/channel/entity/g;->d:I

    .line 95
    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setReadTimeout(I)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget v1, p0, Lanetwork/channel/entity/g;->c:I

    .line 96
    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setConnectTimeout(I)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/g;->g:Lanetwork/channel/aidl/ParcelableRequest;

    iget-boolean v1, v1, Lanetwork/channel/aidl/ParcelableRequest;->allowRedirect:Z

    .line 97
    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setRedirectEnable(Z)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget v1, p0, Lanetwork/channel/entity/g;->i:I

    .line 98
    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setRedirectTimes(I)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/g;->g:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v1, v1, Lanetwork/channel/aidl/ParcelableRequest;->bizId:Ljava/lang/String;

    .line 99
    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setBizId(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/g;->e:Ljava/lang/String;

    .line 100
    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setSeq(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    .line 101
    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setRequestStatistic(Lanet/channel/statist/RequestStatistic;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lanetwork/channel/entity/g;->g:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v1, v1, Lanetwork/channel/aidl/ParcelableRequest;->params:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setParams(Ljava/util/Map;)Lanet/channel/request/Request$Builder;

    .line 106
    iget-object v1, p0, Lanetwork/channel/entity/g;->g:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v1, v1, Lanetwork/channel/aidl/ParcelableRequest;->charset:Ljava/lang/String;

    if-eqz v1, :cond_5b

    .line 107
    iget-object v1, p0, Lanetwork/channel/entity/g;->g:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v1, v1, Lanetwork/channel/aidl/ParcelableRequest;->charset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setCharset(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    .line 110
    :cond_5b
    invoke-direct {p0, p1}, Lanetwork/channel/entity/g;->c(Lanet/channel/util/HttpUrl;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lanet/channel/request/Request$Builder;->setHeaders(Ljava/util/Map;)Lanet/channel/request/Request$Builder;

    .line 111
    invoke-virtual {v0}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;

    move-result-object p1

    return-object p1
.end method

.method private c(Lanet/channel/util/HttpUrl;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanet/channel/util/HttpUrl;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {p1}, Lanet/channel/strategy/utils/c;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-le v2, v3, :cond_37

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_37

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_37

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-static {p1}, Lanet/channel/strategy/utils/c;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_37

    move v0, v4

    .line 166
    :cond_37
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 167
    iget-object v1, p0, Lanetwork/channel/entity/g;->g:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v1, v1, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/Map;

    if-eqz v1, :cond_9d

    .line 168
    iget-object v1, p0, Lanetwork/channel/entity/g;->g:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v1, v1, Lanetwork/channel/aidl/ParcelableRequest;->headers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4e
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Host"

    .line 170
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_93

    const-string v5, ":host"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    goto :goto_93

    .line 177
    :cond_71
    iget-object v4, p0, Lanetwork/channel/entity/g;->g:Lanetwork/channel/aidl/ParcelableRequest;

    const-string v5, "KeepCustomCookie"

    .line 178
    invoke-virtual {v4, v5}, Lanetwork/channel/aidl/ParcelableRequest;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    .line 177
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "Cookie"

    .line 179
    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8b

    if-nez v4, :cond_8b

    goto :goto_4e

    .line 182
    :cond_8b
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    :cond_93
    :goto_93
    if-nez v0, :cond_4e

    .line 172
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    :cond_9d
    return-object p1
.end method

.method private l()Lanet/channel/util/HttpUrl;
    .registers 6

    .line 76
    iget-object v0, p0, Lanetwork/channel/entity/g;->g:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v0, v0, Lanetwork/channel/aidl/ParcelableRequest;->url:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 81
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isSSLEnabled()Z

    move-result v1

    if-nez v1, :cond_20

    .line 82
    iget-object v1, p0, Lanetwork/channel/entity/g;->e:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "anet.RequestConfig"

    const-string v4, "request ssl disabled."

    invoke-static {v3, v4, v1, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v0}, Lanet/channel/util/HttpUrl;->downgradeSchemeAndLock()V

    goto :goto_33

    .line 84
    :cond_20
    iget-object v1, p0, Lanetwork/channel/entity/g;->g:Lanetwork/channel/aidl/ParcelableRequest;

    const-string v2, "EnableSchemeReplace"

    invoke-virtual {v1, v2}, Lanetwork/channel/aidl/ParcelableRequest;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 85
    invoke-virtual {v0}, Lanet/channel/util/HttpUrl;->lockScheme()V

    :cond_33
    :goto_33
    return-object v0

    .line 78
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url is invalid. url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanetwork/channel/entity/g;->g:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v2, v2, Lanetwork/channel/aidl/ParcelableRequest;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lanet/channel/request/Request;
    .registers 2

    .line 68
    iget-object v0, p0, Lanetwork/channel/entity/g;->h:Lanet/channel/request/Request;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 123
    iget-object v0, p0, Lanetwork/channel/entity/g;->g:Lanetwork/channel/aidl/ParcelableRequest;

    invoke-virtual {v0, p1}, Lanetwork/channel/aidl/ParcelableRequest;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lanet/channel/request/Request;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lanetwork/channel/entity/g;->h:Lanet/channel/request/Request;

    return-void
.end method

.method public a(Lanet/channel/util/HttpUrl;)V
    .registers 7

    .line 203
    iget-object v0, p0, Lanetwork/channel/entity/g;->e:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "to url"

    aput-object v3, v1, v2

    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "anet.RequestConfig"

    const-string v4, "redirect"

    invoke-static {v2, v4, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget v0, p0, Lanetwork/channel/entity/g;->i:I

    add-int/2addr v0, v3

    iput v0, p0, Lanetwork/channel/entity/g;->i:I

    .line 205
    iget-object v0, p0, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {p1}, Lanet/channel/util/HttpUrl;->simpleUrlString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/RequestStatistic;->url:Ljava/lang/String;

    .line 206
    invoke-direct {p0, p1}, Lanetwork/channel/entity/g;->b(Lanet/channel/util/HttpUrl;)Lanet/channel/request/Request;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/entity/g;->h:Lanet/channel/request/Request;

    return-void
.end method

.method public b()I
    .registers 3

    .line 115
    iget v0, p0, Lanetwork/channel/entity/g;->d:I

    iget v1, p0, Lanetwork/channel/entity/g;->j:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method public c()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Lanetwork/channel/entity/g;->k:Z

    return v0
.end method

.method public d()Z
    .registers 3

    .line 128
    iget v0, p0, Lanetwork/channel/entity/g;->a:I

    iget v1, p0, Lanetwork/channel/entity/g;->j:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public e()Z
    .registers 3

    .line 132
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isHttpSessionEnable()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lanetwork/channel/entity/g;->g:Lanetwork/channel/aidl/ParcelableRequest;

    const-string v1, "EnableHttpDns"

    .line 133
    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/ParcelableRequest;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 134
    invoke-static {}, Lanetwork/channel/config/NetworkConfigCenter;->isAllowHttpIpRetry()Z

    move-result v0

    if-nez v0, :cond_20

    iget v0, p0, Lanetwork/channel/entity/g;->a:I

    if-nez v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    :goto_23
    return v0
.end method

.method public f()Lanet/channel/util/HttpUrl;
    .registers 2

    .line 139
    iget-object v0, p0, Lanetwork/channel/entity/g;->h:Lanet/channel/request/Request;

    invoke-virtual {v0}, Lanet/channel/request/Request;->getHttpUrl()Lanet/channel/util/HttpUrl;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lanetwork/channel/entity/g;->h:Lanet/channel/request/Request;

    invoke-virtual {v0}, Lanet/channel/request/Request;->getUrlString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lanetwork/channel/entity/g;->h:Lanet/channel/request/Request;

    invoke-virtual {v0}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .registers 3

    .line 190
    iget-object v0, p0, Lanetwork/channel/entity/g;->g:Lanetwork/channel/aidl/ParcelableRequest;

    const-string v1, "EnableCookie"

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/ParcelableRequest;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public j()Z
    .registers 3

    .line 194
    iget-object v0, p0, Lanetwork/channel/entity/g;->g:Lanetwork/channel/aidl/ParcelableRequest;

    const-string v1, "CheckContentLength"

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/ParcelableRequest;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public k()V
    .registers 3

    .line 198
    iget v0, p0, Lanetwork/channel/entity/g;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lanetwork/channel/entity/g;->a:I

    .line 199
    iget-object v0, p0, Lanetwork/channel/entity/g;->b:Lanet/channel/statist/RequestStatistic;

    iget v1, p0, Lanetwork/channel/entity/g;->a:I

    iput v1, v0, Lanet/channel/statist/RequestStatistic;->retryTimes:I

    return-void
.end method
