.class public Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;
.super Landroid/app/Dialog;
.source "FiveStarCommentWebDialog.java"


# instance fields
.field private customer_dialog_btn_bac:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f120123

    .line 30
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->mContext:Landroid/content/Context;

    const v0, 0x7f0d0066

    .line 32
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->setContentView(I)V

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->setCancelable(Z)V

    .line 34
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    const v0, 0x7f120123

    .line 38
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 39
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->mContext:Landroid/content/Context;

    const v0, 0x7f0d0066

    .line 40
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->setContentView(I)V

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->setCanceledOnTouchOutside(Z)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->setCancelable(Z)V

    .line 43
    invoke-direct {p0, p1}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;)Landroid/content/Context;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initView(Landroid/content/Context;)V
    .registers 14

    const v0, 0x7f0a025c

    .line 48
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    invoke-static {p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getUserLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 51
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 52
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f06006f

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 53
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 54
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    const v5, 0x3fb33333    # 1.4f

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 55
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v6, 0x3f99999a    # 1.2f

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 56
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "review"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, " and"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const/16 v10, 0x11

    invoke-virtual {v1, v4, v6, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 57
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "one"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, " cloud"

    invoke-virtual {v8, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v5, v4, v8, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 58
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v2, v4, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 59
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v2, v4, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c9
    const v0, 0x7f0a024d

    .line 63
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->customer_dialog_btn_bac:Landroid/widget/ImageButton;

    .line 65
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->customer_dialog_btn_bac:Landroid/widget/ImageButton;

    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog$1;

    invoke-direct {v1, p0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog$1;-><init>(Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0250

    .line 72
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog$2;-><init>(Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0251

    .line 83
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog$3;

    invoke-direct {v1, p0, p1}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog$3;-><init>(Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0252

    .line 94
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog$4;

    invoke-direct {v1, p0, p1}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog$4;-><init>(Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0253

    .line 105
    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog$5;

    invoke-direct {v1, p0, p1}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog$5;-><init>(Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 149
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 150
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 152
    :cond_9
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->mDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_10

    .line 153
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_10
    return-void
.end method

.method public fullScreen()V
    .registers 3

    .line 136
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public show()V
    .registers 4

    .line 120
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_47

    .line 121
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 124
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 127
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->fullScreen()V

    .line 128
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 129
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 130
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/CustomerView/FiveStarCommentWebDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_47
    return-void
.end method
