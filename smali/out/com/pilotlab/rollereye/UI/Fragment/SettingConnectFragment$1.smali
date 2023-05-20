.class Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;
.super Ljava/lang/Object;
.source "SettingConnectFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;)V
    .registers 2

    .line 392
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 395
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    iget-object p2, p2, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->autoShow()V

    .line 396
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object p2

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->getSn()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->unbind(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p2

    .line 397
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;

    invoke-direct {v0, p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1$1;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingConnectFragment$1;Landroid/content/DialogInterface;)V

    invoke-virtual {p2, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
