.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$7;
.super Ljava/lang/Object;
.source "DetectActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    const/16 p1, 0x8

    const/4 v0, 0x0

    if-eqz p2, :cond_2a

    .line 201
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 202
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 204
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4e

    .line 212
    :cond_2a
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 213
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$1000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 217
    :goto_4e
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    move-result-object p1

    if-eqz p1, :cond_63

    .line 218
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/DetectActivity;)Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean;->getZone()Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$MonitorBean$ZoneBean;->setActive(Z)V

    :cond_63
    return-void
.end method
