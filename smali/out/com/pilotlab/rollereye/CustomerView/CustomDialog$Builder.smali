.class public Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;
.super Ljava/lang/Object;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private mCancelable:Z

.field private message:Ljava/lang/String;

.field private negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private negativeButtonText:Ljava/lang/String;

.field private positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;

.field private scale:F

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 41
    iput v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->scale:F

    .line 47
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 8

    .line 299
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 300
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 302
    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->context:Landroid/content/Context;

    const v3, 0x7f12011c

    invoke-direct {v1, v2, v3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0d0065

    const/4 v3, 0x0

    .line 304
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 305
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->title:Ljava/lang/String;

    const v4, 0x7f0a025c

    const/16 v5, 0x8

    if-eqz v2, :cond_3b

    .line 309
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_42

    .line 310
    :cond_3b
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :goto_42
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    const v4, 0x7f0a0256

    if-eqz v2, :cond_67

    .line 312
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 313
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_6e

    .line 315
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v4, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$5;

    invoke-direct {v4, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$5;-><init>(Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)V

    .line 316
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6e

    .line 324
    :cond_67
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :cond_6e
    :goto_6e
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    const v4, 0x7f0a0255

    if-eqz v2, :cond_93

    .line 329
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 330
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_9a

    .line 332
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v4, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$6;

    invoke-direct {v4, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$6;-><init>(Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)V

    .line 333
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9a

    .line 342
    :cond_93
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :cond_9a
    :goto_9a
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->message:Ljava/lang/String;

    const v4, 0x7f0a0254

    if-eqz v2, :cond_ad

    .line 347
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d4

    .line 348
    :cond_ad
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v2, :cond_d4

    .line 349
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a024f

    .line 352
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 353
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 354
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->contentView:Landroid/view/View;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    :cond_d4
    :goto_d4
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    if-nez v2, :cond_e6

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    if-nez v2, :cond_e6

    const v2, 0x7f0a024e

    .line 361
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :cond_e6
    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->setContentView(Landroid/view/View;)V

    .line 364
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->mCancelable:Z

    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->setCancelable(Z)V

    .line 365
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 367
    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->scale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 368
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v1
.end method

.method public create(I)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 8

    .line 141
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 144
    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->context:Landroid/content/Context;

    const v3, 0x7f12011c

    invoke-direct {v1, v2, v3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    .line 146
    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 147
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->title:Ljava/lang/String;

    const v3, 0x7f0a025c

    const/16 v4, 0x8

    if-eqz v0, :cond_38

    .line 151
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3f

    .line 152
    :cond_38
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :goto_3f
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    const v3, 0x7f0a0256

    if-eqz v0, :cond_64

    .line 155
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 156
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_6b

    .line 159
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$1;

    invoke-direct {v3, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$1;-><init>(Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)V

    .line 160
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6b

    .line 169
    :cond_64
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_6b
    :goto_6b
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    const v3, 0x7f0a0255

    if-eqz v0, :cond_90

    .line 174
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 175
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_97

    .line 177
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$2;

    invoke-direct {v3, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$2;-><init>(Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)V

    .line 178
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_97

    .line 187
    :cond_90
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 191
    :cond_97
    :goto_97
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->message:Ljava/lang/String;

    if-eqz v0, :cond_aa

    const v0, 0x7f0a0254

    .line 192
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_ca

    .line 193
    :cond_aa
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v0, :cond_ca

    const v0, 0x7f0a024f

    .line 196
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 197
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->contentView:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    :cond_ca
    :goto_ca
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    if-nez v0, :cond_dc

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    if-nez v0, :cond_dc

    const v0, 0x7f0a024e

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 207
    :cond_dc
    invoke-virtual {v1, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->setContentView(Landroid/view/View;)V

    .line 208
    iget-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->mCancelable:Z

    invoke-virtual {v1, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->setCancelable(Z)V

    .line 210
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 212
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->scale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v1
.end method

.method public createGreenButton()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 8

    .line 376
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 377
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 379
    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->context:Landroid/content/Context;

    const v3, 0x7f12011c

    invoke-direct {v1, v2, v3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0d0069

    const/4 v3, 0x0

    .line 381
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 382
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->title:Ljava/lang/String;

    const v4, 0x7f0a025c

    const/16 v5, 0x8

    if-eqz v2, :cond_3b

    .line 386
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_42

    .line 387
    :cond_3b
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 388
    :goto_42
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    const v4, 0x7f0a0256

    if-eqz v2, :cond_67

    .line 389
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 390
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_6e

    .line 392
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v4, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$7;

    invoke-direct {v4, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$7;-><init>(Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)V

    .line 393
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6e

    .line 401
    :cond_67
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 405
    :cond_6e
    :goto_6e
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    const v4, 0x7f0a0255

    if-eqz v2, :cond_93

    .line 406
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v6, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 407
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_9a

    .line 409
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v4, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$8;

    invoke-direct {v4, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$8;-><init>(Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)V

    .line 410
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9a

    .line 419
    :cond_93
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 423
    :cond_9a
    :goto_9a
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->message:Ljava/lang/String;

    const v4, 0x7f0a0254

    if-eqz v2, :cond_ad

    .line 424
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d4

    .line 425
    :cond_ad
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v2, :cond_d4

    .line 426
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0a024f

    .line 429
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 430
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 431
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->contentView:Landroid/view/View;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    :cond_d4
    :goto_d4
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    if-nez v2, :cond_e6

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    if-nez v2, :cond_e6

    const v2, 0x7f0a024e

    .line 438
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 440
    :cond_e6
    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->setContentView(Landroid/view/View;)V

    .line 441
    iget-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->mCancelable:Z

    invoke-virtual {v1, v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->setCancelable(Z)V

    .line 442
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 444
    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->scale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 445
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v1
.end method

.method public createStytle(I)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;
    .registers 8

    .line 221
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 224
    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0d0065

    const/4 v2, 0x0

    .line 226
    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 227
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->title:Ljava/lang/String;

    const v3, 0x7f0a025c

    const/16 v4, 0x8

    if-eqz v0, :cond_38

    .line 231
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3f

    .line 232
    :cond_38
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :goto_3f
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    const v3, 0x7f0a0256

    if-eqz v0, :cond_64

    .line 234
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 235
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_6b

    .line 237
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$3;

    invoke-direct {v3, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$3;-><init>(Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)V

    .line 238
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6b

    .line 246
    :cond_64
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :cond_6b
    :goto_6b
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    const v3, 0x7f0a0255

    if-eqz v0, :cond_90

    .line 251
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v5, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 252
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_97

    .line 254
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$4;

    invoke-direct {v3, p0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder$4;-><init>(Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)V

    .line 255
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_97

    .line 264
    :cond_90
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 268
    :cond_97
    :goto_97
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->message:Ljava/lang/String;

    const v3, 0x7f0a0254

    if-eqz v0, :cond_aa

    .line 269
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d1

    .line 270
    :cond_aa
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v0, :cond_d1

    .line 271
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a024f

    .line 274
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 275
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->contentView:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    :cond_d1
    :goto_d1
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    if-nez v0, :cond_e3

    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    if-nez v0, :cond_e3

    const v0, 0x7f0a024e

    .line 283
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 285
    :cond_e3
    invoke-virtual {v1, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->setContentView(Landroid/view/View;)V

    .line 286
    iget-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->mCancelable:Z

    invoke-virtual {v1, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->setCancelable(Z)V

    .line 287
    invoke-virtual {v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 289
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->scale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 290
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-object v1
.end method

.method public setCancelable(Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;
    .registers 2

    .line 131
    iput-boolean p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->mCancelable:Z

    return-object p0
.end method

.method public setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->contentView:Landroid/view/View;

    return-object p0
.end method

.method public setMessage(I)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;
    .registers 3

    .line 62
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->context:Landroid/content/Context;

    .line 118
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;
    .registers 3

    .line 125
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->context:Landroid/content/Context;

    .line 103
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;
    .registers 3

    .line 110
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setScale(F)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;
    .registers 2

    .line 136
    iput p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->scale:F

    return-object p0
.end method

.method public setTitle(I)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
