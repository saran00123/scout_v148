.class public Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BasicDownloadActivity.java"


# static fields
.field private static final iconUrl:Ljava/lang/String; = "http://p5.qhimg.com/dr/72__/t01a362a049573708ae.png"

.field private static final url:Ljava/lang/String; = "http://cdn.llsapp.com/android/LLS-v4.0-595-20160908-143200.apk"


# instance fields
.field action:Landroid/widget/Button;

.field private currentStatus:Lzlc/season/rxdownload3/core/Status;

.field private disposable:Lio/reactivex/disposables/Disposable;

.field percent:Landroid/widget/TextView;

.field progress:Landroid/widget/ProgressBar;

.field status:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 39
    new-instance v0, Lzlc/season/rxdownload3/core/Status;

    invoke-direct {v0}, Lzlc/season/rxdownload3/core/Status;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->currentStatus:Lzlc/season/rxdownload3/core/Status;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->dispatchClick()V

    return-void
.end method

.method static synthetic access$102(Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;Lzlc/season/rxdownload3/core/Status;)Lzlc/season/rxdownload3/core/Status;
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->currentStatus:Lzlc/season/rxdownload3/core/Status;

    return-object p1
.end method

.method static synthetic access$200(Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;Lzlc/season/rxdownload3/core/Status;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->setProgress(Lzlc/season/rxdownload3/core/Status;)V

    return-void
.end method

.method static synthetic access$300(Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;Lzlc/season/rxdownload3/core/Status;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->setActionText(Lzlc/season/rxdownload3/core/Status;)V

    return-void
.end method

.method private create()V
    .registers 9

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 110
    new-instance v0, Lzlc/season/rxdownload3/core/Mission;

    const-string v4, "abcdefg.apk"

    const-string v3, "http://cdn.llsapp.com/android/LLS-v4.0-595-20160908-143200.apk"

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lzlc/season/rxdownload3/core/Mission;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 113
    sget-object v1, Lzlc/season/rxdownload3/RxDownload;->INSTANCE:Lzlc/season/rxdownload3/RxDownload;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lzlc/season/rxdownload3/RxDownload;->create(Lzlc/season/rxdownload3/core/Mission;Z)Lio/reactivex/Flowable;

    move-result-object v0

    .line 114
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity$3;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;)V

    .line 115
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->disposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private dispatchClick()V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->currentStatus:Lzlc/season/rxdownload3/core/Status;

    instance-of v1, v0, Lzlc/season/rxdownload3/core/Normal;

    if-eqz v1, :cond_a

    .line 93
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->start()V

    goto :goto_31

    .line 94
    :cond_a
    instance-of v1, v0, Lzlc/season/rxdownload3/core/Suspend;

    if-eqz v1, :cond_12

    .line 95
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->start()V

    goto :goto_31

    .line 96
    :cond_12
    instance-of v1, v0, Lzlc/season/rxdownload3/core/Failed;

    if-eqz v1, :cond_1a

    .line 97
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->start()V

    goto :goto_31

    .line 98
    :cond_1a
    instance-of v1, v0, Lzlc/season/rxdownload3/core/Downloading;

    if-eqz v1, :cond_22

    .line 99
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->stop()V

    goto :goto_31

    .line 100
    :cond_22
    instance-of v1, v0, Lzlc/season/rxdownload3/core/Succeed;

    if-eqz v1, :cond_2a

    .line 101
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->install()V

    goto :goto_31

    .line 102
    :cond_2a
    instance-of v0, v0, Lzlc/season/rxdownload3/extension/ApkInstallExtension$Installed;

    if-eqz v0, :cond_31

    .line 103
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->open()V

    :cond_31
    :goto_31
    return-void
.end method

.method private initPermission()V
    .registers 4

    .line 59
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->setLogging(Z)V

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 61
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->request([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;)V

    .line 62
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private initView()V
    .registers 2

    const v0, 0x7f0a04c6

    .line 70
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->percent:Landroid/widget/TextView;

    const v0, 0x7f0a054b

    .line 71
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->status:Landroid/widget/TextView;

    const v0, 0x7f0a04d1

    .line 72
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->progress:Landroid/widget/ProgressBar;

    const v0, 0x7f0a003d

    .line 73
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->action:Landroid/widget/Button;

    return-void
.end method

.method private install()V
    .registers 4

    .line 162
    sget-object v0, Lzlc/season/rxdownload3/RxDownload;->INSTANCE:Lzlc/season/rxdownload3/RxDownload;

    const-class v1, Lzlc/season/rxdownload3/extension/ApkInstallExtension;

    const-string v2, "http://cdn.llsapp.com/android/LLS-v4.0-595-20160908-143200.apk"

    invoke-virtual {v0, v2, v1}, Lzlc/season/rxdownload3/RxDownload;->extension(Ljava/lang/String;Ljava/lang/Class;)Lio/reactivex/Maybe;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Maybe;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private open()V
    .registers 1

    return-void
.end method

.method private setAction()V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->action:Landroid/widget/Button;

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity$2;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setActionText(Lzlc/season/rxdownload3/core/Status;)V
    .registers 3

    .line 134
    instance-of v0, p1, Lzlc/season/rxdownload3/core/Normal;

    if-eqz v0, :cond_5

    goto :goto_25

    .line 136
    :cond_5
    instance-of v0, p1, Lzlc/season/rxdownload3/core/Suspend;

    if-eqz v0, :cond_a

    goto :goto_25

    .line 138
    :cond_a
    instance-of v0, p1, Lzlc/season/rxdownload3/core/Waiting;

    if-eqz v0, :cond_f

    goto :goto_25

    .line 140
    :cond_f
    instance-of v0, p1, Lzlc/season/rxdownload3/core/Downloading;

    if-eqz v0, :cond_14

    goto :goto_25

    .line 142
    :cond_14
    instance-of v0, p1, Lzlc/season/rxdownload3/core/Failed;

    if-eqz v0, :cond_19

    goto :goto_25

    .line 144
    :cond_19
    instance-of v0, p1, Lzlc/season/rxdownload3/core/Succeed;

    if-eqz v0, :cond_1e

    goto :goto_25

    .line 146
    :cond_1e
    instance-of v0, p1, Lzlc/season/rxdownload3/extension/ApkInstallExtension$Installing;

    if-eqz v0, :cond_23

    goto :goto_25

    .line 148
    :cond_23
    instance-of p1, p1, Lzlc/season/rxdownload3/extension/ApkInstallExtension$Installed;

    :goto_25
    return-void
.end method

.method private setProgress(Lzlc/season/rxdownload3/core/Status;)V
    .registers 5

    .line 126
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Status;->getTotalSize()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 127
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Status;->getDownloadSize()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 129
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->percent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lzlc/season/rxdownload3/core/Status;->percent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private start()V
    .registers 3

    .line 154
    sget-object v0, Lzlc/season/rxdownload3/RxDownload;->INSTANCE:Lzlc/season/rxdownload3/RxDownload;

    const-string v1, "http://cdn.llsapp.com/android/LLS-v4.0-595-20160908-143200.apk"

    invoke-virtual {v0, v1}, Lzlc/season/rxdownload3/RxDownload;->start(Ljava/lang/String;)Lio/reactivex/Maybe;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Maybe;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private stop()V
    .registers 3

    .line 158
    sget-object v0, Lzlc/season/rxdownload3/RxDownload;->INSTANCE:Lzlc/season/rxdownload3/RxDownload;

    const-string v1, "http://cdn.llsapp.com/android/LLS-v4.0-595-20160908-143200.apk"

    invoke-virtual {v0, v1}, Lzlc/season/rxdownload3/RxDownload;->stop(Ljava/lang/String;)Lio/reactivex/Maybe;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/Maybe;->subscribe()Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001e

    .line 50
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->initPermission()V

    .line 52
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->initView()V

    .line 53
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->setAction()V

    .line 54
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->create()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 78
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 79
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BasicDownloadActivity;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lzlc/season/rxdownload3/helper/UtilsKt;->dispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
