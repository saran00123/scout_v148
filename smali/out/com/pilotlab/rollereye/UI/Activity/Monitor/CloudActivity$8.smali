.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;
.super Ljava/lang/Object;
.source "CloudActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->QueryRecords(JI)V
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

    .line 433
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    iput p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->val$num:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 506
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 507
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 508
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 509
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean;)V
    .registers 14

    .line 441
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 442
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 443
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 445
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean;->getCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_173

    .line 449
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 452
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 453
    :goto_57
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean;->getData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_10b

    .line 454
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean;->getData()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;

    .line 455
    new-instance v6, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-direct {v6}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;-><init>()V

    .line 456
    invoke-virtual {v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setUrl(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getFile_size()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setFile_size(J)V

    .line 458
    invoke-virtual {v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getFile_type()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setFile_type(I)V

    .line 459
    invoke-virtual {v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getExpire_date()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setExpire_date(Ljava/lang/String;)V

    .line 460
    iget-object v7, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v7}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->isHasDivide()Z

    move-result v7

    if-nez v7, :cond_db

    .line 462
    :try_start_99
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getExpire_date()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 464
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 465
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x5265c00

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 466
    sget v9, Lcom/pilotlab/rollereye/Common/CommonConstant;->CLOUDY_RECORD_EXPIRE_DAY:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_db

    .line 467
    new-instance v7, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-direct {v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;-><init>()V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v7, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v7}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->setHasDivide(Z)V
    :try_end_d6
    .catch Ljava/text/ParseException; {:try_start_99 .. :try_end_d6} :catch_d7

    goto :goto_db

    :catch_d7
    move-exception v7

    .line 472
    invoke-virtual {v7}, Ljava/text/ParseException;->printStackTrace()V

    .line 475
    :cond_db
    :goto_db
    invoke-virtual {v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getDuration()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setDuration(J)V

    .line 476
    invoke-virtual {v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setDate(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getId()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setId(J)V

    .line 478
    invoke-virtual {v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getThumb_url()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setThumb_url(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean$DataBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->setFile_name(Ljava/lang/String;)V

    .line 480
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    iget-object v5, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v5, v6}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_57

    .line 483
    :cond_10b
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->val$num:I

    if-lez p1, :cond_119

    .line 484
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_122

    .line 486
    :cond_119
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 489
    :goto_122
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_152

    .line 490
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->val$num:I

    if-lez p1, :cond_13a

    .line 491
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    move-result-object p1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->notifyItemRangeChanged(II)V

    goto :goto_152

    .line 493
    :cond_13a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)V

    .line 494
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudRecordAdapter;->notifyItemRangeChanged(II)V

    .line 498
    :cond_152
    :goto_152
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_16a

    .line 499
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_173

    .line 500
    :cond_16a
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$1800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_173
    :goto_173
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 433
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/QueryRecordBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 436
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;->access$402(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
