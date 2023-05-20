.class Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$1;
.super Ljava/lang/Object;
.source "SettingSecrecyFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3

    if-eqz p2, :cond_d

    .line 91
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_18

    .line 93
    :cond_d
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment$1;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;->access$000(Lcom/pilotlab/rollereye/UI/Fragment/SettingSecrecyFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_18
    return-void
.end method
