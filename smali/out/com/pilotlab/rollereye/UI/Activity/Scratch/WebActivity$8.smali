.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;
.super Landroid/webkit/WebChromeClient;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V
    .registers 2

    .line 560
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 11

    .line 609
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    const p1, 0x7f11003e

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8$4;

    invoke-direct {v3, p0, p4}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8$4;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;Landroid/webkit/JsResult;)V

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    const p2, 0x7f110007

    .line 615
    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8$5;

    invoke-direct {v5, p0, p4}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8$5;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;Landroid/webkit/JsResult;)V

    move-object v1, p3

    .line 609
    invoke-virtual/range {v0 .. v5}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 621
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .registers 11

    .line 563
    new-instance p1, Landroid/widget/EditText;

    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-direct {p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string p2, "in text"

    .line 564
    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1f

    const-string p2, "variable name"

    invoke-virtual {p3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_19

    goto :goto_1f

    :cond_19
    const/16 p2, 0x3002

    .line 567
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_22

    .line 565
    :cond_1f
    :goto_1f
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    :goto_22
    const/4 p2, 0x0

    .line 569
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 570
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$3000(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 572
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p2, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p2

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {v2, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {v3, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {v4, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, p2, v2, v3, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 573
    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 574
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 575
    new-instance p2, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    iget-object p4, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-direct {p2, p4}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 576
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    const v2, 0x7f110252

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    const v2, 0x7f110251

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 577
    invoke-virtual {p2, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 578
    iget-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    const p4, 0x7f11003e

    invoke-virtual {p3, p4}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8$1;

    invoke-direct {p4, p0, p1, p5}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;Landroid/widget/EditText;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {p2, p3, p4}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 586
    iget-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    const p4, 0x7f110007

    invoke-virtual {p3, p4}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8$2;

    invoke-direct {p4, p0, p5}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {p2, p3, p4}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 593
    iget-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$3102(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 594
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$3100(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p2

    new-instance p3, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8$3;

    invoke-direct {p3, p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;Landroid/widget/EditText;)V

    invoke-virtual {p2, p3}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 600
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$8;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$3100(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return v0
.end method
