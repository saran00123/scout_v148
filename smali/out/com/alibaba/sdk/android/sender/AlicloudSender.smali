.class public Lcom/alibaba/sdk/android/sender/AlicloudSender;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/sender/AlicloudSender$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/sender/SdkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/sender/AlicloudSender$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static f:Lcom/alibaba/sdk/android/tbrest/SendService;

.field private static g:Ljava/util/concurrent/ExecutorService;

.field private static final h:Lcom/alibaba/sdk/android/logger/ILog;

.field private static i:Z

.field private static final j:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-class v0, Lcom/alibaba/sdk/android/sender/AlicloudSender;

    invoke-static {v0}, Lcom/alibaba/sdk/android/sender/SenderLog;->getLogger(Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->h:Lcom/alibaba/sdk/android/logger/ILog;

    sput-boolean v1, Lcom/alibaba/sdk/android/sender/AlicloudSender;->i:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->j:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->b:Ljava/util/Map;

    return-object v0
.end method

.method private static a(Landroid/app/Application;)V
    .registers 4

    sget-object v0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_18

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_18

    new-instance v0, Lcom/alibaba/sdk/android/sender/AlicloudSender$1;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/sender/AlicloudSender$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_18
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 10

    sget-object v0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_51

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->b:Ljava/util/Map;

    invoke-static {p0}, Lcom/alibaba/sdk/android/sender/AlicloudSender;->c(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->c:Ljava/util/Map;

    new-instance v0, Lcom/alibaba/sdk/android/tbrest/SendService;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/tbrest/SendService;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->f:Lcom/alibaba/sdk/android/tbrest/SendService;

    sget-object v0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->f:Lcom/alibaba/sdk/android/tbrest/SendService;

    sget-boolean v1, Lcom/alibaba/sdk/android/sender/AlicloudSender;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->openHttp:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/alibaba/sdk/android/sender/AlicloudSender;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    sget-object v2, Lcom/alibaba/sdk/android/sender/AlicloudSender;->f:Lcom/alibaba/sdk/android/tbrest/SendService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, "24527540@android"

    const-string v5, "24527540"

    move-object v3, p0

    invoke-virtual/range {v2 .. v8}, Lcom/alibaba/sdk/android/tbrest/SendService;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->f:Lcom/alibaba/sdk/android/tbrest/SendService;

    const-string v0, "56fc10fbe8c6ae7d0d895f49c4fb6838"

    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appSecret:Ljava/lang/String;

    new-instance p0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object p0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->g:Ljava/util/concurrent/ExecutorService;

    :cond_51
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/alibaba/sdk/android/sender/SdkInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/sender/AlicloudSender;->b(Landroid/content/Context;Lcom/alibaba/sdk/android/sender/SdkInfo;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lcom/alibaba/sdk/android/sender/SdkInfo;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/alibaba/sdk/android/sender/AlicloudSender;->b(Landroid/content/Context;Lcom/alibaba/sdk/android/sender/SdkInfo;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/sender/AlicloudSender$a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "emas_sdk_info"

    const/4 v1, 0x0

    const-string/jumbo v2, "sp_emas_info"

    if-eqz p1, :cond_6b

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_6b

    :cond_f
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :catch_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    :try_start_33
    const-string v8, "id"

    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "version"

    invoke-static {v6}, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;->b(Lcom/alibaba/sdk/android/sender/AlicloudSender$a;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "time"

    invoke-static {v6}, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;->a(Lcom/alibaba/sdk/android/sender/AlicloudSender$a;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "statu"

    invoke-static {v6}, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;->c(Lcom/alibaba/sdk/android/sender/AlicloudSender$a;)I

    move-result v6

    invoke-virtual {v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_59} :catch_1c

    goto :goto_1c

    :cond_5a
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    goto :goto_77

    :cond_6b
    :goto_6b
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    :goto_77
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static asyncSend(Landroid/app/Application;Lcom/alibaba/sdk/android/sender/SdkInfo;)V
    .registers 4

    if-nez p0, :cond_a

    sget-object p0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->h:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p1, "asyncSend failed. application is null. "

    invoke-interface {p0, p1}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    if-nez p1, :cond_14

    sget-object p0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->h:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p1, "asyncSend failed. sdk info is null. "

    invoke-interface {p0, p1}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    return-void

    :cond_14
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object p0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->h:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p1, "asyncSend failed. sdk id is empty. "

    invoke-interface {p0, p1}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    return-void

    :cond_26
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    sget-object p0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->h:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p1, "asyncSend failed. sdk version is empty. "

    invoke-interface {p0, p1}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    return-void

    :cond_38
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/sender/AlicloudSender;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alibaba/sdk/android/sender/AlicloudSender;->a(Landroid/app/Application;)V

    sget-object v1, Lcom/alibaba/sdk/android/sender/AlicloudSender;->b:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/sender/AlicloudSender;->b(Landroid/content/Context;Lcom/alibaba/sdk/android/sender/SdkInfo;)V

    return-void
.end method

.method public static asyncSend(Landroid/content/Context;Lcom/alibaba/sdk/android/sender/SdkInfo;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p0, :cond_a

    sget-object p0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->h:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p1, "asyncSend failed. context is null. "

    invoke-interface {p0, p1}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    return-void

    :cond_a
    if-nez p1, :cond_14

    sget-object p0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->h:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p1, "asyncSend failed. sdk info is null. "

    invoke-interface {p0, p1}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    return-void

    :cond_14
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    sget-object p0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->h:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p1, "asyncSend failed. sdk id is empty. "

    invoke-interface {p0, p1}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    return-void

    :cond_26
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    sget-object p0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->h:Lcom/alibaba/sdk/android/logger/ILog;

    const-string p1, "asyncSend failed. sdk version is empty. "

    invoke-interface {p0, p1}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    return-void

    :cond_38
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/sender/AlicloudSender;->a(Landroid/content/Context;)V

    sget-object v1, Lcom/alibaba/sdk/android/sender/AlicloudSender;->b:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/sender/AlicloudSender;->b(Landroid/content/Context;Lcom/alibaba/sdk/android/sender/SdkInfo;)V

    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    const/4 p0, 0x0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Lcom/alibaba/sdk/android/sender/SdkInfo;)V
    .registers 6

    sget-object v0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->j:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :try_start_f
    sget-object v1, Lcom/alibaba/sdk/android/sender/AlicloudSender;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;

    if-eqz v1, :cond_62

    invoke-static {v1}, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;->a(Lcom/alibaba/sdk/android/sender/AlicloudSender$a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;->b(Lcom/alibaba/sdk/android/sender/AlicloudSender$a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-static {v1}, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;->c(Lcom/alibaba/sdk/android/sender/AlicloudSender$a;)I

    move-result v1

    if-nez v1, :cond_62

    sget-object v1, Lcom/alibaba/sdk/android/sender/AlicloudSender;->h:Lcom/alibaba/sdk/android/logger/ILog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " send abort send. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_61} :catch_62

    return-void

    :catch_62
    :cond_62
    new-instance v1, Lcom/alibaba/sdk/android/sender/AlicloudSender$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/alibaba/sdk/android/sender/AlicloudSender$2;-><init>(Landroid/content/Context;Lcom/alibaba/sdk/android/sender/SdkInfo;Ljava/lang/String;)V

    sget-object p0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/alibaba/sdk/android/sender/SdkInfo;Ljava/lang/String;)V
    .registers 15

    sget-object v0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;

    if-nez v0, :cond_1d

    new-instance v0, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;-><init>(Lcom/alibaba/sdk/android/sender/AlicloudSender$1;)V

    sget-object v1, Lcom/alibaba/sdk/android/sender/AlicloudSender;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdkId"

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packageName"

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdkVersion"

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "kVersion"

    const-string v2, "1.1.2"

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_57

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appKey"

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    iget-object v1, p1, Lcom/alibaba/sdk/android/sender/SdkInfo;->a:Ljava/util/Map;

    if-eqz v1, :cond_60

    iget-object v1, p1, Lcom/alibaba/sdk/android/sender/SdkInfo;->a:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_60
    const-string v1, "_aliyun_biz_id"

    const-string v2, "emas-active"

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/alibaba/sdk/android/sender/AlicloudSender;->h:Lcom/alibaba/sdk/android/logger/ILog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " start send. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/sdk/android/sender/AlicloudSender;->f:Lcom/alibaba/sdk/android/tbrest/SendService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Lcom/alibaba/sdk/android/sender/AlicloudSender;->a:Ljava/lang/String;

    const/16 v6, 0x4e1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_biz_active"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "adash-emas.cn-hangzhou.aliyuncs.com"

    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/sdk/android/tbrest/SendService;->sendRequest(Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v2, Lcom/alibaba/sdk/android/sender/AlicloudSender;->h:Lcom/alibaba/sdk/android/logger/ILog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " send "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_db

    const-string/jumbo v4, "success. "

    goto :goto_dd

    :cond_db
    const-string v4, "failed. "

    :goto_dd
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alibaba/sdk/android/logger/ILog;->d(Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;->a(Lcom/alibaba/sdk/android/sender/AlicloudSender$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/sender/SdkInfo;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;->b(Lcom/alibaba/sdk/android/sender/AlicloudSender$a;Ljava/lang/String;)Ljava/lang/String;

    if-eqz v1, :cond_f5

    const/4 p1, 0x0

    goto :goto_f6

    :cond_f5
    const/4 p1, -0x1

    :goto_f6
    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;->a(Lcom/alibaba/sdk/android/sender/AlicloudSender$a;I)I

    sget-object p1, Lcom/alibaba/sdk/android/sender/AlicloudSender;->c:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/sender/AlicloudSender;->a(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/sender/AlicloudSender$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "sp_emas_info"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "emas_sdk_info"

    const-string v3, ""

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    :try_start_1b
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_60

    :goto_26
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-ge v1, p0, :cond_60

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v3, "id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;-><init>(Lcom/alibaba/sdk/android/sender/AlicloudSender$1;)V

    const-string/jumbo v5, "time"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;->a(Lcom/alibaba/sdk/android/sender/AlicloudSender$a;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v5, "statu"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;->a(Lcom/alibaba/sdk/android/sender/AlicloudSender$a;I)I

    const-string/jumbo v5, "version"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/alibaba/sdk/android/sender/AlicloudSender$a;->b(Lcom/alibaba/sdk/android/sender/AlicloudSender$a;Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_5d} :catch_60

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :catch_60
    :cond_60
    return-object v0
.end method

.method public static openHttp()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/sdk/android/sender/AlicloudSender;->i:Z

    return-void
.end method
