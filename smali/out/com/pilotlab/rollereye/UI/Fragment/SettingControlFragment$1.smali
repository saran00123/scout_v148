.class Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$1;
.super Ljava/lang/Object;
.source "SettingControlFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5

    .line 145
    iget-object p3, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;

    invoke-static {p3}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;)Landroid/widget/TextView;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object p3, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;

    invoke-static {p3}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;)Ljava/util/Map;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Left_Sensitivity"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3

    .line 156
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setControlConfig(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method
