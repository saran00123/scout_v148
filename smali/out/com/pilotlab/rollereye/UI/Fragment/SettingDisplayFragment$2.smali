.class Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$2;
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

    .line 207
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 3

    .line 210
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$300(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 211
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    move-result-object p1

    const/16 p2, 0x32

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->setAntiFlicker(I)V

    goto :goto_2f

    .line 212
    :cond_18
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$400(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 213
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$2;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    move-result-object p1

    const/16 p2, 0x3c

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->setAntiFlicker(I)V

    :cond_2f
    :goto_2f
    return-void
.end method
