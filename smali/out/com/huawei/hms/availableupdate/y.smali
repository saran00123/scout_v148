.class public Lcom/huawei/hms/availableupdate/y;
.super Lcom/huawei/hms/availableupdate/q;
.source "DownloadProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/availableupdate/y$b;
    }
.end annotation


# instance fields
.field public c:Landroid/widget/ProgressBar;

.field public d:Landroid/widget/TextView;

.field public e:I

.field public f:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/availableupdate/q;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/huawei/hms/availableupdate/y;->e:I

    .line 17
    new-instance v0, Lcom/huawei/hms/availableupdate/y$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hms/availableupdate/y$b;-><init>(Lcom/huawei/hms/availableupdate/y$a;)V

    iput-object v0, p0, Lcom/huawei/hms/availableupdate/y;->f:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/huawei/hms/availableupdate/y;->e:I

    return-void
.end method

.method public b(I)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/q;->e()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2c

    .line 7
    :cond_d
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/y;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/huawei/hms/availableupdate/y;->c:Landroid/widget/ProgressBar;

    if-nez v0, :cond_16

    goto :goto_2b

    .line 11
    :cond_16
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 13
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    float-to-double v1, p1

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/y;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    :goto_2c
    const-string p1, "DownloadProgress"

    const-string v0, "In setDownloading, The activity is null or finishing."

    .line 17
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()Landroid/app/AlertDialog;
    .registers 5

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/q;->e()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/q;->f()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 3
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/q;->e()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "hms_download_progress"

    invoke-static {v2}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getLayoutId(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 7
    iget-object v2, p0, Lcom/huawei/hms/availableupdate/y;->f:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    const-string v2, "download_info_progress"

    .line 9
    invoke-static {v2}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getIdId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/huawei/hms/availableupdate/y;->c:Landroid/widget/ProgressBar;

    const-string v2, "hms_progress_text"

    .line 10
    invoke-static {v2}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getIdId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/huawei/hms/availableupdate/y;->d:Landroid/widget/TextView;

    .line 13
    iget v1, p0, Lcom/huawei/hms/availableupdate/y;->e:I

    invoke-virtual {p0, v1}, Lcom/huawei/hms/availableupdate/y;->b(I)V

    .line 14
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
