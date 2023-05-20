.class Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9$1;
.super Ljava/lang/Object;
.source "SettingDisplayFragment.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9;)V
    .registers 2

    .line 327
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x2

    .line 330
    new-array p1, p1, [I

    .line 331
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$2400(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    const/4 v0, 0x1

    .line 332
    aget v1, p1, v0

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9;

    iget-object v2, v2, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v2, v3}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9;

    iget-object v2, v2, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-virtual {v2}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getHeightInPx(Landroid/content/Context;)I

    move-result v2

    if-le v1, v2, :cond_56

    .line 333
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9;

    iget-object v1, v1, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->access$2500(Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;)Landroid/widget/ScrollView;

    move-result-object v1

    const/4 v2, 0x0

    aget p1, p1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9$1;->this$1:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9;->this$0:Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pilotlab/rollereye/Utils/DensityUtil;->getHeightInPx(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v1, v2, p1}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    :cond_56
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 327
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Fragment/SettingDisplayFragment$9$1;->accept(Ljava/lang/Long;)V

    return-void
.end method
