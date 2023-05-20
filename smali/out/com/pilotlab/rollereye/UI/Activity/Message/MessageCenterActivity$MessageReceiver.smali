.class public Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessageCenterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;


# direct methods
.method public constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 244
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.alibaba.sdk.android.push.RECEIVE"

    .line 245
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    const-wide/16 p1, 0x1

    .line 246
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p2, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->newThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver$1;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Message/MessageCenterActivity$MessageReceiver;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    :cond_2c
    return-void
.end method
