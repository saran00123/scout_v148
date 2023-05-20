.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$5;
.super Ljava/lang/Object;
.source "CloudActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->initCloudService()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V
    .registers 2

    .line 267
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

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

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;)V
    .registers 9

    .line 275
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getCloud()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_17

    .line 276
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_20

    .line 278
    :cond_17
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    :goto_20
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getMember()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_8a

    .line 282
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getDueDay()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 284
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 286
    :try_start_3c
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;->getData()Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean$DataBean;->getDueDay()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 287
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 288
    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->compareDateDistance(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v3

    .line 289
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget p1, Lcom/pilotlab/rollereye/Common/CommonConstant;->CLOUDY_SERVICE_EXPIRE_DAY:I

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-gtz p1, :cond_7c

    .line 291
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_8a

    .line 293
    :cond_7c
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_85
    .catch Ljava/text/ParseException; {:try_start_3c .. :try_end_85} :catch_86

    goto :goto_8a

    :catch_86
    move-exception p1

    .line 296
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 267
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$5;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/UserBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$402(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
