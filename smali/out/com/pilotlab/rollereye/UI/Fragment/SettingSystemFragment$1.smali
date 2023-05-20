.class Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$1;
.super Ljava/lang/Object;
.source "SettingSystemFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 198
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    const/4 p1, 0x0

    if-eqz p2, :cond_d

    .line 204
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_21

    .line 206
    :cond_d
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$100(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 211
    :goto_21
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$200(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 212
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$200(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_33

    move p1, v1

    :cond_33
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$SoundEffectBean;->setActivate(I)V

    :cond_36
    return-void
.end method
