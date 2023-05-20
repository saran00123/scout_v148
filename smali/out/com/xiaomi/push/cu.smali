.class public Lcom/xiaomi/push/cu;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/cu$a;,
        Lcom/xiaomi/push/cu$b;
    }
.end annotation


# static fields
.field protected static a:Landroid/content/Context;

.field private static a:Lcom/xiaomi/push/cu$a;

.field private static a:Lcom/xiaomi/push/cu;

.field protected static a:Z

.field protected static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/push/cq;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;


# instance fields
.field private a:J

.field private a:Lcom/xiaomi/push/ct;

.field protected a:Lcom/xiaomi/push/cu$b;

.field private a:Ljava/lang/String;

.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/push/cr;",
            ">;"
        }
    .end annotation
.end field

.field private final b:J

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/push/cu;->b:Ljava/util/Map;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/push/cu;->a:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/push/ct;Lcom/xiaomi/push/cu$b;Ljava/lang/String;)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/push/cu;-><init>(Landroid/content/Context;Lcom/xiaomi/push/ct;Lcom/xiaomi/push/cu$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/xiaomi/push/ct;Lcom/xiaomi/push/cu$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    const-string v0, "0"

    iput-object v0, p0, Lcom/xiaomi/push/cu;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/cu;->a:J

    const-wide/16 v2, 0xf

    iput-wide v2, p0, Lcom/xiaomi/push/cu;->b:J

    iput-wide v0, p0, Lcom/xiaomi/push/cu;->c:J

    const-string v0, "isp_prov_city_country_ip"

    iput-object v0, p0, Lcom/xiaomi/push/cu;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/push/cu;->a:Lcom/xiaomi/push/cu$b;

    if-nez p2, :cond_25

    new-instance p2, Lcom/xiaomi/push/cv;

    invoke-direct {p2, p0}, Lcom/xiaomi/push/cv;-><init>(Lcom/xiaomi/push/cu;)V

    :cond_25
    iput-object p2, p0, Lcom/xiaomi/push/cu;->a:Lcom/xiaomi/push/ct;

    iput-object p4, p0, Lcom/xiaomi/push/cu;->a:Ljava/lang/String;

    if-eqz p5, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    :goto_30
    sput-object p5, Lcom/xiaomi/push/cu;->c:Ljava/lang/String;

    if-eqz p6, :cond_35

    goto :goto_39

    :cond_35
    invoke-direct {p0}, Lcom/xiaomi/push/cu;->f()Ljava/lang/String;

    move-result-object p6

    :goto_39
    sput-object p6, Lcom/xiaomi/push/cu;->d:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Lcom/xiaomi/push/cu;
    .registers 3

    const-class v0, Lcom/xiaomi/push/cu;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/xiaomi/push/cu;->a:Lcom/xiaomi/push/cu;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/xiaomi/push/cu;->a:Lcom/xiaomi/push/cu;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    monitor-exit v0

    return-object v1

    :cond_b
    :try_start_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "the host manager is not initialized yet."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static a()Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/xiaomi/push/cu;->a:Landroid/content/Context;

    const-string v1, "unknown"

    if-nez v0, :cond_7

    return-object v1

    :cond_7
    :try_start_7
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_12

    return-object v1

    :cond_12
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_19

    return-object v1

    :cond_19
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    const-string v0, "WIFI-UNKNOWN"

    return-object v0

    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_3f} :catch_40

    return-object v0

    :catch_40
    return-object v1
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    :goto_b
    array-length v3, v1

    if-ge v2, v3, :cond_26

    aget-byte v3, v1, v2

    and-int/lit16 v4, v3, 0xf0

    const/16 v5, 0xf0

    if-eq v4, v5, :cond_23

    shr-int/lit8 v5, v3, 0x4

    add-int/2addr v5, v0

    and-int/lit8 v5, v5, 0xf

    int-to-byte v5, v5

    and-int/lit8 v3, v3, 0xf

    xor-int/2addr v3, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_26
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_2b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_2b} :catch_2c

    return-object v0

    :catch_2c
    return-object p0
.end method

.method private a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/push/cq;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/cu;->d()V

    iget-object v3, v1, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    monitor-enter v3

    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/cu;->a()Z

    iget-object v0, v1, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_262

    sget-object v4, Lcom/xiaomi/push/cu;->b:Ljava/util/Map;

    monitor-enter v4

    :try_start_31
    sget-object v0, Lcom/xiaomi/push/cu;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    array-length v3, v0

    const/4 v6, 0x0

    :goto_3d
    if-ge v6, v3, :cond_53

    aget-object v7, v0, v6

    check-cast v7, Lcom/xiaomi/push/cq;

    invoke-virtual {v7}, Lcom/xiaomi/push/cq;->b()Z

    move-result v8

    if-nez v8, :cond_50

    sget-object v8, Lcom/xiaomi/push/cu;->b:Ljava/util/Map;

    iget-object v7, v7, Lcom/xiaomi/push/cq;->b:Ljava/lang/String;

    invoke-interface {v8, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    :cond_53
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_31 .. :try_end_54} :catchall_25f

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/cu;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_65

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/cu;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_65
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_6f
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_7c

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    :cond_7c
    :try_start_7c
    sget-object v0, Lcom/xiaomi/push/cu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/bi;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_87

    const-string v0, "wifi"

    goto :goto_89

    :cond_87
    const-string v0, "wap"

    :goto_89
    iget-object v4, v1, Lcom/xiaomi/push/cu;->a:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v1, v2, v0, v4, v6}, Lcom/xiaomi/push/cu;->a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_240

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    const-string v4, "OK"

    const-string v7, "S"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_240

    const-string v4, "R"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "province"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "city"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "isp"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ip"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "country"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get bucket: net="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", hosts="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_f5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_1a0

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    if-nez v15, :cond_11f

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "no bucket found for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    move-object/from16 v17, v0

    goto/16 :goto_19a

    :cond_11f
    new-instance v5, Lcom/xiaomi/push/cq;

    invoke-direct {v5, v12}, Lcom/xiaomi/push/cq;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    :goto_125
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v12, v13, :cond_14d

    invoke-virtual {v15, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_146

    new-instance v14, Lcom/xiaomi/push/cz;

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v16

    move-object/from16 v17, v0

    sub-int v0, v16, v12

    invoke-direct {v14, v13, v0}, Lcom/xiaomi/push/cz;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v14}, Lcom/xiaomi/push/cq;->a(Lcom/xiaomi/push/cz;)V

    goto :goto_148

    :cond_146
    move-object/from16 v17, v0

    :goto_148
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v17

    goto :goto_125

    :cond_14d
    move-object/from16 v17, v0

    invoke-virtual {v3, v11, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-object v10, v5, Lcom/xiaomi/push/cq;->g:Ljava/lang/String;

    iput-object v6, v5, Lcom/xiaomi/push/cq;->c:Ljava/lang/String;

    iput-object v8, v5, Lcom/xiaomi/push/cq;->e:Ljava/lang/String;

    iput-object v9, v5, Lcom/xiaomi/push/cq;->f:Ljava/lang/String;

    iput-object v7, v5, Lcom/xiaomi/push/cq;->d:Ljava/lang/String;

    const-string v0, "stat-percent"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16d

    const-string v0, "stat-percent"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lcom/xiaomi/push/cq;->a(D)V

    :cond_16d
    const-string v0, "stat-domain"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17e

    const-string v0, "stat-domain"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/xiaomi/push/cq;->b(Ljava/lang/String;)V

    :cond_17e
    const-string v0, "ttl"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_193

    const-string v0, "ttl"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v12, v0

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-virtual {v5, v12, v13}, Lcom/xiaomi/push/cq;->a(J)V

    :cond_193
    invoke-virtual {v5}, Lcom/xiaomi/push/cq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/push/cu;->a(Ljava/lang/String;)V

    :goto_19a
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v17

    goto/16 :goto_f5

    :cond_1a0
    const-string v0, "reserved"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_240

    const-wide/32 v5, 0x240c8400

    const-string v7, "reserved-ttl"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1be

    const-string v5, "reserved-ttl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long v5, v4, v6

    :cond_1be
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_240

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    if-nez v8, :cond_1e9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no bucket found for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_1c2

    :cond_1e9
    new-instance v9, Lcom/xiaomi/push/cq;

    invoke-direct {v9, v7}, Lcom/xiaomi/push/cq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5, v6}, Lcom/xiaomi/push/cq;->a(J)V

    const/4 v10, 0x0

    :goto_1f2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_212

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_20f

    new-instance v12, Lcom/xiaomi/push/cz;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    sub-int/2addr v13, v10

    invoke-direct {v12, v11, v13}, Lcom/xiaomi/push/cz;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v9, v12}, Lcom/xiaomi/push/cq;->a(Lcom/xiaomi/push/cz;)V

    :cond_20f
    add-int/lit8 v10, v10, 0x1

    goto :goto_1f2

    :cond_212
    sget-object v8, Lcom/xiaomi/push/cu;->b:Ljava/util/Map;

    monitor-enter v8
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_215} :catch_227

    :try_start_215
    iget-object v10, v1, Lcom/xiaomi/push/cu;->a:Lcom/xiaomi/push/ct;

    invoke-interface {v10, v7}, Lcom/xiaomi/push/ct;->a(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_222

    sget-object v10, Lcom/xiaomi/push/cu;->b:Ljava/util/Map;

    invoke-interface {v10, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_222
    monitor-exit v8

    goto :goto_1c2

    :catchall_224
    move-exception v0

    monitor-exit v8
    :try_end_226
    .catchall {:try_start_215 .. :try_end_226} :catchall_224

    :try_start_226
    throw v0
    :try_end_227
    .catch Ljava/lang/Exception; {:try_start_226 .. :try_end_227} :catch_227

    :catch_227
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to get bucket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_240
    const/4 v0, 0x0

    :goto_241
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_25b

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/push/cq;

    if-eqz v4, :cond_258

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Lcom/xiaomi/push/cu;->a(Ljava/lang/String;Lcom/xiaomi/push/cq;)V

    :cond_258
    add-int/lit8 v0, v0, 0x1

    goto :goto_241

    :cond_25b
    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/push/cu;->c()V

    return-object v3

    :catchall_25f
    move-exception v0

    :try_start_260
    monitor-exit v4
    :try_end_261
    .catchall {:try_start_260 .. :try_end_261} :catchall_25f

    throw v0

    :catchall_262
    move-exception v0

    :try_start_263
    monitor-exit v3
    :try_end_264
    .catchall {:try_start_263 .. :try_end_264} :catchall_262

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/xiaomi/push/ct;Lcom/xiaomi/push/cu$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    const-class v0, Lcom/xiaomi/push/cu;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/push/cu;->a:Landroid/content/Context;

    sget-object v1, Lcom/xiaomi/push/cu;->a:Landroid/content/Context;

    if-nez v1, :cond_f

    sput-object p0, Lcom/xiaomi/push/cu;->a:Landroid/content/Context;

    :cond_f
    sget-object v1, Lcom/xiaomi/push/cu;->a:Lcom/xiaomi/push/cu;

    if-nez v1, :cond_2e

    sget-object v1, Lcom/xiaomi/push/cu;->a:Lcom/xiaomi/push/cu$a;

    if-nez v1, :cond_26

    new-instance v1, Lcom/xiaomi/push/cu;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/xiaomi/push/cu;-><init>(Landroid/content/Context;Lcom/xiaomi/push/ct;Lcom/xiaomi/push/cu$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/xiaomi/push/cu;->a:Lcom/xiaomi/push/cu;

    goto :goto_2e

    :cond_26
    sget-object p4, Lcom/xiaomi/push/cu;->a:Lcom/xiaomi/push/cu$a;

    invoke-interface {p4, p0, p1, p2, p3}, Lcom/xiaomi/push/cu$a;->a(Landroid/content/Context;Lcom/xiaomi/push/ct;Lcom/xiaomi/push/cu$b;Ljava/lang/String;)Lcom/xiaomi/push/cu;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/push/cu;->a:Lcom/xiaomi/push/cu;
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_30

    :cond_2e
    :goto_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Lcom/xiaomi/push/cu$a;)V
    .registers 2

    const-class v0, Lcom/xiaomi/push/cu;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/xiaomi/push/cu;->a:Lcom/xiaomi/push/cu$a;

    const/4 p0, 0x0

    sput-object p0, Lcom/xiaomi/push/cu;->a:Lcom/xiaomi/push/cu;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/xiaomi/push/cu;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/cq;

    sget-object v1, Lcom/xiaomi/push/cu;->b:Ljava/util/Map;

    monitor-enter v1

    if-nez v0, :cond_21

    :try_start_d
    new-instance v0, Lcom/xiaomi/push/cq;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/cq;-><init>(Ljava/lang/String;)V

    const-wide/32 v2, 0x240c8400

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/push/cq;->a(J)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/cq;->a(Ljava/lang/String;)V

    sget-object p1, Lcom/xiaomi/push/cu;->b:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    :cond_21
    invoke-virtual {v0, p1}, Lcom/xiaomi/push/cq;->a(Ljava/lang/String;)V

    :goto_24
    monitor-exit v1

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_26

    throw p0
.end method

.method private f()Ljava/lang/String;
    .registers 4

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/cu;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/cu;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    :cond_17
    const-string v0, "0"

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xiaomi/push/cq;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/cu;->a(Ljava/lang/String;Z)Lcom/xiaomi/push/cq;

    move-result-object p1

    return-object p1

    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the url is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Z)Lcom/xiaomi/push/cq;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/xiaomi/push/cu;->a:Lcom/xiaomi/push/ct;

    invoke-interface {v0, p1}, Lcom/xiaomi/push/ct;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 p1, 0x0

    return-object p1

    :cond_10
    invoke-virtual {p0, p1}, Lcom/xiaomi/push/cu;->c(Ljava/lang/String;)Lcom/xiaomi/push/cq;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/xiaomi/push/cq;->b()Z

    move-result v1

    if-eqz v1, :cond_1d

    return-object v0

    :cond_1d
    if-eqz p2, :cond_2e

    sget-object p2, Lcom/xiaomi/push/cu;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/push/bi;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2e

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/cu;->e(Ljava/lang/String;)Lcom/xiaomi/push/cq;

    move-result-object p2

    if-eqz p2, :cond_2e

    return-object p2

    :cond_2e
    new-instance p2, Lcom/xiaomi/push/cw;

    invoke-direct {p2, p0, p1, v0}, Lcom/xiaomi/push/cw;-><init>(Lcom/xiaomi/push/cu;Ljava/lang/String;Lcom/xiaomi/push/cq;)V

    return-object p2

    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "the host is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/xiaomi/push/bf;

    const-string v3, "type"

    invoke-direct {v2, v3, p2}, Lcom/xiaomi/push/bf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "wap"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_30

    new-instance p2, Lcom/xiaomi/push/bf;

    sget-object v2, Lcom/xiaomi/push/cu;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/bi;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/push/cu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "conpt"

    invoke-direct {p2, v3, v2}, Lcom/xiaomi/push/bf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30
    if-eqz p4, :cond_3e

    new-instance p2, Lcom/xiaomi/push/bf;

    const-string p4, "reserved"

    const-string v2, "1"

    invoke-direct {p2, p4, v2}, Lcom/xiaomi/push/bf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    new-instance p2, Lcom/xiaomi/push/bf;

    const-string p4, "uuid"

    invoke-direct {p2, p4, p3}, Lcom/xiaomi/push/bf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p2, Lcom/xiaomi/push/bf;

    const-string p3, ","

    invoke-static {p1, p3}, Lcom/xiaomi/push/bo;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "list"

    invoke-direct {p2, p3, p1}, Lcom/xiaomi/push/bf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/xiaomi/push/bf;

    sget-object p2, Lcom/xiaomi/push/cu;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/push/service/a;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaomi/push/service/a;->b()Ljava/lang/String;

    move-result-object p2

    const-string p3, "countrycode"

    invoke-direct {p1, p3, p2}, Lcom/xiaomi/push/bf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/xiaomi/push/cu;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/cu;->c(Ljava/lang/String;)Lcom/xiaomi/push/cq;

    move-result-object p2

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p4, 0x1

    new-array v2, p4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "https://%1$s/gslb/?ver=4.0"

    invoke-static {p3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-nez p2, :cond_bd

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/xiaomi/push/cu;->b:Ljava/util/Map;

    monitor-enter v2

    :try_start_8a
    sget-object p2, Lcom/xiaomi/push/cu;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/push/cq;

    if-eqz p1, :cond_b8

    invoke-virtual {p1, p4}, Lcom/xiaomi/push/cq;->a(Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "https://%1$s/gslb/?ver=4.0"

    new-array v5, p4, [Ljava/lang/Object;

    aput-object p2, v5, v3

    invoke-static {p3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    :cond_b8
    monitor-exit v2

    goto :goto_c1

    :catchall_ba
    move-exception p1

    monitor-exit v2
    :try_end_bc
    .catchall {:try_start_8a .. :try_end_bc} :catchall_ba

    throw p1

    :cond_bd
    invoke-virtual {p2, p3}, Lcom/xiaomi/push/cq;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_c1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move-object p3, p2

    :goto_c7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_118

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_df
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/bh;

    invoke-interface {v0}, Lcom/xiaomi/push/bh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/xiaomi/push/bh;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_df

    :cond_f7
    :try_start_f7
    iget-object p4, p0, Lcom/xiaomi/push/cu;->a:Lcom/xiaomi/push/cu$b;

    if-nez p4, :cond_10b

    sget-object p4, Lcom/xiaomi/push/cu;->a:Landroid/content/Context;

    new-instance v0, Ljava/net/URL;

    invoke-virtual {p3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {p4, v0}, Lcom/xiaomi/push/bi;->a(Landroid/content/Context;Ljava/net/URL;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_10b
    iget-object p4, p0, Lcom/xiaomi/push/cu;->a:Lcom/xiaomi/push/cu$b;

    invoke-virtual {p3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Lcom/xiaomi/push/cu$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_115} :catch_116

    return-object p1

    :catch_116
    move-exception p3

    goto :goto_c7

    :cond_118
    if-nez p3, :cond_11b

    return-object p2

    :cond_11b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "network exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    throw p3
.end method

.method protected a()Lorg/json/JSONObject;
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ver"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/push/cr;

    invoke-virtual {v4}, Lcom/xiaomi/push/cr;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1d

    :cond_31
    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    sget-object v3, Lcom/xiaomi/push/cu;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/push/cq;

    invoke-virtual {v4}, Lcom/xiaomi/push/cq;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_45

    :cond_59
    const-string v3, "reserved"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v0

    return-object v1

    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/cu;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/push/cq;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    if-eqz p2, :cond_3d

    iget-object v0, p0, Lcom/xiaomi/push/cu;->a:Lcom/xiaomi/push/ct;

    invoke-interface {v0, p1}, Lcom/xiaomi/push/ct;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_13
    invoke-virtual {p0}, Lcom/xiaomi/push/cu;->a()Z

    iget-object v1, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/push/cr;

    invoke-virtual {p1, p2}, Lcom/xiaomi/push/cr;->a(Lcom/xiaomi/push/cq;)V

    goto :goto_37

    :cond_2a
    new-instance v1, Lcom/xiaomi/push/cr;

    invoke-direct {v1, p1}, Lcom/xiaomi/push/cr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/xiaomi/push/cr;->a(Lcom/xiaomi/push/cq;)V

    iget-object p2, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_37
    monitor-exit v0

    goto :goto_3c

    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_13 .. :try_end_3b} :catchall_39

    throw p1

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the argument is invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a()Z
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/xiaomi/push/cu;->a:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3f

    sput-boolean v2, Lcom/xiaomi/push/cu;->a:Z

    iget-object v1, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_41

    :try_start_f
    invoke-virtual {p0}, Lcom/xiaomi/push/cu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3c

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/cu;->b(Ljava/lang/String;)V

    const-string v1, "loading the new hosts succeed"

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_21} :catch_23
    .catchall {:try_start_f .. :try_end_21} :catchall_41

    :try_start_21
    monitor-exit v0

    return v2

    :catch_23
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load bucket failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_3c
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_3f
    monitor-exit v0

    return v2

    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_21 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/push/cq;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/cu;->a(Ljava/lang/String;Z)Lcom/xiaomi/push/cq;

    move-result-object p1

    return-object p1
.end method

.method protected b()Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/xiaomi/push/cu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/a;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/service/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "resolver.msg.xiaomi.net"

    if-nez v1, :cond_21

    sget-object v1, Lcom/xiaomi/push/service/module/PushChannelRegion;->China:Lcom/xiaomi/push/service/module/PushChannelRegion;

    invoke-virtual {v1}, Lcom/xiaomi/push/service/module/PushChannelRegion;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const-string v2, "resolver.msg.global.xiaomi.net"

    :cond_21
    :goto_21
    return-object v2
.end method

.method public b()V
    .registers 6

    iget-object v0, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/xiaomi/push/cu;->a()Z

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_17
    if-ltz v2, :cond_33

    iget-object v3, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/push/cr;

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Lcom/xiaomi/push/cr;->a()Lcom/xiaomi/push/cq;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_30
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_58

    invoke-direct {p0, v1}, Lcom/xiaomi/push/cu;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    :goto_39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_57

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_54

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/push/cq;

    invoke-virtual {p0, v3, v4}, Lcom/xiaomi/push/cu;->a(Ljava/lang/String;Lcom/xiaomi/push/cq;)V

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_57
    return-void

    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method protected b(Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ver"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_8e

    const-string p1, "data"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_3f

    move v3, v2

    :goto_20
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3f

    new-instance v4, Lcom/xiaomi/push/cr;

    invoke-direct {v4}, Lcom/xiaomi/push/cr;-><init>()V

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/push/cr;->a(Lorg/json/JSONObject;)Lcom/xiaomi/push/cr;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/xiaomi/push/cr;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_3f
    const-string p1, "reserved"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_8c

    :goto_47
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_8c

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "host"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_96

    if-nez v4, :cond_89

    :try_start_5d
    new-instance v4, Lcom/xiaomi/push/cq;

    invoke-direct {v4, v3}, Lcom/xiaomi/push/cq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/xiaomi/push/cq;->a(Lorg/json/JSONObject;)Lcom/xiaomi/push/cq;

    move-result-object v1

    sget-object v3, Lcom/xiaomi/push/cu;->b:Ljava/util/Map;

    iget-object v4, v1, Lcom/xiaomi/push/cq;->b:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load local reserved host for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/xiaomi/push/cq;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_83
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_83} :catch_84
    .catchall {:try_start_5d .. :try_end_83} :catchall_96

    goto :goto_89

    :catch_84
    :try_start_84
    const-string v1, "parse reserved host fail."

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :cond_89
    :goto_89
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_8c
    monitor-exit v0

    return-void

    :cond_8e
    new-instance p1, Lorg/json/JSONException;

    const-string v1, "Bad version"

    invoke-direct {p1, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_96
    move-exception p1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_84 .. :try_end_98} :catchall_96

    throw p1
.end method

.method protected c(Ljava/lang/String;)Lcom/xiaomi/push/cq;
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0}, Lcom/xiaomi/push/cu;->a()Z

    iget-object v1, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/push/cr;

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_1a

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/xiaomi/push/cr;->a()Lcom/xiaomi/push/cq;

    move-result-object p1

    if-eqz p1, :cond_18

    return-object p1

    :cond_18
    const/4 p1, 0x0

    return-object p1

    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public c()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/push/cr;

    invoke-virtual {v3}, Lcom/xiaomi/push/cr;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_45

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v0
.end method

.method public c()V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/xiaomi/push/cu;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/push/cu;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/cu;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :cond_29
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2c} :catch_2f
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2d

    goto :goto_48

    :catchall_2d
    move-exception v1

    goto :goto_4a

    :catch_2f
    move-exception v1

    :try_start_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persist bucket failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :goto_48
    monitor-exit v0

    return-void

    :goto_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_30 .. :try_end_4b} :catchall_2d

    throw v1
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/push/cq;
    .registers 4

    sget-object v0, Lcom/xiaomi/push/cu;->b:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/xiaomi/push/cu;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/push/cq;

    monitor-exit v0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method protected d()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/xiaomi/push/cu;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/push/cu;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3e

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_25} :catch_46
    .catchall {:try_start_1 .. :try_end_25} :catchall_42

    :try_start_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_38} :catch_3c
    .catchall {:try_start_25 .. :try_end_38} :catchall_64

    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    return-object v0

    :catch_3c
    move-exception v1

    goto :goto_48

    :cond_3e
    invoke-static {v0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    goto :goto_63

    :catchall_42
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_65

    :catch_46
    move-exception v1

    move-object v2, v0

    :goto_48
    :try_start_48
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load host exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_48 .. :try_end_60} :catchall_64

    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    :goto_63
    return-object v0

    :catchall_64
    move-exception v0

    :goto_65
    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public d()V
    .registers 7

    iget-object v0, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/cr;

    invoke-virtual {v2, v3}, Lcom/xiaomi/push/cr;->a(Z)V

    goto :goto_d

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    move v2, v1

    :goto_20
    if-nez v2, :cond_52

    iget-object v2, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaomi/push/cr;

    invoke-virtual {v5}, Lcom/xiaomi/push/cr;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2c

    iget-object v2, p0, Lcom/xiaomi/push/cu;->a:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_50
    move v2, v3

    goto :goto_20

    :cond_52
    monitor-exit v0

    return-void

    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v1
.end method

.method protected e(Ljava/lang/String;)Lcom/xiaomi/push/cq;
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/push/cu;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/xiaomi/push/cu;->a:J

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_40

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/push/cu;->c:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/xiaomi/push/cu;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/push/cq;

    if-eqz p1, :cond_33

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/push/cu;->a:J

    return-object p1

    :cond_33
    iget-wide v0, p0, Lcom/xiaomi/push/cu;->a:J

    const-wide/16 v2, 0xf

    cmp-long p1, v0, v2

    if-gez p1, :cond_40

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaomi/push/cu;->a:J

    :cond_40
    const/4 p1, 0x0

    return-object p1
.end method

.method protected e()Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/xiaomi/push/cu;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v2, v3, :cond_14

    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v0

    :cond_2b
    const-string v0, "com.xiaomi"

    return-object v0
.end method
