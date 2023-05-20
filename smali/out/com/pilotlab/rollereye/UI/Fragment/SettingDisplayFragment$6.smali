.class Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$6;
.super Ljava/lang/Object;
.source "SettingDisplayFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 257
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$6;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    .line 260
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$6;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$1400(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    if-ge p2, p1, :cond_2b

    .line 261
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$6;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$1500(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$6;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p3}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$1400(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, p2

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$6;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$6;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p3}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$1600(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)[I

    move-result-object p3

    aget p2, p3, p2

    invoke-static {p1, p2}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setRecordDuration(Landroid/content/Context;I)V

    :cond_2b
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method
