.class public Lcom/alibaba/sdk/android/push/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

.field private static b:Lcom/alibaba/sdk/android/push/a/a;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/alibaba/sdk/android/push/a/b;

.field private e:Lcom/alibaba/sdk/android/beacon/Beacon;

.field private final f:Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;

.field private final g:Lcom/alibaba/sdk/android/beacon/Beacon$OnServiceErrListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "MPS:BeaconManager"

    invoke-static {v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->getLogger(Ljava/lang/String;)Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/a/a;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const/4 v0, 0x0

    sput-object v0, Lcom/alibaba/sdk/android/push/a/a;->b:Lcom/alibaba/sdk/android/push/a/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/a/a;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/a/a;->d:Lcom/alibaba/sdk/android/push/a/b;

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/a/a;->e:Lcom/alibaba/sdk/android/beacon/Beacon;

    new-instance v0, Lcom/alibaba/sdk/android/push/a/a$1;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/push/a/a$1;-><init>(Lcom/alibaba/sdk/android/push/a/a;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/a/a;->f:Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;

    new-instance v0, Lcom/alibaba/sdk/android/push/a/a$2;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/push/a/a$2;-><init>(Lcom/alibaba/sdk/android/push/a/a;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/a/a;->g:Lcom/alibaba/sdk/android/beacon/Beacon$OnServiceErrListener;

    return-void
.end method

.method public static a()Lcom/alibaba/sdk/android/push/a/a;
    .registers 2

    sget-object v0, Lcom/alibaba/sdk/android/push/a/a;->b:Lcom/alibaba/sdk/android/push/a/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/alibaba/sdk/android/push/a/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/alibaba/sdk/android/push/a/a;->b:Lcom/alibaba/sdk/android/push/a/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/alibaba/sdk/android/push/a/a;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/push/a/a;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/push/a/a;->b:Lcom/alibaba/sdk/android/push/a/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/alibaba/sdk/android/push/a/a;->b:Lcom/alibaba/sdk/android/push/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/push/a/a;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/push/a/a;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/beacon/Beacon$Config;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/alibaba/sdk/android/push/a/a;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v1, "parse beacon config"

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_4f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_13
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/beacon/Beacon$Config;

    sget-object v1, Lcom/alibaba/sdk/android/push/a/a;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beacon key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/sdk/android/beacon/Beacon$Config;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; beacon value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/alibaba/sdk/android/beacon/Beacon$Config;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/alibaba/sdk/android/beacon/Beacon$Config;->key:Ljava/lang/String;

    const-string v2, "___push_service___"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/push/a/a;->a(Lcom/alibaba/sdk/android/beacon/Beacon$Config;)Z

    goto :goto_13

    :cond_4f
    return-void
.end method

.method private a(Lcom/alibaba/sdk/android/beacon/Beacon$Config;)Z
    .registers 7

    const-string/jumbo v0, "ut"

    const/4 v1, 0x0

    if-eqz p1, :cond_48

    iget-object v2, p1, Lcom/alibaba/sdk/android/beacon/Beacon$Config;->key:Ljava/lang/String;

    const-string v3, "___push_service___"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    iget-object p1, p1, Lcom/alibaba/sdk/android/beacon/Beacon$Config;->value:Ljava/lang/String;

    if-eqz p1, :cond_46

    sget-object v2, Lcom/alibaba/sdk/android/push/a/a;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "push configs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    :try_start_2a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_46

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/push/a/a;->a(Ljava/lang/String;)Z
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_3c} :catch_3d

    goto :goto_46

    :catch_3d
    move-exception p1

    sget-object v0, Lcom/alibaba/sdk/android/push/a/a;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string v2, "parse push configs failed."

    invoke-virtual {v0, v2, p1}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_48

    :cond_46
    :goto_46
    const/4 p1, 0x1

    move v1, p1

    :cond_48
    :goto_48
    return v1
.end method

.method private a(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_2a

    iget-object v1, p0, Lcom/alibaba/sdk/android/push/a/a;->d:Lcom/alibaba/sdk/android/push/a/b;

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/alibaba/sdk/android/push/a/a;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is report enabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    const-string v1, "disabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/push/a/a;->d:Lcom/alibaba/sdk/android/push/a/b;

    invoke-interface {v1, p1}, Lcom/alibaba/sdk/android/push/a/b;->a(Z)V

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method static synthetic b()Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/push/a/a;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/a/a;->c:Landroid/content/Context;

    sget-object p1, Lcom/alibaba/sdk/android/push/a/a;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appkey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/a/a;->c:Landroid/content/Context;

    if-eqz p1, :cond_8f

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "sdkId"

    const-string v1, "push"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdkVer"

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_70

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_3a

    goto :goto_70

    :cond_3a
    new-instance p4, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;

    invoke-direct {p4}, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;-><init>()V

    invoke-virtual {p4, p2}, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;->appKey(Ljava/lang/String;)Lcom/alibaba/sdk/android/beacon/Beacon$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;->appSecret(Ljava/lang/String;)Lcom/alibaba/sdk/android/beacon/Beacon$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;->extras(Ljava/util/Map;)Lcom/alibaba/sdk/android/beacon/Beacon$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;->startPoll(Z)Lcom/alibaba/sdk/android/beacon/Beacon$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/beacon/Beacon$Builder;->build()Lcom/alibaba/sdk/android/beacon/Beacon;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/a/a;->e:Lcom/alibaba/sdk/android/beacon/Beacon;

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/a/a;->e:Lcom/alibaba/sdk/android/beacon/Beacon;

    iget-object p2, p0, Lcom/alibaba/sdk/android/push/a/a;->f:Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/beacon/Beacon;->addUpdateListener(Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/a/a;->e:Lcom/alibaba/sdk/android/beacon/Beacon;

    iget-object p2, p0, Lcom/alibaba/sdk/android/push/a/a;->g:Lcom/alibaba/sdk/android/beacon/Beacon$OnServiceErrListener;

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/beacon/Beacon;->addServiceErrListener(Lcom/alibaba/sdk/android/beacon/Beacon$OnServiceErrListener;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/push/a/a;->e:Lcom/alibaba/sdk/android/beacon/Beacon;

    iget-object p2, p0, Lcom/alibaba/sdk/android/push/a/a;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/beacon/Beacon;->start(Landroid/content/Context;)V

    goto :goto_96

    :cond_70
    :goto_70
    sget-object p1, Lcom/alibaba/sdk/android/push/a/a;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid appkey or appsecret. appkey:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", appsecret:"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_8f
    sget-object p1, Lcom/alibaba/sdk/android/push/a/a;->a:Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;

    const-string p2, "context is null !!"

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/ams/common/logger/AmsLogger;->e(Ljava/lang/String;)V

    :goto_96
    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/push/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/push/a/a;->d:Lcom/alibaba/sdk/android/push/a/b;

    return-void
.end method
