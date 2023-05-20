.class public Lcom/vivo/push/cache/ClientConfigManagerImpl;
.super Ljava/lang/Object;
.source "ClientConfigManagerImpl.java"

# interfaces
.implements Lcom/vivo/push/cache/d;


# annotations
.annotation build Lcom/vivo/push/NoPorGuard;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientConfigManager"

.field private static volatile sClientConfigManagerImpl:Lcom/vivo/push/cache/ClientConfigManagerImpl;


# instance fields
.field private mAppConfigSettings:Lcom/vivo/push/cache/a;

.field private mContext:Landroid/content/Context;

.field private mPushConfigSettings:Lcom/vivo/push/cache/e;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/vivo/push/util/ContextDelegate;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mContext:Landroid/content/Context;

    .line 27
    new-instance p1, Lcom/vivo/push/cache/a;

    iget-object v0, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/vivo/push/cache/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mAppConfigSettings:Lcom/vivo/push/cache/a;

    .line 28
    new-instance p1, Lcom/vivo/push/cache/e;

    iget-object v0, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/vivo/push/cache/e;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mPushConfigSettings:Lcom/vivo/push/cache/e;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/vivo/push/cache/ClientConfigManagerImpl;
    .registers 3

    const-class v0, Lcom/vivo/push/cache/ClientConfigManagerImpl;

    monitor-enter v0

    .line 32
    :try_start_3
    sget-object v1, Lcom/vivo/push/cache/ClientConfigManagerImpl;->sClientConfigManagerImpl:Lcom/vivo/push/cache/ClientConfigManagerImpl;

    if-nez v1, :cond_e

    .line 33
    new-instance v1, Lcom/vivo/push/cache/ClientConfigManagerImpl;

    invoke-direct {v1, p0}, Lcom/vivo/push/cache/ClientConfigManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/vivo/push/cache/ClientConfigManagerImpl;->sClientConfigManagerImpl:Lcom/vivo/push/cache/ClientConfigManagerImpl;

    .line 35
    :cond_e
    sget-object p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->sClientConfigManagerImpl:Lcom/vivo/push/cache/ClientConfigManagerImpl;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private prepareAppConfig()V
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mAppConfigSettings:Lcom/vivo/push/cache/a;

    if-nez v0, :cond_e

    .line 54
    new-instance v0, Lcom/vivo/push/cache/a;

    iget-object v1, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/push/cache/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mAppConfigSettings:Lcom/vivo/push/cache/a;

    return-void

    .line 56
    :cond_e
    invoke-virtual {v0}, Lcom/vivo/push/cache/a;->c()V

    return-void
.end method

.method private preparePushConfigSettings()Lcom/vivo/push/cache/e;
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mPushConfigSettings:Lcom/vivo/push/cache/e;

    if-nez v0, :cond_e

    .line 130
    new-instance v0, Lcom/vivo/push/cache/e;

    iget-object v1, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/push/cache/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mPushConfigSettings:Lcom/vivo/push/cache/e;

    goto :goto_11

    .line 132
    :cond_e
    invoke-virtual {v0}, Lcom/vivo/push/cache/e;->c()V

    .line 134
    :goto_11
    iget-object v0, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mPushConfigSettings:Lcom/vivo/push/cache/e;

    return-object v0
.end method


# virtual methods
.method public clearPush()V
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mAppConfigSettings:Lcom/vivo/push/cache/a;

    invoke-virtual {v0}, Lcom/vivo/push/cache/a;->d()V

    return-void
.end method

.method public getBlackEventList()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotifyStyle()I
    .registers 3

    .line 90
    invoke-direct {p0}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->preparePushConfigSettings()Lcom/vivo/push/cache/e;

    move-result-object v0

    :try_start_4
    const-string v1, "DPL"

    .line 93
    invoke-virtual {v0, v1}, Lcom/vivo/push/cache/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_e} :catch_1a

    if-nez v1, :cond_1e

    .line 96
    :try_start_10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_14} :catch_15

    goto :goto_1f

    :catch_15
    move-exception v0

    .line 98
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v0

    .line 102
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1e
    :goto_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public getSuitTag()Ljava/lang/String;
    .registers 3

    .line 143
    invoke-direct {p0}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->preparePushConfigSettings()Lcom/vivo/push/cache/e;

    move-result-object v0

    const-string v1, "CSPT"

    .line 144
    invoke-virtual {v0, v1}, Lcom/vivo/push/cache/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueByKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 161
    :cond_8
    iget-object v0, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mPushConfigSettings:Lcom/vivo/push/cache/e;

    invoke-virtual {v0}, Lcom/vivo/push/cache/e;->c()V

    .line 162
    iget-object v0, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mPushConfigSettings:Lcom/vivo/push/cache/e;

    invoke-virtual {v0, p1}, Lcom/vivo/push/cache/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWhiteLogList()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "WLL"

    .line 169
    invoke-virtual {p0, v1}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->getValueByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, ","

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 172
    array-length v2, v1

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_2b

    aget-object v4, v1, v3

    .line 174
    :try_start_1d
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 180
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " initWhiteLogList "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClientConfigManager"

    invoke-static {v2, v1}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public isCancleBroadcastReceiver()Z
    .registers 4

    .line 114
    invoke-direct {p0}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->preparePushConfigSettings()Lcom/vivo/push/cache/e;

    move-result-object v0

    const-string v1, "PSM"

    .line 116
    invoke-virtual {v0, v1}, Lcom/vivo/push/cache/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    .line 119
    :try_start_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_16

    goto :goto_1b

    :catch_16
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_1a
    move v0, v2

    :goto_1b
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    return v0

    :cond_21
    return v2
.end method

.method public isDebug()Z
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mAppConfigSettings:Lcom/vivo/push/cache/a;

    invoke-virtual {v0}, Lcom/vivo/push/cache/a;->c()V

    .line 149
    iget-object v0, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mAppConfigSettings:Lcom/vivo/push/cache/a;

    .line 1180
    invoke-virtual {v0}, Lcom/vivo/push/cache/a;->b()I

    move-result v0

    invoke-static {v0}, Lcom/vivo/push/cache/a;->a(I)Z

    move-result v0

    return v0
.end method

.method public isDebug(I)Z
    .registers 2

    .line 153
    invoke-static {p1}, Lcom/vivo/push/cache/a;->a(I)Z

    move-result p1

    return p1
.end method

.method public isEnablePush()Z
    .registers 3

    .line 43
    invoke-direct {p0}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->prepareAppConfig()V

    .line 44
    iget-object v0, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mAppConfigSettings:Lcom/vivo/push/cache/a;

    iget-object v1, p0, Lcom/vivo/push/cache/ClientConfigManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/push/cache/a;->c(Ljava/lang/String;)Lcom/vivo/push/model/a;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 1027
    iget-object v0, v0, Lcom/vivo/push/model/a;->b:Ljava/lang/String;

    const-string v1, "1"

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public isInBlackList(J)Z
    .registers 9

    .line 72
    invoke-direct {p0}, Lcom/vivo/push/cache/ClientConfigManagerImpl;->preparePushConfigSettings()Lcom/vivo/push/cache/e;

    move-result-object v0

    const-string v1, "BL"

    .line 73
    invoke-virtual {v0, v1}, Lcom/vivo/push/cache/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_34

    const-string v1, ","

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    array-length v1, v0

    move v3, v2

    :goto_19
    if-ge v3, v1, :cond_34

    aget-object v4, v0, v3

    .line 78
    :try_start_1d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_31

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_27} :catch_2d

    cmp-long v4, v4, p1

    if-nez v4, :cond_31

    const/4 p1, 0x1

    return p1

    :catch_2d
    move-exception v4

    .line 82
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_34
    return v2
.end method
