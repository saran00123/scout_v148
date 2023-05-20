.class public abstract Lcom/huawei/hms/framework/network/grs/f/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected a:Lcom/huawei/hms/framework/network/grs/local/model/a;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/framework/network/grs/local/model/b;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Z

.field protected e:Z

.field protected f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/f/a;->c:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/framework/network/grs/f/a;->d:Z

    iput-boolean v0, p0, Lcom/huawei/hms/framework/network/grs/f/a;->e:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hms/framework/network/grs/f/a;->f:Ljava/util/Set;

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .registers 12

    const-string v0, "AbstractLocalManager"

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, -0x1

    :try_start_7
    invoke-static {}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getInstance()Lcom/huawei/hms/framework/network/grs/GrsApp;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5f

    array-length v3, v1

    if-lez v3, :cond_5f

    array-length v3, v1
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1b} :catch_5a

    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    :goto_1e
    if-ge v2, v3, :cond_58

    :try_start_20
    aget-object v6, v1, v2

    const-string v7, "^grs_sdk_global_route_config_[a-zA-Z]+\\.json$"

    invoke-static {v7, v6}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_53

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getInstance()Lcom/huawei/hms/framework/network/grs/GrsApp;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/huawei/hms/framework/network/grs/h/c;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/huawei/hms/framework/network/grs/f/a;->g(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_53

    const-string v6, "load SDK_CONFIG_FILE sucess."

    invoke-static {v0, v6}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_52} :catch_56

    move v5, v4

    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :catch_56
    move v2, v5

    goto :goto_5a

    :cond_58
    move v2, v5

    goto :goto_5f

    :catch_5a
    :goto_5a
    const-string p1, "list assets files fail,please check if according to our standard config json files."

    invoke-static {v0, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5f
    :goto_5f
    return v2
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)I
    .registers 3

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/network/grs/h/c;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/huawei/hms/framework/network/grs/f/a;->f(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_13

    const-string p1, "AbstractLocalManager"

    const-string p2, "load APP_CONFIG_FILE success."

    invoke-static {p1, p2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    const/4 p1, -0x1

    :goto_14
    return p1
.end method

.method private a(Ljava/util/List;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/framework/network/grs/local/model/b;",
            ">;",
            "Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    const-string v1, "no_route_country"

    const-string v2, "no-country"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/framework/network/grs/local/model/b;

    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/grs/local/model/b;->a()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getIssueCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getIssueCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/grs/local/model/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/grs/local/model/b;->a()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getRegCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getRegCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/grs/local/model/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/grs/local/model/b;->a()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getSerCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getSerCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/grs/local/model/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_69
    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/grs/local/model/b;->a()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "AbstractLocalManager"

    const-string v3, "get countryGroupID from geoIp"

    invoke-static {v2, v3}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/grs/local/model/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_82
    return-object v0
.end method

.method private f(Ljava/lang/String;)I
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, -0x1

    return p1

    :cond_8
    iget-boolean v0, p0, Lcom/huawei/hms/framework/network/grs/f/a;->e:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0, p1}, Lcom/huawei/hms/framework/network/grs/f/a;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    return v0

    :cond_13
    invoke-virtual {p0, p1}, Lcom/huawei/hms/framework/network/grs/f/a;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    return v0

    :cond_1a
    invoke-virtual {p0, p1}, Lcom/huawei/hms/framework/network/grs/f/a;->e(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private g(Ljava/lang/String;)I
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, -0x1

    return p1

    :cond_8
    iget-boolean v0, p0, Lcom/huawei/hms/framework/network/grs/f/a;->e:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/f/a;->b:Ljava/util/List;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_16
    invoke-virtual {p0, p1}, Lcom/huawei/hms/framework/network/grs/f/a;->c(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1d

    return v0

    :cond_1d
    invoke-virtual {p0, p1}, Lcom/huawei/hms/framework/network/grs/f/a;->d(Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)I
.end method

.method a(Ljava/lang/String;Landroid/content/Context;Z)I
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getInstance()Lcom/huawei/hms/framework/network/grs/GrsApp;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getBrand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/framework/network/grs/f/a;->a(Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_23

    if-eqz p3, :cond_23

    const/4 p1, -0x1

    return p1

    :cond_23
    invoke-direct {p0, p2}, Lcom/huawei/hms/framework/network/grs/f/a;->a(Landroid/content/Context;)I

    const/4 p1, 0x0

    return p1
.end method

.method public a()Lcom/huawei/hms/framework/network/grs/local/model/a;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/f/a;->a:Lcom/huawei/hms/framework/network/grs/local/model/a;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/e/a;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/huawei/hms/framework/network/grs/f/a;->a(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/e/a;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p4, p1, p2

    const-string p2, "AbstractLocalManager"

    const-string p3, "addresses not found by routeby in local config{%s}"

    invoke-static {p2, p3, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1b
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public a(Lorg/json/JSONArray;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/hms/framework/network/grs/local/model/b;",
            ">;"
        }
    .end annotation

    const-string v0, "countries"

    const-string v1, "countriesOrAreas"

    const-string v2, "AbstractLocalManager"

    if-eqz p1, :cond_9d

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_9d

    :cond_10
    :try_start_10
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    move v6, v5

    :goto_19
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_90

    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v8, Lcom/huawei/hms/framework/network/grs/local/model/b;

    invoke-direct {v8}, Lcom/huawei/hms/framework/network/grs/local/model/b;-><init>()V

    const-string v9, "id"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/huawei/hms/framework/network/grs/local/model/b;->b(Ljava/lang/String;)V

    const-string v9, "name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/huawei/hms/framework/network/grs/local/model/b;->c(Ljava/lang/String;)V

    const-string v9, "description"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/huawei/hms/framework/network/grs/local/model/b;->a(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_50

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    :goto_4e
    move-object v9, v7

    goto :goto_60

    :cond_50
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5b

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    goto :goto_4e

    :cond_5b
    const-string v7, "current country or area group has not config countries or areas."

    invoke-static {v2, v7}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_60
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v4}, Ljava/util/HashSet;-><init>(I)V

    if-eqz v9, :cond_8a

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-nez v10, :cond_6e

    goto :goto_8a

    :cond_6e
    move v10, v5

    :goto_6f
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_81

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_6f

    :cond_81
    invoke-virtual {v8, v7}, Lcom/huawei/hms/framework/network/grs/local/model/b;->a(Ljava/util/Set;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_8a
    :goto_8a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_8f} :catch_91

    return-object p1

    :cond_90
    return-object v3

    :catch_91
    move-exception p1

    const-string v0, "parse countrygroup failed maybe json style is wrong."

    invoke-static {v2, v0, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_9d
    :goto_9d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public a(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/e/a;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/huawei/hms/framework/network/grs/e/a;",
            "Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/huawei/hms/framework/network/grs/f/a;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/f/a;->a:Lcom/huawei/hms/framework/network/grs/local/model/a;

    const-string v2, "AbstractLocalManager"

    if-nez v0, :cond_12

    const-string p1, "application data is null."

    invoke-static {v2, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :cond_12
    invoke-virtual {v0, p4}, Lcom/huawei/hms/framework/network/grs/local/model/a;->a(Ljava/lang/String;)Lcom/huawei/hms/framework/network/grs/local/model/c;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_24

    new-array p1, v4, [Ljava/lang/Object;

    aput-object p4, p1, v3

    const-string p2, "service not found in local config{%s}"

    invoke-static {v2, p2, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_24
    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/local/model/c;->b()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p2, p4, p3, p5}, Lcom/huawei/hms/framework/network/grs/f/e;->b(Landroid/content/Context;Lcom/huawei/hms/framework/network/grs/e/a;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Z)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3c

    new-array p1, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/local/model/c;->b()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "country not found by routeby in local config{%s}"

    invoke-static {v2, p2, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_3c
    invoke-virtual {v0}, Lcom/huawei/hms/framework/network/grs/local/model/c;->a()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4d

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-eqz p4, :cond_4d

    invoke-direct {p0, p2, p3, p1}, Lcom/huawei/hms/framework/network/grs/f/a;->a(Ljava/util/List;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    goto :goto_4f

    :cond_4d
    iget-object p2, p0, Lcom/huawei/hms/framework/network/grs/f/a;->c:Ljava/util/Map;

    :goto_4f
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/framework/network/grs/local/model/c;->a(Ljava/lang/String;)Lcom/huawei/hms/framework/network/grs/local/model/d;

    move-result-object p1

    if-nez p1, :cond_5c

    return-object v1

    :cond_5c
    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/local/model/d;->a()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;)V
    .registers 7

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/f/a;->c:Ljava/util/Map;

    const-string v1, "no_route_country"

    const-string v2, "no-country"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/f/a;->b:Ljava/util/List;

    if-eqz v0, :cond_7b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_7b

    :cond_14
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/f/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/framework/network/grs/local/model/b;

    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/grs/local/model/b;->a()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getIssueCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/f/a;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getIssueCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/grs/local/model/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/grs/local/model/b;->a()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getRegCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/f/a;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getRegCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/grs/local/model/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/grs/local/model/b;->a()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getSerCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/f/a;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getSerCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/huawei/hms/framework/network/grs/local/model/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    :cond_78
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/f/a;->b:Ljava/util/List;

    :cond_7b
    :goto_7b
    return-void
.end method

.method public abstract b(Ljava/lang/String;)I
.end method

.method public b()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/f/a;->f:Ljava/util/Set;

    return-object v0
.end method

.method protected b(Lorg/json/JSONArray;)V
    .registers 15

    if-eqz p1, :cond_e1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_e1

    :cond_a
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_e1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/huawei/hms/framework/network/grs/local/model/c;

    invoke-direct {v3}, Lcom/huawei/hms/framework/network/grs/local/model/c;-><init>()V

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/huawei/hms/framework/network/grs/local/model/c;->b(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/huawei/hms/framework/network/grs/f/a;->f:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_dd

    iget-object v5, p0, Lcom/huawei/hms/framework/network/grs/f/a;->f:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v5, p0, Lcom/huawei/hms/framework/network/grs/f/a;->e:Z

    if-eqz v5, :cond_dd

    const-string v5, "routeBy"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/huawei/hms/framework/network/grs/local/model/c;->c(Ljava/lang/String;)V

    const-string v5, "servings"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v6, v0

    :goto_45
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    const-string v8, "AbstractLocalManager"

    if-ge v6, v7, :cond_aa

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    new-instance v9, Lcom/huawei/hms/framework/network/grs/local/model/d;

    invoke-direct {v9}, Lcom/huawei/hms/framework/network/grs/local/model/d;-><init>()V

    const-string v10, "countryOrAreaGroup"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_65

    :goto_60
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_75

    :cond_65
    const-string v10, "countryGroup"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6e

    goto :goto_60

    :cond_6e
    const-string v10, "maybe this service routeBy is unconditional."

    invoke-static {v8, v10}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "no-country"

    :goto_75
    invoke-virtual {v9, v8}, Lcom/huawei/hms/framework/network/grs/local/model/d;->a(Ljava/lang/String;)V

    const-string v8, "addresses"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    const/16 v10, 0x10

    invoke-direct {v8, v10}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    :goto_89
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    :cond_9d
    invoke-virtual {v9, v8}, Lcom/huawei/hms/framework/network/grs/local/model/d;->a(Ljava/util/Map;)V

    invoke-virtual {v9}, Lcom/huawei/hms/framework/network/grs/local/model/d;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v9}, Lcom/huawei/hms/framework/network/grs/local/model/c;->a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/local/model/d;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    :cond_aa
    const/4 v5, 0x0

    const-string v6, "countryOrAreaGroups"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bc

    :goto_b3
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huawei/hms/framework/network/grs/f/a;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    goto :goto_ca

    :cond_bc
    const-string v6, "countryGroups"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c5

    goto :goto_b3

    :cond_c5
    const-string v2, "service use default countryOrAreaGroup"

    invoke-static {v8, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_ca
    invoke-virtual {v3, v5}, Lcom/huawei/hms/framework/network/grs/local/model/c;->a(Ljava/util/List;)V

    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/f/a;->a:Lcom/huawei/hms/framework/network/grs/local/model/a;

    if-nez v2, :cond_d8

    new-instance v2, Lcom/huawei/hms/framework/network/grs/local/model/a;

    invoke-direct {v2}, Lcom/huawei/hms/framework/network/grs/local/model/a;-><init>()V

    iput-object v2, p0, Lcom/huawei/hms/framework/network/grs/f/a;->a:Lcom/huawei/hms/framework/network/grs/local/model/a;

    :cond_d8
    iget-object v2, p0, Lcom/huawei/hms/framework/network/grs/f/a;->a:Lcom/huawei/hms/framework/network/grs/local/model/a;

    invoke-virtual {v2, v4, v3}, Lcom/huawei/hms/framework/network/grs/local/model/a;->a(Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/local/model/c;)V

    :cond_dd
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    :cond_e1
    :goto_e1
    return-void
.end method

.method public c(Ljava/lang/String;)I
    .registers 8

    const-string v0, "countryGroups"

    const-string v1, "countryOrAreaGroups"

    const-string v2, "AbstractLocalManager"

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/huawei/hms/framework/network/grs/f/a;->b:Ljava/util/List;

    const/4 v3, -0x1

    :try_start_10
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_31

    :cond_21
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_31

    :cond_2c
    const-string v0, "maybe local config json is wrong because the default countryOrAreaGroups isn\'t config."

    invoke-static {v2, v0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_31
    if-nez p1, :cond_34

    return v3

    :cond_34
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/f/a;->b:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/framework/network/grs/f/a;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3d
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_3d} :catch_3f

    const/4 p1, 0x0

    return p1

    :catch_3f
    move-exception p1

    const-string v0, "parse countrygroup failed maybe json style is wrong."

    invoke-static {v2, v0, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/huawei/hms/framework/network/grs/f/a;->d:Z

    return v0
.end method

.method public d(Ljava/lang/String;)I
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "services"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/huawei/hms/framework/network/grs/f/a;->b(Lorg/json/JSONArray;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_e} :catch_10

    const/4 p1, 0x0

    return p1

    :catch_10
    move-exception p1

    const-string v0, "AbstractLocalManager"

    const-string v1, "parse 2.0 services failed maybe because of json style.please check!"

    invoke-static {v0, v1, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    return p1
.end method

.method public abstract e(Ljava/lang/String;)I
.end method
