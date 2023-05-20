.class public Lanet/channel/util/HttpUrl;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private host:Ljava/lang/String;

.field private volatile isSchemeLocked:Z

.field private path:Ljava/lang/String;

.field private port:I

.field private scheme:Ljava/lang/String;

.field private simpleUrl:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lanet/channel/util/HttpUrl;->isSchemeLocked:Z

    return-void
.end method

.method public constructor <init>(Lanet/channel/util/HttpUrl;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lanet/channel/util/HttpUrl;->isSchemeLocked:Z

    .line 26
    iget-object v0, p1, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lanet/channel/util/HttpUrl;->host:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/util/HttpUrl;->host:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lanet/channel/util/HttpUrl;->path:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/util/HttpUrl;->path:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lanet/channel/util/HttpUrl;->simpleUrl:Ljava/lang/String;

    iput-object v0, p0, Lanet/channel/util/HttpUrl;->simpleUrl:Ljava/lang/String;

    .line 31
    iget-boolean p1, p1, Lanet/channel/util/HttpUrl;->isSchemeLocked:Z

    iput-boolean p1, p0, Lanet/channel/util/HttpUrl;->isSchemeLocked:Z

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;
    .registers 16

    .line 35
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 39
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 40
    new-instance v0, Lanet/channel/util/HttpUrl;

    invoke-direct {v0}, Lanet/channel/util/HttpUrl;-><init>()V

    .line 41
    iput-object p0, v0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    const-string v2, "//"

    .line 44
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v8, "http"

    const-string v9, "https"

    const/4 v10, 0x0

    if-eqz v2, :cond_24

    .line 45
    iput-object v1, v0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    move v2, v10

    goto :goto_45

    :cond_24
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v4, 0x0

    const-string v5, "https:"

    move-object v2, p0

    .line 46
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 47
    iput-object v9, v0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    const/4 v2, 0x6

    goto :goto_45

    :cond_35
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v4, 0x0

    const-string v5, "http:"

    move-object v2, p0

    .line 49
    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_14f

    .line 50
    iput-object v8, v0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    const/4 v2, 0x5

    .line 56
    :goto_45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v2, 0x2

    move v4, v2

    move v5, v10

    :goto_4d
    const/16 v6, 0x3a

    const/16 v7, 0x23

    const/16 v11, 0x3f

    const/16 v12, 0x2f

    if-ge v4, v3, :cond_7b

    .line 63
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5b

    if-ne v13, v14, :cond_61

    const/4 v5, 0x1

    goto :goto_72

    :cond_61
    const/16 v14, 0x5d

    if-ne v13, v14, :cond_67

    move v5, v10

    goto :goto_72

    :cond_67
    if-eq v13, v12, :cond_75

    if-eq v13, v11, :cond_75

    if-eq v13, v7, :cond_75

    if-ne v13, v6, :cond_72

    if-nez v5, :cond_72

    goto :goto_75

    :cond_72
    :goto_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 69
    :cond_75
    :goto_75
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lanet/channel/util/HttpUrl;->host:Ljava/lang/String;

    :cond_7b
    if-ne v4, v3, :cond_83

    .line 75
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lanet/channel/util/HttpUrl;->host:Ljava/lang/String;

    :cond_83
    move v2, v10

    :goto_84
    if-ge v4, v3, :cond_9d

    .line 81
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_91

    if-nez v2, :cond_91

    add-int/lit8 v2, v4, 0x1

    goto :goto_98

    :cond_91
    if-eq v5, v12, :cond_9b

    if-eq v5, v7, :cond_9b

    if-ne v5, v11, :cond_98

    goto :goto_9b

    :cond_98
    :goto_98
    add-int/lit8 v4, v4, 0x1

    goto :goto_84

    :cond_9b
    :goto_9b
    move v5, v4

    goto :goto_9e

    :cond_9d
    move v5, v3

    :goto_9e
    if-eqz v2, :cond_b6

    .line 93
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 95
    :try_start_a4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lanet/channel/util/HttpUrl;->port:I

    .line 96
    iget v2, v0, Lanet/channel/util/HttpUrl;->port:I

    if-lez v2, :cond_b5

    iget v2, v0, Lanet/channel/util/HttpUrl;->port:I
    :try_end_b0
    .catch Ljava/lang/NumberFormatException; {:try_start_a4 .. :try_end_b0} :catch_b5

    const v5, 0xffff

    if-le v2, v5, :cond_b6

    :catch_b5
    :cond_b5
    return-object v1

    :cond_b6
    :goto_b6
    if-ge v4, v3, :cond_ce

    .line 107
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v12, :cond_c2

    if-nez v10, :cond_c2

    move v10, v4

    goto :goto_c7

    :cond_c2
    if-eq v2, v11, :cond_ca

    if-ne v2, v7, :cond_c7

    goto :goto_ca

    :cond_c7
    :goto_c7
    add-int/lit8 v4, v4, 0x1

    goto :goto_b6

    :cond_ca
    :goto_ca
    if-eqz v10, :cond_ce

    move v2, v4

    goto :goto_cf

    :cond_ce
    move v2, v3

    :goto_cf
    if-eqz v10, :cond_d8

    .line 121
    invoke-virtual {p0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lanet/channel/util/HttpUrl;->path:Ljava/lang/String;

    goto :goto_da

    .line 123
    :cond_d8
    iput-object v1, v0, Lanet/channel/util/HttpUrl;->path:Ljava/lang/String;

    .line 126
    :goto_da
    iget-object v2, v0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    if-nez v2, :cond_fa

    .line 127
    iget v2, v0, Lanet/channel/util/HttpUrl;->port:I

    const/16 v5, 0x50

    if-ne v2, v5, :cond_e7

    .line 128
    iput-object v8, v0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    goto :goto_fa

    :cond_e7
    const/16 v5, 0x1bb

    if-ne v2, v5, :cond_ee

    .line 130
    iput-object v9, v0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    goto :goto_fa

    .line 132
    :cond_ee
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v2

    iget-object v5, v0, Lanet/channel/util/HttpUrl;->host:Ljava/lang/String;

    invoke-interface {v2, v5, v1}, Lanet/channel/strategy/IStrategyInstance;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    .line 137
    :cond_fa
    :goto_fa
    iget-object v2, v0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14f

    iget-object v2, v0, Lanet/channel/util/HttpUrl;->host:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10b

    goto :goto_14f

    .line 142
    :cond_10b
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "://"

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lanet/channel/util/HttpUrl;->host:Ljava/lang/String;

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Lanet/channel/util/HttpUrl;->containsNonDefaultPort()Z

    move-result v2

    if-eqz v2, :cond_12c

    const-string v2, ":"

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lanet/channel/util/HttpUrl;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    :cond_12c
    iget-object v2, v0, Lanet/channel/util/HttpUrl;->path:Ljava/lang/String;

    if-eqz v2, :cond_134

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13b

    :cond_134
    if-eq v4, v3, :cond_13b

    const-string v2, "/"

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    :cond_13b
    :goto_13b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lanet/channel/util/HttpUrl;->simpleUrl:Ljava/lang/String;

    .line 158
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    return-object v0

    :cond_14f
    :goto_14f
    return-object v1
.end method


# virtual methods
.method public containsNonDefaultPort()Z
    .registers 3

    .line 197
    iget v0, p0, Lanet/channel/util/HttpUrl;->port:I

    if-eqz v0, :cond_26

    iget-object v0, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lanet/channel/util/HttpUrl;->port:I

    const/16 v1, 0x50

    if-ne v0, v1, :cond_24

    :cond_14
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p0, Lanet/channel/util/HttpUrl;->port:I

    const/16 v1, 0x1bb

    if-eq v0, v1, :cond_26

    :cond_24
    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    return v0
.end method

.method public downgradeSchemeAndLock()V
    .registers 4

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lanet/channel/util/HttpUrl;->isSchemeLocked:Z

    .line 202
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 203
    iput-object v1, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    iget-object v1, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-static {v0, v2, v1}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    :cond_25
    return-void
.end method

.method public getPort()I
    .registers 2

    .line 177
    iget v0, p0, Lanet/channel/util/HttpUrl;->port:I

    return v0
.end method

.method public host()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->host:Ljava/lang/String;

    return-object v0
.end method

.method public isSchemeLocked()Z
    .registers 2

    .line 209
    iget-boolean v0, p0, Lanet/channel/util/HttpUrl;->isSchemeLocked:Z

    return v0
.end method

.method public lockScheme()V
    .registers 2

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lanet/channel/util/HttpUrl;->isSchemeLocked:Z

    return-void
.end method

.method public path()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->path:Ljava/lang/String;

    return-object v0
.end method

.method public replaceIpAndPort(Ljava/lang/String;I)V
    .registers 8

    if-eqz p1, :cond_77

    .line 228
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 229
    :goto_c
    iget-object v1, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 230
    iget-object v1, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1f

    goto :goto_22

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 235
    :cond_22
    :goto_22
    invoke-static {p1}, Lanet/channel/strategy/utils/c;->b(Ljava/lang/String;)Z

    move-result v1

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 238
    iget-object v3, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_47

    const/16 v3, 0x5b

    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    :cond_47
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_51

    const/16 p1, 0x5d

    .line 244
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_51
    const/16 p1, 0x3a

    if-eqz p2, :cond_5c

    .line 247
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_68

    .line 248
    :cond_5c
    iget p2, p0, Lanet/channel/util/HttpUrl;->port:I

    if-eqz p2, :cond_68

    .line 249
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p1, p0, Lanet/channel/util/HttpUrl;->port:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    :cond_68
    :goto_68
    iget-object p1, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    :cond_77
    return-void
.end method

.method public scheme()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public setScheme(Ljava/lang/String;)V
    .registers 6

    .line 217
    iget-boolean v0, p0, Lanet/channel/util/HttpUrl;->isSchemeLocked:Z

    if-nez v0, :cond_34

    .line 218
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 219
    iput-object p1, p0, Lanet/channel/util/HttpUrl;->scheme:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-static {p1, v2, v0}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->simpleUrl:Ljava/lang/String;

    iget-object v3, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lanet/channel/util/StringUtils;->concatString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/util/HttpUrl;->simpleUrl:Ljava/lang/String;

    :cond_34
    return-void
.end method

.method public simpleUrlString()Ljava/lang/String;
    .registers 2

    .line 185
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->simpleUrl:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 258
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toURL()Ljava/net/URL;
    .registers 3

    .line 190
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public urlString()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lanet/channel/util/HttpUrl;->url:Ljava/lang/String;

    return-object v0
.end method
