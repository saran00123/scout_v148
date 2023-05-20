.class public final Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;
.super Ljava/lang/Object;
.source "NotificationFactoryImpl.kt"

# interfaces
.implements Lzlc/season/rxdownload3/notification/NotificationFactory;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationFactoryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationFactoryImpl.kt\nzlc/season/rxdownload3/notification/NotificationFactoryImpl\n*L\n1#1,129:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\"\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J \u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0013\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0008H\u0002J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\tH\u0002J\u0018\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0010\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\tH\u0002J\u0018\u0010\u0019\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0010\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0010\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\tH\u0002J\u0010\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\tH\u0002J\u0010\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\tH\u0002J\u0010\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\tH\u0002J\u0010\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;",
        "Lzlc/season/rxdownload3/notification/NotificationFactory;",
        "()V",
        "channelId",
        "",
        "channelName",
        "map",
        "",
        "Lzlc/season/rxdownload3/core/RealMission;",
        "Landroidx/core/app/NotificationCompat$Builder;",
        "build",
        "Landroid/app/Notification;",
        "context",
        "Landroid/content/Context;",
        "mission",
        "status",
        "Lzlc/season/rxdownload3/core/Status;",
        "createChannelForOreo",
        "",
        "createNotificationBuilder",
        "deleted",
        "dismissProgress",
        "builder",
        "downloading",
        "failed",
        "get",
        "init",
        "installed",
        "installing",
        "succeed",
        "suspend",
        "waiting",
        "rxdownload3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final channelId:Ljava/lang/String;

.field private final channelName:Ljava/lang/String;

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lzlc/season/rxdownload3/core/RealMission;",
            "Landroidx/core/app/NotificationCompat$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RxDownload"

    .line 19
    iput-object v0, p0, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->channelId:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->channelName:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->map:Ljava/util/Map;

    return-void
.end method

.method private final createChannelForOreo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_34

    const-string v0, "notification"

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2c

    check-cast p1, Landroid/app/NotificationManager;

    .line 120
    new-instance v0, Landroid/app/NotificationChannel;

    check-cast p3, Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-direct {v0, p2, p3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p2, 0x1

    .line 121
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 122
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const p3, -0xff0100

    .line 123
    invoke-virtual {v0, p3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 124
    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 126
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_34

    .line 119
    :cond_2c
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_34
    :goto_34
    return-void
.end method

.method private final createNotificationBuilder(Lzlc/season/rxdownload3/core/RealMission;Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 5

    .line 112
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->channelId:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    sget p2, Lzlc/season/rxdownload3/R$drawable;->ic_download:I

    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 114
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object p1

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Mission;->getSaveName()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string p2, "Builder(context, channel\u2026(mission.actual.saveName)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final deleted(Landroid/content/Context;Lzlc/season/rxdownload3/core/RealMission;)Landroid/app/Notification;
    .registers 4

    const-string v0, "notification"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_13

    check-cast p1, Landroid/app/NotificationManager;

    .line 46
    invoke-virtual {p2}, Lzlc/season/rxdownload3/core/RealMission;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 p1, 0x0

    return-object p1

    .line 45
    :cond_13
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final dismissProgress(Landroidx/core/app/NotificationCompat$Builder;)V
    .registers 3

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, v0, v0, v0}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private final downloading(Landroidx/core/app/NotificationCompat$Builder;Lzlc/season/rxdownload3/core/Status;)Landroid/app/Notification;
    .registers 7

    const-string v0, "\u4e0b\u8f7d\u4e2d"

    .line 75
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 76
    invoke-virtual {p2}, Lzlc/season/rxdownload3/core/Status;->getChunkFlag()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    const/4 p2, 0x1

    .line 77
    invoke-virtual {p1, v1, v1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_20

    .line 79
    :cond_13
    invoke-virtual {p2}, Lzlc/season/rxdownload3/core/Status;->getTotalSize()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p2}, Lzlc/season/rxdownload3/core/Status;->getDownloadSize()J

    move-result-wide v2

    long-to-int p2, v2

    invoke-virtual {p1, v0, p2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 81
    :goto_20
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "builder.build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final failed(Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .registers 3

    const-string v0, "\u4e0b\u8f7d\u5931\u8d25"

    .line 85
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 86
    invoke-direct {p0, p1}, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->dismissProgress(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 87
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string v0, "builder.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final get(Lzlc/season/rxdownload3/core/RealMission;Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;
    .registers 4

    .line 102
    iget-object v0, p0, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_13

    .line 104
    invoke-direct {p0, p1, p2}, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->createNotificationBuilder(Lzlc/season/rxdownload3/core/RealMission;Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 105
    iget-object p2, p0, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->map:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_13
    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/RealMission;->getActual()Lzlc/season/rxdownload3/core/Mission;

    move-result-object p1

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Mission;->getSaveName()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string p2, "builder.setContentTitle(mission.actual.saveName)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final installed(Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .registers 3

    const-string v0, "\u5b89\u88c5\u5b8c\u6210"

    .line 51
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 52
    invoke-direct {p0, p1}, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->dismissProgress(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 53
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string v0, "builder.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final installing(Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .registers 3

    const-string v0, "\u5b89\u88c5\u4e2d"

    .line 57
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 58
    invoke-direct {p0, p1}, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->dismissProgress(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 59
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string v0, "builder.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final succeed(Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .registers 3

    const-string v0, "\u4e0b\u8f7d\u6210\u529f"

    .line 69
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 70
    invoke-direct {p0, p1}, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->dismissProgress(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 71
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string v0, "builder.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final suspend(Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .registers 3

    const-string v0, "\u5df2\u6682\u505c"

    .line 63
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 64
    invoke-direct {p0, p1}, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->dismissProgress(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 65
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string v0, "builder.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final waiting(Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;
    .registers 4

    const-string v0, "\u7b49\u5f85\u4e2d"

    .line 91
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 92
    invoke-virtual {p1, v0, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 93
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string v0, "builder.build()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public build(Landroid/content/Context;Lzlc/season/rxdownload3/core/RealMission;Lzlc/season/rxdownload3/core/Status;)Landroid/app/Notification;
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lzlc/season/rxdownload3/core/RealMission;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzlc/season/rxdownload3/core/Status;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mission"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p2, p1}, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->get(Lzlc/season/rxdownload3/core/RealMission;Landroid/content/Context;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 32
    instance-of v1, p3, Lzlc/season/rxdownload3/core/Suspend;

    if-eqz v1, :cond_1c

    invoke-direct {p0, v0}, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->suspend(Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object p1

    goto :goto_5a

    .line 33
    :cond_1c
    instance-of v1, p3, Lzlc/season/rxdownload3/core/Waiting;

    if-eqz v1, :cond_25

    invoke-direct {p0, v0}, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->waiting(Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object p1

    goto :goto_5a

    .line 34
    :cond_25
    instance-of v1, p3, Lzlc/season/rxdownload3/core/Downloading;

    if-eqz v1, :cond_2e

    invoke-direct {p0, v0, p3}, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->downloading(Landroidx/core/app/NotificationCompat$Builder;Lzlc/season/rxdownload3/core/Status;)Landroid/app/Notification;

    move-result-object p1

    goto :goto_5a

    .line 35
    :cond_2e
    instance-of v1, p3, Lzlc/season/rxdownload3/core/Failed;

    if-eqz v1, :cond_37

    invoke-direct {p0, v0}, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->failed(Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object p1

    goto :goto_5a

    .line 36
    :cond_37
    instance-of v1, p3, Lzlc/season/rxdownload3/core/Succeed;

    if-eqz v1, :cond_40

    invoke-direct {p0, v0}, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->succeed(Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object p1

    goto :goto_5a

    .line 37
    :cond_40
    instance-of v1, p3, Lzlc/season/rxdownload3/extension/ApkInstallExtension$Installing;

    if-eqz v1, :cond_49

    invoke-direct {p0, v0}, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->installing(Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object p1

    goto :goto_5a

    .line 38
    :cond_49
    instance-of v1, p3, Lzlc/season/rxdownload3/extension/ApkInstallExtension$Installed;

    if-eqz v1, :cond_52

    invoke-direct {p0, v0}, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->installed(Landroidx/core/app/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object p1

    goto :goto_5a

    .line 39
    :cond_52
    instance-of p3, p3, Lzlc/season/rxdownload3/core/Deleted;

    if-eqz p3, :cond_5b

    invoke-direct {p0, p1, p2}, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->deleted(Landroid/content/Context;Lzlc/season/rxdownload3/core/RealMission;)Landroid/app/Notification;

    move-result-object p1

    :goto_5a
    return-object p1

    :cond_5b
    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->channelId:Ljava/lang/String;

    iget-object v1, p0, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->channelName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lzlc/season/rxdownload3/notification/NotificationFactoryImpl;->createChannelForOreo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
