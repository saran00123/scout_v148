.class public final Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
.super Ljava/lang/Object;
.source "DownloadConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzlc/season/rxdownload3/core/DownloadConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzlc/season/rxdownload3/core/DownloadConfig$Builder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadConfig.kt\nzlc/season/rxdownload3/core/DownloadConfig$Builder\n*L\n1#1,216:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001e\u0018\u0000 d2\u00020\u0001:\u0001dB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010R\u001a\u00020\u00002\u000e\u0010S\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020)0(J\u000e\u0010T\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u0006J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u0006J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u0006J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u0006J\u000e\u0010V\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010W\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0006J\u000e\u0010X\u001a\u00020\u00002\u0006\u0010Y\u001a\u00020\u0017J\u0010\u0010Z\u001a\u00020\u00002\u0006\u0010.\u001a\u00020/H\u0007J\u000e\u0010[\u001a\u00020\u00002\u0006\u0010\\\u001a\u00020/J\u000e\u0010]\u001a\u00020\u00002\u0006\u0010\\\u001a\u00020/J\u000e\u0010^\u001a\u00020\u00002\u0006\u0010:\u001a\u00020;J\u000e\u0010_\u001a\u00020\u00002\u0006\u0010`\u001a\u00020AJ\u000e\u0010a\u001a\u00020\u00002\u0006\u0010F\u001a\u00020GJ\u000e\u0010b\u001a\u00020\u00002\u0006\u0010c\u001a\u00020AJ\u000e\u0010O\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u0006R\u001a\u0010\u0005\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000eX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0008\"\u0004\u0008\u0015\u0010\nR\"\u0010\u0016\u001a\n \u0018*\u0004\u0018\u00010\u00170\u0017X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0008\"\u0004\u0008\u001f\u0010\nR\u001a\u0010 \u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0008\"\u0004\u0008\"\u0010\nR\u001a\u0010#\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0008\"\u0004\u0008%\u0010\nR(\u0010&\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020)0(0\'X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001a\u0010.\u001a\u00020/X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001a\u00104\u001a\u00020/X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00101\"\u0004\u00086\u00103R\u001a\u00107\u001a\u00020/X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00101\"\u0004\u00089\u00103R\u001a\u0010:\u001a\u00020;X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u001a\u0010@\u001a\u00020AX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010ER\u001a\u0010F\u001a\u00020GX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\u001a\u0010L\u001a\u00020AX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010C\"\u0004\u0008N\u0010ER\u001a\u0010O\u001a\u00020\u0006X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008P\u0010\u0008\"\u0004\u0008Q\u0010\n\u00a8\u0006e"
    }
    d2 = {
        "Lzlc/season/rxdownload3/core/DownloadConfig$Builder;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "autoStart",
        "",
        "getAutoStart$rxdownload3_release",
        "()Z",
        "setAutoStart$rxdownload3_release",
        "(Z)V",
        "getContext",
        "()Landroid/content/Context;",
        "dbActor",
        "Lzlc/season/rxdownload3/database/DbActor;",
        "getDbActor$rxdownload3_release",
        "()Lzlc/season/rxdownload3/database/DbActor;",
        "setDbActor$rxdownload3_release",
        "(Lzlc/season/rxdownload3/database/DbActor;)V",
        "debug",
        "getDebug$rxdownload3_release",
        "setDebug$rxdownload3_release",
        "defaultSavePath",
        "",
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
        "enableService",
        "getEnableService$rxdownload3_release",
        "setEnableService$rxdownload3_release",
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
        "addExtension",
        "extension",
        "enableAutoStart",
        "enable",
        "setDbActor",
        "setDebug",
        "setDefaultPath",
        "path",
        "setFps",
        "setMaxMission",
        "max",
        "setMaxRange",
        "setNotificationFactory",
        "setNotificationPeriod",
        "period",
        "setOkHttpClientFacotry",
        "setRangeDownloadSize",
        "size",
        "Companion",
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
.field public static final Companion:Lzlc/season/rxdownload3/core/DownloadConfig$Builder$Companion;


# instance fields
.field private autoStart:Z

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private dbActor:Lzlc/season/rxdownload3/database/DbActor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private debug:Z

.field private defaultSavePath:Ljava/lang/String;

.field private enableDb:Z

.field private enableNotification:Z

.field private enableService:Z

.field private extensions:Ljava/util/List;
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

.field private fps:I

.field private maxMission:I

.field private maxRange:I

.field private notificationFactory:Lzlc/season/rxdownload3/notification/NotificationFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private notificationPeriod:J

.field private okHttpClientFactory:Lzlc/season/rxdownload3/http/OkHttpClientFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rangeDownloadSize:J

.field private useHeadMethod:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->Companion:Lzlc/season/rxdownload3/core/DownloadConfig$Builder$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->context:Landroid/content/Context;

    const/4 p1, 0x3

    .line 92
    iput p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->maxMission:I

    .line 93
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->maxRange:I

    const-wide/32 v1, 0x400000

    .line 94
    iput-wide v1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->rangeDownloadSize:J

    .line 96
    iput-boolean v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->debug:Z

    .line 100
    iput-boolean v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->useHeadMethod:Z

    const/16 p1, 0x1e

    .line 102
    iput p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->fps:I

    const-wide/16 v0, 0x2

    .line 104
    iput-wide v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->notificationPeriod:J

    .line 106
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v0, "getExternalStoragePublic\u2026tory(DIRECTORY_DOWNLOADS)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->defaultSavePath:Ljava/lang/String;

    .line 109
    new-instance p1, Lzlc/season/rxdownload3/database/SQLiteActor;

    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lzlc/season/rxdownload3/database/SQLiteActor;-><init>(Landroid/content/Context;)V

    check-cast p1, Lzlc/season/rxdownload3/database/DbActor;

    iput-object p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->dbActor:Lzlc/season/rxdownload3/database/DbActor;

    .line 114
    new-instance p1, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;

    invoke-direct {p1}, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;-><init>()V

    check-cast p1, Lzlc/season/rxdownload3/notification/NotificationFactory;

    iput-object p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->notificationFactory:Lzlc/season/rxdownload3/notification/NotificationFactory;

    .line 116
    new-instance p1, Lzlc/season/rxdownload3/http/OkHttpClientFactoryImpl;

    invoke-direct {p1}, Lzlc/season/rxdownload3/http/OkHttpClientFactoryImpl;-><init>()V

    check-cast p1, Lzlc/season/rxdownload3/http/OkHttpClientFactory;

    iput-object p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->okHttpClientFactory:Lzlc/season/rxdownload3/http/OkHttpClientFactory;

    .line 118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->extensions:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    .line 91
    invoke-direct {p0, p1}, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final addExtension(Ljava/lang/Class;)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
    .registers 3
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lzlc/season/rxdownload3/extension/Extension;",
            ">;)",
            "Lzlc/season/rxdownload3/core/DownloadConfig$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "extension"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->extensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final enableAutoStart(Z)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 163
    iput-boolean p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->autoStart:Z

    return-object p0
.end method

.method public final enableDb(Z)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 193
    iput-boolean p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->enableDb:Z

    return-object p0
.end method

.method public final enableNotification(Z)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 178
    iput-boolean p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->enableNotification:Z

    return-object p0
.end method

.method public final enableService(Z)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 173
    iput-boolean p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->enableService:Z

    return-object p0
.end method

.method public final getAutoStart$rxdownload3_release()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->autoStart:Z

    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 91
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getDbActor$rxdownload3_release()Lzlc/season/rxdownload3/database/DbActor;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 109
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->dbActor:Lzlc/season/rxdownload3/database/DbActor;

    return-object v0
.end method

.method public final getDebug$rxdownload3_release()Z
    .registers 2

    .line 96
    iget-boolean v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->debug:Z

    return v0
.end method

.method public final getDefaultSavePath$rxdownload3_release()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->defaultSavePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getEnableDb$rxdownload3_release()Z
    .registers 2

    .line 108
    iget-boolean v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->enableDb:Z

    return v0
.end method

.method public final getEnableNotification$rxdownload3_release()Z
    .registers 2

    .line 113
    iget-boolean v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->enableNotification:Z

    return v0
.end method

.method public final getEnableService$rxdownload3_release()Z
    .registers 2

    .line 111
    iget-boolean v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->enableService:Z

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

    .line 118
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->extensions:Ljava/util/List;

    return-object v0
.end method

.method public final getFps$rxdownload3_release()I
    .registers 2

    .line 102
    iget v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->fps:I

    return v0
.end method

.method public final getMaxMission$rxdownload3_release()I
    .registers 2

    .line 92
    iget v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->maxMission:I

    return v0
.end method

.method public final getMaxRange$rxdownload3_release()I
    .registers 2

    .line 93
    iget v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->maxRange:I

    return v0
.end method

.method public final getNotificationFactory$rxdownload3_release()Lzlc/season/rxdownload3/notification/NotificationFactory;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 114
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->notificationFactory:Lzlc/season/rxdownload3/notification/NotificationFactory;

    return-object v0
.end method

.method public final getNotificationPeriod$rxdownload3_release()J
    .registers 3

    .line 104
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->notificationPeriod:J

    return-wide v0
.end method

.method public final getOkHttpClientFactory$rxdownload3_release()Lzlc/season/rxdownload3/http/OkHttpClientFactory;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 116
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->okHttpClientFactory:Lzlc/season/rxdownload3/http/OkHttpClientFactory;

    return-object v0
.end method

.method public final getRangeDownloadSize$rxdownload3_release()J
    .registers 3

    .line 94
    iget-wide v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->rangeDownloadSize:J

    return-wide v0
.end method

.method public final getUseHeadMethod$rxdownload3_release()Z
    .registers 2

    .line 100
    iget-boolean v0, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->useHeadMethod:Z

    return v0
.end method

.method public final setAutoStart$rxdownload3_release(Z)V
    .registers 2

    .line 98
    iput-boolean p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->autoStart:Z

    return-void
.end method

.method public final setDbActor(Lzlc/season/rxdownload3/database/DbActor;)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/database/DbActor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "dbActor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iput-object p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->dbActor:Lzlc/season/rxdownload3/database/DbActor;

    return-object p0
.end method

.method public final setDbActor$rxdownload3_release(Lzlc/season/rxdownload3/database/DbActor;)V
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/database/DbActor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->dbActor:Lzlc/season/rxdownload3/database/DbActor;

    return-void
.end method

.method public final setDebug(Z)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 127
    iput-boolean p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->debug:Z

    return-object p0
.end method

.method public final setDebug$rxdownload3_release(Z)V
    .registers 2

    .line 96
    iput-boolean p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->debug:Z

    return-void
.end method

.method public final setDefaultPath(Ljava/lang/String;)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iput-object p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->defaultSavePath:Ljava/lang/String;

    return-object p0
.end method

.method public final setDefaultSavePath$rxdownload3_release(Ljava/lang/String;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->defaultSavePath:Ljava/lang/String;

    return-void
.end method

.method public final setEnableDb$rxdownload3_release(Z)V
    .registers 2

    .line 108
    iput-boolean p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->enableDb:Z

    return-void
.end method

.method public final setEnableNotification$rxdownload3_release(Z)V
    .registers 2

    .line 113
    iput-boolean p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->enableNotification:Z

    return-void
.end method

.method public final setEnableService$rxdownload3_release(Z)V
    .registers 2

    .line 111
    iput-boolean p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->enableService:Z

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

    .line 118
    iput-object p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->extensions:Ljava/util/List;

    return-void
.end method

.method public final setFps(I)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
    .registers 2
    .annotation runtime Lkotlin/Deprecated;
        message = "This method already deprecated"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 153
    iput p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->fps:I

    return-object p0
.end method

.method public final setFps$rxdownload3_release(I)V
    .registers 2

    .line 102
    iput p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->fps:I

    return-void
.end method

.method public final setMaxMission(I)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 132
    iput p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->maxMission:I

    return-object p0
.end method

.method public final setMaxMission$rxdownload3_release(I)V
    .registers 2

    .line 92
    iput p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->maxMission:I

    return-void
.end method

.method public final setMaxRange(I)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 137
    iput p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->maxRange:I

    return-object p0
.end method

.method public final setMaxRange$rxdownload3_release(I)V
    .registers 2

    .line 93
    iput p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->maxRange:I

    return-void
.end method

.method public final setNotificationFactory(Lzlc/season/rxdownload3/notification/NotificationFactory;)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/notification/NotificationFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "notificationFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iput-object p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->notificationFactory:Lzlc/season/rxdownload3/notification/NotificationFactory;

    return-object p0
.end method

.method public final setNotificationFactory$rxdownload3_release(Lzlc/season/rxdownload3/notification/NotificationFactory;)V
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/notification/NotificationFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->notificationFactory:Lzlc/season/rxdownload3/notification/NotificationFactory;

    return-void
.end method

.method public final setNotificationPeriod(J)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 158
    iput-wide p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->notificationPeriod:J

    return-object p0
.end method

.method public final setNotificationPeriod$rxdownload3_release(J)V
    .registers 3

    .line 104
    iput-wide p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->notificationPeriod:J

    return-void
.end method

.method public final setOkHttpClientFacotry(Lzlc/season/rxdownload3/http/OkHttpClientFactory;)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/http/OkHttpClientFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "okHttpClientFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iput-object p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->okHttpClientFactory:Lzlc/season/rxdownload3/http/OkHttpClientFactory;

    return-object p0
.end method

.method public final setOkHttpClientFactory$rxdownload3_release(Lzlc/season/rxdownload3/http/OkHttpClientFactory;)V
    .registers 3
    .param p1    # Lzlc/season/rxdownload3/http/OkHttpClientFactory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->okHttpClientFactory:Lzlc/season/rxdownload3/http/OkHttpClientFactory;

    return-void
.end method

.method public final setRangeDownloadSize(J)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
    .registers 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 142
    iput-wide p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->rangeDownloadSize:J

    return-object p0
.end method

.method public final setRangeDownloadSize$rxdownload3_release(J)V
    .registers 3

    .line 94
    iput-wide p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->rangeDownloadSize:J

    return-void
.end method

.method public final setUseHeadMethod$rxdownload3_release(Z)V
    .registers 2

    .line 100
    iput-boolean p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->useHeadMethod:Z

    return-void
.end method

.method public final useHeadMethod(Z)Lzlc/season/rxdownload3/core/DownloadConfig$Builder;
    .registers 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 168
    iput-boolean p1, p0, Lzlc/season/rxdownload3/core/DownloadConfig$Builder;->useHeadMethod:Z

    return-object p0
.end method
