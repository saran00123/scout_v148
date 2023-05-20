.class Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity$1;
.super Ljava/lang/Object;
.source "NasScanListActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 98
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x1f4

    invoke-static {p2, p3, p1}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity$1$1;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity$1$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/NasStorage/NasScanListActivity$1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    const/4 p1, 0x0

    return p1
.end method
