.class public Lcom/taobao/accs/AccsClientConfig;
.super Ljava/lang/Object;
.source "Taobao"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/AccsClientConfig$Builder;,
        Lcom/taobao/accs/AccsClientConfig$ENV;,
        Lcom/taobao/accs/AccsClientConfig$SECURITY_TYPE;
    }
.end annotation


# static fields
.field public static final DEFAULT_CENTER_HOSTS:[Ljava/lang/String;

.field private static final DEFAULT_CHANNEL_HOSTS:[Ljava/lang/String;

.field public static final DEFAULT_CONFIGTAG:Ljava/lang/String; = "default"

.field public static final SECURITY_OFF:I = 0x2

.field public static final SECURITY_OPEN:I = 0x1

.field public static final SECURITY_TAOBAO:I

.field public static loadedStaticConfig:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static log:Lcom/alibaba/sdk/android/logger/ILog;

.field private static mContext:Landroid/content/Context;

.field private static mDebugConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/AccsClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static mEnv:I
    .annotation build Lcom/taobao/accs/AccsClientConfig$ENV;
    .end annotation
.end field

.field private static mPreviewConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/AccsClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static mReleaseConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/accs/AccsClientConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private loopInterval:J

.field private mAccsHeartbeatEnable:Z

.field private mAppKey:Ljava/lang/String;

.field private mAppSecret:Ljava/lang/String;

.field private mAuthCode:Ljava/lang/String;

.field private mAutoUnit:Z

.field private mChannelHost:Ljava/lang/String;

.field private mChannelLoopStart:Z

.field private mChannelPubKey:I

.field private mConfigEnv:I

.field private mDisableChannel:Z

.field private mInappHost:Ljava/lang/String;

.field private mInappPubKey:I

.field private mKeepalive:Z

.field private mQuickReconnect:Z

.field private mSecurity:I

.field private mStoreId:Ljava/lang/String;

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "AccsClientConfig"

    .line 26
    invoke-static {v0}, Lcom/taobao/accs/utl/AccsLogger;->getLogger(Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/AccsClientConfig;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v0, "msgacs.m.taobao.com"

    const-string v1, "msgacs.wapa.taobao.com"

    const-string v2, "msgacs.waptest.taobao.com"

    .line 33
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/AccsClientConfig;->DEFAULT_CENTER_HOSTS:[Ljava/lang/String;

    const-string v0, "accscdn.m.taobao.com"

    const-string v1, "acs.wapa.taobao.com"

    const-string v2, "acs.waptest.taobao.com"

    .line 34
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/AccsClientConfig;->DEFAULT_CHANNEL_HOSTS:[Ljava/lang/String;

    const/4 v0, 0x1

    .line 38
    sput-boolean v0, Lcom/taobao/accs/AccsClientConfig;->loadedStaticConfig:Z

    const/4 v1, 0x0

    .line 40
    sput v1, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    .line 44
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/taobao/accs/AccsClientConfig;->mReleaseConfigs:Ljava/util/Map;

    .line 45
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/taobao/accs/AccsClientConfig;->mPreviewConfigs:Ljava/util/Map;

    .line 46
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v1, Lcom/taobao/accs/AccsClientConfig;->mDebugConfigs:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/taobao/accs/AccsClientConfig;->mAppKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mAppKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mStoreId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mAppSecret:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/taobao/accs/AccsClientConfig;)I
    .registers 1

    .line 25
    iget p0, p0, Lcom/taobao/accs/AccsClientConfig;->mConfigEnv:I

    return p0
.end method

.method static synthetic access$1102(Lcom/taobao/accs/AccsClientConfig;I)I
    .registers 2

    .line 25
    iput p1, p0, Lcom/taobao/accs/AccsClientConfig;->mConfigEnv:I

    return p1
.end method

.method static synthetic access$1202(Lcom/taobao/accs/AccsClientConfig;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig;->mDisableChannel:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/taobao/accs/AccsClientConfig;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig;->mQuickReconnect:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/taobao/accs/AccsClientConfig;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig;->mAccsHeartbeatEnable:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/taobao/accs/AccsClientConfig;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelLoopStart:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/taobao/accs/AccsClientConfig;J)J
    .registers 3

    .line 25
    iput-wide p1, p0, Lcom/taobao/accs/AccsClientConfig;->loopInterval:J

    return-wide p1
.end method

.method static synthetic access$1702(Lcom/taobao/accs/AccsClientConfig;I)I
    .registers 2

    .line 25
    iput p1, p0, Lcom/taobao/accs/AccsClientConfig;->mSecurity:I

    return p1
.end method

.method static synthetic access$1800()[Ljava/lang/String;
    .registers 1

    .line 25
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->DEFAULT_CHANNEL_HOSTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/util/Map;
    .registers 1

    .line 25
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mPreviewConfigs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/util/Map;
    .registers 1

    .line 25
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mDebugConfigs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$202(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mAuthCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100()Ljava/util/Map;
    .registers 1

    .line 25
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mReleaseConfigs:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200()Lcom/alibaba/sdk/android/logger/ILog;
    .registers 1

    .line 25
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->log:Lcom/alibaba/sdk/android/logger/ILog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/taobao/accs/AccsClientConfig;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig;->mKeepalive:Z

    return p1
.end method

.method static synthetic access$402(Lcom/taobao/accs/AccsClientConfig;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/taobao/accs/AccsClientConfig;->mAutoUnit:Z

    return p1
.end method

.method static synthetic access$502(Lcom/taobao/accs/AccsClientConfig;I)I
    .registers 2

    .line 25
    iput p1, p0, Lcom/taobao/accs/AccsClientConfig;->mInappPubKey:I

    return p1
.end method

.method static synthetic access$602(Lcom/taobao/accs/AccsClientConfig;I)I
    .registers 2

    .line 25
    iput p1, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelPubKey:I

    return p1
.end method

.method static synthetic access$700(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/taobao/accs/AccsClientConfig;->mInappHost:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mInappHost:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelHost:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelHost:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/taobao/accs/AccsClientConfig;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/taobao/accs/AccsClientConfig;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/taobao/accs/AccsClientConfig;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/taobao/accs/AccsClientConfig;->mTag:Ljava/lang/String;

    return-object p1
.end method

.method public static getConfig(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    sget v0, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    .line 92
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mReleaseConfigs:Ljava/util/Map;

    goto :goto_10

    .line 89
    :cond_b
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mDebugConfigs:Ljava/util/Map;

    goto :goto_10

    .line 86
    :cond_e
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mPreviewConfigs:Ljava/util/Map;

    .line 95
    :goto_10
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/accs/AccsClientConfig;

    .line 96
    iget-object v2, v1, Lcom/taobao/accs/AccsClientConfig;->mAppKey:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget v2, v1, Lcom/taobao/accs/AccsClientConfig;->mConfigEnv:I

    sget v3, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    if-ne v2, v3, :cond_18

    return-object v1

    .line 100
    :cond_33
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v1, "getConfigByTag return null"

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/logger/ILog;->err(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    const-string v1, "appKey"

    invoke-interface {v0, v1, p0}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p0

    invoke-interface {p0}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getConfigByTag(Ljava/lang/String;)Lcom/taobao/accs/AccsClientConfig;
    .registers 4

    .line 112
    sget v0, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    .line 120
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mReleaseConfigs:Ljava/util/Map;

    goto :goto_10

    .line 117
    :cond_b
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mDebugConfigs:Ljava/util/Map;

    goto :goto_10

    .line 114
    :cond_e
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mPreviewConfigs:Ljava/util/Map;

    .line 124
    :goto_10
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/AccsClientConfig;

    if-nez v0, :cond_29

    .line 126
    sget-object v1, Lcom/taobao/accs/AccsClientConfig;->log:Lcom/alibaba/sdk/android/logger/ILog;

    const-string v2, "getConfigByTag return null"

    invoke-interface {v1, v2}, Lcom/alibaba/sdk/android/logger/ILog;->warn(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v1

    const-string v2, "configTag"

    invoke-interface {v1, v2, p0}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object p0

    invoke-interface {p0}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    :cond_29
    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 6

    .line 49
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    return-object v0

    .line 52
    :cond_5
    const-class v0, Lcom/taobao/accs/AccsClientConfig;

    monitor-enter v0

    .line 53
    :try_start_8
    sget-object v1, Lcom/taobao/accs/AccsClientConfig;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_10

    .line 54
    sget-object v1, Lcom/taobao/accs/AccsClientConfig;->mContext:Landroid/content/Context;

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_44

    return-object v1

    :cond_10
    :try_start_10
    const-string v1, "android.app.ActivityThread"

    .line 57
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "currentActivityThread"

    const/4 v3, 0x0

    .line 58
    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getApplication"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sput-object v1, Lcom/taobao/accs/AccsClientConfig;->mContext:Landroid/content/Context;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3b} :catch_3c
    .catchall {:try_start_10 .. :try_end_3b} :catchall_44

    goto :goto_40

    :catch_3c
    move-exception v1

    .line 61
    :try_start_3d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    :goto_40
    sget-object v1, Lcom/taobao/accs/AccsClientConfig;->mContext:Landroid/content/Context;

    monitor-exit v0

    return-object v1

    :catchall_44
    move-exception v1

    .line 64
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_44

    throw v1
.end method

.method public static tags()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    sget v0, Lcom/taobao/accs/AccsClientConfig;->mEnv:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    .line 146
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mReleaseConfigs:Ljava/util/Map;

    goto :goto_10

    .line 143
    :cond_b
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mDebugConfigs:Ljava/util/Map;

    goto :goto_10

    .line 140
    :cond_e
    sget-object v0, Lcom/taobao/accs/AccsClientConfig;->mPreviewConfigs:Ljava/util/Map;

    .line 149
    :goto_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_8d

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    goto/16 :goto_8d

    .line 275
    :cond_13
    check-cast p1, Lcom/taobao/accs/AccsClientConfig;

    .line 277
    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mInappHost:Ljava/lang/String;

    iget-object v2, p1, Lcom/taobao/accs/AccsClientConfig;->mInappHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v0

    .line 280
    :cond_20
    iget v1, p0, Lcom/taobao/accs/AccsClientConfig;->mInappPubKey:I

    iget v2, p1, Lcom/taobao/accs/AccsClientConfig;->mInappPubKey:I

    if-eq v1, v2, :cond_27

    return v0

    .line 283
    :cond_27
    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelHost:Ljava/lang/String;

    iget-object v2, p1, Lcom/taobao/accs/AccsClientConfig;->mChannelHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    return v0

    .line 286
    :cond_32
    iget v1, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelPubKey:I

    iget v2, p1, Lcom/taobao/accs/AccsClientConfig;->mChannelPubKey:I

    if-eq v1, v2, :cond_39

    return v0

    .line 289
    :cond_39
    iget v1, p0, Lcom/taobao/accs/AccsClientConfig;->mSecurity:I

    iget v2, p1, Lcom/taobao/accs/AccsClientConfig;->mSecurity:I

    if-eq v1, v2, :cond_40

    return v0

    .line 290
    :cond_40
    iget v1, p0, Lcom/taobao/accs/AccsClientConfig;->mConfigEnv:I

    iget v2, p1, Lcom/taobao/accs/AccsClientConfig;->mConfigEnv:I

    if-eq v1, v2, :cond_47

    return v0

    .line 291
    :cond_47
    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mAppKey:Ljava/lang/String;

    iget-object v2, p1, Lcom/taobao/accs/AccsClientConfig;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    return v0

    .line 294
    :cond_52
    iget-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig;->mKeepalive:Z

    iget-boolean v2, p1, Lcom/taobao/accs/AccsClientConfig;->mKeepalive:Z

    if-eq v1, v2, :cond_59

    return v0

    .line 297
    :cond_59
    iget-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig;->mDisableChannel:Z

    iget-boolean v2, p1, Lcom/taobao/accs/AccsClientConfig;->mDisableChannel:Z

    if-eq v1, v2, :cond_60

    return v0

    .line 300
    :cond_60
    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mAuthCode:Ljava/lang/String;

    if-eqz v1, :cond_6d

    iget-object v2, p1, Lcom/taobao/accs/AccsClientConfig;->mAuthCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    goto :goto_71

    :cond_6d
    iget-object v1, p1, Lcom/taobao/accs/AccsClientConfig;->mAuthCode:Ljava/lang/String;

    if-eqz v1, :cond_72

    :goto_71
    return v0

    .line 302
    :cond_72
    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mAppSecret:Ljava/lang/String;

    if-eqz v1, :cond_7f

    iget-object v2, p1, Lcom/taobao/accs/AccsClientConfig;->mAppSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_84

    goto :goto_83

    :cond_7f
    iget-object v1, p1, Lcom/taobao/accs/AccsClientConfig;->mAppSecret:Ljava/lang/String;

    if-eqz v1, :cond_84

    :goto_83
    return v0

    .line 305
    :cond_84
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mTag:Ljava/lang/String;

    iget-object p1, p1, Lcom/taobao/accs/AccsClientConfig;->mTag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_8d
    :goto_8d
    return v0
.end method

.method public getAppKey()Ljava/lang/String;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSecret()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mAppSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthCode()Ljava/lang/String;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mAuthCode:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelHost()Ljava/lang/String;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelHost:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelPubKey()I
    .registers 2

    .line 202
    iget v0, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelPubKey:I

    return v0
.end method

.method public getConfigEnv()I
    .registers 2

    .line 218
    iget v0, p0, Lcom/taobao/accs/AccsClientConfig;->mConfigEnv:I

    return v0
.end method

.method public getDisableChannel()Z
    .registers 2

    .line 222
    iget-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig;->mDisableChannel:Z

    return v0
.end method

.method public getInappHost()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mInappHost:Ljava/lang/String;

    return-object v0
.end method

.method public getInappPubKey()I
    .registers 2

    .line 198
    iget v0, p0, Lcom/taobao/accs/AccsClientConfig;->mInappPubKey:I

    return v0
.end method

.method public getLoopInterval()J
    .registers 3

    .line 242
    iget-wide v0, p0, Lcom/taobao/accs/AccsClientConfig;->loopInterval:J

    return-wide v0
.end method

.method public getSecurity()I
    .registers 2

    .line 190
    iget v0, p0, Lcom/taobao/accs/AccsClientConfig;->mSecurity:I

    return v0
.end method

.method public getStoreId()Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mStoreId:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/taobao/accs/AccsClientConfig;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public isAccsHeartbeatEnable()Z
    .registers 2

    .line 234
    iget-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig;->mAccsHeartbeatEnable:Z

    return v0
.end method

.method public isAutoUnit()Z
    .registers 2

    .line 210
    iget-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig;->mAutoUnit:Z

    return v0
.end method

.method public isChannelLoopStart()Z
    .registers 2

    .line 238
    iget-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelLoopStart:Z

    return v0
.end method

.method public isKeepalive()Z
    .registers 2

    .line 206
    iget-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig;->mKeepalive:Z

    return v0
.end method

.method public isQuickReconnect()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Lcom/taobao/accs/AccsClientConfig;->mQuickReconnect:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccsClientConfig{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Tag="

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ConfigEnv="

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/accs/AccsClientConfig;->mConfigEnv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", AppKey="

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", AppSecret="

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mAppSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", InappHost="

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mInappHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ChannelHost="

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Security="

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/accs/AccsClientConfig;->mSecurity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", AuthCode="

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/accs/AccsClientConfig;->mAuthCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", InappPubKey="

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/accs/AccsClientConfig;->mInappPubKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ChannelPubKey="

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/taobao/accs/AccsClientConfig;->mChannelPubKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Keepalive="

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig;->mKeepalive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", AutoUnit="

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig;->mAutoUnit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", DisableChannel="

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig;->mDisableChannel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", QuickReconnect="

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/taobao/accs/AccsClientConfig;->mQuickReconnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
