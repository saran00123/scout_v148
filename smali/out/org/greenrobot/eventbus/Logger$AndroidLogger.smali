.class public Lorg/greenrobot/eventbus/Logger$AndroidLogger;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lorg/greenrobot/eventbus/Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidLogger"
.end annotation


# static fields
.field static final ANDROID_LOG_AVAILABLE:Z


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "android.util.Log"

    .line 34
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_7} :catch_a

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    .line 38
    :catch_a
    :cond_a
    sput-boolean v0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->ANDROID_LOG_AVAILABLE:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->tag:Ljava/lang/String;

    return-void
.end method

.method public static isAndroidLogAvailable()Z
    .registers 1

    .line 42
    sget-boolean v0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->ANDROID_LOG_AVAILABLE:Z

    return v0
.end method


# virtual methods
.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .registers 4

    .line 53
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    if-eq p1, v0, :cond_d

    .line 54
    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->mapLevel(Ljava/util/logging/Level;)I

    move-result p1

    iget-object v0, p0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->tag:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 59
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    if-eq p1, v0, :cond_25

    .line 61
    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->mapLevel(Ljava/util/logging/Level;)I

    move-result p1

    iget-object v0, p0, Lorg/greenrobot/eventbus/Logger$AndroidLogger;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method protected mapLevel(Ljava/util/logging/Level;)I
    .registers 3

    .line 66
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result p1

    const/16 v0, 0x320

    if-ge p1, v0, :cond_10

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_e

    const/4 p1, 0x2

    return p1

    :cond_e
    const/4 p1, 0x3

    return p1

    :cond_10
    const/16 v0, 0x384

    if-ge p1, v0, :cond_16

    const/4 p1, 0x4

    return p1

    :cond_16
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_1c

    const/4 p1, 0x5

    return p1

    :cond_1c
    const/4 p1, 0x6

    return p1
.end method
