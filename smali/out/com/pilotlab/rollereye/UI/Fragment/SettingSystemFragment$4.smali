.class Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$4;
.super Ljava/lang/Object;
.source "SettingSystemFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->initEvent()V
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

    .line 234
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5

    .line 237
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$300(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$200(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 239
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$200(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;->setEffectValue(I)V

    :cond_2b
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .line 251
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$400(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)V

    return-void
.end method
