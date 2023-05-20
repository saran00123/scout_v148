.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;
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


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;I)V
    .registers 3

    .line 450
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    iput p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .line 453
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 454
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$100(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->dismiss()V

    .line 455
    :cond_11
    new-instance p1, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-direct {p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 456
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 457
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 458
    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 459
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 460
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$200(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/Bean/ScratchBean;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/ScratchBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 461
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v2, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v3, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v4, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 462
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 463
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    const v2, 0x7f110253

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 464
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 465
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    const v2, 0x7f11003e

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5$1;

    invoke-direct {v2, p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 475
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    const v2, 0x7f110007

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5$2;

    invoke-direct {v2, p0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 481
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$502(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 482
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5$3;

    invoke-direct {v1, p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5$3;-><init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 488
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$5;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    return-void
.end method
