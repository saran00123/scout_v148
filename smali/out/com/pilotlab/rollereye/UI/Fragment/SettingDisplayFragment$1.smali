.class Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$1;
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

    .line 194
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 3

    .line 197
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 198
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    move-result-object p1

    const/16 p2, 0x2d0

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->setHeight(I)V

    .line 199
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    move-result-object p1

    const/16 p2, 0x500

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->setWidth(I)V

    goto :goto_45

    .line 200
    :cond_23
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$200(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 201
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    move-result-object p1

    const/16 p2, 0x438

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->setHeight(I)V

    .line 202
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    move-result-object p1

    const/16 p2, 0x780

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->setWidth(I)V

    :cond_45
    :goto_45
    return-void
.end method
