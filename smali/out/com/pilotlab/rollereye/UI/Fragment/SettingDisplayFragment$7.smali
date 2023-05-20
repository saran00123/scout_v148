.class Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$7;
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

    .line 275
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 4

    .line 278
    iget-object p2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$1700(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/TextView;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 5

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$1800(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$1800(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 290
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$1900(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$1900(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "020127"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_2f

    goto :goto_46

    .line 292
    :cond_2f
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$2000(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    const v2, 0x7f1102a5

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_46

    .line 298
    :catch_46
    :cond_46
    :goto_46
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$VideoBean;->setCameraLight(I)V

    .line 299
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$7;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$2100(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)V

    return-void
.end method
