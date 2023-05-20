.class Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;
.super Ljava/lang/Object;
.source "SettingSystemFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)V
    .registers 2

    .line 830
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    .line 833
    new-instance p2, Landroid/widget/EditText;

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 834
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f110044

    .line 835
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 836
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-virtual {v4}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 837
    new-instance v0, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-virtual {v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 838
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    const v2, 0x7f11003b

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 839
    invoke-virtual {v0, p2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setContentView(Landroid/view/View;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 840
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    const v2, 0x7f11003e

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14$1;

    invoke-direct {v2, p0, p2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14$1;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 858
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    const v2, 0x7f110007

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14$2;

    invoke-direct {v2, p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14$2;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;)V

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;

    .line 864
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog$Builder;->create()Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$1002(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;Lcom/pilotlab/rollereye/CustomerView/CustomDialog;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 865
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$1000(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object v0

    new-instance v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14$3;

    invoke-direct {v1, p0, p2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14$3;-><init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 871
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$14;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$1000(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    .line 873
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
