.class public Lanetwork/channel/entity/RequestImpl;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/Request;


# instance fields
.field private a:Ljava/net/URI;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private b:Ljava/net/URL;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanetwork/channel/Header;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lanetwork/channel/Param;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Lanet/channel/request/BodyEntry;

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Z

    const-string v0, "GET"

    .line 30
    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->f:Ljava/lang/String;

    const/4 v0, 0x2

    .line 32
    iput v0, p0, Lanetwork/channel/entity/RequestImpl;->h:I

    const-string/jumbo v0, "utf-8"

    .line 33
    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->j:Lanet/channel/request/BodyEntry;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Z

    const-string v0, "GET"

    .line 30
    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->f:Ljava/lang/String;

    const/4 v0, 0x2

    .line 32
    iput v0, p0, Lanetwork/channel/entity/RequestImpl;->h:I

    const-string/jumbo v0, "utf-8"

    .line 33
    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->j:Lanet/channel/request/BodyEntry;

    .line 57
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Z

    const-string v0, "GET"

    .line 30
    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->f:Ljava/lang/String;

    const/4 v0, 0x2

    .line 32
    iput v0, p0, Lanetwork/channel/entity/RequestImpl;->h:I

    const-string/jumbo v0, "utf-8"

    .line 33
    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->j:Lanet/channel/request/BodyEntry;

    .line 46
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->a:Ljava/net/URI;

    .line 47
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Z

    const-string v0, "GET"

    .line 30
    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->f:Ljava/lang/String;

    const/4 v0, 0x2

    .line 32
    iput v0, p0, Lanetwork/channel/entity/RequestImpl;->h:I

    const-string/jumbo v0, "utf-8"

    .line 33
    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->j:Lanet/channel/request/BodyEntry;

    .line 52
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->b:Ljava/net/URL;

    .line 53
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_1a

    if-nez p2, :cond_5

    goto :goto_1a

    .line 126
    :cond_5
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    if-nez v0, :cond_10

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    .line 129
    :cond_10
    new-instance v0, Lanetwork/channel/entity/BasicHeader;

    invoke-direct {v0, p1, p2}, Lanetwork/channel/entity/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_1a
    return-void
.end method

.method public getBizId()Ljava/lang/String;
    .registers 2

    .line 262
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyEntry()Lanet/channel/request/BodyEntry;
    .registers 2

    .line 216
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->j:Lanet/channel/request/BodyEntry;

    return-object v0
.end method

.method public getBodyHandler()Lanetwork/channel/IBodyHandler;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .registers 2

    .line 199
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeout()I
    .registers 2

    .line 234
    iget v0, p0, Lanetwork/channel/entity/RequestImpl;->k:I

    return v0
.end method

.method public getExtProperties()Ljava/util/Map;
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

    .line 307
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->o:Ljava/util/Map;

    return-object v0
.end method

.method public getExtProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 299
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->o:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return-object p1

    .line 302
    :cond_6
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getFollowRedirects()Z
    .registers 2

    .line 107
    iget-boolean v0, p0, Lanetwork/channel/entity/RequestImpl;->d:Z

    return v0
.end method

.method public getHeaders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lanetwork/channel/Header;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Lanetwork/channel/Header;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 166
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v2, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    if-eqz v2, :cond_59

    const/4 v2, 0x0

    .line 168
    :goto_e
    iget-object v3, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4a

    .line 169
    iget-object v3, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_47

    iget-object v3, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanetwork/channel/Header;

    invoke-interface {v3}, Lanetwork/channel/Header;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_47

    iget-object v3, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanetwork/channel/Header;

    invoke-interface {v3}, Lanetwork/channel/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 170
    iget-object v3, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 173
    :cond_4a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_59

    .line 174
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array v0, p1, [Lanetwork/channel/Header;

    .line 175
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_59
    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    .line 183
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lanetwork/channel/Param;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->g:Ljava/util/List;

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .line 239
    iget v0, p0, Lanetwork/channel/entity/RequestImpl;->l:I

    return v0
.end method

.method public getRetryTime()I
    .registers 2

    .line 191
    iget v0, p0, Lanetwork/channel/entity/RequestImpl;->h:I

    return v0
.end method

.method public getSeqNo()Ljava/lang/String;
    .registers 2

    .line 272
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->a:Ljava/net/URI;

    if-eqz v0, :cond_5

    return-object v0

    .line 65
    :cond_5
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->c:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 67
    :try_start_9
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lanetwork/channel/entity/RequestImpl;->a:Ljava/net/URI;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_1f

    :catch_11
    move-exception v0

    .line 69
    iget-object v1, p0, Lanetwork/channel/entity/RequestImpl;->n:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "anet.RequestImpl"

    const-string/jumbo v4, "uri error"

    invoke-static {v3, v4, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 72
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->a:Ljava/net/URI;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->b:Ljava/net/URL;

    if-eqz v0, :cond_5

    return-object v0

    .line 85
    :cond_5
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->c:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 87
    :try_start_9
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lanetwork/channel/entity/RequestImpl;->b:Ljava/net/URL;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11

    goto :goto_1f

    :catch_11
    move-exception v0

    .line 89
    iget-object v1, p0, Lanetwork/channel/entity/RequestImpl;->n:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "anet.RequestImpl"

    const-string/jumbo v4, "url error"

    invoke-static {v3, v4, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 92
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->b:Ljava/net/URL;

    return-object v0
.end method

.method public getUrlString()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isCookieEnabled()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "EnableCookie"

    .line 277
    invoke-virtual {p0, v0}, Lanetwork/channel/entity/RequestImpl;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public removeHeader(Lanetwork/channel/Header;)V
    .registers 3

    .line 134
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 135
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public setBizId(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->m:Ljava/lang/String;

    return-void
.end method

.method public setBizId(Ljava/lang/String;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->m:Ljava/lang/String;

    return-void
.end method

.method public setBodyEntry(Lanet/channel/request/BodyEntry;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->j:Lanet/channel/request/BodyEntry;

    return-void
.end method

.method public setBodyHandler(Lanetwork/channel/IBodyHandler;)V
    .registers 3

    .line 229
    new-instance v0, Lanetwork/channel/entity/BodyHandlerEntry;

    invoke-direct {v0, p1}, Lanetwork/channel/entity/BodyHandlerEntry;-><init>(Lanetwork/channel/IBodyHandler;)V

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->j:Lanet/channel/request/BodyEntry;

    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .registers 2

    .line 203
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->i:Ljava/lang/String;

    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 2

    .line 243
    iput p1, p0, Lanetwork/channel/entity/RequestImpl;->k:I

    return-void
.end method

.method public setCookieEnabled(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_6

    const-string/jumbo p1, "true"

    goto :goto_8

    :cond_6
    const-string p1, "false"

    :goto_8
    const-string v0, "EnableCookie"

    .line 285
    invoke-virtual {p0, v0, p1}, Lanetwork/channel/entity/RequestImpl;->setExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExtProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 289
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 292
    :cond_7
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->o:Ljava/util/Map;

    if-nez v0, :cond_12

    .line 293
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->o:Ljava/util/Map;

    .line 295
    :cond_12
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->o:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFollowRedirects(Z)V
    .registers 2

    .line 111
    iput-boolean p1, p0, Lanetwork/channel/entity/RequestImpl;->d:Z

    return-void
.end method

.method public setHeader(Lanetwork/channel/Header;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 143
    :cond_3
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    if-nez v0, :cond_e

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    :cond_e
    const/4 v0, 0x0

    .line 147
    iget-object v1, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_15
    if-ge v0, v1, :cond_36

    .line 149
    iget-object v2, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lanetwork/channel/Header;

    invoke-interface {v2}, Lanetwork/channel/Header;->getName()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-interface {p1}, Lanetwork/channel/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 151
    iget-object v1, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 155
    :cond_36
    :goto_36
    iget-object v1, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 156
    iget-object v0, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    return-void
.end method

.method public setHeaders(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanetwork/channel/Header;",
            ">;)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->e:Ljava/util/List;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->f:Ljava/lang/String;

    return-void
.end method

.method public setParams(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanetwork/channel/Param;",
            ">;)V"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->g:Ljava/util/List;

    return-void
.end method

.method public setReadTimeout(I)V
    .registers 2

    .line 247
    iput p1, p0, Lanetwork/channel/entity/RequestImpl;->l:I

    return-void
.end method

.method public setRetryTime(I)V
    .registers 2

    .line 195
    iput p1, p0, Lanetwork/channel/entity/RequestImpl;->h:I

    return-void
.end method

.method public setSeqNo(Ljava/lang/String;)V
    .registers 2

    .line 267
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->n:Ljava/lang/String;

    return-void
.end method

.method public setUrL(Ljava/net/URL;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 97
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->b:Ljava/net/URL;

    .line 98
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->c:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/net/URI;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    iput-object p1, p0, Lanetwork/channel/entity/RequestImpl;->a:Ljava/net/URI;

    return-void
.end method
