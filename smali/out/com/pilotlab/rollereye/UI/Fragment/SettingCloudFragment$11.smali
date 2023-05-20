.class Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;
.super Ljava/lang/Object;
.source "SettingCloudFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)V
    .registers 2

    .line 529
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 532
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 533
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object p2

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->deleteAllVideos(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p2

    .line 534
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11$1;

    invoke-direct {v0, p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11$1;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$11;Landroid/content/DialogInterface;)V

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
