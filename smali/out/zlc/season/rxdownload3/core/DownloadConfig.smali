.class public final Lzlc/season/rxdownload3/core/DownloadConfig;
.super Ljava/lang/Object;
.source "DownloadConfig.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadConfig.kt\nzlc/season/rxdownload3/core/DownloadConfig\n*L\n1#1,216:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001:\u0001^B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020]R\u001a\u0010\u0003\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0080T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006\"\u0004\u0008\u000f\u0010\u0008R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u0017X\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\"\u0010\u001c\u001a\n \u001d*\u0004\u0018\u00010\n0\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0006\"\u0004\u0008$\u0010\u0008R\u001a\u0010%\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0006\"\u0004\u0008\'\u0010\u0008R(\u0010(\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020+0*0)X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001a\u00100\u001a\u000201X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u001a\u00106\u001a\u000201X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00103\"\u0004\u00088\u00105R\u001a\u00109\u001a\u000201X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008:\u00103\"\u0004\u0008;\u00105R\u001a\u0010<\u001a\u00020=X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR\u001a\u0010B\u001a\u00020CX\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010GR\u001a\u0010H\u001a\u00020IX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR\u001a\u0010N\u001a\u00020OX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010SR\u001a\u0010T\u001a\u00020IX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010K\"\u0004\u0008V\u0010MR\u001a\u0010W\u001a\u00020\u0004X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008X\u0010\u0006\"\u0004\u0008Y\u0010\u0008\u00a8\u0006_"
    }
    d2 = {
        "Lzlc/season/rxdownload3/core/DownloadConfig;",
        "",
        "()V",
        "DEBUG",
        "",
        "getDEBUG$rxdownload3_release",
        "()Z",
        "setDEBUG$rxdownload3_release",
        "(Z)V",
        "DOWNLOADING_FILE_SUFFIX",
        "",
        "TMP_DIR_SUFFIX",
        "TMP_FILE_SUFFIX",
        "autoStart",
        "getAutoStart$rxdownload3_release",
        "setAutoStart$rxdownload3_release",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "dbActor",
        "Lzlc/season/rxdownload3/database/DbActor;",
        "getDbActor$rxdownload3_release",
        "()Lzlc/season/rxdownload3/database/DbActor;",
        "setDbActor$rxdownload3_release",
        "(Lzlc/season/rxdownload3/database/DbActor;)V",
        "defaultSavePath",
        "kotlin.jvm.PlatformType",
        "getDefaultSavePath$rxdownload3_release",
        "()Ljava/lang/String;",
        "setDefaultSavePath$rxdownload3_release",
        "(Ljava/lang/String;)V",
        "enableDb",
        "getEnableDb$rxdownload3_release",
        "setEnableDb$rxdownload3_release",
        "enableNotification",
        "getEnableNotification$rxdownload3_release",
        "setEnableNotification$rxdownload3_release",
        "extensions",
        "",
        "Ljava/lang/Class;",
        "Lzlc/season/rxdownload3/extension/Extension;",
        "getExtensions$rxdownload3_release",
        "()Ljava/util/List;",
        "setExtensions$rxdownload3_release",
        "(Ljava/util/List;)V",
        "fps",
        "",
        "getFps$rxdownload3_release",
        "()I",
        "setFps$rxdownload3_release",
        "(I)V",
        "maxMission",
        "getMaxMission$rxdownload3_release",
        "setMaxMission$rxdownload3_release",
        "maxRange",
        "getMaxRange$rxdownload3_release",
        "setMaxRange$rxdownload3_release",
        "missionBox",
        "Lzlc/season/rxdownload3/core/MissionBox;",
        "getMissionBox$rxdownload3_release",
        "()Lzlc/season/rxdownload3/core/MissionBox;",
        "setMissionBox$rxdownload3_release",
        "(Lzlc/season/rxdownload3/core/MissionBox;)V",
        "notificationFactory",
        "Lzlc/season/rxdownload3/notification/NotificationFactory;",
        "getNotificationFactory$rxdownload3_release",
        "()Lzlc/season/rxdownload3/notification/NotificationFactory;",
        "setNotificationFactory$rxdownload3_release",
        "(Lzlc/season/rxdownload3/notification/NotificationFactory;)V",
        "notificationPeriod",
        "",
        "getNotificationPeriod$rxdownload3_release",
        "()J",
        "setNotificationPeriod$rxdownload3_release",
        "(J)V",
        "okHttpClientFactory",
        "Lzlc/season/rxdownload3/http/OkHttpClientFactory;",
        "getOkHttpClientFactory$rxdownload3_release",
        "()Lzlc/season/rxdownload3/http/OkHttpClientFactory;",
        "setOkHttpClientFactory$rxdownload3_release",
        "(Lzlc/season/rxdownload3/http/OkHttpClientFactory;)V",
        "rangeDownloadSize",
        "getRangeDownloadSize$rxdownload3_release",
        "setRangeDownloadSize$rxdownload3_release",
        "useHeadMethod",
        "getUseHeadMethod$rxdownload3_release",
        "setUseHeadMethod$rxdownload3_release",
        "init",
        "",
        "builder",
        "Lzlc/season/rxdownload3/core/DownloadConfig$Builder;",
        "Builder",
        "rxdownload3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final DOWNLOADING_FILE_SUFFIX:Ljava/lang/String; = ".download"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

.field public static final TMP_DIR_SUFFIX:Ljava/lang/String; = ".TMP"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TMP_FILE_SUFFIX:Ljava/lang/String; = ".tmp"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static autoStart:Z

.field private static context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static dbActor:Lzlc/season/rxdownload3/database/DbActor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static defaultSavePath:Ljava/lang/String;

.field private static enableDb:Z

.field private static enableNotification:Z

.field private static extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lzlc/season/rxdownload3/extension/Extension;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static fps:I

.field private static maxMission:I

.field private static maxRange:I

.field private static missionBox:Lzlc/season/rxdownload3/core/MissionBox;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static notificationFactory:Lzlc/season/rxdownload3/notification/NotificationFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static notificationPeriod:J

.field private static okHttpClientFactory:Lzlc/season/rxdownload3/http/OkHttpClientFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static rangeDownloadSize:J

.field private static useHeadMethod:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Lzlc/season/rxdownload3/core/DownloadConfig;

    invoke-direct {v0}, Lzlc/season/rxdownload3/core/DownloadConfig;-><init>()V

    sput-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->INSTANCE:Lzlc/season/rxdownload3/core/DownloadConfig;

    const-wide/32 v0, 0x400000

    .line 23
    sput-wide v0, Lzlc/season/rxdownload3/core/DownloadConfig;->rangeDownloadSize:J

    const/4 v0, 0x3

    .line 25
    sput v0, Lzlc/season/rxdownload3/core/DownloadConfig;->maxMission:I

    .line 26
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lzlc/season/rxdownload3/core/DownloadConfig;->maxRange:I

    .line 28
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v2, "getExternalStoragePublic\u2026tory(DIRECTORY_DOWNLOADS)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->defaultSavePath:Ljava/lang/String;

    const/16 v0, 0x1e

    .line 32
    sput v0, Lzlc/season/rxdownload3/core/DownloadConfig;->fps:I

    .line 39
    sput-boolean v1, Lzlc/season/rxdownload3/core/DownloadConfig;->useHeadMethod:Z

    .line 44
    new-instance v0, Lzlc/season/rxdownload3/core/LocalMissionBox;

    invoke-direct {v0}, Lzlc/season/rxdownload3/core/LocalMissionBox;-><init>()V

    check-cast v0, Lzlc/season/rxdownload3/core/MissionBox;

    sput-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    const-wide/16 v0, 0x2

    .line 47
    sput-wide v0, Lzlc/season/rxdownload3/core/DownloadConfig;->notificationPeriod:J

    .line 50
    new-instance v0, Lzlc/season/rxdownload3/http/OkHttpClientFactoryImpl;

    invoke-direct {v0}, Lzlc/season/rxdownload3/http/OkHttpClientFactoryImpl;-><init>()V

    check-cast v0, Lzlc/season/rxdownload3/http/OkHttpClientFactory;

    sput-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->okHttpClientFactory:Lzlc/season/rxdownload3/http/OkHttpClientFactory;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->extensions:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAutoStart$rxdownload3_release()Z
    .registers 2

    .line 34
    sget-boolean v0, Lzlc/season/rxdownload3/core/DownloadConfig;->autoStart:Z

    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 30
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getDEBUG$rxdownload3_release()Z
    .registers 2

    .line 17
    sget-boolean v0, Lzlc/season/rxdownload3/core/DownloadConfig;->DEBUG:Z

    return v0
.end method

.method public final getDbActor$rxdownload3_release()Lzlc/season/rxdownload3/database/DbActor;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->dbActor:Lzlc/season/rxdownload3/database/DbActor;

    if-nez v0, :cond_9

    const-string v1, "dbActor"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object v0
.end method

.method public final getDefaultSavePath$rxdownload3_release()Ljava/lang/String;
    .registers 2

    .line 28
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->defaultSavePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnableDb$rxdownload3_release()Z
    .registers 2

    .line 41
    sget-boolean v0, Lzlc/season/rxdownload3/core/DownloadConfig;->enableDb:Z

    return v0
.end method

.method public final getEnableNotification$rxdownload3_release()Z
    .registers 2

    .line 46
    sget-boolean v0, Lzlc/season/rxdownload3/core/DownloadConfig;->enableNotification:Z

    return v0
.end method

.method public final getExtensions$rxdownload3_release()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lzlc/season/rxdownload3/extension/Extension;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 52
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->extensions:Ljava/util/List;

    return-object v0
.end method

.method public final getFps$rxdownload3_release()I
    .registers 2

    .line 32
    sget v0, Lzlc/season/rxdownload3/core/DownloadConfig;->fps:I

    return v0
.end method

.method public final getMaxMission$rxdownload3_release()I
    .registers 2

    .line 25
    sget v0, Lzlc/season/rxdownload3/core/DownloadConfig;->maxMission:I

    return v0
.end method

.method public final getMaxRange$rxdownload3_release()I
    .registers 2

    .line 26
    sget v0, Lzlc/season/rxdownload3/core/DownloadConfig;->maxRange:I

    return v0
.end method

.method public final getMissionBox$rxdownload3_release()Lzlc/season/rxdownload3/core/MissionBox;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 44
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    return-object v0
.end method

.method public final getNotificationFactory$rxdownload3_release()Lzlc/season/rxdownload3/notification/NotificationFactory;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 48
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->notificationFactory:Lzlc/season/rxdownload3/notification/NotificationFactory;

    if-nez v0, :cond_9

    const-string v1, "notificationFactory"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object v0
.end method

.method public final getNotificationPeriod$rxdownload3_release()J
    .registers 3

    .line 47
    sget-wide v0, Lzlc/season/rxdownload3/core/DownloadConfig;->notificationPeriod:J

    return-wide v0
.end method

.method public final getOkHttpClientFactory$rxdownload3_release()Lzlc/season/rxdownload3/http/OkHttpClientFactory;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 50
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->okHttpClientFactory:Lzlc/season/rxdownload3/http/OkHttpClientFactory;

    return-object v0
.end method

.method public final getRangeDownloadSize$rxdownload3_release()J
    .registers 3

    .line 23
    sget-wide v0, Lzlc/season/rxdownload3/core/DownloadConfig;->rangeDownloadSize:J

    return-wide v0
.end method

.method public final getUseHeadMethod$rxdownload3_release()Z
    .registers 2

    .line 39
    sget-boolean v0, Lzlc/season/rxdownload3/core/DownloadConfig;->useHeadMethod:Z

    return v0
.end method

.method public final init(Lzlc/season/rxdownload3/core/DownloadConfig$Builder;)V
    .registers 4
    .param p1    # Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->context:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->getDebug$rxdownload3_release()Z

    move-result v0

    sput-boolean v0, Lzlc/season/rxdownload3/core/DownloadConfig;->DEBUG:Z

    .line 59
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->getFps$rxdownload3_release()I

    move-result v0

    sput v0, Lzlc/season/rxdownload3/core/DownloadConfig;->fps:I

    .line 60
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->getMaxMission$rxdownload3_release()I

    move-result v0

    sput v0, Lzlc/season/rxdownload3/core/DownloadConfig;->maxMission:I

    .line 61
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->getMaxRange$rxdownload3_release()I

    move-result v0

    sput v0, Lzlc/season/rxdownload3/core/DownloadConfig;->maxRange:I

    .line 62
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->getRangeDownloadSize$rxdownload3_release()J

    move-result-wide v0

    sput-wide v0, Lzlc/season/rxdownload3/core/DownloadConfig;->rangeDownloadSize:J

    .line 63
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->getDefaultSavePath$rxdownload3_release()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->defaultSavePath:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->getAutoStart$rxdownload3_release()Z

    move-result v0

    sput-boolean v0, Lzlc/season/rxdownload3/core/DownloadConfig;->autoStart:Z

    .line 66
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->getUseHeadMethod$rxdownload3_release()Z

    move-result v0

    sput-boolean v0, Lzlc/season/rxdownload3/core/DownloadConfig;->useHeadMethod:Z

    .line 68
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->getEnableDb$rxdownload3_release()Z

    move-result v0

    sput-boolean v0, Lzlc/season/rxdownload3/core/DownloadConfig;->enableDb:Z

    .line 69
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->getDbActor$rxdownload3_release()Lzlc/season/rxdownload3/database/DbActor;

    move-result-object v0

    sput-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->dbActor:Lzlc/season/rxdownload3/database/DbActor;

    .line 71
    sget-boolean v0, Lzlc/season/rxdownload3/core/DownloadConfig;->enableDb:Z

    if-eqz v0, :cond_57

    .line 72
    sget-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->dbActor:Lzlc/season/rxdownload3/database/DbActor;

    if-nez v0, :cond_54

    const-string v1, "dbActor"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_54
    invoke-interface {v0}, Lzlc/season/rxdownload3/database/DbActor;->init()V

    .line 75
    :cond_57
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->getEnableNotification$rxdownload3_release()Z

    move-result v0

    sput-boolean v0, Lzlc/season/rxdownload3/core/DownloadConfig;->enableNotification:Z

    .line 76
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->getNotificationFactory$rxdownload3_release()Lzlc/season/rxdownload3/notification/NotificationFactory;

    move-result-object v0

    sput-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->notificationFactory:Lzlc/season/rxdownload3/notification/NotificationFactory;

    .line 77
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->getNotificationPeriod$rxdownload3_release()J

    move-result-wide v0

    sput-wide v0, Lzlc/season/rxdownload3/core/DownloadConfig;->notificationPeriod:J

    .line 79
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->getOkHttpClientFactory$rxdownload3_release()Lzlc/season/rxdownload3/http/OkHttpClientFactory;

    move-result-object v0

    sput-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->okHttpClientFactory:Lzlc/season/rxdownload3/http/OkHttpClientFactory;

    .line 81
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->getExtensions$rxdownload3_release()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzlc/season/rxdownload3/core/DownloadConfig;->extensions:Ljava/util/List;

    .line 83
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->getEnableService$rxdownload3_release()Z

    move-result p1

    if-eqz p1, :cond_83

    .line 85
    new-instance p1, Lzlc/season/rxdownload3/core/RemoteMissionBox;

    invoke-direct {p1}, Lzlc/season/rxdownload3/core/RemoteMissionBox;-><init>()V

    check-cast p1, Lzlc/season/rxdownload3/core/MissionBox;

    goto :goto_8a

    .line 87
    :cond_83
    new-instance p1, Lzlc/season/rxdownload3/core/LocalMissionBox;

    invoke-direct {p1}, Lzlc/season/rxdownload3/core/LocalMissionBox;-><init>()V

    check-cast p1, Lzlc/season/rxdownload3/core/MissionBox;

    .line 84
    :goto_8a
    sput-object p1, Lzlc/season/rxdownload3/core/DownloadConfig;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    return-void
.end method

.method public final setAutoStart$rxdownload3_release(Z)V
    .registers 2

    .line 34
    sput-boolean p1, Lzlc/season/rxdownload3/core/DownloadConfig;->autoStart:Z

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 30
    sput-object p1, Lzlc/season/rxdownload3/core/DownloadConfig;->context:Landroid/content/Context;

    return-void
.end method

.method public final setDEBUG$rxdownload3_release(Z)V
    .registers 2

    .line 17
    sput-boolean p1, Lzlc/season/rxdownload3/core/DownloadConfig;->DEBUG:Z

    return-void
.end method

.method public final setDbActor$rxdownload3_release(Lzlc/season/rxdownload3/database/DbActor;)V
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/database/DbActor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sput-object p1, Lzlc/season/rxdownload3/core/DownloadConfig;->dbActor:Lzlc/season/rxdownload3/database/DbActor;

    return-void
.end method

.method public final setDefaultSavePath$rxdownload3_release(Ljava/lang/String;)V
    .registers 2

    .line 28
    sput-object p1, Lzlc/season/rxdownload3/core/DownloadConfig;->defaultSavePath:Ljava/lang/String;

    return-void
.end method

.method public final setEnableDb$rxdownload3_release(Z)V
    .registers 2

    .line 41
    sput-boolean p1, Lzlc/season/rxdownload3/core/DownloadConfig;->enableDb:Z

    return-void
.end method

.method public final setEnableNotification$rxdownload3_release(Z)V
    .registers 2

    .line 46
    sput-boolean p1, Lzlc/season/rxdownload3/core/DownloadConfig;->enableNotification:Z

    return-void
.end method

.method public final setExtensions$rxdownload3_release(Ljava/util/List;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lzlc/season/rxdownload3/extension/Extension;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sput-object p1, Lzlc/season/rxdownload3/core/DownloadConfig;->extensions:Ljava/util/List;

    return-void
.end method

.method public final setFps$rxdownload3_release(I)V
    .registers 2

    .line 32
    sput p1, Lzlc/season/rxdownload3/core/DownloadConfig;->fps:I

    return-void
.end method

.method public final setMaxMission$rxdownload3_release(I)V
    .registers 2

    .line 25
    sput p1, Lzlc/season/rxdownload3/core/DownloadConfig;->maxMission:I

    return-void
.end method

.method public final setMaxRange$rxdownload3_release(I)V
    .registers 2

    .line 26
    sput p1, Lzlc/season/rxdownload3/core/DownloadConfig;->maxRange:I

    return-void
.end method

.method public final setMissionBox$rxdownload3_release(Lzlc/season/rxdownload3/core/MissionBox;)V
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/core/MissionBox;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sput-object p1, Lzlc/season/rxdownload3/core/DownloadConfig;->missionBox:Lzlc/season/rxdownload3/core/MissionBox;

    return-void
.end method

.method public final setNotificationFactory$rxdownload3_release(Lzlc/season/rxdownload3/notification/NotificationFactory;)V
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/notification/NotificationFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sput-object p1, Lzlc/season/rxdownload3/core/DownloadConfig;->notificationFactory:Lzlc/season/rxdownload3/notification/NotificationFactory;

    return-void
.end method

.method public final setNotificationPeriod$rxdownload3_release(J)V
    .registers 3

    .line 47
    sput-wide p1, Lzlc/season/rxdownload3/core/DownloadConfig;->notificationPeriod:J

    return-void
.end method

.method public final setOkHttpClientFactory$rxdownload3_release(Lzlc/season/rxdownload3/http/OkHttpClientFactory;)V
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/http/OkHttpClientFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sput-object p1, Lzlc/season/rxdownload3/core/DownloadConfig;->okHttpClientFactory:Lzlc/season/rxdownload3/http/OkHttpClientFactory;

    return-void
.end method

.method public final setRangeDownloadSize$rxdownload3_release(J)V
    .registers 3

    .line 23
    sput-wide p1, Lzlc/season/rxdownload3/core/DownloadConfig;->rangeDownloadSize:J

    return-void
.end method

.method public final setUseHeadMethod$rxdownload3_release(Z)V
    .registers 2

    .line 39
    sput-boolean p1, Lzlc/season/rxdownload3/core/DownloadConfig;->useHeadMethod:Z

    return-void
.end method
