.class Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$4;
.super Ljava/lang/Object;
.source "SettingControlFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 191
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    .line 194
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->access$300(Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 195
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment$4;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;->access$300(Lcom/pilotlab/rollereye/UI/Fragment/SettingControlFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;

    move-result-object p1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MotionBean;->setTrack(I)V

    :cond_16
    return-void
.end method
