.class public final Lzlc/season/rxdownload3/core/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;,
        Lzlc/season/rxdownload3/core/DownloadService$BoolCallback;,
        Lzlc/season/rxdownload3/core/DownloadService$StatusCallback;,
        Lzlc/season/rxdownload3/core/DownloadService$FileCallback;,
        Lzlc/season/rxdownload3/core/DownloadService$SuccessCallback;,
        Lzlc/season/rxdownload3/core/DownloadService$ErrorCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0006\u0012\u0013\u0014\u0015\u0016\u0017B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\"\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0016R\u0012\u0010\u0003\u001a\u00060\u0004R\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lzlc/season/rxdownload3/core/DownloadService;",
        "Landroid/app/Service;",
        "()V",
        "binder",
        "Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;",
        "missionBox",
        "Lzlc/season/rxdownload3/core/LocalMissionBox;",
        "onBind",
        "Landroid/os/IBinder;",
        "intent",
        "Landroid/content/Intent;",
        "onCreate",
        "",
        "onDestroy",
        "onStartCommand",
        "",
        "flags",
        "startId",
        "BoolCallback",
        "DownloadBinder",
        "ErrorCallback",
        "FileCallback",
        "StatusCallback",
        "SuccessCallback",
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
.field private final binder:Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;

.field private final missionBox:Lzlc/season/rxdownload3/core/LocalMissionBox;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 13
    new-instance v0, Lzlc/season/rxdownload3/core/LocalMissionBox;

    invoke-direct {v0}, Lzlc/season/rxdownload3/core/LocalMissionBox;-><init>()V

    iput-object v0, p0, Lzlc/season/rxdownload3/core/DownloadService;->missionBox:Lzlc/season/rxdownload3/core/LocalMissionBox;

    .line 14
    new-instance v0, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;

    invoke-direct {v0, p0}, Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;-><init>(Lzlc/season/rxdownload3/core/DownloadService;)V

    iput-object v0, p0, Lzlc/season/rxdownload3/core/DownloadService;->binder:Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;

    return-void
.end method

.method public static final synthetic access$getMissionBox$p(Lzlc/season/rxdownload3/core/DownloadService;)Lzlc/season/rxdownload3/core/LocalMissionBox;
    .registers 1

    .line 12
    iget-object p0, p0, Lzlc/season/rxdownload3/core/DownloadService;->missionBox:Lzlc/season/rxdownload3/core/LocalMissionBox;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p1, "bind"

    .line 28
    invoke-static {p1}, Lzlc/season/rxdownload3/helper/LoggerKt;->logd(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lzlc/season/rxdownload3/core/DownloadService;->binder:Lzlc/season/rxdownload3/core/DownloadService$DownloadBinder;

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .registers 2

    .line 18
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "create"

    .line 19
    invoke-static {v0}, Lzlc/season/rxdownload3/helper/LoggerKt;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    const-string v0, "destroy"

    .line 33
    invoke-static {v0}, Lzlc/season/rxdownload3/helper/LoggerKt;->logd(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lzlc/season/rxdownload3/core/DownloadService;->missionBox:Lzlc/season/rxdownload3/core/LocalMissionBox;

    invoke-virtual {v0}, Lzlc/season/rxdownload3/core/LocalMissionBox;->stopAll()Lio/reactivex/Maybe;

    .line 35
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "start"

    .line 23
    invoke-static {v0}, Lzlc/season/rxdownload3/helper/LoggerKt;->logd(Ljava/lang/String;)V

    .line 24
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
