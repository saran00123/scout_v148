.class public Lcom/alibaba/sdk/android/push/register/ReporterFactory;
.super Ljava/lang/Object;
.source "ReporterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushReporter;,
        Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushParser;,
        Lcom/alibaba/sdk/android/push/register/ReporterFactory$IMsgReporter;,
        Lcom/alibaba/sdk/android/push/register/ReporterFactory$ITokenReporter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.alibaba.sdk.android.push.register.ReporterFactory"

.field private static volatile mMsgReporter:Lcom/alibaba/sdk/android/push/register/ReporterFactory$IMsgReporter;

.field private static volatile mTokenReporter:Lcom/alibaba/sdk/android/push/register/ReporterFactory$ITokenReporter;

.field private static volatile pushParser:Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushParser;

.field private static volatile pushReporter:Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushReporter;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 19
    invoke-static {p0, p1}, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->addPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 19
    sget-object v0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static addPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 61
    :goto_1
    invoke-static {}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->values()[Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_31

    .line 62
    invoke-static {}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->values()[Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->thirdTokenKeyword:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->values()[Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    move-result-object v1

    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->thirdSdkVersionPrefix:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    :cond_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMsgReporter()Lcom/alibaba/sdk/android/push/register/ReporterFactory$IMsgReporter;
    .registers 2

    .line 84
    sget-object v0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->mMsgReporter:Lcom/alibaba/sdk/android/push/register/ReporterFactory$IMsgReporter;

    if-nez v0, :cond_17

    .line 85
    const-class v0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;

    monitor-enter v0

    .line 86
    :try_start_7
    sget-object v1, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->mMsgReporter:Lcom/alibaba/sdk/android/push/register/ReporterFactory$IMsgReporter;

    if-nez v1, :cond_12

    .line 88
    new-instance v1, Lcom/alibaba/sdk/android/push/register/ReporterFactory$2;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/push/register/ReporterFactory$2;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->mMsgReporter:Lcom/alibaba/sdk/android/push/register/ReporterFactory$IMsgReporter;

    .line 100
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 102
    :cond_17
    :goto_17
    sget-object v0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->mMsgReporter:Lcom/alibaba/sdk/android/push/register/ReporterFactory$IMsgReporter;

    return-object v0
.end method

.method public static getPushParser()Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushParser;
    .registers 2

    .line 153
    sget-object v0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->pushParser:Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushParser;

    if-nez v0, :cond_17

    .line 154
    const-class v0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;

    monitor-enter v0

    .line 155
    :try_start_7
    sget-object v1, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->pushParser:Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushParser;

    if-nez v1, :cond_12

    .line 157
    new-instance v1, Lcom/alibaba/sdk/android/push/register/ReporterFactory$3;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/push/register/ReporterFactory$3;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->pushParser:Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushParser;

    .line 181
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 183
    :cond_17
    :goto_17
    sget-object v0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->pushParser:Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushParser;

    return-object v0
.end method

.method public static getPushReporter()Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushReporter;
    .registers 2

    .line 204
    sget-object v0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->pushReporter:Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushReporter;

    if-nez v0, :cond_17

    .line 205
    const-class v0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;

    monitor-enter v0

    .line 206
    :try_start_7
    sget-object v1, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->pushReporter:Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushReporter;

    if-nez v1, :cond_12

    .line 207
    new-instance v1, Lcom/alibaba/sdk/android/push/register/ReporterFactory$4;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/push/register/ReporterFactory$4;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->pushReporter:Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushReporter;

    .line 214
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 216
    :cond_17
    :goto_17
    sget-object v0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->pushReporter:Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushReporter;

    return-object v0
.end method

.method public static getTokenRepoter()Lcom/alibaba/sdk/android/push/register/ReporterFactory$ITokenReporter;
    .registers 2

    .line 32
    sget-object v0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->mTokenReporter:Lcom/alibaba/sdk/android/push/register/ReporterFactory$ITokenReporter;

    if-nez v0, :cond_17

    .line 33
    const-class v0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;

    monitor-enter v0

    .line 34
    :try_start_7
    sget-object v1, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->mTokenReporter:Lcom/alibaba/sdk/android/push/register/ReporterFactory$ITokenReporter;

    if-nez v1, :cond_12

    .line 36
    new-instance v1, Lcom/alibaba/sdk/android/push/register/ReporterFactory$1;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/push/register/ReporterFactory$1;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->mTokenReporter:Lcom/alibaba/sdk/android/push/register/ReporterFactory$ITokenReporter;

    .line 52
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 54
    :cond_17
    :goto_17
    sget-object v0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->mTokenReporter:Lcom/alibaba/sdk/android/push/register/ReporterFactory$ITokenReporter;

    return-object v0
.end method

.method public static setMsgReporter(Lcom/alibaba/sdk/android/push/register/ReporterFactory$IMsgReporter;)V
    .registers 2

    .line 77
    const-class v0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;

    monitor-enter v0

    .line 78
    :try_start_3
    sput-object p0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->mMsgReporter:Lcom/alibaba/sdk/android/push/register/ReporterFactory$IMsgReporter;

    .line 79
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static setPushParser(Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushParser;)V
    .registers 2

    .line 146
    const-class v0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;

    monitor-enter v0

    .line 147
    :try_start_3
    sput-object p0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->pushParser:Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushParser;

    .line 148
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static setPushReporter(Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushReporter;)V
    .registers 2

    .line 198
    const-class v0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;

    monitor-enter v0

    .line 199
    :try_start_3
    sput-object p0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->pushReporter:Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushReporter;

    .line 200
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static setTokenReporter(Lcom/alibaba/sdk/android/push/register/ReporterFactory$ITokenReporter;)V
    .registers 2

    .line 71
    const-class v0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;

    monitor-enter v0

    .line 72
    :try_start_3
    sput-object p0, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->mTokenReporter:Lcom/alibaba/sdk/android/push/register/ReporterFactory$ITokenReporter;

    .line 73
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method
