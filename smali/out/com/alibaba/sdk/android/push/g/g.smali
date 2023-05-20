.class public Lcom/alibaba/sdk/android/push/g/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

.field private static b:Lcom/alibaba/sdk/android/push/g/g;

.field private static c:Landroid/content/Context;


# instance fields
.field private d:Lcom/alibaba/sdk/android/push/g/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "MPS:VipRequestManager"

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/push/g/g;->b:Lcom/alibaba/sdk/android/push/g/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/push/g/f;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/push/g/f;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/g/g;->d:Lcom/alibaba/sdk/android/push/g/f;

    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/push/g/g;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/push/g/g;->b:Lcom/alibaba/sdk/android/push/g/g;

    if-nez v0, :cond_b

    new-instance v0, Lcom/alibaba/sdk/android/push/g/g;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/push/g/g;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/push/g/g;->b:Lcom/alibaba/sdk/android/push/g/g;

    :cond_b
    sget-object v0, Lcom/alibaba/sdk/android/push/g/g;->b:Lcom/alibaba/sdk/android/push/g/g;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/g;->d:Lcom/alibaba/sdk/android/push/g/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/alibaba/sdk/android/push/g/f;->a(I)Lcom/alibaba/sdk/android/push/g/f$a;

    move-result-object p1

    goto :goto_b

    :cond_a
    move-object p1, v1

    :goto_b
    if-nez p1, :cond_e

    goto :goto_12

    :cond_e
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/g/f$a;->a()Ljava/lang/String;

    move-result-object v1

    :goto_12
    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "deviceId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/g;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_17

    :goto_12
    invoke-interface {p4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b4

    :cond_17
    new-instance p1, Lcom/alibaba/sdk/android/push/b/c;

    const-string p2, "deviceId is empty."

    invoke-direct {p1, p2}, Lcom/alibaba/sdk/android/push/b/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    const-string v0, "account"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/g;->f()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_32

    goto :goto_12

    :cond_32
    new-instance p1, Lcom/alibaba/sdk/android/push/b/c;

    const-string p2, "account is empty"

    invoke-direct {p1, p2}, Lcom/alibaba/sdk/android/push/b/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    const-string v0, "alias"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-static {p2}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4c

    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b4

    :cond_4c
    new-instance p1, Lcom/alibaba/sdk/android/push/b/c;

    const-string p2, "alias is empty"

    invoke-direct {p1, p2}, Lcom/alibaba/sdk/android/push/b/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_54
    const-string/jumbo p2, "tags"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b4

    const-string/jumbo p1, "tags array is empty"

    if-eqz p3, :cond_ae

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_68
    array-length v2, p3

    if-ge v1, v2, :cond_96

    array-length v2, p3

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_83

    aget-object v2, p3, v1

    invoke-static {v2}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_83

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    :goto_7f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_93

    :cond_83
    array-length v2, p3

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_93

    aget-object v2, p3, v1

    invoke-static {v2}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_93

    aget-object v2, p3, v1

    goto :goto_7f

    :cond_93
    :goto_93
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_a8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b4

    :cond_a8
    new-instance p2, Lcom/alibaba/sdk/android/push/b/c;

    invoke-direct {p2, p1}, Lcom/alibaba/sdk/android/push/b/c;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_ae
    new-instance p2, Lcom/alibaba/sdk/android/push/b/c;

    invoke-direct {p2, p1}, Lcom/alibaba/sdk/android/push/b/c;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b4
    :goto_b4
    return-object p4
.end method

.method private a(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/g/g;->d:Lcom/alibaba/sdk/android/push/g/f;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/push/g/f;->a(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 1

    sput-object p0, Lcom/alibaba/sdk/android/push/g/g;->c:Landroid/content/Context;

    sget-object p0, Lcom/alibaba/sdk/android/push/g/g;->b:Lcom/alibaba/sdk/android/push/g/g;

    if-nez p0, :cond_c

    invoke-static {}, Lcom/alibaba/sdk/android/push/g/g;->a()Lcom/alibaba/sdk/android/push/g/g;

    move-result-object p0

    sput-object p0, Lcom/alibaba/sdk/android/push/g/g;->b:Lcom/alibaba/sdk/android/push/g/g;

    :cond_c
    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/push/g/g;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/push/g/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/push/g/g;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/push/g/g;Ljava/lang/String;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/push/g/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    const-string v1, "mps_account"

    invoke-interface {v0, v1, p1}, Lcom/alibaba/sdk/android/ams/common/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .registers 6

    invoke-static {}, Lcom/alibaba/sdk/android/push/d/a;->a()Lcom/alibaba/sdk/android/push/d/a;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v1

    if-eqz v0, :cond_13

    if-eqz v1, :cond_13

    invoke-interface {v1}, Lcom/alibaba/sdk/android/ams/common/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/alibaba/sdk/android/push/d/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_13
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/alibaba/sdk/android/push/d/a;->a()Lcom/alibaba/sdk/android/push/d/a;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v1

    if-eqz v0, :cond_13

    if-eqz v1, :cond_13

    invoke-interface {v1}, Lcom/alibaba/sdk/android/ams/common/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/alibaba/sdk/android/push/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method static synthetic c()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "KEY_LAUNCH_MARK"

    invoke-static {p0, v1}, Lcom/alibaba/sdk/android/push/common/util/b;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_28

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne v0, p0, :cond_28

    return v1

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic d()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/push/g/g;->c:Landroid/content/Context;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    const-string v1, "mps_account"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/ams/common/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/g/g;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "appKey"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "os"

    const-string v2, "2"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "version"

    const-string v2, "3.7.2"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method public a(ILcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 20

    move-object/from16 v7, p0

    move/from16 v0, p1

    move-object/from16 v8, p2

    const-string v9, " errorMessage:"

    const-string v10, "listTags Failed. errorCode:"

    const-string v11, "listTags Failed, errorCode:"

    const-string v12, "/list-tag"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v1, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v2, "listTags"

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    const/4 v13, 0x1

    if-ne v13, v0, :cond_30

    const/4 v1, 0x2

    invoke-direct {v7, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    sget-object v0, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v2, "get from cache"

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    if-eqz v8, :cond_2f

    invoke-interface {v8, v1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onSuccess(Ljava/lang/String;)V

    :cond_2f
    return-void

    :cond_30
    :try_start_30
    new-instance v14, Lcom/alibaba/sdk/android/push/g/h;

    sget-object v15, Lcom/alibaba/sdk/android/push/g/g;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Lcom/alibaba/sdk/android/push/g/g$10;
    :try_end_4e
    .catch Lcom/alibaba/sdk/android/push/b/c; {:try_start_30 .. :try_end_4e} :catch_10e
    .catch Lcom/alibaba/sdk/android/push/b/d; {:try_start_30 .. :try_end_4e} :catch_ad

    move-object v1, v5

    move-object/from16 v2, p0

    move-object v13, v5

    move/from16 v5, p1

    move-object/from16 v16, v9

    move-object v9, v6

    move-object/from16 v6, p2

    :try_start_59
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sdk/android/push/g/g$10;-><init>(Lcom/alibaba/sdk/android/push/g/g;JILcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {v14, v15, v9, v13}, Lcom/alibaba/sdk/android/push/g/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/sdk/android/push/g/g;->g()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9e

    const-string v2, "deviceId"

    const/4 v3, 0x0

    invoke-direct {v7, v2, v3, v3, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "target"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/alibaba/sdk/android/push/common/util/a/d;->m:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {v14, v0}, Lcom/alibaba/sdk/android/push/g/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_159

    :cond_9e
    new-instance v0, Lcom/alibaba/sdk/android/push/b/d;

    const-string/jumbo v1, "target is invalid."

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/push/b/d;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a7
    .catch Lcom/alibaba/sdk/android/push/b/c; {:try_start_59 .. :try_end_a7} :catch_a9
    .catch Lcom/alibaba/sdk/android/push/b/d; {:try_start_59 .. :try_end_a7} :catch_a7

    :catch_a7
    move-exception v0

    goto :goto_b0

    :catch_a9
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_110

    :catch_ad
    move-exception v0

    move-object/from16 v16, v9

    :goto_b0
    sget-object v1, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/b/d;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v1, v0, v12}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_159

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    :goto_fa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_159

    :catch_10e
    move-exception v0

    move-object v2, v9

    :goto_110
    sget-object v1, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v1, v0, v12}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_159

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_fa

    :cond_159
    :goto_159
    return-void
.end method

.method public a(I[Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 15

    const-string v0, ", errorMessage:"

    const-string v1, "/bind-tag"

    const-string v2, "bindTagFail: errorCode:"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :try_start_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alibaba/sdk/android/push/g/h;

    sget-object v7, Lcom/alibaba/sdk/android/push/g/g;->c:Landroid/content/Context;

    new-instance v8, Lcom/alibaba/sdk/android/push/g/g$8;

    invoke-direct {v8, p0, v3, v4, p4}, Lcom/alibaba/sdk/android/push/g/g$8;-><init>(Lcom/alibaba/sdk/android/push/g/g;JLcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {v6, v7, v5, v8}, Lcom/alibaba/sdk/android/push/g/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    if-eqz p2, :cond_d2

    array-length v3, p2

    if-eqz v3, :cond_d2

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/g;->g()Ljava/util/Map;

    move-result-object v3
    :try_end_37
    .catch Lcom/alibaba/sdk/android/push/b/c; {:try_start_a .. :try_end_37} :catch_136
    .catch Lcom/alibaba/sdk/android/push/b/d; {:try_start_a .. :try_end_37} :catch_db

    const/4 v4, 0x1

    const-string v5, ""

    const/4 v7, 0x0

    if-eq p1, v4, :cond_92

    const/4 v8, 0x2

    if-eq p1, v8, :cond_6d

    const/4 v8, 0x3

    if-ne p1, v8, :cond_64

    :try_start_43
    const-string v8, "alias"

    invoke-direct {p0, v8, p3, v7, v3}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    sget-object v3, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/alibaba/sdk/android/push/common/util/a/d;->g:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v9}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_60
    invoke-interface {p3, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b7

    :cond_64
    new-instance p1, Lcom/alibaba/sdk/android/push/b/d;

    const-string/jumbo p2, "target is invalid."

    invoke-direct {p1, p2}, Lcom/alibaba/sdk/android/push/b/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6d
    sget-object p3, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v8, "Binding tag to account."

    invoke-virtual {p3, v8}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    const-string p3, "account"

    invoke-direct {p0, p3, v7, v7, v3}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    sget-object v3, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/alibaba/sdk/android/push/common/util/a/d;->f:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v9}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_60

    :cond_92
    sget-object p3, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v8, "Binding tag to device."

    invoke-virtual {p3, v8}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    const-string p3, "deviceId"

    invoke-direct {p0, p3, v7, v7, v3}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    sget-object v3, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/alibaba/sdk/android/push/common/util/a/d;->e:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v9}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_60

    :goto_b7
    const-string/jumbo v3, "tags"

    invoke-direct {p0, v3, v7, p2, p3}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    const-string/jumbo p3, "target"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p1, v4, [Ljava/util/Map;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-virtual {v6, p1}, Lcom/alibaba/sdk/android/push/g/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_187

    :cond_d2
    new-instance p1, Lcom/alibaba/sdk/android/push/b/d;

    const-string/jumbo p2, "tags is empty."

    invoke-direct {p1, p2}, Lcom/alibaba/sdk/android/push/b/d;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_db
    .catch Lcom/alibaba/sdk/android/push/b/c; {:try_start_43 .. :try_end_db} :catch_136
    .catch Lcom/alibaba/sdk/android/push/b/d; {:try_start_43 .. :try_end_db} :catch_db

    :catch_db
    move-exception p1

    sget-object p2, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/d;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_187

    sget-object p2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/d;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_12b
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p2, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_187

    :catch_136
    move-exception p1

    sget-object p2, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_187

    sget-object p2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_12b

    :cond_187
    :goto_187
    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 9

    sget-object v0, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string/jumbo v1, "unbinding account"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/alibaba/sdk/android/push/g/h;

    sget-object v3, Lcom/alibaba/sdk/android/push/g/g;->c:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/unbind-account"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/alibaba/sdk/android/push/g/g$7;

    invoke-direct {v6, p0, v0, v1, p1}, Lcom/alibaba/sdk/android/push/g/g$7;-><init>(Lcom/alibaba/sdk/android/push/g/g;JLcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {v2, v3, v4, v6}, Lcom/alibaba/sdk/android/push/g/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    :try_start_32
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/g;->g()Ljava/util/Map;

    move-result-object v0

    const-string v1, "account"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/sdk/android/push/common/util/a/d;->d:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceId"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v3, v0}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Map;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {v2, v1}, Lcom/alibaba/sdk/android/push/g/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_5c
    .catch Lcom/alibaba/sdk/android/push/b/c; {:try_start_32 .. :try_end_5c} :catch_5d

    goto :goto_bc

    :catch_5d
    move-exception v0

    sget-object v1, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbindAccountFail: errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_bc

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v5}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", errorMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bc
    :goto_bc
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 16

    const-string v0, ", errorMessage:"

    const-string v1, "/bind-account"

    const-string v2, "bindAccountFail: errorCode:"

    sget-object v3, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "binding account"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    :try_start_20
    new-instance v3, Lcom/alibaba/sdk/android/push/g/h;

    sget-object v4, Lcom/alibaba/sdk/android/push/g/g;->c:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/alibaba/sdk/android/push/g/g$1;

    move-object v5, v12

    move-object v6, p0

    move-object v7, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/alibaba/sdk/android/push/g/g$1;-><init>(Lcom/alibaba/sdk/android/push/g/g;Ljava/lang/String;JLcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {v3, v4, v11, v12}, Lcom/alibaba/sdk/android/push/g/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/g;->g()Ljava/util/Map;

    move-result-object v4

    invoke-static {p1}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_78

    const-string v5, "account"

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    sget-object v5, Lcom/alibaba/sdk/android/push/common/util/a/d;->c:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "deviceId"

    const/4 v5, 0x0

    invoke-direct {p0, p1, v5, v5, v4}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Map;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/push/g/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_132

    :cond_78
    new-instance p1, Lcom/alibaba/sdk/android/push/b/d;

    const-string v3, "account input is empty!"

    invoke-direct {p1, v3}, Lcom/alibaba/sdk/android/push/b/d;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_80
    .catch Lcom/alibaba/sdk/android/push/b/c; {:try_start_20 .. :try_end_80} :catch_d8
    .catch Lcom/alibaba/sdk/android/push/b/d; {:try_start_20 .. :try_end_80} :catch_80

    :catch_80
    move-exception p1

    sget-object v3, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_c9

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/d;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v3, v0}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c9
    sget-object p2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/d;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_12f

    :catch_d8
    move-exception p1

    sget-object v3, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_121

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v3, v0}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_121
    sget-object p2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_12f
    invoke-direct {p0, p2, p1, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_132
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/b/c;->a()Lcom/alibaba/sdk/android/ams/common/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/ams/common/b/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I[Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 14

    const-string v0, ", errorMessage:"

    const-string v1, "/unbind-tag"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/sdk/android/push/g/h;

    sget-object v6, Lcom/alibaba/sdk/android/push/g/g;->c:Landroid/content/Context;

    new-instance v7, Lcom/alibaba/sdk/android/push/g/g$9;

    invoke-direct {v7, p0, p4, v2, v3}, Lcom/alibaba/sdk/android/push/g/g$9;-><init>(Lcom/alibaba/sdk/android/push/g/g;Lcom/alibaba/sdk/android/push/CommonCallback;J)V

    invoke-direct {v5, v6, v4, v7}, Lcom/alibaba/sdk/android/push/g/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/g;->g()Ljava/util/Map;

    move-result-object v2
    :try_end_30
    .catch Lcom/alibaba/sdk/android/push/b/c; {:try_start_8 .. :try_end_30} :catch_130
    .catch Lcom/alibaba/sdk/android/push/b/d; {:try_start_8 .. :try_end_30} :catch_d2

    const/4 v3, 0x1

    const-string v4, ""

    const/4 v6, 0x0

    if-eq p1, v3, :cond_92

    const/4 v7, 0x2

    if-eq p1, v7, :cond_6d

    const/4 v7, 0x3

    if-ne p1, v7, :cond_64

    :try_start_3c
    sget-object v7, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v8, "Unbinding tag from alias."

    invoke-virtual {v7, v8}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    const-string v7, "alias"

    invoke-direct {p0, v7, p3, v6, v2}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/alibaba/sdk/android/push/common/util/a/d;->k:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_60
    invoke-interface {p3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b7

    :cond_64
    new-instance p1, Lcom/alibaba/sdk/android/push/b/d;

    const-string/jumbo p2, "target is invalid."

    invoke-direct {p1, p2}, Lcom/alibaba/sdk/android/push/b/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6d
    sget-object p3, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v7, "Unbinding tag from account."

    invoke-virtual {p3, v7}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    const-string p3, "account"

    invoke-direct {p0, p3, v6, v6, v2}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/alibaba/sdk/android/push/common/util/a/d;->j:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_60

    :cond_92
    sget-object p3, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v7, "Unbinding tag from device."

    invoke-virtual {p3, v7}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    const-string p3, "deviceId"

    invoke-direct {p0, p3, v6, v6, v2}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    sget-object v2, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/alibaba/sdk/android/push/common/util/a/d;->i:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_60

    :goto_b7
    const-string/jumbo v2, "tags"

    invoke-direct {p0, v2, v6, p2, p3}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    const-string/jumbo p3, "target"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p1, v3, [Ljava/util/Map;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-virtual {v5, p1}, Lcom/alibaba/sdk/android/push/g/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_d0
    .catch Lcom/alibaba/sdk/android/push/b/c; {:try_start_3c .. :try_end_d0} :catch_130
    .catch Lcom/alibaba/sdk/android/push/b/d; {:try_start_3c .. :try_end_d0} :catch_d2

    goto/16 :goto_184

    :catch_d2
    move-exception p1

    sget-object p2, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindTagFail: errorCode"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/d;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_184

    sget-object p2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/d;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_125
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p2, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_184

    :catch_130
    move-exception p1

    sget-object p2, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindTagFail: errorCode:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p2, p3, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_184

    sget-object p2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_125

    :cond_184
    :goto_184
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 5

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/g/g;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "onAppStart has already sent today"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_e
    sget-object p1, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v0, "onAppStart"

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    new-instance p1, Lcom/alibaba/sdk/android/push/g/h;

    sget-object v0, Lcom/alibaba/sdk/android/push/g/g;->c:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/sdk/android/push/g/g$6;

    invoke-direct {v2, p0}, Lcom/alibaba/sdk/android/push/g/g$6;-><init>(Lcom/alibaba/sdk/android/push/g/g;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/alibaba/sdk/android/push/g/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    :try_start_3b
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/g;->g()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/sdk/android/push/common/util/a/d;->t:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceId"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/alibaba/sdk/android/push/g/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_5e
    .catch Lcom/alibaba/sdk/android/push/b/c; {:try_start_3b .. :try_end_5e} :catch_5f

    goto :goto_7c

    :catch_5f
    move-exception p1

    sget-object v0, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAppStart failed: errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7c
    return-void
.end method

.method public b(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 10

    const-string v0, "/list-alias"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v4, "listAliases"

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/alibaba/sdk/android/push/g/g;->a(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_21

    sget-object v0, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "get from cache"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_20

    invoke-interface {p1, v4}, Lcom/alibaba/sdk/android/push/CommonCallback;->onSuccess(Ljava/lang/String;)V

    :cond_20
    return-void

    :cond_21
    :try_start_21
    new-instance v4, Lcom/alibaba/sdk/android/push/g/h;

    sget-object v5, Lcom/alibaba/sdk/android/push/g/g;->c:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/alibaba/sdk/android/push/g/g$13;

    invoke-direct {v7, p0, v1, v2, p1}, Lcom/alibaba/sdk/android/push/g/g$13;-><init>(Lcom/alibaba/sdk/android/push/g/g;JLcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/alibaba/sdk/android/push/g/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/g;->g()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/alibaba/sdk/android/push/common/util/a/d;->n:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deviceId"

    const/4 v5, 0x0

    invoke-direct {p0, v2, v5, v5, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    new-array v2, v3, [Ljava/util/Map;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v4, v2}, Lcom/alibaba/sdk/android/push/g/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_74
    .catch Lcom/alibaba/sdk/android/push/b/c; {:try_start_21 .. :try_end_74} :catch_75

    goto :goto_d5

    :catch_75
    move-exception v1

    sget-object v2, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listAliases Failed. errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1, v0}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_d5

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",errorMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d5
    :goto_d5
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 10

    const-string v0, "/add-alias"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v4, "Adding alias to device"

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/sdk/android/push/g/h;

    sget-object v5, Lcom/alibaba/sdk/android/push/g/g;->c:Landroid/content/Context;

    new-instance v6, Lcom/alibaba/sdk/android/push/g/g$11;

    invoke-direct {v6, p0, v1, v2, p2}, Lcom/alibaba/sdk/android/push/g/g$11;-><init>(Lcom/alibaba/sdk/android/push/g/g;JLcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {v4, v5, v3, v6}, Lcom/alibaba/sdk/android/push/g/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/g;->g()Ljava/util/Map;

    move-result-object v1

    const-string v2, "deviceId"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "alias"

    invoke-direct {p0, v2, p1, v3, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/sdk/android/push/common/util/a/d;->h:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Map;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v4, v1}, Lcom/alibaba/sdk/android/push/g/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_5a
    .catch Lcom/alibaba/sdk/android/push/b/c; {:try_start_d .. :try_end_5a} :catch_5b

    goto :goto_bf

    :catch_5b
    move-exception p1

    sget-object v1, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAliasFail, errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_bf

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAliasFail. errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", errorMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bf
    :goto_bf
    return-void
.end method

.method public c(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 9

    const-string v0, "/push-status"

    sget-object v1, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v2, "check vip push status"

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/sdk/android/push/g/h;

    sget-object v5, Lcom/alibaba/sdk/android/push/g/g;->c:Landroid/content/Context;

    new-instance v6, Lcom/alibaba/sdk/android/push/g/g$14;

    invoke-direct {v6, p0, v1, v2, p1}, Lcom/alibaba/sdk/android/push/g/g$14;-><init>(Lcom/alibaba/sdk/android/push/g/g;JLcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {v4, v5, v3, v6}, Lcom/alibaba/sdk/android/push/g/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/g;->g()Ljava/util/Map;

    move-result-object v1

    const-string v2, "deviceId"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/sdk/android/push/common/util/a/d;->q:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Map;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v4, v2}, Lcom/alibaba/sdk/android/push/g/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_54
    .catch Lcom/alibaba/sdk/android/push/b/c; {:try_start_d .. :try_end_54} :catch_55

    goto :goto_b9

    :catch_55
    move-exception v1

    sget-object v2, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check vip push status fail, errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_b9

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check vip push status fail. errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", errorMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b9
    :goto_b9
    return-void
.end method

.method public c(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 10

    const-string v0, "/remove-alias"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v4, "Removing alias from device"

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/sdk/android/push/g/h;

    sget-object v5, Lcom/alibaba/sdk/android/push/g/g;->c:Landroid/content/Context;

    new-instance v6, Lcom/alibaba/sdk/android/push/g/g$12;

    invoke-direct {v6, p0, v1, v2, p2}, Lcom/alibaba/sdk/android/push/g/g$12;-><init>(Lcom/alibaba/sdk/android/push/g/g;JLcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {v4, v5, v3, v6}, Lcom/alibaba/sdk/android/push/g/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/g;->g()Ljava/util/Map;

    move-result-object v1

    const-string v2, "deviceId"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string p1, ""

    :cond_44
    const-string v2, "alias"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/sdk/android/push/common/util/a/d;->l:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/util/Map;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    invoke-virtual {v4, p1}, Lcom/alibaba/sdk/android/push/g/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_61
    .catch Lcom/alibaba/sdk/android/push/b/c; {:try_start_d .. :try_end_61} :catch_62

    goto :goto_ce

    :catch_62
    move-exception p1

    sget-object v1, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAliasFail. errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_ce

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ce
    :goto_ce
    return-void
.end method

.method public d(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 9

    const-string v0, "/push-switch"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string/jumbo v4, "unbinding vip"

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    :try_start_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/sdk/android/push/g/h;

    sget-object v5, Lcom/alibaba/sdk/android/push/g/g;->c:Landroid/content/Context;

    new-instance v6, Lcom/alibaba/sdk/android/push/g/g$2;

    invoke-direct {v6, p0, v1, v2, p1}, Lcom/alibaba/sdk/android/push/g/g$2;-><init>(Lcom/alibaba/sdk/android/push/g/g;JLcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {v4, v5, v3, v6}, Lcom/alibaba/sdk/android/push/g/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/g;->g()Ljava/util/Map;

    move-result-object v1

    const-string v2, "deviceId"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/sdk/android/push/common/util/a/d;->o:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "enable"

    const-string v3, "false"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Map;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v4, v2}, Lcom/alibaba/sdk/android/push/g/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_5c
    .catch Lcom/alibaba/sdk/android/push/b/c; {:try_start_e .. :try_end_5c} :catch_5d

    goto :goto_c1

    :catch_5d
    move-exception v1

    sget-object v2, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unbind vip failed, errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_c1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbind vip failed. errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", errorMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c1
    :goto_c1
    return-void
.end method

.method public d(Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 12

    const-string v0, ", errorMessage:"

    const-string v1, "/set-phone"

    const-string v2, "bindAccountFail: errorCode:"

    sget-object v3, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "binding phoneNumber:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :try_start_20
    new-instance v5, Lcom/alibaba/sdk/android/push/g/h;

    sget-object v6, Lcom/alibaba/sdk/android/push/g/g;->c:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/alibaba/sdk/android/push/g/g$4;

    invoke-direct {v8, p0, v3, v4, p2}, Lcom/alibaba/sdk/android/push/g/g$4;-><init>(Lcom/alibaba/sdk/android/push/g/g;JLcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/alibaba/sdk/android/push/g/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/g;->g()Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Lcom/alibaba/sdk/android/ams/common/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_74

    const-string v4, "mob"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    sget-object v4, Lcom/alibaba/sdk/android/push/common/util/a/d;->r:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "deviceId"

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v4, v3}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/util/Map;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v5, v3}, Lcom/alibaba/sdk/android/push/g/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_128

    :cond_74
    new-instance p1, Lcom/alibaba/sdk/android/push/b/d;

    const-string v3, "account input is empty!"

    invoke-direct {p1, v3}, Lcom/alibaba/sdk/android/push/b/d;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7c
    .catch Lcom/alibaba/sdk/android/push/b/c; {:try_start_20 .. :try_end_7c} :catch_d7
    .catch Lcom/alibaba/sdk/android/push/b/d; {:try_start_20 .. :try_end_7c} :catch_7c

    :catch_7c
    move-exception p1

    sget-object v3, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/d;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_128

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/d;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_cc
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_128

    :catch_d7
    move-exception p1

    sget-object v3, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_128

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_cc

    :cond_128
    :goto_128
    return-void
.end method

.method public e(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 9

    const-string v0, "/push-switch"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v4, "binding vip push"

    invoke-virtual {v3, v4}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/sdk/android/push/g/h;

    sget-object v5, Lcom/alibaba/sdk/android/push/g/g;->c:Landroid/content/Context;

    new-instance v6, Lcom/alibaba/sdk/android/push/g/g$3;

    invoke-direct {v6, p0, v1, v2, p1}, Lcom/alibaba/sdk/android/push/g/g$3;-><init>(Lcom/alibaba/sdk/android/push/g/g;JLcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {v4, v5, v3, v6}, Lcom/alibaba/sdk/android/push/g/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/g;->g()Ljava/util/Map;

    move-result-object v1

    const-string v2, "deviceId"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v3, v1}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/sdk/android/push/common/util/a/d;->p:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "enable"

    const-string/jumbo v3, "true"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Map;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v4, v2}, Lcom/alibaba/sdk/android/push/g/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_5c
    .catch Lcom/alibaba/sdk/android/push/b/c; {:try_start_d .. :try_end_5c} :catch_5d

    goto :goto_c1

    :catch_5d
    move-exception v1

    sget-object v2, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bind vip failed, errorCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_c1

    sget-object v0, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind vip failed. errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", errorMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c1
    :goto_c1
    return-void
.end method

.method public f(Lcom/alibaba/sdk/android/push/CommonCallback;)V
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string/jumbo v3, "unbinding phone number"

    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    new-instance v2, Lcom/alibaba/sdk/android/push/g/h;

    sget-object v3, Lcom/alibaba/sdk/android/push/g/g;->c:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/sdk/android/ams/common/a/a;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/unset-phone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/alibaba/sdk/android/push/g/g$5;

    invoke-direct {v6, p0, v0, v1, p1}, Lcom/alibaba/sdk/android/push/g/g$5;-><init>(Lcom/alibaba/sdk/android/push/g/g;JLcom/alibaba/sdk/android/push/CommonCallback;)V

    invoke-direct {v2, v3, v4, v6}, Lcom/alibaba/sdk/android/push/g/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/push/CommonCallback;)V

    :try_start_32
    invoke-direct {p0}, Lcom/alibaba/sdk/android/push/g/g;->g()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/push/common/util/a/d;->u:Ljava/lang/String;

    sget-object v3, Lcom/alibaba/sdk/android/push/common/util/a/d;->s:Lcom/alibaba/sdk/android/push/common/util/a/d;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/util/a/d;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceId"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v3, v0}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Map;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    invoke-virtual {v2, v1}, Lcom/alibaba/sdk/android/push/g/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_55
    .catch Lcom/alibaba/sdk/android/push/b/c; {:try_start_32 .. :try_end_55} :catch_56

    goto :goto_b5

    :catch_56
    move-exception v0

    sget-object v1, Lcom/alibaba/sdk/android/push/g/g;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbindAccountFail: errorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v5}, Lcom/alibaba/sdk/android/push/g/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_b5

    sget-object v1, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/sdk/android/push/common/a/e;->b:Lcom/alibaba/sdk/android/push/common/a/e;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/push/common/a/e;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", errorMessage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/push/b/c;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/alibaba/sdk/android/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b5
    :goto_b5
    return-void
.end method
