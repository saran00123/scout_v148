.class Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$5;
.super Ljava/lang/Object;
.source "SettingDisplayFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)V
    .registers 2

    .line 244
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 3

    .line 247
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$1100(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 248
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->setBitRate(I)V

    goto :goto_44

    .line 249
    :cond_17
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$1200(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 250
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->setBitRate(I)V

    goto :goto_44

    .line 251
    :cond_2e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$1300(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_44

    .line 252
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$5;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->setBitRate(I)V

    :cond_44
    :goto_44
    return-void
.end method
