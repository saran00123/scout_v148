.class public Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;
.super Landroid/app/Dialog;
.source "LoadingDialog.java"


# instance fields
.field private mDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f120124

    .line 24
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0d0070

    .line 25
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 26
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->setCancelable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    const v0, 0x7f120124

    .line 30
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0d0070

    .line 31
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->setContentView(I)V

    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->setCancelable(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->mDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method


# virtual methods
.method public autoShow()V
    .registers 4

    .line 69
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 70
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

    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog$1;-><init>(Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public autoShow(I)V
    .registers 4

    .line 95
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    int-to-long v0, p1

    .line 96
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

    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog$2;

    invoke-direct {v0, p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog$2;-><init>(Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public dismiss()V
    .registers 2

    .line 134
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 135
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 137
    :cond_9
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_10

    .line 138
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_10
    return-void
.end method

.method public fullScreen()V
    .registers 3

    .line 121
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 5

    const v0, 0x7f0a0456

    if-eqz p1, :cond_17

    .line 39
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 42
    :cond_17
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_20
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 5

    const v0, 0x7f0a0457

    if-eqz p1, :cond_17

    .line 49
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_20

    .line 52
    :cond_17
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_20
    return-void
.end method

.method public show()V
    .registers 3

    .line 58
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 59
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->fullScreen()V

    .line 60
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 61
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 62
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1c
    return-void
.end method
