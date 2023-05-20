.class Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;
.super Ljava/lang/Object;
.source "SettingSecrecyFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->deleteAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 260
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 262
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->show()V

    .line 263
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object p1

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p2

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->deleteAccount(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 264
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3$1;

    invoke-direct {p2, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3$1;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$3;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
