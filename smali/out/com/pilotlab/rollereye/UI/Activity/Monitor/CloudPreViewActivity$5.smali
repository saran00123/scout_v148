.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;
.super Ljava/lang/Object;
.source "CloudPreViewActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->deleteRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)V
    .registers 2

    .line 303
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

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

    .line 344
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V
    .registers 5

    .line 311
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    .line 312
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_f5

    .line 313
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getLocal_path()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 314
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getLocal_path()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 316
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 319
    :cond_39
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 321
    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/pilotlab/rollereye/Common/CommonConstant;->RECORD_CLOUD_DATA_CHANGE:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getId()J

    move-result-wide v0

    const-string v2, "remove_record_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 323
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 325
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)I

    move-result p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_78

    goto :goto_8b

    .line 327
    :cond_78
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)I

    move-result p1

    if-lez p1, :cond_f0

    .line 328
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$702(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;I)I

    .line 333
    :goto_8b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$402(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;)Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    .line 334
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudRecordBean;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    new-instance v0, Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$1002(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;)Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;

    .line 336
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudPreviewAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 337
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$1100(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 338
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$1200(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_f5

    .line 330
    :cond_f0
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->finish()V

    :cond_f5
    :goto_f5
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 303
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;->access$602(Lcom/pilotlab/rollereye/UI/Activity/Monitor/CloudPreViewActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
