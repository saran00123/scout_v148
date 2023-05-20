.class public Lanet/channel/request/Request;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/request/Request$Builder;,
        Lanet/channel/request/Request$Method;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"


# instance fields
.field public final a:Lanet/channel/statist/RequestStatistic;

.field private b:Lanet/channel/util/HttpUrl;

.field private c:Lanet/channel/util/HttpUrl;

.field private d:Lanet/channel/util/HttpUrl;

.field private e:Ljava/net/URL;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lanet/channel/request/BodyEntry;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljavax/net/ssl/HostnameVerifier;

.field private r:Ljavax/net/ssl/SSLSocketFactory;

.field private s:Z


# direct methods
.method private constructor <init>(Lanet/channel/request/Request$Builder;)V
    .registers 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 56
    iput-object v0, p0, Lanet/channel/request/Request;->f:Ljava/lang/String;

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lanet/channel/request/Request;->k:Z

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lanet/channel/request/Request;->n:I

    const/16 v0, 0x2710

    .line 66
    iput v0, p0, Lanet/channel/request/Request;->o:I

    .line 67
    iput v0, p0, Lanet/channel/request/Request;->p:I

    .line 74
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->a(Lanet/channel/request/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->f:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->b(Lanet/channel/request/Request$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->g:Ljava/util/Map;

    .line 76
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->c(Lanet/channel/request/Request$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->h:Ljava/util/Map;

    .line 77
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->d(Lanet/channel/request/Request$Builder;)Lanet/channel/request/BodyEntry;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->j:Lanet/channel/request/BodyEntry;

    .line 78
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->e(Lanet/channel/request/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->i:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->f(Lanet/channel/request/Request$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lanet/channel/request/Request;->k:Z

    .line 80
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->g(Lanet/channel/request/Request$Builder;)I

    move-result v0

    iput v0, p0, Lanet/channel/request/Request;->n:I

    .line 81
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->h(Lanet/channel/request/Request$Builder;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->q:Ljavax/net/ssl/HostnameVerifier;

    .line 82
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->i(Lanet/channel/request/Request$Builder;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->r:Ljavax/net/ssl/SSLSocketFactory;

    .line 83
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->j(Lanet/channel/request/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->l:Ljava/lang/String;

    .line 84
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->k(Lanet/channel/request/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->m:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->l(Lanet/channel/request/Request$Builder;)I

    move-result v0

    iput v0, p0, Lanet/channel/request/Request;->o:I

    .line 86
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->m(Lanet/channel/request/Request$Builder;)I

    move-result v0

    iput v0, p0, Lanet/channel/request/Request;->p:I

    .line 87
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->n(Lanet/channel/request/Request$Builder;)Lanet/channel/util/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->b:Lanet/channel/util/HttpUrl;

    .line 88
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->o(Lanet/channel/request/Request$Builder;)Lanet/channel/util/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->c:Lanet/channel/util/HttpUrl;

    .line 89
    iget-object v0, p0, Lanet/channel/request/Request;->c:Lanet/channel/util/HttpUrl;

    if-nez v0, :cond_74

    .line 90
    invoke-direct {p0}, Lanet/channel/request/Request;->b()V

    .line 92
    :cond_74
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->p(Lanet/channel/request/Request$Builder;)Lanet/channel/statist/RequestStatistic;

    move-result-object v0

    if-eqz v0, :cond_7f

    invoke-static {p1}, Lanet/channel/request/Request$Builder;->p(Lanet/channel/request/Request$Builder;)Lanet/channel/statist/RequestStatistic;

    move-result-object v0

    goto :goto_8a

    :cond_7f
    new-instance v0, Lanet/channel/statist/RequestStatistic;

    invoke-virtual {p0}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/request/Request;->l:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8a
    iput-object v0, p0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    .line 93
    invoke-static {p1}, Lanet/channel/request/Request$Builder;->q(Lanet/channel/request/Request$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lanet/channel/request/Request;->s:Z

    return-void
.end method

.method synthetic constructor <init>(Lanet/channel/request/Request$Builder;Lanet/channel/request/Request$1;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1}, Lanet/channel/request/Request;-><init>(Lanet/channel/request/Request$Builder;)V

    return-void
.end method

.method private a()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-static {}, Lanet/channel/AwcnConfig;->isCookieHeaderRedundantFix()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 120
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lanet/channel/request/Request;->g:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 122
    :cond_e
    iget-object v0, p0, Lanet/channel/request/Request;->g:Ljava/util/Map;

    return-object v0
.end method

.method private b()V
    .registers 6

    .line 245
    iget-object v0, p0, Lanet/channel/request/Request;->h:Ljava/util/Map;

    invoke-virtual {p0}, Lanet/channel/request/Request;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lanet/channel/strategy/utils/c;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_83

    .line 247
    iget-object v1, p0, Lanet/channel/request/Request;->f:Ljava/lang/String;

    invoke-static {v1}, Lanet/channel/request/Request$Method;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lanet/channel/request/Request;->j:Lanet/channel/request/BodyEntry;

    if-eqz v1, :cond_1d

    goto :goto_49

    .line 262
    :cond_1d
    :try_start_1d
    new-instance v1, Lanet/channel/request/ByteArrayEntry;

    invoke-virtual {p0}, Lanet/channel/request/Request;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lanet/channel/request/ByteArrayEntry;-><init>([B)V

    iput-object v1, p0, Lanet/channel/request/Request;->j:Lanet/channel/request/BodyEntry;

    .line 263
    iget-object v0, p0, Lanet/channel/request/Request;->g:Ljava/util/Map;

    const-string v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lanet/channel/request/Request;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d .. :try_end_48} :catch_83

    goto :goto_83

    .line 248
    :cond_49
    :goto_49
    iget-object v1, p0, Lanet/channel/request/Request;->b:Lanet/channel/util/HttpUrl;

    invoke-virtual {v1}, Lanet/channel/util/HttpUrl;->urlString()Ljava/lang/String;

    move-result-object v1

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_63

    const/16 v1, 0x3f

    .line 251
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_74

    .line 252
    :cond_63
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x26

    if-eq v1, v3, :cond_74

    .line 253
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    :cond_74
    :goto_74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_83

    .line 258
    iput-object v0, p0, Lanet/channel/request/Request;->c:Lanet/channel/util/HttpUrl;

    .line 268
    :catch_83
    :cond_83
    :goto_83
    iget-object v0, p0, Lanet/channel/request/Request;->c:Lanet/channel/util/HttpUrl;

    if-nez v0, :cond_8b

    .line 269
    iget-object v0, p0, Lanet/channel/request/Request;->b:Lanet/channel/util/HttpUrl;

    iput-object v0, p0, Lanet/channel/request/Request;->c:Lanet/channel/util/HttpUrl;

    :cond_8b
    return-void
.end method


# virtual methods
.method public containsBody()Z
    .registers 2

    .line 221
    iget-object v0, p0, Lanet/channel/request/Request;->j:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getBizId()Ljava/lang/String;
    .registers 2

    .line 225
    iget-object v0, p0, Lanet/channel/request/Request;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyBytes()[B
    .registers 3

    .line 209
    iget-object v0, p0, Lanet/channel/request/Request;->j:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_13

    .line 210
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 212
    :try_start_b
    invoke-virtual {p0, v0}, Lanet/channel/request/Request;->postBody(Ljava/io/OutputStream;)I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_e

    .line 215
    :catch_e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectTimeout()I
    .registers 2

    .line 237
    iget v0, p0, Lanet/channel/request/Request;->o:I

    return v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lanet/channel/request/Request;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, "UTF-8"

    :goto_7
    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
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

    .line 181
    iget-object v0, p0, Lanet/channel/request/Request;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lanet/channel/request/Request;->c:Lanet/channel/util/HttpUrl;

    invoke-virtual {v0}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .line 193
    iget-object v0, p0, Lanet/channel/request/Request;->q:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getHttpUrl()Lanet/channel/util/HttpUrl;
    .registers 2

    .line 126
    iget-object v0, p0, Lanet/channel/request/Request;->c:Lanet/channel/util/HttpUrl;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .line 177
    iget-object v0, p0, Lanet/channel/request/Request;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .line 233
    iget v0, p0, Lanet/channel/request/Request;->p:I

    return v0
.end method

.method public getRedirectTimes()I
    .registers 2

    .line 169
    iget v0, p0, Lanet/channel/request/Request;->n:I

    return v0
.end method

.method public getSeq()Ljava/lang/String;
    .registers 2

    .line 229
    iget-object v0, p0, Lanet/channel/request/Request;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .line 197
    iget-object v0, p0, Lanet/channel/request/Request;->r:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .registers 2

    .line 134
    iget-object v0, p0, Lanet/channel/request/Request;->e:Ljava/net/URL;

    if-nez v0, :cond_11

    .line 135
    iget-object v0, p0, Lanet/channel/request/Request;->d:Lanet/channel/util/HttpUrl;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    iget-object v0, p0, Lanet/channel/request/Request;->c:Lanet/channel/util/HttpUrl;

    :goto_b
    invoke-virtual {v0}, Lanet/channel/util/HttpUrl;->toURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/request/Request;->e:Ljava/net/URL;

    .line 137
    :cond_11
    iget-object v0, p0, Lanet/channel/request/Request;->e:Ljava/net/URL;

    return-object v0
.end method

.method public getUrlString()Ljava/lang/String;
    .registers 2

    .line 130
    iget-object v0, p0, Lanet/channel/request/Request;->c:Lanet/channel/util/HttpUrl;

    invoke-virtual {v0}, Lanet/channel/util/HttpUrl;->urlString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAllowRequestInBg()Z
    .registers 2

    .line 241
    iget-boolean v0, p0, Lanet/channel/request/Request;->s:Z

    return v0
.end method

.method public isRedirectEnable()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Lanet/channel/request/Request;->k:Z

    return v0
.end method

.method public newBuilder()Lanet/channel/request/Request$Builder;
    .registers 3

    .line 97
    new-instance v0, Lanet/channel/request/Request$Builder;

    invoke-direct {v0}, Lanet/channel/request/Request$Builder;-><init>()V

    .line 98
    iget-object v1, p0, Lanet/channel/request/Request;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->a(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Lanet/channel/request/Request;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->a(Lanet/channel/request/Request$Builder;Ljava/util/Map;)Ljava/util/Map;

    .line 100
    iget-object v1, p0, Lanet/channel/request/Request;->h:Ljava/util/Map;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->b(Lanet/channel/request/Request$Builder;Ljava/util/Map;)Ljava/util/Map;

    .line 101
    iget-object v1, p0, Lanet/channel/request/Request;->j:Lanet/channel/request/BodyEntry;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->a(Lanet/channel/request/Request$Builder;Lanet/channel/request/BodyEntry;)Lanet/channel/request/BodyEntry;

    .line 102
    iget-object v1, p0, Lanet/channel/request/Request;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->b(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    iget-boolean v1, p0, Lanet/channel/request/Request;->k:Z

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->a(Lanet/channel/request/Request$Builder;Z)Z

    .line 104
    iget v1, p0, Lanet/channel/request/Request;->n:I

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->a(Lanet/channel/request/Request$Builder;I)I

    .line 105
    iget-object v1, p0, Lanet/channel/request/Request;->q:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->a(Lanet/channel/request/Request$Builder;Ljavax/net/ssl/HostnameVerifier;)Ljavax/net/ssl/HostnameVerifier;

    .line 106
    iget-object v1, p0, Lanet/channel/request/Request;->r:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->a(Lanet/channel/request/Request$Builder;Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/SSLSocketFactory;

    .line 107
    iget-object v1, p0, Lanet/channel/request/Request;->b:Lanet/channel/util/HttpUrl;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->a(Lanet/channel/request/Request$Builder;Lanet/channel/util/HttpUrl;)Lanet/channel/util/HttpUrl;

    .line 108
    iget-object v1, p0, Lanet/channel/request/Request;->c:Lanet/channel/util/HttpUrl;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->b(Lanet/channel/request/Request$Builder;Lanet/channel/util/HttpUrl;)Lanet/channel/util/HttpUrl;

    .line 109
    iget-object v1, p0, Lanet/channel/request/Request;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->c(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lanet/channel/request/Request;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->d(Lanet/channel/request/Request$Builder;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    iget v1, p0, Lanet/channel/request/Request;->o:I

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->b(Lanet/channel/request/Request$Builder;I)I

    .line 112
    iget v1, p0, Lanet/channel/request/Request;->p:I

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->c(Lanet/channel/request/Request$Builder;I)I

    .line 113
    iget-object v1, p0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->a(Lanet/channel/request/Request$Builder;Lanet/channel/statist/RequestStatistic;)Lanet/channel/statist/RequestStatistic;

    .line 114
    iget-boolean v1, p0, Lanet/channel/request/Request;->s:Z

    invoke-static {v0, v1}, Lanet/channel/request/Request$Builder;->b(Lanet/channel/request/Request$Builder;Z)Z

    return-object v0
.end method

.method public postBody(Ljava/io/OutputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lanet/channel/request/Request;->j:Lanet/channel/request/BodyEntry;

    if-eqz v0, :cond_9

    .line 203
    invoke-interface {v0, p1}, Lanet/channel/request/BodyEntry;->writeTo(Ljava/io/OutputStream;)I

    move-result p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public setDnsOptimize(Ljava/lang/String;I)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 146
    iget-object v1, p0, Lanet/channel/request/Request;->d:Lanet/channel/util/HttpUrl;

    if-nez v1, :cond_10

    .line 147
    new-instance v1, Lanet/channel/util/HttpUrl;

    iget-object v2, p0, Lanet/channel/request/Request;->c:Lanet/channel/util/HttpUrl;

    invoke-direct {v1, v2}, Lanet/channel/util/HttpUrl;-><init>(Lanet/channel/util/HttpUrl;)V

    iput-object v1, p0, Lanet/channel/request/Request;->d:Lanet/channel/util/HttpUrl;

    .line 149
    :cond_10
    iget-object v1, p0, Lanet/channel/request/Request;->d:Lanet/channel/util/HttpUrl;

    invoke-virtual {v1, p1, p2}, Lanet/channel/util/HttpUrl;->replaceIpAndPort(Ljava/lang/String;I)V

    goto :goto_18

    .line 151
    :cond_16
    iput-object v0, p0, Lanet/channel/request/Request;->d:Lanet/channel/util/HttpUrl;

    .line 153
    :goto_18
    iput-object v0, p0, Lanet/channel/request/Request;->e:Ljava/net/URL;

    .line 154
    iget-object v0, p0, Lanet/channel/request/Request;->a:Lanet/channel/statist/RequestStatistic;

    invoke-virtual {v0, p1, p2}, Lanet/channel/statist/RequestStatistic;->setIPAndPort(Ljava/lang/String;I)V

    return-void
.end method

.method public setUrlScheme(Z)V
    .registers 4

    .line 161
    iget-object v0, p0, Lanet/channel/request/Request;->d:Lanet/channel/util/HttpUrl;

    if-nez v0, :cond_d

    .line 162
    new-instance v0, Lanet/channel/util/HttpUrl;

    iget-object v1, p0, Lanet/channel/request/Request;->c:Lanet/channel/util/HttpUrl;

    invoke-direct {v0, v1}, Lanet/channel/util/HttpUrl;-><init>(Lanet/channel/util/HttpUrl;)V

    iput-object v0, p0, Lanet/channel/request/Request;->d:Lanet/channel/util/HttpUrl;

    .line 164
    :cond_d
    iget-object v0, p0, Lanet/channel/request/Request;->d:Lanet/channel/util/HttpUrl;

    if-eqz p1, :cond_14

    const-string p1, "https"

    goto :goto_16

    :cond_14
    const-string p1, "http"

    :goto_16
    invoke-virtual {v0, p1}, Lanet/channel/util/HttpUrl;->setScheme(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lanet/channel/request/Request;->e:Ljava/net/URL;

    return-void
.end method
