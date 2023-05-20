.class public Lcom/tutk/sample/AVAPI/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field static final UID:Ljava/lang/String; = "F3YA853WR9B4UGPGY161"


# instance fields
.field public TAG:Ljava/lang/String;

.field myDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "TestFfmpegActivity"

    .line 22
    iput-object v0, p0, Lcom/tutk/sample/AVAPI/MainActivity;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/pilotlab/rollereye/Services/NetWorkBacService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_14

    .line 46
    invoke-virtual {p0, p1}, Lcom/tutk/sample/AVAPI/MainActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_17

    .line 48
    :cond_14
    invoke-virtual {p0, p1}, Lcom/tutk/sample/AVAPI/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_17
    const-wide/16 v0, 0x6e

    .line 51
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/tutk/sample/AVAPI/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/tutk/sample/AVAPI/MainActivity$1;-><init>(Lcom/tutk/sample/AVAPI/MainActivity;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    const/4 p1, 0x0

    .line 76
    new-instance v0, Lcom/tutk/sample/AVAPI/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/tutk/sample/AVAPI/MainActivity$2;-><init>(Lcom/tutk/sample/AVAPI/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
