.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;
.super Ljava/lang/Object;
.source "CloudActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->QueryRecords(JILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

.field final synthetic val$num:I


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;I)V
    .registers 3

    .line 351
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    iput p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->val$num:I

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

    .line 415
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 416
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 418
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean;)V
    .registers 13

    .line 359
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 360
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 361
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 362
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean;->getCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_130

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 369
    :goto_3b
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_ef

    .line 370
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean;->getData()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;

    .line 371
    new-instance v5, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-direct {v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;-><init>()V

    .line 372
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setUrl(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getFile_size()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setFile_size(J)V

    .line 374
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getFile_type()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setFile_type(I)V

    .line 375
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getExpire_date()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setExpire_date(Ljava/lang/String;)V

    .line 376
    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->isHasDivide()Z

    move-result v6

    if-nez v6, :cond_bf

    .line 378
    :try_start_7d
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getExpire_date()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 380
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 381
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x5265c00

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 382
    sget v8, Lcom/pilotlab/rollereye/Common/CommonConstant;->CLOUDY_RECORD_EXPIRE_DAY:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_bf

    .line 383
    new-instance v6, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-direct {v6}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;-><init>()V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->setHasDivide(Z)V
    :try_end_ba
    .catch Ljava/text/ParseException; {:try_start_7d .. :try_end_ba} :catch_bb

    goto :goto_bf

    :catch_bb
    move-exception v6

    .line 388
    invoke-virtual {v6}, Ljava/text/ParseException;->printStackTrace()V

    .line 391
    :cond_bf
    :goto_bf
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getDuration()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setDuration(J)V

    .line 392
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setDate(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getId()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setId(J)V

    .line 394
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getThumb_url()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setThumb_url(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setFile_name(Ljava/lang/String;)V

    .line 396
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v4, v5}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3b

    .line 399
    :cond_ef
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->val$num:I

    if-lez p1, :cond_fd

    .line 400
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_106

    .line 402
    :cond_fd
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 405
    :goto_106
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->updateUI()V

    .line 407
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_127

    .line 408
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_130

    .line 409
    :cond_127
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_130
    :goto_130
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 351
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 354
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$402(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
