.class public Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;
.super Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;
.source "PDFActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity_pdf_pdfview:Lcom/pilotlab/rollereye/CustomerView/PDFView;

.field private center_title:Landroid/widget/TextView;

.field private layout_left:Landroid/widget/LinearLayout;

.field private myDisposable:Lio/reactivex/disposables/Disposable;

.field private right_img_btn:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;-><init>()V

    const-string v0, "PDFActivity"

    .line 24
    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private initEvent()V
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->layout_left:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->right_img_btn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .registers 2

    const v0, 0x7f0a0448

    .line 87
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->layout_left:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0210

    .line 88
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f0a04f0

    .line 89
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->right_img_btn:Landroid/widget/ImageButton;

    const v0, 0x7f0a012c

    .line 90
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/CustomerView/PDFView;

    iput-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->activity_pdf_pdfview:Lcom/pilotlab/rollereye/CustomerView/PDFView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0448

    if-eq p1, v0, :cond_30

    const v0, 0x7f0a04f0

    if-eq p1, v0, :cond_f

    goto :goto_33

    .line 101
    :cond_f
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.VIEW"

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    sget-object v0, Lcom/pilotlab/rollereye/Common/ServerConstent;->quickStartURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 104
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 106
    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_33

    .line 98
    :cond_30
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->finish()V

    :cond_33
    :goto_33
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 31
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->fullScreen()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 61
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onDestroy()V

    .line 62
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_a

    .line 63
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_a
    return-void
.end method

.method protected onPause()V
    .registers 1

    .line 49
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    .line 42
    invoke-super {p0}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onResume()V

    .line 43
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->fullScreen()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 55
    invoke-super {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseActivity;->onWindowFocusChanged(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->fullScreen()V

    return-void
.end method

.method protected setUpContentView()V
    .registers 2

    const v0, 0x7f0d003e

    .line 37
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->setContentView(I)V

    return-void
.end method

.method protected setUpData(Landroid/os/Bundle;)V
    .registers 4

    .line 74
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->activity_pdf_pdfview:Lcom/pilotlab/rollereye/CustomerView/PDFView;

    sget-object v0, Lcom/pilotlab/rollereye/Common/ServerConstent;->quickStartURL:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/CustomerView/PDFView;->loadOnlinePDF(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->center_title:Landroid/widget/TextView;

    const v0, 0x7f110336

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 76
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->center_title:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->right_img_btn:Landroid/widget/ImageButton;

    const v1, 0x7f080186

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 78
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->right_img_btn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method protected setUpView()V
    .registers 1

    .line 68
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->initView()V

    .line 69
    invoke-direct {p0}, Lcom/pilotlab/rollereye/UI/Activity/Guide/PDFActivity;->initEvent()V

    return-void
.end method
