.class Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;
.super Ljava/lang/Object;
.source "ScoutActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->showQuestionNaireDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

.field final synthetic val$radioGroup_firmware:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;Landroid/widget/RadioGroup;)V
    .registers 3

    .line 349
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;->val$radioGroup_firmware:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12

    .line 354
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;->val$radioGroup_firmware:Landroid/widget/RadioGroup;

    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p2

    const/4 v0, 0x5

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_ac

    move p2, v1

    goto :goto_16

    :pswitch_d
    move p2, v0

    goto :goto_16

    :pswitch_f
    const/4 p2, 0x4

    goto :goto_16

    :pswitch_11
    const/4 p2, 0x3

    goto :goto_16

    :pswitch_13
    const/4 p2, 0x2

    goto :goto_16

    :pswitch_15
    const/4 p2, 0x1

    .line 372
    :goto_16
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v2

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-virtual {v3, v4}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5, v5}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->questionNaire(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v2

    .line 373
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13$1;

    invoke-direct {v3, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    if-lt p2, v0, :cond_7f

    .line 395
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->set5StarQNTime(Landroid/content/Context;J)V

    .line 396
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;

    move-result-object p2

    if-eqz p2, :cond_75

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_75

    .line 397
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->show()V

    .line 399
    :cond_75
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_a8

    .line 401
    :cond_7f
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    const p2, 0x7f110065

    invoke-virtual {v2, p2}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    const v0, 0x7f110210

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    const v0, 0x7f11003e

    invoke-virtual {p2, v0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13$2;

    invoke-direct {v6, p0}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p2

    .line 406
    invoke-virtual {p2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    .line 409
    :goto_a8
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :pswitch_data_ac
    .packed-switch 0x7f0a027d
        :pswitch_15
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method
