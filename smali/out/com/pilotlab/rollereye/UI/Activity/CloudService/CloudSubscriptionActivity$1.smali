.class Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;
.super Ljava/lang/Object;
.source "CloudSubscriptionActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->QueryOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 179
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 180
    :cond_d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;)V
    .registers 9

    .line 138
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    if-eqz v0, :cond_d

    .line 139
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 140
    :cond_d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getCode()I

    move-result v0

    sget v1, Lcom/pilotlab/rollereye/Common/ServerConstent;->CODE_SUCCESS:I

    if-ne v0, v1, :cond_fb

    .line 144
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getMember()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_54

    .line 145
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    new-instance p1, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;

    const/16 v1, 0x102

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent;-><init>(Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;)V

    goto/16 :goto_f4

    .line 149
    :cond_54
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getDueDay()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e8

    .line 153
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    const v4, 0x7f110217

    invoke-virtual {v3, v4}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getDueDay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 158
    :try_start_9a
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getDueDay()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 159
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 160
    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->compareDateDistance(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v3

    .line 161
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget p1, Lcom/pilotlab/rollereye/Common/CommonConstant;->CLOUDY_SERVICE_EXPIRE_DAY:I

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-gtz p1, :cond_da

    .line 163
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_e8

    .line 165
    :cond_da
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_e3
    .catch Ljava/text/ParseException; {:try_start_9a .. :try_end_e3} :catch_e4

    goto :goto_e8

    :catch_e4
    move-exception p1

    .line 167
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    .line 170
    :cond_e8
    :goto_e8
    new-instance p1, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent;

    new-instance v0, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;

    const/16 v1, 0x101

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;-><init>(I)V

    invoke-direct {p1, v0}, Lcom/pilotlab/rollereye/Bean/NormalMessageEvent;-><init>(Lcom/pilotlab/rollereye/Bean/NormalMessageEvent$Message;)V

    .line 172
    :goto_f4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_fb
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 130
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;->access$002(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudSubscriptionActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
