.class public Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;
.super Landroid/app/Dialog;
.source "WheelSwitchDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f120123

    .line 26
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 27
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->mContext:Landroid/content/Context;

    const p1, 0x7f0d006e

    .line 28
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->setCancelable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    const v0, 0x7f120123

    .line 33
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->mContext:Landroid/content/Context;

    const p1, 0x7f0d006e

    .line 35
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->setCanceledOnTouchOutside(Z)V

    .line 37
    invoke-virtual {p0, p2}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->setCancelable(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method


# virtual methods
.method public autoShow()V
    .registers 4

    .line 59
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->show()V

    .line 60
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog$1;-><init>(Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public autoShow(I)V
    .registers 4

    .line 85
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->show()V

    int-to-long v0, p1

    .line 86
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog$2;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog$2;-><init>(Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public dismiss()V
    .registers 2

    .line 124
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 125
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 127
    :cond_9
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_10

    .line 128
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_10
    return-void
.end method

.method public fullScreen()V
    .registers 3

    .line 111
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public show()V
    .registers 4

    .line 42
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_47

    .line 43
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 46
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 49
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->fullScreen()V

    .line 50
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 51
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 52
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/WheelSwitchDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_47
    return-void
.end method
