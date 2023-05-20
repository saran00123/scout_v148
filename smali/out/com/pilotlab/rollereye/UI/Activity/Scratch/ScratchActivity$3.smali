.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;
.super Ljava/lang/Object;
.source "ScratchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->showChoiseDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;Landroid/view/View;I)V
    .registers 4

    .line 353
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11

    .line 357
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getConnectMode()Lcom/pilotlab/rollereye/Bean/ConnectMode;

    move-result-object v0

    sget-object v1, Lcom/pilotlab/rollereye/Bean/ConnectMode;->WIFIDIRECT:Lcom/pilotlab/rollereye/Bean/ConnectMode;

    if-ne v0, v1, :cond_2e

    .line 358
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    const p1, 0x7f110248

    invoke-virtual {v2, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    const v0, 0x7f11003e

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$1;

    invoke-direct {v5, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 363
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void

    .line 368
    :cond_2e
    new-instance v0, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-direct {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41200000    # 10.0f

    .line 370
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStrokeWidth(F)V

    .line 372
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 374
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v2, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setCenterRadius(F)V

    const/16 v1, 0xff

    .line 376
    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    const/4 v1, 0x1

    .line 378
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setColorSchemeColors([I)V

    .line 380
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;->val$view:Landroid/view/View;

    const v2, 0x7f0a0258

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 381
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->start()V

    .line 384
    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;->val$position:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    .line 385
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 389
    :try_start_81
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 390
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 391
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 392
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 393
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_95
    .catch Ljava/io/FileNotFoundException; {:try_start_81 .. :try_end_95} :catch_9b
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_95} :catch_96

    goto :goto_9f

    :catch_96
    move-exception v3

    .line 397
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9f

    :catch_9b
    move-exception v3

    .line 395
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_9f
    if-eqz v4, :cond_d7

    .line 401
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Global;->getHttpServices()Lcom/pilotlab/rollereye/Services/HttpServices;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Services/HttpServices;->getServerServiceAPI()Lcom/pilotlab/rollereye/Api/ServerServiceApi;

    move-result-object v3

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v5

    iget-object v6, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-virtual {v5, v6}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v5, v2, v4}, Lcom/pilotlab/rollereye/Api/ServerServiceApi;->saveScratch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    .line 402
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$2;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    :cond_d7
    return-void
.end method
