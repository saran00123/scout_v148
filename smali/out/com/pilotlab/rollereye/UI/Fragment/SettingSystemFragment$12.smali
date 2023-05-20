.class Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$12;
.super Ljava/util/TimerTask;
.source "SettingSystemFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->onClick(Landroid/view/View;)V
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

    .line 788
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$12;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 791
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$12;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;->access$802(Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment;I)I

    .line 792
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingSystemFragment$12;->cancel()Z

    return-void
.end method
