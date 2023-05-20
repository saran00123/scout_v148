.class public Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;
.super Ljava/lang/Object;
.source "ActionSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;,
        Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItem;,
        Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$OnSheetItemClickListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private img_title:Landroid/widget/ImageView;

.field private lLayout_content:Landroid/widget/LinearLayout;

.field private layout_title:Landroid/widget/LinearLayout;

.field private sLayout_content:Landroid/widget/ScrollView;

.field private sheetItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItem;",
            ">;"
        }
    .end annotation
.end field

.field private showTitle:Z

.field private txt_cancel:Landroid/widget/TextView;

.field private txt_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->showTitle:Z

    .line 36
    iput-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;)Landroid/app/Dialog;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private setSheetItems()V
    .registers 10

    .line 124
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->sheetItemList:Ljava/util/List;

    if-eqz v0, :cond_d5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_c

    goto/16 :goto_d5

    .line 128
    :cond_c
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->sheetItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_2c

    .line 133
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->sLayout_content:Landroid/widget/ScrollView;

    .line 134
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 135
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getTruelyHeightPx(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 136
    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->sLayout_content:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2c
    const/4 v1, 0x1

    move v2, v1

    :goto_2e
    if-gt v2, v0, :cond_d5

    .line 142
    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->sheetItemList:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItem;

    .line 143
    iget-object v4, v3, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItem;->name:Ljava/lang/String;

    .line 144
    iget-object v5, v3, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItem;->color:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;

    .line 145
    iget-object v3, v3, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItem;->itemClickListener:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$OnSheetItemClickListener;

    .line 147
    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41900000    # 18.0f

    .line 149
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0x11

    .line 150
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setGravity(I)V

    const v4, 0x7f08005d

    if-ne v0, v1, :cond_68

    .line 154
    iget-boolean v7, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->showTitle:Z

    if-eqz v7, :cond_61

    .line 155
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_8d

    :cond_61
    const v4, 0x7f08005f

    .line 157
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_8d

    .line 160
    :cond_68
    iget-boolean v7, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->showTitle:Z

    const v8, 0x7f08005e

    if-eqz v7, :cond_7b

    if-lt v2, v1, :cond_77

    if-ge v2, v0, :cond_77

    .line 162
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_8d

    .line 164
    :cond_77
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_8d

    :cond_7b
    if-ne v2, v1, :cond_84

    const v4, 0x7f080060

    .line 168
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_8d

    :cond_84
    if-ge v2, v0, :cond_8a

    .line 170
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_8d

    .line 172
    :cond_8a
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_8d
    if-nez v5, :cond_9d

    .line 179
    sget-object v4, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;->Blue:Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;

    .line 180
    invoke-virtual {v4}, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;->getName()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_a8

    .line 182
    :cond_9d
    invoke-virtual {v5}, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 186
    :goto_a8
    iget-object v4, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x42340000    # 45.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 188
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v5, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v4, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$2;

    invoke-direct {v4, p0, v3, v2}, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$2;-><init>(Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$OnSheetItemClickListener;I)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v3, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->lLayout_content:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2e

    :cond_d5
    :goto_d5
    return-void
.end method


# virtual methods
.method public addSheetItem(Ljava/lang/String;Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$OnSheetItemClickListener;)Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;
    .registers 6

    .line 113
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->sheetItemList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->sheetItemList:Ljava/util/List;

    .line 116
    :cond_b
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->sheetItemList:Ljava/util/List;

    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItem;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItem;-><init>(Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;Ljava/lang/String;Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$SheetItemColor;Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$OnSheetItemClickListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public builder()Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;
    .registers 5

    .line 41
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d013c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getTruelyWidthPx(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    const v1, 0x7f0a04fa

    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->sLayout_content:Landroid/widget/ScrollView;

    const v1, 0x7f0a0443

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->lLayout_content:Landroid/widget/LinearLayout;

    const v1, 0x7f0a05c3

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->txt_title:Landroid/widget/TextView;

    const v1, 0x7f0a03da

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->img_title:Landroid/widget/ImageView;

    const v1, 0x7f0a0449

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->layout_title:Landroid/widget/LinearLayout;

    const v1, 0x7f0a05c2

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->txt_cancel:Landroid/widget/TextView;

    .line 55
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->txt_cancel:Landroid/widget/TextView;

    new-instance v2, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$1;

    invoke-direct {v2, p0}, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog$1;-><init>(Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v1, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    iget-object v2, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->context:Landroid/content/Context;

    const v3, 0x7f120001

    invoke-direct {v1, v2, v3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->dialog:Landroid/app/Dialog;

    .line 64
    iget-object v1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x51

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-object p0
.end method

.method public setCancelable(Z)Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method public setTitle(I)Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;
    .registers 4

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->showTitle:Z

    .line 89
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->layout_title:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->txt_title:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->img_title:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;
    .registers 4

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->showTitle:Z

    .line 73
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->layout_title:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->img_title:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;I)Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;
    .registers 5

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->showTitle:Z

    .line 81
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->layout_title:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->img_title:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p0
.end method

.method public show()V
    .registers 2

    .line 205
    invoke-direct {p0}, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->setSheetItems()V

    .line 206
    iget-object v0, p0, Lcom/pilotlab/rollereye/CustomerView/ActionSheetDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
