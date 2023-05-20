.class Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;
.super Ljava/lang/Object;
.source "SettingCloudFragment.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    .line 372
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 373
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_10

    .line 374
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    :cond_10
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 6

    .line 331
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz p1, :cond_18

    .line 332
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 333
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$600(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "loadingDialog.dismiss"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_18
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$700(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_7f

    .line 337
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$700(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getCode()I

    move-result p1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_7f

    .line 338
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$600(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$700(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$700(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getCloud()I

    move-result p1

    if-ne p1, v1, :cond_6b

    .line 340
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$800(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 341
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_7f

    .line 343
    :cond_6b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$800(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 344
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 349
    :cond_7f
    :goto_7f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$900(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;

    move-result-object p1

    if-eqz p1, :cond_140

    .line 350
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$600(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$900(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    .line 351
    :goto_a0
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$900(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_140

    .line 352
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$1000(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13c

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$1000(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$900(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean$DataBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean$DataBean;->getSn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13c

    .line 353
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$900(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean$DataBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean$DataBean;->getAppPush()I

    move-result v2

    if-ne v2, v1, :cond_101

    .line 354
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$400(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 355
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$300(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_10a

    .line 357
    :cond_101
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$400(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 359
    :goto_10a
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$900(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean$DataBean;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryPushMessageSettingBean$DataBean;->getEmailPush()I

    move-result v2

    if-ne v2, v1, :cond_133

    .line 360
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$200(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 361
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$300(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_13c

    .line 363
    :cond_133
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$200(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_13c
    :goto_13c
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_a0

    :cond_140
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 325
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;->access$502(Lcom/pilotlab/rollereye/UI/Fragment/SettingCloudFragment;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
